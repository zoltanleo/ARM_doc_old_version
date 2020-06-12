unit OAMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings, AppEvnts;

type
  TFrmOAM = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    CbBoxOAMColor: TComboBox;
    CbBoxOAMTransparent: TComboBox;
    EdtOAMDensity: TEdit;
    CbBoxOAMSugar: TComboBox;
    CbBoxOAMProtein: TComboBox;
    EdtOAMLeu: TEdit;
    EdtOAMEr: TEdit;
    EdtOAMEpit: TEdit;
    EdtOAMSalt: TEdit;
    DTPickOAM: TDateTimePicker;
    BtnSave: TButton;
    BtnCancel: TButton;
    Panel11: TPanel;
    EdtOAMFlora: TEdit;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label15: TLabel;
    DTPickNechipor: TDateTimePicker;
    Bevel1: TBevel;
    ChBoxNechipor: TCheckBox;
    EdtNechiporLeu: TEdit;
    EdtNechiporEr: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ChBoxOAM: TCheckBox;
    Label11: TLabel;
    NiceSetFrmOAM: TNiceSettings;
    LblVolume: TLabel;
    EdtVolume: TEdit;
    LblSmell: TLabel;
    EdtSmell: TEdit;
    LblResiduum: TLabel;
    EdtResiduum: TEdit;
    Lbl_pH: TLabel;
    Edt_pH: TEdit;
    LblAceticAcid: TLabel;
    EdtAceticAcid: TEdit;
    LblBilifuscin: TLabel;
    EdtBilifuscin: TEdit;
    LblAceton: TLabel;
    LblUrobilin: TLabel;
    LblCylindr: TLabel;
    LblMucos: TLabel;
    EdtCylindr: TEdit;
    EdtMucos: TEdit;
    Label32: TLabel;
    EdtNechiporFlora: TEdit;
    EdtAceton: TEdit;
    EdtUrobilin: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Bevel2: TBevel;
    Label23: TLabel;
    AppEventsFrmOAM: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure ChBoxOAMClick(Sender: TObject);
    procedure ChBoxNechiporClick(Sender: TObject);
    procedure EdtOAMDensityKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNechiporLeuKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNechiporErKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmOAMShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmOAM: TFrmOAM;

implementation

uses VarAndrUnit, StatusPatUnit, DMFIBUnit, MainAndrUnit;

var TmpInt: Integer;//�������
    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmOAM.FormCreate(Sender: TObject);
begin
NiceSetFrmOAM.RegKey:= NiceSetRegKeyPath;
//������ ��������� �����
NiceSetFrmOAM.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '����������� ������ ���� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '����������� ������ ���� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';


TmpInt:= 0;//������� ��� ����������� ����

//������������� �������� ����� � �������������� �� ��������� ����������
DTPickOAM.DateTime:= VarOAMDate;
CbBoxOAMColor.ItemIndex:= VarOAMColor;
CbBoxOAMTransparent.ItemIndex:= VarOAMTransparent;
EdtOAMDensity.Text:= Trim(VarOAMDensity);
CbBoxOAMSugar.ItemIndex:= VarOAMSugar;
CbBoxOAMProtein.ItemIndex:= VarOAMProtein;
EdtOAMLeu.Text:= Trim(VarOAMLeu);
EdtOAMEr.Text:= Trim(VarOAMEr);
EdtOAMEpit.Text:= Trim(VarOAMEpit);
EdtOAMSalt.Text:= Trim(VarOAMSalt);
EdtOAMFlora.Text:= Trim(VarOAMFlora);

EdtVolume.Text:= Trim(VarOAMVolume);
EdtSmell.Text:= Trim(VarOAMSmell);
EdtResiduum.Text:= Trim(VarOAMResiduum);
Edt_pH.Text:= Trim(VarOAM_pH);
EdtAceticAcid.Text:= Trim(VarOAMAceticAcid);
EdtBilifuscin.Text:= Trim(VarOAMBilifuscin);
EdtAceton.Text:= Trim(VarOAMAceton);
EdtUrobilin.Text:= Trim(VarOAMUrobilin);
EdtCylindr.Text:= Trim(VarOAMCylindr);
EdtMucos.Text:= Trim(VarOAMMucos);

