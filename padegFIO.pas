{
Модуль определения ф-ций Padeg.dll
}
unit padegFIO;

{/$DEFINE RAISEERROR} // в случае ошибки вызывает исключение или завершает втихую

interface

uses Sysutils;

Type
  TFIOParts = record
    LastName, FirstName, MiddleName : String;
  end;

// ф-ции склонения
function GetIFPadeg(pFirstName,
                    pLastName: String;
                    bSex: Boolean;
                    nPadeg: LongInt): String; stdcall;

function GetIFPadegFS(pIF: String;
                      bSex: Boolean;
                      nPadeg: LongInt): String; stdcall;

function GetFIOPadeg(pLastName,
                     pFirstName,
                     pMiddleName: String;
                     bSex: Boolean;
                     nPadeg: LongInt): String; stdcall;

function GetFIOPadegAS(pLastName,
                       pFirstName,
                       pMiddleName: String;
                       nPadeg: LongInt): String; stdcall;

function GetFIOPadegFS(pFIO: String;
                       bSex: Boolean;
                       nPadeg: LongInt): String; stdcall;

function GetFIOPadegFSAS(pFIO: String; nPadeg: LongInt): String; stdcall;

function GetNominativePadeg(pFIO: String): String; stdcall;

function GetAppointmentPadeg(pAppointment: String; nPadeg: LongInt): String; stdcall;

function GetFullAppointmentPadeg(pAppointment, pOffice: String; nPadeg: LongInt): String; stdcall;

function GetOfficePadeg(pOffice: String; nPadeg: LongInt): String; stdcall;

function GetFIOParts(pFIO: String): TFIOParts; stdcall;

// вспомогательные ф-ции
function GetSex(pMiddleName: String): Integer; stdcall;

// файл исключений
function GetExceptionsFileName: String; stdcall;

function UpdateExceptions: Boolean; stdcall;

function SetDictionary(FileName: String): Boolean; stdcall;

implementation

uses Windows, Dialogs;

Type

  PPartsFIO = ^TPartsFIO;
  TPartsFIO = record
    pLastName, pFirstName, pMiddleName : String;
    nLastName, nFirstName, nMiddleName : LongInt;
  end;

  TGetFIOParts = function(pFIO: PChar; Parts: PPartsFIO): Integer; stdcall;

  TGetIFPadeg = function(pFirstName,
                         pLastName: PChar;
                         bSex: Boolean;
                         nPadeg: LongInt;
                         pResult: PChar;
                         var nLen: LongInt): Integer; stdcall;

  TGetIFPadegFS = function(pIF: PChar;
                           bSex: Boolean;
                           nPadeg: LongInt;
                           pResult: PChar;
                           var nLen: LongInt): Integer; stdcall;

  TGetFIOPadeg = function (pLastName,
                           pFirstName,
                           pMiddleName: PChar;
                           bSex: Boolean;
                           nPadeg: LongInt;
                           pResult: PChar;
                           var nLen: LongInt): Integer; stdcall;

  TGetFIOPadegAS = function (pLastName,
                             pFirstName,
                             pMiddleName: PChar;
                             nPadeg: LongInt;
                             pResult: PChar;
                             var nLen: LongInt): Integer; stdcall;


  TGetFIOPadegFS = function (pFIO: PChar;
                             bSex: Boolean;
                             nPadeg: LongInt;
                             pResult: PChar;
                             var nLen: LongInt): Integer; stdcall;


  TGetFIOPadegFSAS = function (pFIO: PChar;
                               nPadeg: LongInt;
                               pResult: PChar;
                               var nLen: LongInt): Integer; stdcall;

  TGetNominativePadeg = function (pFIO,
                                  pResult: PChar;
                                  var nLen: LongInt): Integer; stdcall;

  TUpdateExceptions = function: Boolean; stdcall;
  TSetDictionary = function (DicName: PChar): Boolean; stdcall;

  TGetSex = function(pMiddleName: PChar): Integer; stdcall;
  TGetNameFileExceptions = function(pResult: PChar; var nLen: LongInt): Integer; stdcall;

  TGetAppointmentPadeg = function(pAppointment: PChar; nPadeg: LongInt;
                             pResult: PChar; var nLen: LongInt): Integer;
                             stdcall;

  TGetFullAppointmentPadeg = function(pAppointment, pOffice: PChar;
                                 nPadeg: LongInt; pResult: PChar;
                                 var nLen: LongInt): Integer; stdcall;

  TGetOfficePadeg = function(pOffice: PChar; nPadeg: LongInt; pResult: PChar;
                        var nLen: LongInt): Integer; stdcall;

var LibPadeg: HMODULE;
  res: PChar; nLen: Longint;
  error: integer;

