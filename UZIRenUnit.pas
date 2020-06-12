unit UZIRenUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, ExtCtrls, NiceSettings, AppEvnts;

type
  TFrmUZIRen = class(TForm)
    BtnSave: TButton;
    BtnCancel: TButton;
    NiceSetFrmUZIRen: TNiceSettings;
    AppEventsFrmUZIRen: TApplicationEvents;
    PgCtrlUZIRen: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox5: TGroupBox;
    Label60: TLabel;
    DTPickUZIRen: TDateTimePicker;
    ChBoxUZIRen: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    EdtDextRen_01: TEdit;
    EdtDextRen_02: TEdit;
    EdtDextRen_03: TEdit;
    EdtDextRen_04: TEdit;
    CbBoxDextPielosSize: TComboBox;
    CbBoxDextPielosDens: TComboBox;
    CbBoxDextPielosDeform: TComboBox;
    CbBoxDextPielosLytos: TComboBox;
    CbBoxDextUreterSize: TComboBox;
    CbBoxDextUreterLytos: TComboBox;
    CbBoxDextRenPosit: TComboBox;
    CbBoxDextRenRmvbl: TComboBox;
    CbBoxDextRenPathPrec: TComboBox;
    CbBoxDextRenPathEven: TComboBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    EdtSinRen_01: TEdit;
    EdtSinRen_02: TEdit;
    EdtSinRen_03: TEdit;
    EdtSinRen_04: TEdit;
    CbBoxSinPielosSize: TComboBox;
    CbBoxSinPielosDens: TComboBox;
    CbBoxSinPielosDeform: TComboBox;
    CbBoxSinPielosLytos: TComboBox;
    CbBoxSinUreterSize: TComboBox;
    CbBoxSinUreterLytos: TComboBox;
    CbBoxSinRenPosit: TComboBox;
    CbBoxSinRenRmvbl: TComboBox;
    CbBoxSinRenPathPrec: TComboBox;
    CbBoxSinRenPathEven: TComboBox;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Panel1: TPanel;
    DTPickUZIVesicUr: TDateTimePicker;
    EdtVesicUr_01: TEdit;
    EdtVesicUr_02: TEdit;
    EdtVesicUr_03: TEdit;
    EdtVesicUr_04: TEdit;
    EdtVesicUr_05: TEdit;
    Panel2: TPanel;
    CbBoxVesicUrContents: TComboBox;
    CbBoxVesicUrLytos: TComboBox;
    ChBoxVesicUr: TCheckBox;
    CbBoxVesicUrPathPrec: TComboBox;
    CbBoxVesicUrPathEven: TComboBox;
    CbBoxVesicUrWallDensity: TComboBox;
    CbBoxVesicUrWallThickn: TComboBox;
    EdtVesicUr_06: TEdit;
    BtnPrev: TButton;
    BtnNext: TButton;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtDextRen_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtDextRen_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtDextRen_03KeyPress(Sender: TObject; var Key: Char);
    procedure EdtDextRen_04KeyPress(Sender: TObject; var Key: Char);
    procedure EdtSinRen_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtSinRen_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtSinRen_03KeyPress(Sender: TObject; var Key: Char);
    procedure EdtSinRen_04KeyPress(Sender: TObject; var Key: Char);
    procedure EdtVesicUr_01KeyPress(Sender: TObject; var Key: Char);
    procedure EdtVesicUr_02KeyPress(Sender: TObject; var Key: Char);
    procedure EdtVesicUr_03KeyPress(Sender: TObject; var Key: Char);
    procedure EdtVesicUr_04KeyPress(Sender: TObject; var Key: Char);
    procedure EdtVesicUr_05KeyPress(Sender: TObject; var Key: Char);
    procedure ChBoxUZIRenClick(Sender: TObject);
    procedure ChBoxVesicUrClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventsFrmUZIRenShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure PgCtrlUZIRenChange(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure BtnPrevClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure LastFocus(var Mess : TMessage); message  WM_ACTIVATE;    
  end;

var
  FrmUZIRen: TFrmUZIRen;

implementation

uses MainAndrUnit, StatusPatUnit, VarAndrUnit, DMFIBUnit;

var rn, rm, rj,
    ln, lm, lj,
    vn, vm, vj, vq, vh: Integer;//��������

    FocusFlag: Boolean;

{$R *.dfm}

//----------------------------------------------------------------------------

procedure TFrmUZIRen.BtnSaveClick(Sender: TObject);
var BegCurPos, EndCurPos: Integer; //������ � ����� ���������
    FullTxt, TmpTxt: AnsiString;
    TmpRE: TRichEdit;
begin
FullTxt:= '';
TmpTxt:= '';

//������� � ������������� ��������� ���-����
TmpRE:= TRichEdit.CreateParented(Self.Handle);

  try
    with TmpRE do
      begin
        PlainText:= False;
        Visible:= False;
      end;

    if ChBoxUZIRen.Checked then //�������� ��� ����� �������
      begin
        //��������� ���������
        FullTxt:= '��� ����� ' + FormatDateTime('(' + 'DD.MM.YY' + '):',
                                                                    DTPickUZIRen.DateTime);
        BegCurPos:= 0;
        EndCurPos:= Length(Trim(FullTxt));

        with TmpRE do
          begin
            Clear;//������
            Lines.Add(Trim(FullTxt));
            SelStart:= BegCurPos;
            SelLength:= EndCurPos;//�������� "������" ����� ������
            SelAttributes.Style:= [fsUnderline];//����������� ���������� �����
            SelStart:= Length(Text);//������ � ����� ������
            SelLength:= 0;//������ ���������
            SelAttributes.Assign(DefAttributes);//���������� ��������
          end;{with TmpRE}

        TmpRE.Lines.Add(''); //�������� �� ���� ���������� ������ ������ �������
        BegCurPos:= Length(TmpRE.Text);

       (***************** ������ �������� ������ ����� *********************)
        FullTxt:= '';

        //----- ����������� ������������� ������ � ���������
        //���� ��������� ��� �����, ���������� ��� ��� �������
        if (Trim(EdtDextRen_01.Text) <> '')
            and (Trim(EdtDextRen_02.Text) <> '')
              and (Trim(EdtDextRen_03.Text) <> '')
          then
            begin
              FullTxt:= '������ ' + Trim(EdtDextRen_01.Text) + ' x '
                                 + Trim(EdtDextRen_02.Text) + ' x '
                                 + Trim(EdtDextRen_03.Text) + ' ��;';
            end {then ... ������ ��� �������}
          else
            begin
              //���� ���� �� ���� ������ ���������, ���������� �������
              if ((Trim(EdtDextRen_01.Text) <> '') and (Trim(EdtDextRen_02.Text) <> ''))
                or ((Trim(EdtDextRen_02.Text) <> '') and (Trim(EdtDextRen_03.Text) <> ''))
                  or ((Trim(EdtDextRen_01.Text) <> '') and (Trim(EdtDextRen_03.Text) <> ''))
                then
                  begin
                    if (Trim(EdtDextRen_01.Text) <> '')
                      and (Trim(EdtDextRen_02.Text) <> '')

                      then FullTxt:= '������ ' + Trim(EdtDextRen_01.Text) +
                                                   ' x ' + Trim(EdtDextRen_02.Text) + ' ��;'

                      else
                        if (Trim(EdtDextRen_02.Text) <> '')
                          and (Trim(EdtDextRen_03.Text) <> '')

                        then FullTxt:= '������ ' + Trim(EdtDextRen_02.Text) + ' x '
                                                         + Trim(EdtDextRen_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          FullTxt:= '������ ' + Trim(EdtDextRen_01.Text) + ' x '
                                                        + Trim(EdtDextRen_03.Text) + ' ��;';

                  end {then ... ���� �� ��� �������}
                else
                  begin
                    //���� ��� ����� ������ � �������� ���� � ������ ��� (rn=0)
                    if (not ((Trim(EdtDextRen_01.Text) <> '')
                         or (Trim(EdtDextRen_02.Text) <> '')
                           or (Trim(EdtDextRen_03.Text) <> ''))) and (rn = 0)

                      then
                        begin
                          rn:= rn + 1;//����������� �������
                          rm:= rm + 1;//����� ������ �� ������������ � ������� � ��������

                          //����������, ����� �� ������� ������� ��� ���
                          if Application.MessageBox('�� �� ������� ������� ������ �����.' +
                               ' ������ �������?', '�������� ������',
                                 MB_YESNO + MB_ICONINFORMATION) = IDYes
                            then
                              begin
                                //����������, ������ ����� �������� �����
                                if Trim(EdtDextRen_01.Text) = ''
                                  then
                                    begin
                                      if EdtDextRen_01.CanFocus
                                                          then EdtDextRen_01.SetFocus;
                                    end
                                  else if Trim(EdtDextRen_02.Text) = ''
                                    then
                                      begin
                                        if EdtDextRen_02.CanFocus
                                                          then EdtDextRen_02.SetFocus;
                                      end
                                    else if Trim(EdtDextRen_03.Text) = ''
                                      then if EdtDextRen_03.CanFocus
                                                          then EdtDextRen_03.SetFocus;
                                Exit;
                              end
                            else
                              FullTxt:= '';
                        end {then ... ��� ����� ������ � �������� � ������ ���}
                      else
                        begin
                          //����� ������� ���� �������� �������� �����������, ��� ��������
                          //������ ���� �� ������ - ����������� �����������
                          if rm = 0 //���� ���������� � ������ ���
                            then
                              begin
                              rm:= rm + 1;//����������� �������

                              if Application.MessageBox('�� �� �������, ��� �������, ���' +
                              ' ���� �� �������� ������ �����. ������ �������?',
                              '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                                then
                                  begin
                                   //����������, ������ ����� �������� �����
                                   if Trim(EdtDextRen_01.Text) = ''
                                     then
                                       begin
                                         if EdtDextRen_01.CanFocus
                                                          then EdtDextRen_01.SetFocus;
                                       end
                                     else if Trim(EdtDextRen_02.Text) = ''
                                       then
                                         begin
                                           if EdtDextRen_02.CanFocus
                                                          then EdtDextRen_02.SetFocus;
                                         end
                                       else if Trim(EdtDextRen_03.Text) = ''
                                         then if EdtDextRen_03.CanFocus
                                                          then EdtDextRen_03.SetFocus;  

                                    Exit;
                                  end
                                else
                                  FullTxt:= '';
                              end;
                        end; {else ... ��� ����� ������ � �������� � ������ ���}
                  end; {else ... ���� �� ��� �������}
            end;{else ... ������ ��� �������}

        if (Trim(EdtDextRen_04.Text) <> '')
          then //���� ��������
            begin
              if Trim(FullTxt) <> ''
                then //���������� ����� �� ������
                  FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' ������� ��������� ' +
                                                           Trim(EdtDextRen_04.Text) + ' ��;'
                else
                  FullTxt:= '������� ��������� ' + Trim(EdtDextRen_04.Text) + ' ��;';
            end {then..Trim(EdtDextRen_04.Text) <> ''}
          else //���� ������
            begin
              if rj = 0 then
                begin
                  rj:= rj + 1;//����������� �������
                  if Application.MessageBox('�� �� ������� ������� ��������� ������ ' +
                                            '�����. ������ �������?', '�������� ������',
                                                     MB_YESNO + MB_ICONINFORMATION) = IDYes
                    then
                      begin
                        if EdtDextRen_04.CanFocus then EdtDextRen_04.SetFocus;
                        Exit;
                      end;
                end;
            end;{else..Trim(EdtDextRen_04.Text) <> ''}

        //"��������" ����� �� ������
        FullTxt:= Trim(FullTxt) + ' ��� '
                + Trim(CbBoxDextPielosSize.Items[CbBoxDextPielosSize.ItemIndex]) + ', '
                + Trim(CbBoxDextPielosDens.Items[CbBoxDextPielosDens.ItemIndex]) + ', '
                + Trim(CbBoxDextPielosDeform.Items[CbBoxDextPielosDeform.ItemIndex]) + ',';

        case CbBoxDextPielosLytos.ItemIndex of
         0 : TmpTxt:= '������������ ���';
         1 : TmpTxt:= '� �������� ������� �������������� ���������';
         2 : TmpTxt:= '� �������� ������� ������� ��������������� ����������';
         3 : TmpTxt:= '� �������� ������� ������� ��������������� ����������';
         4 : TmpTxt:= '� �������� ������ ������� ��������������� ����������';
         5 : TmpTxt:= '� �������� ������� ��������������� ����������';
        end;

        FullTxt:= Trim(FullTxt) + ' ' + Trim(TmpTxt) + '. ���������� ' +
                  Trim(CbBoxDextUreterSize.Items[CbBoxDextUreterSize.ItemIndex]) + ',';

        case CbBoxDextUreterLytos.ItemIndex of
         0 : TmpTxt:= '������������ ���';
         1 : TmpTxt:= '� �������� ���������-��������������� �������� ��������������� ' +
                      '����������';
         2 : TmpTxt:= '� ������� ����� ��������������� ����������';
         3 : TmpTxt:= '� ������� ����� ��������������� ����������';
         4 : TmpTxt:= '� ������ ����� ��������������� ����������';
         5 : TmpTxt:= '� �������������� ������ ��������������� ����������';
        end;

        FullTxt:= Trim(FullTxt) + ' ' + Trim(TmpTxt) + '.';

        EndCurPos:= Length('������ �����:');

        FullTxt:= '������ �����: '
          + '��������� ' + Trim(CbBoxDextRenPosit.Text) + ', '
          + '����������� ' + Trim(CbBoxDextRenRmvbl.Text) + '; '
          + '������� ' + Trim(CbBoxDextRenPathPrec.Text) + ', ' + Trim(CbBoxDextRenPathEven.Text) + '; '
          + Trim(FullTxt);

       (***************** ��������� �������� ������ ����� *********************)

       TmpRE.Lines.Add(FullTxt);

        //���������� �����
        with TmpRE do
          begin
            SelStart:= BegCurPos;
            SelLength:= EndCurPos;//�������� "������" ����� ������
            SelAttributes.Style:= [fsBold];//����������� ���������� �����
            SelStart:= Length(Text);//������ � ����� ������
            SelLength:= 0;//������ ���������
            SelAttributes.Assign(DefAttributes);//���������� ��������
          end;{with TmpRE}

       TmpRE.Lines.Add('');


       (***************** ������ �������� ����� ����� *********************)
        BegCurPos:= Length(TmpRE.Text);

        FullTxt:= '';
        //----- ����������� ������������� ������ � ���������
        //���� ��������� ��� �����, ���������� ��� ��� �������
        if (Trim(EdtSinRen_01.Text) <> '')
            and (Trim(EdtSinRen_02.Text) <> '')
              and (Trim(EdtSinRen_03.Text) <> '')
          then
            begin
              FullTxt:= '������ ' + Trim(EdtSinRen_01.Text) + ' x '
                                  + Trim(EdtSinRen_02.Text) + ' x '
                                  + Trim(EdtSinRen_03.Text) + ' ��;';
            end {then ... ������ ��� �������}
          else
            begin
              //���� ���� �� ���� ������ ���������, ���������� �������
              if ((Trim(EdtSinRen_01.Text) <> '') and (Trim(EdtSinRen_02.Text) <> ''))
                or ((Trim(EdtSinRen_02.Text) <> '') and (Trim(EdtSinRen_03.Text) <> ''))
                  or ((Trim(EdtSinRen_01.Text) <> '') and (Trim(EdtSinRen_03.Text) <> ''))
                then
                  begin
                    if (Trim(EdtSinRen_01.Text) <> '')
                      and (Trim(EdtSinRen_02.Text) <> '')

                      then FullTxt:= '������ ' + Trim(EdtSinRen_01.Text) +
                                                   ' x ' + Trim(EdtSinRen_02.Text) + ' ��;'

                      else
                        if (Trim(EdtSinRen_02.Text) <> '')
                          and (Trim(EdtSinRen_03.Text) <> '')

                        then FullTxt:= '������ ' + Trim(EdtSinRen_02.Text) + ' x '
                                                         + Trim(EdtSinRen_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          FullTxt:= '������ ' + Trim(EdtSinRen_01.Text) + ' x '
                                                        + Trim(EdtSinRen_03.Text) + ' ��;';

                  end {then ... ���� �� ��� �������}
                else
                  begin
                    //���� ��� ����� ������ � �������� ���� � ������ ��� (ln=0)
                    if (not ((Trim(EdtSinRen_01.Text) <> '')
                         or (Trim(EdtSinRen_02.Text) <> '')
                           or (Trim(EdtSinRen_03.Text) <> ''))) and (ln = 0)

                      then
                        begin
                          ln:= ln + 1;//����������� �������
                          lm:= lm + 1;

                          //����������, ����� �� ������� ������� ��� ���
                          if Application.MessageBox('�� �� ������� ������� ����� �����.' +
                               ' ������ �������?', '�������� ������',
                                 MB_YESNO + MB_ICONINFORMATION) = IDYes
                            then
                              begin
                                //����������, ������ ����� �������� �����
                                if Trim(EdtSinRen_01.Text) = ''
                                  then
                                    begin
                                      if EdtSinRen_01.CanFocus
                                                          then EdtSinRen_01.SetFocus;
                                    end
                                  else if Trim(EdtSinRen_02.Text) = ''
                                    then
                                      begin
                                        if EdtSinRen_02.CanFocus
                                                          then EdtSinRen_02.SetFocus;
                                      end
                                    else if Trim(EdtSinRen_03.Text) = ''
                                      then if EdtSinRen_03.CanFocus
                                                          then EdtSinRen_03.SetFocus;
                                Exit;
                              end
                            else
                              FullTxt:= '';

                          end {then ... ��� ����� ������ � �������� � ������ ���}
                      else
                        begin
                          //����� ������� ���� �������� �������� �����������, ��� ��������
                          //������ ���� �� ������ - ����������� �����������
                          if lm = 0 //���� ���������� � ������ ���
                            then
                              begin
                              lm:= lm + 1;//����������� �������

                              if Application.MessageBox('�� �� �������, ��� �������, ���' +
                              ' ���� �� �������� ����� �����. ������ �������?',
                              '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                                then
                              begin
                                //����������, ������ ����� �������� �����
                                if Trim(EdtSinRen_01.Text) = ''
                                  then
                                    begin
                                      if EdtSinRen_01.CanFocus
                                                          then EdtSinRen_01.SetFocus;
                                    end
                                  else if Trim(EdtSinRen_02.Text) = ''
                                    then
                                      begin
                                        if EdtSinRen_02.CanFocus
                                                          then EdtSinRen_02.SetFocus;
                                      end
                                    else if Trim(EdtSinRen_03.Text) = ''
                                      then if EdtSinRen_03.CanFocus
                                                          then EdtSinRen_03.SetFocus;
                                Exit;
                              end
                                else
                                  FullTxt:= '';
                              end;
                        end; {else ... ��� ����� ������ � �������� � ������ ���}
                  end; {else ... ���� �� ��� �������}
            end;{else ... ������ ��� �������}

        if (Trim(EdtSinRen_04.Text) <> '')
          then //���� ��������
            begin
              if Trim(FullTxt) <> ''
                then //���������� ����� �� ������
                  FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' ������� ��������� ' +
                                                           Trim(EdtSinRen_04.Text) + ' ��;'
                else
                  FullTxt:= '������� ��������� ' + Trim(EdtSinRen_04.Text) + ' ��;';
            end {then..Trim(EdtSinRen_04.Text) <> ''}
          else //���� ������
            begin
              if lj = 0 then
                begin
                  lj:= lj + 1;//����������� �������
                  if Application.MessageBox('�� �� ������� ������� ��������� ����� ' +
                                            '�����. ������ �������?', '�������� ������',
                                                     MB_YESNO + MB_ICONINFORMATION) = IDYes
                    then
                      begin
                        if EdtSinRen_04.CanFocus then EdtSinRen_04.SetFocus;
                        Exit;
                      end;
                end;
            end;{else..Trim(EdtSinRen_04.Text) <> ''}

        //"��������" ����� �� ������
        FullTxt:= Trim(FullTxt) + ' ��� '
                + Trim(CbBoxSinPielosSize.Items[CbBoxSinPielosSize.ItemIndex]) + ', '
                + Trim(CbBoxSinPielosDens.Items[CbBoxSinPielosDens.ItemIndex]) + ', '
                + Trim(CbBoxSinPielosDeform.Items[CbBoxSinPielosDeform.ItemIndex]) + ',';

        case CbBoxSinPielosLytos.ItemIndex of
         0 : TmpTxt:= '������������ ���';
         1 : TmpTxt:= '� �������� ������� �������������� ���������';
         2 : TmpTxt:= '� �������� ������� ������� ��������������� ����������';
         3 : TmpTxt:= '� �������� ������� ������� ��������������� ����������';
         4 : TmpTxt:= '� �������� ������ ������� ��������������� ����������';
         5 : TmpTxt:= '� �������� ������� ��������������� ����������';
        end;

        FullTxt:= Trim(FullTxt) + ' ' + Trim(TmpTxt) + '. ���������� ' +
                  Trim(CbBoxSinUreterSize.Items[CbBoxSinUreterSize.ItemIndex]) + ',';

        case CbBoxSinUreterLytos.ItemIndex of
         0 : TmpTxt:= '������������ ���';
         1 : TmpTxt:= '� �������� ���������-��������������� �������� ��������������� ' +
                      '����������';
         2 : TmpTxt:= '� ������� ����� ��������������� ����������';
         3 : TmpTxt:= '� ������� ����� ��������������� ����������';
         4 : TmpTxt:= '� ������ ����� ��������������� ����������';
         5 : TmpTxt:= '� �������������� ������ ��������������� ����������';
        end;

        FullTxt:= Trim(FullTxt) + ' ' + Trim(TmpTxt) + '.';

        FullTxt:= '����� �����: '
          + '��������� ' + Trim(CbBoxSinRenPosit.Text) + ', '
          + '����������� ' + Trim(CbBoxSinRenRmvbl.Text) + '; '
          + '������� ' + Trim(CbBoxSinRenPathPrec.Text) + ', ' + Trim(CbBoxSinRenPathEven.Text) + '; '
        + Trim(FullTxt);

        (***************** ��������� �������� ����� ����� *********************)

        TmpRE.Lines.Add(FullTxt);
        EndCurPos:= Length('����� �����:');

         //���������� �����
         with TmpRE do
           begin
             SelStart:= BegCurPos;
             SelLength:= EndCurPos;//�������� "������" ����� ������
             SelAttributes.Style:= [fsBold];//����������� ���������� �����
             SelStart:= Length(Text);//������ � ����� ������
             SelLength:= 0;//������ ���������
             SelAttributes.Assign(DefAttributes);//���������� ��������
           end;{with TmpRE}

      end;{if ChBoxUZIRen.Checked ...then}


    if ChBoxVesicUr.Checked then //�������� ��� �/������ �������
      begin
        if ChBoxUZIRen.Checked
          then TmpRE.Lines.Add('');

        TmpTxt:= '��� �������� ������ ' + FormatDateTime('(' + 'DD.MM.YY' + '):',
                                                               DTPickUZIVesicUr.DateTime);
        AddFormatStrInRichEdit(TmpRE, TmpTxt);

        //----- ����������� ������������� ������ � ��������� �/������
        //���� ��������� ��� �����, ���������� ��� ��� �������
        if (Trim(EdtVesicUr_01.Text) <> '')
            and (Trim(EdtVesicUr_02.Text) <> '')
              and (Trim(EdtVesicUr_03.Text) <> '')
          then
            begin
              FullTxt:= '������ ' + Trim(EdtVesicUr_01.Text) + ' x '
                                  + Trim(EdtVesicUr_02.Text) + ' x '
                                  + Trim(EdtVesicUr_03.Text) + ' ��;';
            end {then ... ������ ��� �������}
          else
            begin
              //���� ���� �� ���� ������ ���������, ���������� �������
              if ((Trim(EdtVesicUr_01.Text) <> '') and (Trim(EdtVesicUr_02.Text) <> ''))
                or ((Trim(EdtVesicUr_02.Text) <> '') and (Trim(EdtVesicUr_03.Text) <> ''))
                  or ((Trim(EdtVesicUr_01.Text) <> '') and (Trim(EdtVesicUr_03.Text) <> ''))
                then
                  begin
                    if (Trim(EdtVesicUr_01.Text) <> '')
                      and (Trim(EdtVesicUr_02.Text) <> '')

                      then FullTxt:= '������ ' + Trim(EdtVesicUr_01.Text) +
                                                   ' x ' + Trim(EdtVesicUr_02.Text) + ' ��;'

                      else
                        if (Trim(EdtVesicUr_02.Text) <> '')
                          and (Trim(EdtVesicUr_03.Text) <> '')

                        then FullTxt:= '������ ' + Trim(EdtVesicUr_02.Text) + ' x '
                                                         + Trim(EdtVesicUr_03.Text) + ' ��;'

                        else //������ ��������� ������ � ������ �����
                          FullTxt:= '������ ' + Trim(EdtVesicUr_01.Text) + ' x '
                                                        + Trim(EdtVesicUr_03.Text) + ' ��;';

                  end {then ... ���� �� ��� �������}
                else
                  begin
                    //���� ��� ����� ������ � �������� ���� � ������ ��� (ln=0)
                    if (not ((Trim(EdtVesicUr_01.Text) <> '')
                         or (Trim(EdtVesicUr_02.Text) <> '')
                           or (Trim(EdtVesicUr_03.Text) <> ''))) and (vn = 0)

                      then
                        begin
                          vn:= vn + 1;//����������� �������
                          vm:= vm + 1;//����� ������ �� ������������ � ������� � ��������

                          //����������, ����� �� ������� ������� ��� ���
                          if Application.MessageBox('�� �� ������� ������� �������� ' +
                                '������. ������ �������?', '�������� ������',
                                 MB_YESNO + MB_ICONINFORMATION) = IDYes
                            then
                              begin
                                //����������, ������ ����� �������� �����
                                if Trim(EdtVesicUr_01.Text) = ''
                                  then
                                    begin
                                      if EdtVesicUr_01.CanFocus
                                                          then EdtVesicUr_01.SetFocus;
                                    end
                                  else if Trim(EdtVesicUr_02.Text) = ''
                                    then
                                      begin
                                        if EdtVesicUr_02.CanFocus
                                                          then EdtVesicUr_02.SetFocus;
                                      end
                                    else if Trim(EdtVesicUr_03.Text) = ''
                                      then if EdtVesicUr_03.CanFocus
                                                          then EdtVesicUr_03.SetFocus;
                                Exit;
                              end
                            else
                              FullTxt:= '';

                          end {then ... ��� ����� ������ � �������� � ������ ���}
                      else
                        begin
                          //����� ������� ���� �������� �������� �����������, ��� ��������
                          //������ ���� �� ������ - ����������� �����������
                          if vm = 0 //���� ���������� � ������ ���
                            then
                              begin
                              vm:= vm + 1;//����������� �������

                              if Application.MessageBox('�� �� �������, ��� �������, ���' +
                              ' ���� �� �������� �������� ������. ������ �������?',
                              '�������� ������', MB_YESNO + MB_ICONINFORMATION) = IDYes
                                then
                                  begin
                                    //����������, ������ ����� �������� �����
                                    if Trim(EdtVesicUr_01.Text) = ''
                                      then
                                        begin
                                          if EdtVesicUr_01.CanFocus
                                                          then EdtVesicUr_01.SetFocus;
                                        end
                                      else if Trim(EdtVesicUr_02.Text) = ''
                                        then
                                          begin
                                            if EdtVesicUr_02.CanFocus
                                                          then EdtVesicUr_02.SetFocus;
                                          end
                                        else if Trim(EdtVesicUr_03.Text) = ''
                                          then if EdtVesicUr_03.CanFocus
                                                          then EdtVesicUr_03.SetFocus;
                                    Exit;
                                  end
                                else
                                  FullTxt:= '';
                              end;
                        end; {else ... ��� ����� ������ � �������� � ������ ���}
                  end; {else ... ���� �� ��� �������}
            end;{else ... ������ ��� �������}

        if (Trim(EdtVesicUr_04.Text) <> '')
          then //���� ��������
            begin
              if Trim(FullTxt) <> ''
                then //���������� ����� �� ������
                  FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' ������� ������ ' +
                                                           Trim(EdtVesicUr_04.Text) + ' ��;'
                else
                  FullTxt:= '������� ������ ' + Trim(EdtVesicUr_04.Text) + ' ��;';
            end {then..Trim(EdtVesicUr_04.Text) <> ''}
          else //���� ������
            begin
              if vj = 0 then
                begin
                  vj:= vj + 1;//����������� �������
                  if Application.MessageBox('�� �� ������� ������� ������ �������� ' +
                                            '������. ������ �������?', '�������� ������',
                                                     MB_YESNO + MB_ICONINFORMATION) = IDYes
                    then
                      begin
                        if EdtVesicUr_04.CanFocus then EdtVesicUr_04.SetFocus;
                        Exit;
                      end;
                end;
            end;{else..Trim(EdtVesicUr_04.Text) <> ''}

        if (Trim(EdtVesicUr_05.Text) <> '')
          then //���� ��������
            begin
              if Trim(FullTxt) <> ''
                then //���������� ����� �� ������
                  FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' ����� �� ������ ' +
                                                           Trim(EdtVesicUr_05.Text) + ' ��;'
                else
                  FullTxt:= '����� �� ������ ' + Trim(EdtVesicUr_05.Text) + ' ��;';
            end {then..Trim(EdtVesicUr_05.Text) <> ''}
          else //���� ������
            begin
              if vq = 0 then
                begin
                  vq:= vq + 1;//����������� �������
                  if Application.MessageBox('�� �� ������� ����� �������� ������ �� ��������������. ' +
                                            '������ �������?', '�������� ������',
                                                     MB_YESNO + MB_ICONINFORMATION) = IDYes
                    then
                      begin
                        if EdtVesicUr_05.CanFocus then EdtVesicUr_05.SetFocus;
                        Exit;
                      end;
                end;
            end;{else..Trim(EdtVesicUr_05.Text) <> ''}

        if (Trim(EdtVesicUr_06.Text) <> '')
          then //���� ��������
            begin
              if Trim(FullTxt) <> ''
                then //���������� ����� �� ������
                  FullTxt:= WriteSymbolToEndString(FullTxt,',') + ' ����� ����� ������ ' +
                                                           Trim(EdtVesicUr_06.Text) + ' ��;'
                else
                  FullTxt:= '����� ����� ������ ' + Trim(EdtVesicUr_06.Text) + ' ��;';
            end {then..Trim(EdtVesicUr_06.Text) <> ''}
          else //���� ������
            begin
              if vh = 0 then
                begin
                  vh:= vh + 1;//����������� �������
                  if Application.MessageBox('�� �� ������� ����� �������� ������ ����� ��������������. ' +
                                            '������ �������?', '�������� ������',
                                                     MB_YESNO + MB_ICONINFORMATION) = IDYes
                    then
                      begin
                        if EdtVesicUr_06.CanFocus then EdtVesicUr_06.SetFocus;
                        Exit;
                      end;
                end;
            end;{else..Trim(EdtVesicUr_06.Text) <> ''}

        case CbBoxVesicUrContents.ItemIndex of
          0 : TmpTxt:= '����������';
          1 : TmpTxt:= '�� ����������';
          2 : TmpTxt:= '� �������������� �������';
          3 : TmpTxt:= '� ��������';
        end;

        FullTxt:= Trim(FullTxt) + ' ���������� ' + Trim(TmpTxt) + ',';

        case CbBoxVesicUrLytos.ItemIndex of
          0 : TmpTxt:= '������������ ���';
          1 : TmpTxt:= '� �������� ��������������� ����������';
          2 : TmpTxt:= '�� ��� ������������ ������';
        end;

        FullTxt:= '������� ' + Trim(CbBoxVesicUrPathPrec.Text) + ', ' + Trim(CbBoxVesicUrPathEven.Text) + '; '
          + '������ ' + Trim(CbBoxVesicUrWallDensity.Text) + ', ' + Trim(CbBoxVesicUrWallThickn.Text) + '; '
          + Trim(FullTxt) + ' ' + Trim(TmpTxt) + '.';

        TmpRE.Lines.Add(FullTxt);
      end;{ChBoxVesicUr.Checked ...then}

    //�������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

//    with TmpRE do
//      begin
//        Clear;//������
//        Text:= FullTxt;
//        SelStart:= 0;
//        SelLength:= EndCurPos;//�������� "������" ����� ������
//        SelAttributes.Style:= [fsUnderline];//����������� ���������� �����
//        SelStart:= Length(Text);//������ � ����� ������
//        SelLength:= 0;//������ ���������
//        SelAttributes.Assign(DefAttributes);//���������� ��������
//      end;{with TmpRE}

    //����� �������� ���������� ��������������� ����� � ������
    FullTxt:= Trim(GetRTFText(TmpRE));

    TmpRE.Clear;//������ �������� ����
    TmpRE.Text:= TextUZIRen;//������������� ��������� ��� ���������

    //����������� ��������� ����� ���
    if Trim(TmpRE.Text) = ''
      then //���� ���-���� ��� ������
        TextUZIRen:= FullTxt //����� �������� "���������" ��������� ����������
      else//���� ���-�� ��������
        if TextUZIRen <> FullTxt //���� ����� ����� ���������� �� �������
          then
            if Application.MessageBox('����� ��������� ����� ��������� ��� ����� � ' +
            '�������� ������ ������ ����� ������� �� ����� �������������� �����. ' +
            '��������� ������?', '��������� ������',
                                                   MB_YESNO + MB_ICONINFORMATION) = IDYes
              then TextUZIRen:= FullTxt;//��������, ���� ����� "��"

    //��������� ���������� ���������� � ����������
    VarUZIRenDate:= DTPickUZIRen.Date;
    VarBoolUZIRen:= BoolConvertInt(ChBoxUZIRen.Checked);
    VarDextRen_01:= Trim(EdtDextRen_01.Text);
    VarDextRen_02:= Trim(EdtDextRen_02.Text);
    VarDextRen_03:= Trim(EdtDextRen_03.Text);
    VarDextRen_04:= Trim(EdtDextRen_04.Text);
    VarDextPielosSize:= CbBoxDextPielosSize.ItemIndex;
    VarDextPielosDens:= CbBoxDextPielosDens.ItemIndex;
    VarDextPielosDeform:= CbBoxDextPielosDeform.ItemIndex;
    VarDextPielosLytos:= CbBoxDextPielosLytos.ItemIndex;
    VarDextUreterSize:= CbBoxDextUreterSize.ItemIndex;
    VarDextUreterLytos:= CbBoxDextUreterLytos.ItemIndex;

    VarSinRen_01:= Trim(EdtSinRen_01.Text);
    VarSinRen_02:= Trim(EdtSinRen_02.Text);
    VarSinRen_03:= Trim(EdtSinRen_03.Text);
    VarSinRen_04:= Trim(EdtSinRen_04.Text);
    VarSinPielosSize:= CbBoxSinPielosSize.ItemIndex;
    VarSinPielosDens:= CbBoxSinPielosDens.ItemIndex;
    VarSinPielosDeform:= CbBoxSinPielosDeform.ItemIndex;
    VarSinPielosLytos:= CbBoxSinPielosLytos.ItemIndex;
    VarSinUreterSize:= CbBoxSinUreterSize.ItemIndex;
    VarSinUreterLytos:= CbBoxSinUreterLytos.ItemIndex;

    VarUZIVesicUrDate:= DTPickUZIVesicUr.Date;
    VarBoolUZIVesicUr:= BoolConvertInt(ChBoxVesicUr.Checked);
    VarVesicUr_01:= Trim(EdtVesicUr_01.Text);
    VarVesicUr_02:= Trim(EdtVesicUr_02.Text);
    VarVesicUr_03:= Trim(EdtVesicUr_03.Text);
    VarVesicUr_04:= Trim(EdtVesicUr_04.Text);
    VarVesicUr_05:= Trim(EdtVesicUr_05.Text);
    VarVesicUrContents:= CbBoxVesicUrContents.ItemIndex;
    VarVesicUrLytos:= CbBoxVesicUrLytos.ItemIndex;

    VarDextRenPosit:= CbBoxDextRenPosit.ItemIndex;
    VarDextRenRmvbl:= CbBoxDextRenRmvbl.ItemIndex;
    VarDextRenPathPrec:= CbBoxDextRenPathPrec.ItemIndex;
    VarDextRenPathEven:= CbBoxDextRenPathEven.ItemIndex;
    VarSinRenPosit:= CbBoxSinRenPosit.ItemIndex;
    VarSinRenRmvbl:= CbBoxSinRenRmvbl.ItemIndex;
    VarSinRenPathPrec:= CbBoxSinRenPathPrec.ItemIndex;
    VarSinRenPathEven:= CbBoxSinRenPathEven.ItemIndex;
    VarVesicUrPathPrec:= CbBoxVesicUrPathPrec.ItemIndex;
    VarVesicUrPathEven:= CbBoxVesicUrPathEven.ItemIndex;
    VarVesicUrWallDensity:= CbBoxVesicUrWallDensity.ItemIndex;
    VarVesicUrWallThickn:= CbBoxVesicUrWallThickn.ItemIndex;
    VarVesicUr_06:= Trim(EdtVesicUr_06.Text);

  finally
    TmpRE.Free;
  end;{try..finally}

Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.AppEventsFrmUZIRenShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if FocusFlag then
  begin
    if (GetKeyState(VK_ESCAPE) < 0) then BtnCancelClick(Self);//��������� ������� ������� "������"
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RETURN) < 0) then BtnSaveClick(Self);//��������� ������� ������� "���������"

    //����������� "������" ������ "����-����", �������� "�����������" ��������� ������ ��� ���������� �� �����
    Handled:= True;
    if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_LEFT) < 0) and BtnPrev.Enabled
      then BtnPrevClick(Self)
      else
        if (GetKeyState(VK_SHIFT) < 0) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_RIGHT) < 0) and BtnNext.Enabled
          then BtnNextClick(Self)
          else Handled:= False;
  end;
