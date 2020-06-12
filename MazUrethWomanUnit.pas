unit MazUrethWomanUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceSettings;

type
  TFrmMazUrethWoman = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    label1: TLabel;
    Label6: TLabel;
    DTPickMazUr: TDateTimePicker;
    EdtLeu: TEdit;
    CbBoxGn: TComboBox;
    CbBoxTr: TComboBox;
    BtnSave: TButton;
    BtnCancel: TButton;
    Panel11: TPanel;
    CbBoxFlora: TComboBox;
    Label8: TLabel;
    CbBoxEpit: TComboBox;
    Label9: TLabel;
    CbBoxKeyCell: TComboBox;
    Label10: TLabel;
    CbBoxCand: TComboBox;
    Label7: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    EdtEr: TEdit;
    NiceSetFrmMazUrethWoman: TNiceSettings;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMazUrethWoman: TFrmMazUrethWoman;

implementation

uses StatusPatUnit, VarAndrUnit;


{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.BtnSaveClick(Sender: TObject);
var EndCurPos: Integer;//������ � ����� ���������
    FullTxt, TmpTxt: String;
    TmpRE: TRichEdit;
begin
FullTxt:= '';
TmpTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        Parent:= FrmMazUrethWoman;
        PlainText:= False;
        Visible:= False;
      end;

    //����� ���������
    FullTxt:= '����� �� ������ (' + FormatDateTime('DD.MM.YY', DTPickMazUr.Date) + '): ';
    EndCurPos:= Length(Trim(FullTxt));

    if Trim(EdtLeu.Text) <> '' then
      FullTxt:= FullTxt + 'Leu = ' + WriteSymbolToEndString(EdtLeu.Text,'') + ' � �/��, ';

    if Trim(EdtEr.Text) <> '' then
        FullTxt:= FullTxt + TmpTxt + 'Er = ' +
                                    WriteSymbolToEndString(EdtEr.Text,'') + ' � �/��, ';

    case CbBoxGn.ItemIndex of
    0: TmpTxt:= Trim(CbBoxGn.Items[CbBoxGn.ItemIndex]);
    1: TmpTxt:= '���������� ��������������';
    2: TmpTxt:= '���������� �����������';
    3: TmpTxt:= '���������� ������ - � �����������';
    end;{case..of}

    FullTxt:= FullTxt + 'Gn - ' + TmpTxt + ', ';

    case CbBoxTr.ItemIndex of
    0: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    1: TmpTxt:= Trim(CbBoxTr.Items[CbBoxTr.ItemIndex]);
    2: TmpTxt:= '���������� ������������ ������';
    3: TmpTxt:= '���������� �������������� ������';
    4: TmpTxt:= '���������� �������������� ���������� �����';
    5: TmpTxt:= '���������� ����������� �����';
    end;{case..of}


    FullTxt:= FullTxt + 'Tr - ' + TmpTxt + ', ';
    FullTxt:= FullTxt + '����� - ' + Trim(CbBoxFlora.Items[CbBoxFlora.ItemIndex]) + ', ';
    FullTxt:= FullTxt + '����. - ' + Trim(CbBoxEpit.Items[CbBoxEpit.ItemIndex]) + ', ';

    if CbBoxKeyCell.ItemIndex <> 0
      then TmpTxt:= '"��������" ������ - ����������, '
      else TmpTxt:= '';

    FullTxt:= FullTxt + TmpTxt;

    if CbBoxCand.ItemIndex <> 0
      then TmpTxt:= 'candida ' + Trim(CbBoxCand.Items[CbBoxCand.ItemIndex])+ '.'
      else TmpTxt:= '';

    FullTxt:= FullTxt + TmpTxt;

    FullTxt:= WriteSymbolToEndString(Trim(FullTxt),'.');

    //��������� ����� � ���-����
    TmpRE.Lines.Add(FullTxt);

    //����������� ���������
    with TmpRE do
      begin
        SelStart:= 0;
        SelLength:= EndCurPos;
        SelAttributes.Style:= [fsUnderline];
        SelStart:= EndCurPos;
        SelAttributes.Assign(DefAttributes);
      end;

    //��������� � ���������� ��� "���������������" �����
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextMazUr;//������������� ��������� ��� ���������

    //����������� ��������� ����� ����� �� ������
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextMazUr:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextMazUr <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ���������� ����� �� ������' +
            ' ������ ����� �������� �� ����� �������������� �����. ���������' +
            ' ������?', '��������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextMazUr:= FullTxt;//��������, ���� ����� "��"

    //��������� ����������
    VarMazUrethraDate:= DTPickMazUr.Date;
    VarMazUrLeu:= Trim(EdtLeu.Text);
    VarMazUrEr:= Trim(EdtEr.Text);
    VarMazUrGn:= CbBoxGn.ItemIndex;
    VarMazUrTr:= CbBoxTr.ItemIndex;
    VarMazUrFlora:= CbBoxFlora.ItemIndex;
    VarMazUrEpit:= CbBoxEpit.ItemIndex;
    VarMazUrKeyCell:= CbBoxKeyCell.ItemIndex;
    VarMazUrCand:= CbBoxCand.ItemIndex;

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.FormCreate(Sender: TObject);
begin
//������ ��������� �����
NiceSetFrmMazUrethWoman.LoadSettings;

DTPickMazUr.DateTime:= VarMazUrethraDate;
EdtLeu.Text:= Trim(VarMazUrLeu);
EdtEr.Text:= Trim(VarMazUrEr);
CbBoxGn.ItemIndex:= VarMazUrGn;
CbBoxTr.ItemIndex:= VarMazUrTr;
CbBoxFlora.ItemIndex:= VarMazUrFlora;
CbBoxEpit.ItemIndex:= VarMazUrEpit;
CbBoxKeyCell.ItemIndex:= VarMazUrKeyCell;
CbBoxCand.ItemIndex:= VarMazUrCand;
end;

//----------------------------------------------------------------------------

procedure TFrmMazUrethWoman.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//��������� ��������� �����
NiceSetFrmMazUrethWoman.SaveSettings;
end;

//----------------------------------------------------------------------------

end.