function LoadPadeg(UpdateFileExcept: Boolean = False): Integer;
begin
  if LibPadeg = 0 then
    LibPadeg:=LoadLibrary('PADEG.DLL');
  if LibPadeg = 0 then
{$IFDEF RAISEERROR}
    Exception.Create('Библиотека PADEG.DLL не найдена.')
{$ELSE}
    Abort
{$ENDIF}
  else begin
    if UpdateFileExcept then
      if not UpdateExceptions then
        Result:=-1;
  end;
  Result:=LibPadeg;
end;


procedure CreateError(error: Integer);
begin
(*
-1 - недопустимое значение падежа;
-2 - недопустимое значение рода;
-3 - размер буфера недостаточен для размещения результата преобразования ФИО.
*)
   case error of
    0: ;
   -1: Exception.Create('Недопустимое значение падежа');
   -2: Exception.Create('Недопустимое значение рода');
   -3: Exception.Create('Размер буфера недостаточен для размещения результата преобразования ФИО');
   else
     Exception.Create('Неизвестный код ошибки: '+IntToStr(error));
   end;
end;

function GetSex(pMiddleName: String): Integer; stdcall;
var pGetSex: TGetSex;
begin
  LoadPadeg;
  Result:=-1;
  pGetSex:=GetProcAddress(LibPadeg, 'GetSex');
  if not Assigned(pGetSex) then
    raise Exception.Create('Функция ''GetSex'' в библиотеке PADEG.DLL не найдена');
  Result:=pGetSex(PChar(pMiddleName));
end;

function GetExceptionsFileName: String; stdcall;
var pGetNameFileExceptions: TGetNameFileExceptions;
begin
  LoadPadeg;
  Result:='';
  pGetNameFileExceptions:=GetProcAddress(LibPadeg, 'GetExceptionsFileName');
  if not Assigned(pGetNameFileExceptions) then
    raise Exception.Create('Функция ''GetExceptionsFileName'' в библиотеке PADEG.DLL не найдена');
  nLen:=1000;
  res:=StrAlloc(nLen);
  try
    error:=pGetNameFileExceptions(res, nLen);
    if error = 0 then
      SetString(Result, res, nLen);
  finally
    StrDispose(res);
  end;
end;

function UpdateExceptions;
var pUpdateExceptions: TUpdateExceptions;
begin
  LoadPadeg;
  pUpdateExceptions:=GetProcAddress(LibPadeg, 'UpdateExceptions');
  if not Assigned(pUpdateExceptions) then begin
   raise Exception.Create('Функция ''UpdateExceptions'' в библиотеке PADEG.DLL не найдена');
  end;
  Result:=pUpdateExceptions;
end;

function GetFIOParts(pFIO: String): TFIOParts; stdcall;
var pGetFIOParts: TGetFIOParts;
  Parts: TPartsFIO;
begin
  LoadPadeg;
  pGetFIOParts:=GetProcAddress(LibPadeg, 'GetFIOParts');
  result.LastName:='';
  result.FirstName:='';
  result.MiddleName:='';

  if not Assigned(pGetFIOParts) then
    raise Exception.Create('Функция ''GetFIOParts'' в библиотеке PADEG.DLL не найдена');
  if error <> 0 then
    CreateError(error);

  SetLength(Parts.pLastName, Length(pFIO) div 2);
  SetLength(Parts.pFirstName, Length(pFIO) div 2);
  SetLength(Parts.pMiddleName, Length(pFIO) div 2);
  Parts.nLastName:=Length(pFIO) div 2;
  Parts.nFirstName:=Length(pFIO) div 2;
  Parts.nMiddleName:=Length(pFIO) div 2;

  error:=pGetFIOParts(PChar(pFIO), @Parts);
  result.LastName:=Parts.pLastName;
  result.FirstName:=Parts.pFirstName;
  result.MiddleName:=Parts.pMiddleName;
end;