AppEventsFrmUZIRen.CancelDispatch;//����� ������ ����� �� ����������� �� ����� �������
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.BtnCancelClick(Sender: TObject);
begin
Close;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.BtnNextClick(Sender: TObject);
begin
if PgCtrlUZIRen.ActivePageIndex < Pred(PgCtrlUZIRen.PageCount)//���� �� ��������� ��������
  then PgCtrlUZIRen.SelectNextPage(True);//�������� ������
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.BtnPrevClick(Sender: TObject);
begin
if PgCtrlUZIRen.ActivePageIndex > 0//���� �� ������ ��������
  then PgCtrlUZIRen.SelectNextPage(False);//�������� �����
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.FormCreate(Sender: TObject);
begin
//c�������� ��������� �����
NiceSetFrmUZIRen.RegKey:= NiceSetRegKeyPath;
NiceSetFrmUZIRen.LoadSettings;

//������ ��������� � ����������� �� ����
if DMFIB.DSetAnketa.FN('SEX').AsInteger = 1
  then //���� ��� �������
      Self.Caption:= '��� ������� ������� (�������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')'
  else //���� ��� �������
      Self.Caption:= '��� ������� ������� (���������: ' + Trim(FrmMainProg.LblStatusSingle.Caption) + ')';

//�������� ��������
rn:= 0;
rm:= 0;
rj:= 0;
ln:= 0;
lm:= 0;
lj:= 0;
vn:= 0;
vm:= 0;
vj:= 0;
vq:= 0;
vh:= 0;

