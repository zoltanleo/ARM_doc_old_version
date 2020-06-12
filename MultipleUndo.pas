{

MultipleUndo
Unit to add multiple undo to the standard Delphi RichEdit component
Version 1.00

Copyright (c) 2004-2006 Laurenz van Gaalen
http://www.laurenzvangaalen.nl/software/

Freeware
Tested with Delphi 6 Personal

}

unit MultipleUndo;

interface

uses
  Classes, ComCtrls, Messages, Dialogs;

function Initialize (UndoLevels : integer) : boolean;
function Clear : boolean;
function SaveToUndoBuffer (RichEdit : TRichEdit) : boolean;
function LoadFromUndoBuffer (RichEdit : TRichEdit ; Undo : boolean) :  boolean;

implementation

var
  Global_UndoBuffer            : array of TMemoryStream;
  Global_UndoLevels            : integer;
  Global_UndoIndex             : integer;
  Global_Undo                  : integer;
  Global_Redo                  : integer;
  Global_FirstVisibleLine      : array of integer;
  Global_SelStart              : array of integer;
  Global_SelLength             : array of integer;


function Initialize (UndoLevels : integer) : boolean;
var
  i : integer;
begin
  try
    Result := true;
    Global_UndoLevels := UndoLevels;
    Global_UndoIndex := 0;
    Global_Undo := 0;
    Global_Redo := 0;
    Setlength(Global_FirstVisibleLine, Global_UndoLevels);
    Setlength(Global_SelStart, Global_UndoLevels);
    Setlength(Global_SelLength, Global_UndoLevels);
    Setlength(Global_UndoBuffer, Global_UndoLevels);
    for i := 0 to Global_UndoLevels - 1 do
    begin
      Global_UndoBuffer[i] := TMemoryStream.Create;
    end;
  except;
    Result := false;
  end;
end;


function Clear : boolean;
var
  i : integer;
begin
  try
    Result := true;
    for i := 0 to Global_UndoLevels - 1 do
    begin
      Global_UndoBuffer[i].Free;
    end;
  except
    Result := false;
  end;
end;


function SaveToUndoBuffer (RichEdit : TRichEdit) : boolean;
begin
  try

    Result := true;

    //Reset buffer and save data
    Global_UndoBuffer[Global_UndoIndex].SetSize(0);
    Global_UndoBuffer[Global_UndoIndex].Position := 0;
    RichEdit.Lines.SaveToStream(Global_UndoBuffer[Global_UndoIndex]);

    //Store graphical information (cursor position etc.)
    Global_FirstVisibleLine[Global_UndoIndex] := RichEdit.Perform(EM_GETFIRSTVISIBLELINE, 0, 0);
    Global_SelStart[Global_UndoIndex] := RichEdit.SelStart;
    Global_SelLength[Global_UndoIndex] := RichEdit.SelLength;

    //Set or reset buffer index
    if Global_UndoIndex = Global_UndoLevels - 1 then
    begin
      Global_UndoIndex := 0;
    end
    else
    begin
      Global_UndoIndex := Global_UndoIndex + 1;
    end;

    //Reset Undo/Redo counters
    Global_Undo := 0;
    Global_Redo := 0;

  except
    Result := false;
  end;
end;


function LoadFromUndoBuffer (RichEdit : TRichEdit ; Undo : boolean) : boolean; //false = Redo mode
var
  BufferToLoad : integer;
begin
  try
    Result := true;

    if Undo = true then
    begin

      //First time this procedure is called in a possible sequence.
      if Global_Undo = 0 then
      begin
        MultipleUndo.SaveToUndoBuffer(RichEdit);
        Global_Undo := 1;
      end;

      //Last undo level reached
      if Global_Undo = Global_UndoLevels then
      begin
        exit;
      end;

      Richedit.Lines.BeginUpdate;
      Global_Undo := Global_Undo + 1;
      BufferToLoad := Global_UndoIndex - Global_Undo;
      if BufferToLoad < 0 then
      begin
        BufferToLoad := Global_UndoLevels + BufferToLoad;
      end;

    end
    else
    begin

      //First undo level reached
      if Global_Redo = Global_Undo -1 then
      begin
        Global_Undo := 1;
        Global_Redo := 0;
        exit;
      end;

      Richedit.Lines.BeginUpdate;
      Global_Redo := Global_Redo + 1;
      BufferToLoad := (Global_UndoIndex - Global_Undo) + Global_Redo;
      if BufferToLoad < 0 then
      begin
        BufferToLoad := Global_UndoLevels + BufferToLoad;
      end;

    end;

    //Load undo level from buffer
    Global_UndoBuffer[BufferToLoad].Position := 0;
    RichEdit.Lines.LoadFromStream(Global_UndoBuffer[BufferToLoad]);

    //Restore graphical information (cursor position etc.)
    with Richedit do
    begin
      Perform( em_linescroll, 0, Global_FirstVisibleLine[BufferToLoad] - perform( EM_GETFIRSTVISIBLELINE, 0, 0 ));
    end;
    RichEdit.SelStart := Global_SelStart[BufferToLoad];
    RichEdit.SelLength := Global_SelLength [BufferToLoad];

    Richedit.Lines.EndUpdate;

  except
    Result := false;    
    Richedit.Lines.EndUpdate;
  end;
end;

end.