function GetIFPadegFS;
var pGetIFPadegFS: TGetIFPadegFS;
begin
  LoadPadeg;
  Result:='';
  pGetIFPadegFS:=GetProcAddress(LibPadeg, 'GetIFPadegFS');
  if not Assigned(pGetIFPadegFS) then begin
    raise Exception.Create('Функция ''GetIFPadegFS'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pIF)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetIFPadegFS(PChar(pIF), bSex, nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetIFPadeg;
var pGetIFPadeg: TGetIFPadeg;
begin
  LoadPadeg;
  Result:='';
  pGetIFPadeg:=GetProcAddress(LibPadeg, 'GetIFPadeg');
  if not Assigned(pGetIFPadeg) then begin
    raise Exception.Create('Функция ''GetIFPadeg'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pFirstName+pLastName)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetIFPadeg(PChar(pFirstName), PChar(pLastName), bSex, nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetFIOPadegFSAS;
  var pGetFIOPadegFSAS: TGetFIOPadegFSAS;
begin
  LoadPadeg;
  Result:='';
  pGetFIOPadegFSAS:=GetProcAddress(LibPadeg, 'GetFIOPadegFSAS');
  if not Assigned(pGetFIOPadegFSAS) then begin
    raise Exception.Create('Функция ''GetFIOPadegFSAS'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pFIO)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetFIOPadegFSAS(PChar(pFIO), nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetFIOPadegFS;
var pGetFIOPadegFS: TGetFIOPadegFS;
begin
  LoadPadeg;
  Result:='';
  pGetFIOPadegFS:=GetProcAddress(LibPadeg, 'GetFIOPadegFS');
  if not Assigned(pGetFIOPadegFS) then begin
    raise Exception.Create('Функция ''GetFIOPadegFS'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pFIO)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetFIOPadegFS(PChar(pFIO), bSex, nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetFIOPadegAS;
var pGetFIOPadegAS: TGetFIOPadegAS;
begin
  LoadPadeg;
  Result:='';
  nLen:=Length(pLastName+pFirstName+pMiddleName)+10;
  res:=StrAlloc(nLen);
  pGetFIOPadegAS:=GetProcAddress(LibPadeg, 'GetFIOPadegAS');
  if not Assigned(pGetFIOPadegAS) then begin
    raise Exception.Create('Функция ''GetFIOPadegAS'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pLastName+' '+pFirstName+' '+pMiddleName)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetFIOPadegAS(PChar(pLastName), PChar(pFirstName), PChar(pMiddleName), nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetFIOPadeg;
var pGetFIOPadeg: TGetFIOPadeg;
begin
  LoadPadeg;
  Result:='';
  pGetFIOPadeg:=GetProcAddress(LibPadeg, 'GetFIOPadeg');
  if not Assigned(pGetFIOPadeg) then begin
    raise Exception.Create('Функция ''GetFIOPadeg'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pLastName+pFirstName+pMiddleName)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetFIOPadeg(PChar(pLastName), PChar(pFirstName), PChar(pMiddleName), bSex, nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetNominativePadeg;
var pGetNominativePadeg: TGetNominativePadeg;
begin
  LoadPadeg;
  Result:='';
  nLen:=Length(pFIO)+10;
  res:=StrAlloc(nLen);
  pGetNominativePadeg:=GetProcAddress(LibPadeg, 'GetNominativePadeg');
  if not Assigned(pGetNominativePadeg) then begin
    raise Exception.Create('Функция ''GetNominativePadeg'' в библиотеке PADEG.DLL не найдена');
  end;
  try
    error:=pGetNominativePadeg(PChar(pFIO), res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetAppointmentPadeg;
var pGetAppointmentPadeg: TGetAppointmentPadeg;
begin
  LoadPadeg;
  Result:='';
  pGetAppointmentPadeg:=GetProcAddress(LibPadeg, 'GetAppointmentPadeg');
  if not Assigned(pGetAppointmentPadeg) then begin
    raise Exception.Create('Функция ''GetAppointmentPadeg'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pAppointment)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetAppointmentPadeg(PChar(pAppointment), nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetFullAppointmentPadeg;
var pGetFullAppointmentPadeg: TGetFullAppointmentPadeg;
begin
  LoadPadeg;
  Result:='';
  pGetFullAppointmentPadeg:=GetProcAddress(LibPadeg, 'GetFullAppointmentPadeg');
  if not Assigned(pGetFullAppointmentPadeg) then begin
    raise Exception.Create('Функция ''GetFullAppointmentPadeg'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pAppointment+pOffice)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetFullAppointmentPadeg(PChar(pAppointment), PChar(pOffice), nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function GetOfficePadeg;
var pGetOfficePadeg: TGetOfficePadeg;
begin
  LoadPadeg;
  Result:='';
  pGetOfficePadeg:=GetProcAddress(LibPadeg, 'GetOfficePadeg');
  if not Assigned(pGetOfficePadeg) then begin
    raise Exception.Create('Функция ''GetOfficePadeg'' в библиотеке PADEG.DLL не найдена');
  end;
  nLen:=Length(pOffice)+10;
  res:=StrAlloc(nLen);
  try
    error:=pGetOfficePadeg(PChar(pOffice), nPadeg, res, nLen);
    if error = 0 then
      SetString(Result, res, nLen)
    else
      CreateError(error);
  finally
    StrDispose(res);
  end;
end;

function SetDictionary(FileName: String): Boolean; stdcall;
var pSetDictionary: TSetDictionary;
begin
  LoadPadeg;
  Result:=False;
  pSetDictionary:=GetProcAddress(LibPadeg, 'SetDictionary');
  if not Assigned(pSetDictionary) then begin
    raise Exception.Create('Функция ''SetDictionary'' в библиотеке PADEG.DLL не найдена');
  end;
  Result:=pSetDictionary(PChar(FileName));
end;

initialization
//  LibPadeg:=LoadPadeg;

finalization

if LibPadeg <> 0 then begin
  FreeLibrary(LibPadeg);
  LibPadeg:=0;
end;

end.