FocusFlag:= True;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//���������� ��������� �����
NiceSetFrmUZIRen.SaveSettings;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.FormShow(Sender: TObject);
begin
//��������� ���������� � ���������� ����������
DTPickUZIRen.DateTime:= VarUZIRenDate;
ChBoxUZIRen.Checked:= IntConvertBool(VarBoolUZIRen);
EdtDextRen_01.Text:= Trim(VarDextRen_01);
EdtDextRen_02.Text:= Trim(VarDextRen_02);
EdtDextRen_03.Text:= Trim(VarDextRen_03);
EdtDextRen_04.Text:= Trim(VarDextRen_04);
CbBoxDextPielosSize.ItemIndex:= VarDextPielosSize;
CbBoxDextPielosDens.ItemIndex:= VarDextPielosDens;
CbBoxDextPielosDeform.ItemIndex:= VarDextPielosDeform;
CbBoxDextPielosLytos.ItemIndex:= VarDextPielosLytos;
CbBoxDextUreterSize.ItemIndex:= VarDextUreterSize;
CbBoxDextUreterLytos.ItemIndex:= VarDextUreterLytos;

EdtSinRen_01.Text:= Trim(VarSinRen_01);
EdtSinRen_02.Text:= Trim(VarSinRen_02);
EdtSinRen_03.Text:= Trim(VarSinRen_03);
EdtSinRen_04.Text:= Trim(VarSinRen_04);
CbBoxSinPielosSize.ItemIndex:= VarSinPielosSize;
CbBoxSinPielosDens.ItemIndex:= VarSinPielosDens;
CbBoxSinPielosDeform.ItemIndex:= VarSinPielosDeform;
CbBoxSinPielosLytos.ItemIndex:= VarSinPielosLytos;
CbBoxSinUreterSize.ItemIndex:= VarSinUreterSize;
CbBoxSinUreterLytos.ItemIndex:= VarSinUreterLytos;

