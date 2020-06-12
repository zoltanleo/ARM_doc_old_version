////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                           Sanders the Softwarer                            //
//                                                                            //
//     MessageForm - ����� ��� ������ ��������� � ���� ���������� ��������    //
//                                                                            //
//                      ����������� ��������� ���������                       //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

{ ----- ������� ----------------------------------------------------------------

����� �������� ����� �������������� ���� ������, ������������ ���, ������������
� ����������� ����������� ��������, � ��� ����� ������������, ��� �������������
� �������������� ����������� �� ������. � ����� ������ ������ ������ �����������
���������� �� ��������� ������ � �������� ��������������� ������.

��� ��������������� ������������ ������ ������ ����� �������� ��� ������ �
�������� ������ ��� �������������� �������� ����� ����������� ��������� �������.

���� �� ������� ���������� ��������� � �������� �������������� �� �� ����
�������� - �������� � ���, � �� ��������� ��������� ����� ��������� � ���������
������ ������. ����� ����� �������� � ��������� �������, ���� ����� �����.

�����: Sanders Prostorov, 2:5020/1583, softwarer@mail.ru, softwarer@nm.ru

------------------------------------------------------------------------------ }

{ ----- �������� ---------------------------------------------------------------

����� ��������� ������� �� ����� ��������������� ���� � ��������� ��������� �
���, �� �������� ���������� ��������� ���������� �������� � �������� ������
����������. ����� ������������ �������� ��������� �������:

procedure TSomeForm.SomeActionExecute ;
begin
  try
    MessageForm.Show ( 'Some Action', 'Start...' ) ;
     ...
    MessageForm.Text ( 'In process...' ) ;
     ...
    MessageForm.Text ( 'Near finish...' ) ;
     ...
  finally
    MessageForm.Close ;
  end ;
end ;

������ Show � Close ����� ���� ����������, �� ������ ����������� ��������. ���
��������� �������� ���� ������������, ������������ �����, �� ������ ������������,
����� ������������ �����.

��� ������ ������ ����������� ����������� ����� Application.ProcessMessages.
������������ �� ������ ������� (������ ��������) ������ Show ����� �����������
��� �� ����������, ��� � � ������ TCustomForm.ShowModal; ����� �������, ��������
�� ��������� ���������, �� ������ � ������ �������� ���������� ��������
������������. ����� ������������ Close ������� ��������� � ������ finally, ���
��� � ��������� ������ ���� ��������� ����� �������� �� ������, � �� ����� ���
������ ����� ����� ����������.

------------------------------------------------------------------------------ }

{ ----- ������� �������� -------------------------------------------------------

??.??.2000 ������ ������
04.05.2004 ����� ������� � ������ � �������� ��� ���������� ���������������
08.08.2008 ������ ������� Leybasoft'��(leybabronstain@yandex.ru) � ������������ � MsgSplash
  - ����� ������ � ��������� �����, � ����� � ��� �������� ��������� ������ �����
    �� MessageForm.Show ( 'Start...' ) ;
  - �� ������ �������� TStaticText, ��� ��������� �������� ������������� ������
    � ������������� �����
------------------------------------------------------------------------------ }

unit MsgSplash ;

interface

uses Classes, SysUtils, Forms, Controls, ExtCtrls,  StdCtrls;

type
  { ����������� ����� "���� ���������" }
  MessageForm = class
  public
    class procedure Show ( const AMessage : string ) ;
    class procedure Text ( const AMessage : string ) ;
    class procedure Close ;
  end ;

implementation

var
  { ���� � ����������� ��� ���������� }
  MsgForm  : TForm ;
  MsgPanel : TPanel ;
  MsgStaticTxt : TStaticText;
  MsgDepth : integer = 0 ;
  ListDisabled : pointer = nil ;

{ ������������� ���� }
procedure CreateMessageForm ;
begin
  //������� � ��������� �����
  MsgForm := TForm.Create ( nil ) ;
  with MsgForm do
    begin
      BorderIcons  := [] ;
      BorderStyle  := bsNone ;
      Position     := poMainFormCenter;
      ClientHeight := 70 ;
      ClientWidth  := 400 ;
    end ;

  //������� � ��������� ������
  MsgPanel := TPanel.Create ( nil ) ;
  with MsgPanel do
  begin
    Align      := alClient ;
    BevelInner := bvRaised;
    Parent     := MsgForm ;
    Caption:= '';
  end ;


  //---- ��������� by leybabronstain
  //������� � ��������� �������
  MsgStaticTxt:= TStaticText.Create(nil);
  with MsgStaticTxt do
    begin
      Parent:= MsgPanel;
      Width:= 345;
      Height:= 40;
      AutoSize:= False;
      Left:= 27;
      Top:= 16;
    end;
end ;

{ ������ ���� � ���������� }
class procedure MessageForm.Show ( const AMessage : string ) ;
begin
  Text (AMessage) ;
  if MsgDepth > 0
    then Inc ( MsgDepth )
  else
    begin
      MsgForm.Show ;
      ListDisabled := DisableTaskWindows ( MsgForm.Handle ) ;
      MsgDepth := 1 ;
      Application.ProcessMessages ;
    end ;
end ;

{ ��������� ������ � ���� }
class procedure MessageForm.Text ( const AMessage : string ) ;
begin
  MsgStaticTxt.Caption:= AMessage;
  Application.ProcessMessages ;
end ;

{ �������� ����� }
class procedure MessageForm.Close ;
begin
  if MsgDepth > 1
    then Dec ( MsgDepth )
  else
    begin
      EnableTaskWindows ( ListDisabled ) ;
      ListDisabled := nil ;
      MsgForm.Close ;
      MsgDepth := 0 ;
    end ;
end ;

initialization
  CreateMessageForm ;

finalization
  FreeAndNil(MsgForm) ;
end.