DTPickNechipor.DateTime:= VarNechiporDate;
EdtNechiporLeu.Text:= Trim(VarNechiporLeu);
EdtNechiporEr.Text:= Trim(VarNechiporEr);
EdtNechiporFlora.Text:= Trim(VarNechiporFlora);

// ������/������� ����� ��� ����������� GroupBox � ���������
if (Trim(VarOAMDensity)='') and (Trim(VarOAMLeu)='') and (Trim(VarOAMEr)='') and
     (Trim(VarOAMEpit)='') and (Trim(VarOAMSalt)='') and (Trim(VarOAMFlora)='') and
        (Trim(VarOAMVolume)='') and (Trim(VarOAMSmell)='') and (Trim(VarOAMResiduum)='') and
          (Trim(VarOAM_pH)='') and (Trim(VarOAMAceticAcid)='') and (Trim(VarOAMBilifuscin)='') and
            (Trim(VarOAMAceton)='') and (Trim(VarOAMUrobilin)='') and (Trim(VarOAMCylindr)='') and
              (Trim(VarOAMMucos)='')
  then ChBoxOAM.Checked:= False
  else ChBoxOAM.Checked:= True;

if (Trim(VarNechiporLeu)='') and (Trim(VarNechiporEr)='') and (Trim(VarNechiporFlora)='')
  then ChBoxNechipor.Checked:= False
  else ChBoxNechipor.Checked:= True;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.FormShow(Sender: TObject);
begin
ChBoxOAMClick(Sender);
ChBoxNechiporClick(Sender);
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.BtnSaveClick(Sender: TObject);
var EndCurPos: Integer;//����� ��������� ������
    FullTxt, TmpTxt : String;
    TmpRE: TRichEdit;//����������� RichEdit
begin
//�������������� ����������
FullTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);
  try
    with TmpRE do
      begin