DTPickUZIVesicUr.DateTime:= VarUZIVesicUrDate;
ChBoxVesicUr.Checked:= IntConvertBool(VarBoolUZIVesicUr);
EdtVesicUr_01.Text:= Trim(VarVesicUr_01);
EdtVesicUr_02.Text:= Trim(VarVesicUr_02);
EdtVesicUr_03.Text:= Trim(VarVesicUr_03);
EdtVesicUr_04.Text:= Trim(VarVesicUr_04);
EdtVesicUr_05.Text:= Trim(VarVesicUr_05);
CbBoxVesicUrContents.ItemIndex:= VarVesicUrContents;
CbBoxVesicUrLytos.ItemIndex:= VarVesicUrLytos;

CbBoxDextRenPosit.ItemIndex:= VarDextRenPosit;
CbBoxDextRenRmvbl.ItemIndex:= VarDextRenRmvbl;
CbBoxDextRenPathPrec.ItemIndex:= VarDextRenPathPrec;
CbBoxDextRenPathEven.ItemIndex:= VarDextRenPathEven;

CbBoxSinRenPosit.ItemIndex:= VarSinRenPosit;
CbBoxSinRenRmvbl.ItemIndex:= VarSinRenRmvbl;
CbBoxSinRenPathPrec.ItemIndex:= VarSinRenPathPrec;
CbBoxSinRenPathEven.ItemIndex:= VarSinRenPathEven;


CbBoxVesicUrPathPrec.ItemIndex:= VarVesicUrPathPrec;
CbBoxVesicUrPathEven.ItemIndex:= VarVesicUrPathEven;
CbBoxVesicUrWallDensity.ItemIndex:= VarVesicUrWallDensity;
CbBoxVesicUrWallThickn.ItemIndex:= VarVesicUrWallThickn;
EdtVesicUr_06.Text:= Trim(VarVesicUr_06);

ChBoxVesicUrClick(Sender);
ChBoxUZIRenClick(Sender);

PgCtrlUZIRenChange(Sender);//��������� ������ "����-����"

//���� "�����"-����� �� ����� �������� �� ��������� TTabSheet, �� � VCL ActiveControll = TPageControl,
//���� �� ������� � ������, � ��������� ��� ����� ������, �� ActiveControll = TTabSheet.
//� ������ ������ �������-"�������" ����� �������� ����, �� ������ - �� ���������� ���� �����������
if PgCtrlUZIRen.ActivePage.CanFocus then PgCtrlUZIRen.ActivePage.SetFocus; //������� ����� �� �������
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.LastFocus(var Mess: TMessage);
begin
FocusFlag:= not (Mess.WParam = WA_INACTIVE);
inherited;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.PgCtrlUZIRenChange(Sender: TObject);
begin
BtnPrev.Enabled:= (PgCtrlUZIRen.ActivePageIndex <> 0);
BtnNext.Enabled:= not(PgCtrlUZIRen.ActivePageIndex = Pred(PgCtrlUZIRen.PageCount));
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtDextRen_01KeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #32) and FocusFlag
   then
     begin
       Beep;
       Application.MessageBox('�� ������ ������� ������ ����� ����� �� 0 �� 9 !   ',
       '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
       Key:= #0;
     end;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtDextRen_02KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtDextRen_03KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtDextRen_04KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtSinRen_01KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtSinRen_02KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtSinRen_03KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtSinRen_04KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtVesicUr_01KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtVesicUr_02KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtVesicUr_03KeyPress(Sender: TObject; var Key: Char);
begin
EdtDextRen_01KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtVesicUr_04KeyPress(Sender: TObject; var Key: Char);
begin
EdtVesicUr_05KeyPress(Sender, Key);
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.EdtVesicUr_05KeyPress(Sender: TObject; var Key: Char);
begin
if ((Key < '0') or (Key > '9')) and (Key <> #8) and (Key <> #32) and (Key <> ',') and (Key <> '.') and FocusFlag
   then
    begin
      Beep;
      Application.MessageBox('�� ������ ������� ������ ����� ����� �� 0 �� 9, ������� ��� ����� ! ',
      '���� ������������� ��������!', MB_OK + MB_ICONINFORMATION);
      Key:= #0;
    end;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.ChBoxUZIRenClick(Sender: TObject);
begin

Label60.Enabled:= ChBoxUZIRen.Checked;
DTPickUZIRen.Enabled:= ChBoxUZIRen.Checked;

Label1.Enabled:= ChBoxUZIRen.Checked;
Label10.Enabled:= ChBoxUZIRen.Checked;
Label11.Enabled:= ChBoxUZIRen.Checked;
Label12.Enabled:= ChBoxUZIRen.Checked;
Label2.Enabled:= ChBoxUZIRen.Checked;
Label9.Enabled:= ChBoxUZIRen.Checked;
Label3.Enabled:= ChBoxUZIRen.Checked;
Label4.Enabled:= ChBoxUZIRen.Checked;
EdtSinRen_01.Enabled:= ChBoxUZIRen.Checked;
EdtSinRen_02.Enabled:= ChBoxUZIRen.Checked;
EdtSinRen_03.Enabled:= ChBoxUZIRen.Checked;
EdtSinRen_04.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinPielosSize.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinPielosDens.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinPielosDeform.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinPielosLytos.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinUreterSize.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinUreterLytos.Enabled:= ChBoxUZIRen.Checked;

Label5.Enabled:= ChBoxUZIRen.Checked;
Label17.Enabled:= ChBoxUZIRen.Checked;
Label14.Enabled:= ChBoxUZIRen.Checked;
Label16.Enabled:= ChBoxUZIRen.Checked;
Label6.Enabled:= ChBoxUZIRen.Checked;
Label18.Enabled:= ChBoxUZIRen.Checked;
Label7.Enabled:= ChBoxUZIRen.Checked;
Label8.Enabled:= ChBoxUZIRen.Checked;
EdtDextRen_01.Enabled:= ChBoxUZIRen.Checked;
EdtDextRen_02.Enabled:= ChBoxUZIRen.Checked;
EdtDextRen_03.Enabled:= ChBoxUZIRen.Checked;
EdtDextRen_04.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextPielosSize.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextPielosDens.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextPielosDeform.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextPielosLytos.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextUreterSize.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextUreterLytos.Enabled:= ChBoxUZIRen.Checked;

Label28.Enabled:= ChBoxUZIRen.Checked;
Label29.Enabled:= ChBoxUZIRen.Checked;
Label30.Enabled:= ChBoxUZIRen.Checked;

Label31.Enabled:= ChBoxUZIRen.Checked;
Label32.Enabled:= ChBoxUZIRen.Checked;
Label33.Enabled:= ChBoxUZIRen.Checked;

CbBoxDextRenPosit.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextRenRmvbl.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextRenPathPrec.Enabled:= ChBoxUZIRen.Checked;
CbBoxDextRenPathEven.Enabled:= ChBoxUZIRen.Checked;

CbBoxSinRenPosit.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinRenRmvbl.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinRenPathPrec.Enabled:= ChBoxUZIRen.Checked;
CbBoxSinRenPathEven.Enabled:= ChBoxUZIRen.Checked;



if ChBoxUZIRen.Checked then
  if DTPickUZIRen.CanFocus then DTPickUZIRen.SetFocus;
end;

//----------------------------------------------------------------------------

procedure TFrmUZIRen.ChBoxVesicUrClick(Sender: TObject);
begin

Label13.Enabled:= ChBoxVesicUr.Checked;
Label22.Enabled:= ChBoxVesicUr.Checked;
Label21.Enabled:= ChBoxVesicUr.Checked;
Label20.Enabled:= ChBoxVesicUr.Checked;
Label23.Enabled:= ChBoxVesicUr.Checked;
Label24.Enabled:= ChBoxVesicUr.Checked;
Label25.Enabled:= ChBoxVesicUr.Checked;
Label26.Enabled:= ChBoxVesicUr.Checked;
Label27.Enabled:= ChBoxVesicUr.Checked;
Label15.Enabled:= ChBoxVesicUr.Checked;
Label19.Enabled:= ChBoxVesicUr.Checked;
DTPickUZIVesicUr.Enabled:= ChBoxVesicUr.Checked;
EdtVesicUr_01.Enabled:= ChBoxVesicUr.Checked;
EdtVesicUr_02.Enabled:= ChBoxVesicUr.Checked;
EdtVesicUr_03.Enabled:= ChBoxVesicUr.Checked;
EdtVesicUr_04.Enabled:= ChBoxVesicUr.Checked;
EdtVesicUr_05.Enabled:= ChBoxVesicUr.Checked;
CbBoxVesicUrContents.Enabled:= ChBoxVesicUr.Checked;
CbBoxVesicUrLytos.Enabled:= ChBoxVesicUr.Checked;

Label34.Enabled:= ChBoxVesicUr.Checked;
Label35.Enabled:= ChBoxVesicUr.Checked;
Label36.Enabled:= ChBoxVesicUr.Checked;
Label37.Enabled:= ChBoxVesicUr.Checked;

EdtVesicUr_06.Enabled:= ChBoxVesicUr.Checked;
CbBoxVesicUrPathPrec.Enabled:= ChBoxVesicUr.Checked;
CbBoxVesicUrPathEven.Enabled:= ChBoxVesicUr.Checked;
CbBoxVesicUrWallDensity.Enabled:= ChBoxVesicUr.Checked;
CbBoxVesicUrWallThickn.Enabled:= ChBoxVesicUr.Checked;

if ChBoxVesicUr.Checked then
  if DTPickUZIVesicUr.CanFocus then DTPickUZIVesicUr.SetFocus;
end;

//----------------------------------------------------------------------------

end.