//        Parent:= FrmOAM;
        PlainText:= False;
        Visible:= False;
      end;

    if ChBoxOAM.Checked then
      begin
        FullTxt:= 'OAM (' + FormatDateTime('DD.MM.YY', DTPickOAM.DateTime) + '): ';
        EndCurPos:= Length(Trim(FullTxt));

      (**************************** ������ ��������� ***************************************)
        if (Trim(EdtVolume.Text) <> '') then FullTxt:= FullTxt + '�����. - ' + Trim(EdtVolume.Text) + ' ��; ';
        if (Trim(EdtSmell.Text) <> '') then FullTxt:= FullTxt + '����� - ' + Trim(EdtSmell.Text) + '; ';

        case CbBoxOAMTransparent.ItemIndex of
          0: FullTxt:= FullTxt + '�����. - ������; ';
          1: FullTxt:= FullTxt + '�����. - ��������; ';
          2: FullTxt:= FullTxt + '�����. - ������; ';
        end;{case..of}

        if (Trim(EdtResiduum.Text) <> '') then FullTxt:= FullTxt + '�����. - ' + Trim(EdtResiduum.Text) + '; ';

        if CbBoxOAMColor.ItemIndex = 0
          then FullTxt:= FullTxt + ' ���� - �/�; '
          else FullTxt:= FullTxt + '���� - ' + Trim(CbBoxOAMColor.Text) + '; ' ;

        if (Trim(EdtOAMDensity.Text) <> '') then FullTxt:= FullTxt + '��.��� = ' + Trim(EdtOAMDensity.Text) + '; ';
        if (Trim(Edt_pH.Text) <> '') then FullTxt:= FullTxt + 'pH = ' + Trim(Edt_pH.Text) + '; ';

        FullTxt:= FullTxt + '����� - ' + Trim(CbBoxOAMProtein.Text) + '; ';

        if (Trim(EdtAceticAcid.Text) <> '')
          then FullTxt:= FullTxt + '�����-�����.����. ' + Trim(EdtAceticAcid.Text) + '; ';

        if (Trim(EdtBilifuscin.Text) <> '')
          then FullTxt:= FullTxt + '����.����. ' + Trim(EdtBilifuscin.Text) + '; ';

        FullTxt:= FullTxt + '����� - ' + Trim(CbBoxOAMSugar.Text) + '; ';


        if (Trim(EdtAceton.Text) <> '') then FullTxt:= FullTxt + '����. ' + Trim(EdtAceton.Text) + '; ';

        if (Trim(EdtUrobilin.Text) <> '') then FullTxt:= FullTxt + '������. ' + Trim(EdtUrobilin.Text) + '; ';

        if (Trim(EdtOAMLeu.Text) <> '') then FullTxt:= FullTxt + 'Leu = ' + Trim(EdtOAMLeu.Text) + '; ';
        if (Trim(EdtOAMEr.Text) <> '') then FullTxt:= FullTxt + 'Er = ' + Trim(EdtOAMEr.Text) + '; ';

        if (Trim(EdtCylindr.Text) <> '') then FullTxt:= FullTxt + '������. ' + Trim(EdtCylindr.Text) + '; ';
        if (Trim(EdtOAMEpit.Text) <> '') then FullTxt:= FullTxt + '����. ' + Trim(EdtOAMEpit.Text) + '; ';
        if (Trim(EdtMucos.Text) <> '') then FullTxt:= FullTxt + '����� ' + Trim(EdtMucos.Text) + '; ';
        if (Trim(EdtOAMSalt.Text) <> '') then FullTxt:= FullTxt + '���� ' + Trim(EdtOAMSalt.Text) + '; ';
        if (Trim(EdtOAMFlora.Text) <> '') then FullTxt:= FullTxt + '����. ' + Trim(EdtOAMFlora.Text) + '; ';

        FullTxt:= WriteSymbolToEndString(FullTxt,'. ');

      with TmpRE do
        begin
          Clear;
          Lines.Add(FullTxt);
          SelStart:= 0;//������ � ������ ������
          SelLength:= EndCurPos;//�������� "������" ����� ������
          SelAttributes.Style:= [fsUnderline];//����������� ���������� �����
          SelStart:= Length(FullTxt);
          SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
        end;{with TmpRE}
      end;{if..then ChBoxOAM.Checked}

    if ChBoxNechipor.Checked then
      begin
        if (Trim(EdtNechiporLeu.Text) = '') and (Trim(EdtNechiporEr.Text) = '')
          then//���� ��� ���� ������
            begin
              if Application.MessageBox('� ������� ���� �� ����������� �� ������� ���������� ���������� � ' +
              '�����������. ������ �� �������?', '������������ ������', MB_ICONINFORMATION + MB_YESNO) = IDYes
                then//������ ������ "��"
                  begin
                    if Trim(EdtNechiporLeu.Text) = ''
                      then//���� Leu ������
                        begin
                          if EdtNechiporLeu.CanFocus then EdtNechiporLeu.SetFocus;
                          Abort;
                        end
                      else//���� Er ������
                        begin
                          if EdtNechiporEr.CanFocus then EdtNechiporEr.SetFocus;
                          Abort;
                        end;
                  end;{if..then Application.MessageBox}
            end
          else//���� �� ���� ���� ���������
            begin
              TmpTxt:= '������ ���� �� ����������� (' + FormatDateTime('DD.MM.YY',
                                                           DTPickNechipor.DateTime) + '): ';
              EndCurPos:= Length(Trim(TmpTxt));

              if Trim(EdtNechiporLeu.Text) <> '' then
               TmpTxt:= TmpTxt + 'Leu = ' + Trim(EdtNechiporLeu.Text) + ' /��; ';

              if Trim(EdtNechiporEr.Text) <> '' then
               TmpTxt:= TmpTxt + 'Er = ' + Trim(EdtNechiporEr.Text) + ' /��; ';

              if Trim(EdtNechiporFlora.Text) <> '' then
                TmpTxt:= TmpTxt + '����. ' + Trim(EdtNechiporFlora.Text) + '; ';

              TmpTxt:= WriteSymbolToEndString(TmpTxt, '.');

              with TmpRE do
                begin
                  if ChBoxOAM.Checked then Lines.Add('');//������� ������ ������
                  Lines.Add(TmpTxt);

                  if ChBoxOAM.Checked
                    then SelStart:= Length(FullTxt + #13#10 + #13#10)
                    else SelStart:= 0;
                  SelLength:= EndCurPos;//�������� "������" ����� ������
                  SelAttributes.Style:= [fsUnderline];//����������� ���������� �����
                  SelStart:= Length(Text);
                  SelLength:= 0;
                  SelAttributes.Assign(DefAttributes);
                end;{with TmpRE}
            end;{if..else (EdtNechiporLeu = '') and (EdtNechiporEr = '')}

      end;{if..then ChBoxNechipor.Checked}

    FullTxt:= Trim(GetRTFText(TmpRE));//�������� ����� ����� ������ ��� �����������
                                         //��������� �� ��������� ����������
    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextOAM;//������������� ��������� ��� ���������

    //����������� ��������� ����� ������� ���
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextOAM:= FullTxt//����� �������� ��� ����� ���������� TextOAM
      else//���� ���-�� ��������
        if TextOAM <> FullTxt//���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ���������� ������� ����' +
            ' ������ ����� �������� �� ����� �������������� �����. ���������' +
            ' ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextOAM:= FullTxt;//��������, ���� ����� "��"


    //��������� ����������
    VarOAMDate:= DTPickOAM.Date;
    VarOAMColor:= CbBoxOAMColor.ItemIndex;
    VarOAMTransparent:= CbBoxOAMTransparent.ItemIndex;
    VarOAMDensity:= Trim(EdtOAMDensity.Text);
    VarOAMSugar:= CbBoxOAMSugar.ItemIndex;
    VarOAMProtein:= CbBoxOAMProtein.ItemIndex;
    VarOAMLeu:= Trim(EdtOAMLeu.Text);
    VarOAMEr:= Trim(EdtOAMEr.Text);
    VarOAMEpit:= Trim(EdtOAMEpit.Text);
    VarOAMSalt:= Trim(EdtOAMSalt.Text);
    VarOAMFlora:= Trim(EdtOAMFlora.Text);
    VarOAMVolume:= Trim(EdtVolume.Text);
    VarOAMSmell:= Trim(EdtSmell.Text);
    VarOAMResiduum:= Trim(EdtResiduum.Text);
    VarOAM_pH:= Trim(Edt_pH.Text);
    VarOAMAceticAcid:= Trim(EdtAceticAcid.Text);
    VarOAMBilifuscin:= Trim(EdtBilifuscin.Text);
    VarOAMAceton:= Trim(EdtAceton.Text);
    VarOAMUrobilin:= Trim(EdtUrobilin.Text);
    VarOAMCylindr:= Trim(EdtCylindr.Text);
    VarOAMMucos:= Trim(EdtMucos.Text);

    VarNechiporDate:= DTPickNechipor.Date;
    VarNechiporLeu:= Trim(EdtNechiporLeu.Text);
    VarNechiporEr:= Trim(EdtNechiporEr.Text);
    VarNechiporFlora:= Trim(EdtNechiporFlora.Text);


  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.AppEventsFrmOAMShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"
  end;
AppEventsFrmOAM.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.ChBoxOAMClick(Sender: TObject);
begin
//  ��������/��������� ��������
Label1.Enabled:= ChBoxOAM.Checked;
Label2.Enabled:= ChBoxOAM.Checked;
Label3.Enabled:= ChBoxOAM.Checked;
Label4.Enabled:= ChBoxOAM.Checked;
Label5.Enabled:= ChBoxOAM.Checked;
Label6.Enabled:= ChBoxOAM.Checked;
Label7.Enabled:= ChBoxOAM.Checked;
Label8.Enabled:= ChBoxOAM.Checked;
Label9.Enabled:= ChBoxOAM.Checked;
Label10.Enabled:= ChBoxOAM.Checked;
Label11.Enabled:= ChBoxOAM.Checked;
Label12.Enabled:= ChBoxOAM.Checked;
Label13.Enabled:= ChBoxOAM.Checked;
Label14.Enabled:= ChBoxOAM.Checked;
LblVolume.Enabled:= ChBoxOAM.Checked;
Label20.Enabled:= ChBoxOAM.Checked;
LblSmell.Enabled:= ChBoxOAM.Checked;
LblResiduum.Enabled:= ChBoxOAM.Checked;
Lbl_pH.Enabled:= ChBoxOAM.Checked;
LblAceticAcid.Enabled:= ChBoxOAM.Checked;
LblBilifuscin.Enabled:= ChBoxOAM.Checked;
LblAceton.Enabled:= ChBoxOAM.Checked;
LblUrobilin.Enabled:= ChBoxOAM.Checked;
LblCylindr.Enabled:= ChBoxOAM.Checked;
LblMucos.Enabled:= ChBoxOAM.Checked;
Label21.Enabled:= ChBoxOAM.Checked;
Label22.Enabled:= ChBoxOAM.Checked;


CbBoxOAMColor.Enabled:= ChBoxOAM.Checked;
CbBoxOAMTransparent.Enabled:= ChBoxOAM.Checked;
CbBoxOAMSugar.Enabled:= ChBoxOAM.Checked;
CbBoxOAMProtein.Enabled:= ChBoxOAM.Checked;

EdtOAMDensity.Enabled:= ChBoxOAM.Checked;
EdtOAMLeu.Enabled:= ChBoxOAM.Checked;
EdtOAMEr.Enabled:= ChBoxOAM.Checked;
EdtOAMEpit.Enabled:= ChBoxOAM.Checked;
EdtOAMSalt.Enabled:= ChBoxOAM.Checked;
EdtOAMFlora.Enabled:= ChBoxOAM.Checked;

EdtVolume.Enabled:= ChBoxOAM.Checked;
EdtSmell.Enabled:= ChBoxOAM.Checked;
EdtResiduum.Enabled:= ChBoxOAM.Checked;
Edt_pH.Enabled:= ChBoxOAM.Checked;
EdtAceticAcid.Enabled:= ChBoxOAM.Checked;
EdtBilifuscin.Enabled:= ChBoxOAM.Checked;
EdtAceton.Enabled:= ChBoxOAM.Checked;
EdtUrobilin.Enabled:= ChBoxOAM.Checked;
EdtCylindr.Enabled:= ChBoxOAM.Checked;
EdtMucos.Enabled:= ChBoxOAM.Checked;

DTPickOAM.Enabled:= ChBoxOAM.Checked;

end;

//----------------------------------------------------------------------------

procedure TFrmOAM.ChBoxNechiporClick(Sender: TObject);
begin
//  ��������/��������� ��������
Label15.Enabled:= ChBoxNechipor.Checked;
Label16.Enabled:= ChBoxNechipor.Checked;
Label17.Enabled:= ChBoxNechipor.Checked;
Label18.Enabled:= ChBoxNechipor.Checked;
Label19.Enabled:= ChBoxNechipor.Checked;
Label23.Enabled:= ChBoxNechipor.Checked;
Label32.Enabled:= ChBoxNechipor.Checked;

EdtNechiporLeu.Enabled:= ChBoxNechipor.Checked;
EdtNechiporEr.Enabled:= ChBoxNechipor.Checked;
EdtNechiporFlora.Enabled:= ChBoxNechipor.Checked;

DTPickNechipor.Enabled:= ChBoxNechipor.Checked;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.EdtOAMDensityKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> '/') and (Key <> '�')
  then
    begin
      Key:= #0;
      Application.MessageBox('�� ������ ������� ������ ����� �� 0 �� 9 ��� ������������ ' +
                              '''�/�'' (����. �� "���� ����")',
                              '������ ����� ������', MB_ICONINFORMATION + MB_OK);
      if EdtOAMDensity.CanFocus then EdtOAMDensity.SetFocus;
      Abort;
    end
  else
    if (Key < '0') or (Key > '9')//���� ��� �� �����
      then EdtOAMDensity.MaxLength:= 3
      else EdtOAMDensity.MaxLength:= 4;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.EdtNechiporLeuKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) then
  begin
    Key:= #0;
    Application.MessageBox('�� ������ ������� ������ ����� �� 0 �� 9',
                            '������ ����� ������', MB_ICONINFORMATION + MB_OK);
    if EdtNechiporLeu.CanFocus then EdtNechiporLeu.SetFocus;
    Abort;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.EdtNechiporErKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) then
  begin
    Key:= #0;
    Application.MessageBox('�� ������ ������� ������ ����� �� 0 �� 9',
                            '������ ����� ������', MB_ICONINFORMATION + MB_OK);
    if EdtNechiporEr.CanFocus then EdtNechiporEr.SetFocus;
    Abort;
  end;
end;

//----------------------------------------------------------------------------

procedure TFrmOAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmOAM.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
