unit DMFIBUnit;

interface

uses
  SysUtils, Classes, StdCtrls, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  pFIBErrorHandler, FIB, FIBQuery, pFIBQuery;

type
  TDMFIB = class(TDataModule)
    Database: TpFIBDatabase;
    ReadTrans: TpFIBTransaction;
    DSetTotalPat: TpFIBDataSet;
    DSTotalPat: TDataSource;
    DSetSinglePat: TpFIBDataSet;
    DSSinglePat: TDataSource;
    DSetTown: TpFIBDataSet;
    WriteTransTown: TpFIBTransaction;
    DSTown: TDataSource;
    DSetClinic: TpFIBDataSet;
    WriteTransClinic: TpFIBTransaction;
    DSClinic: TDataSource;
    DSetDoctor: TpFIBDataSet;
    WriteTransDoctor: TpFIBTransaction;
    DSDoctor: TDataSource;
    DSetManip: TpFIBDataSet;
    WriteTransManip: TpFIBTransaction;
    DSManip: TDataSource;
    DSetRecom: TpFIBDataSet;
    WriteTransRecom: TpFIBTransaction;
    DSRecom: TDataSource;
    WriteTransPrice: TpFIBTransaction;
    DSPrice: TDataSource;
    DSetDrugs: TpFIBDataSet;
    WriteTransDrugs: TpFIBTransaction;
    DSDrugs: TDataSource;
    DSetDs: TpFIBDataSet;
    WriteTransDs: TpFIBTransaction;
    DSDs: TDataSource;
    DSetAnketa: TpFIBDataSet;
    WriteTransAnketa: TpFIBTransaction;
    DSAnketa: TDataSource;
    DSetPayment: TpFIBDataSet;
    WriteTransPayment: TpFIBTransaction;
    DSPayment: TDataSource;
    DSetShedule: TpFIBDataSet;
    WriteTransShedule: TpFIBTransaction;
    DSShedule: TDataSource;
    DSetVisitMain: TpFIBDataSet;
    WriteTransVisit: TpFIBTransaction;
    DSVisitMain: TDataSource;
    DSetVisitLabor: TpFIBDataSet;
    DSVisitLabor: TDataSource;
    DSetVisitExamin: TpFIBDataSet;
    DSVisitExamin: TDataSource;
    DSetVisitBlob: TpFIBDataSet;
    DSVisitBlob: TDataSource;
    DSetTemp: TpFIBDataSet;
    DSTemp: TDataSource;
    ErrorHandler: TpFibErrorHandler;
    DSetMKB_10: TpFIBDataSet;
    DS_MKB_10: TDataSource;
    DSBasePrice: TDataSource;
    DSetBasePrice: TpFIBDataSet;
    WriteTransBasePrice: TpFIBTransaction;
    DSetPrice: TpFIBDataSet;
    QryTemp: TpFIBQuery;
    DSetPriceID_PRICE: TFIBIntegerField;
    DSetPriceFK_BASEPRICE: TFIBIntegerField;
    DSetPriceNAME_PRICE: TFIBStringField;
    DSetPriceCOST_PROC_PRICE: TFIBBCDField;
    DSetPricePROC_CODE: TFIBStringField;
    DSetPricePROC_NAME: TFIBStringField;
    DSetTmpBlobVisit: TpFIBDataSet;
    TmpBlobQry: TpFIBQuery;
    WriteTransTmpBlob: TpFIBTransaction;
    DSetLookUpClin: TpFIBDataSet;
    DSLookUpClin: TDataSource;
    DSetReport: TpFIBDataSet;
    DSetTmp_2: TpFIBDataSet;
    WriteTransConsult: TpFIBTransaction;
    DSetConsult: TpFIBDataSet;
    DSConsult: TDataSource;
    DSetLaborIssue: TpFIBDataSet;
    WriteTransLaborIssue: TpFIBTransaction;
    DSLaborIssue: TDataSource;
    DSetServInfo: TpFIBDataSet;
    WriteTransServInfo: TpFIBTransaction;
    DSServInfo: TDataSource;
    procedure DSTotalPatDataChange(Sender: TObject; Field: TField);
    procedure DSSinglePatDataChange(Sender: TObject; Field: TField);
    procedure DSVisitMainDataChange(Sender: TObject; Field: TField);
    procedure DSAnketaDataChange(Sender: TObject; Field: TField);
    procedure ErrorHandlerFIBErrorEvent(Sender: TObject;
      ErrorValue: EFIBError; KindIBError: TKindIBError;
      var DoRaise: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  DMFIB: TDMFIB;
  ErrCount: Integer;//число "заходов" в процедуру обработки ошибок
  
implementation

uses MainAndrUnit, VarAndrUnit, BasePriceUnit, uFrmConsultation;


{$R *.dfm}
(*
procedure TFrmOneTwoThree.DS_MasterDataChange(Sender: TObject;
  Field: TField);
begin
//сопоставляем курсоры
if not DataSet_Master.IsEmpty then
  begin
    if not DataSet_Detail.Active then DataSet_Detail.Open;
    if not DataSet_Detail.IsEmpty then
                      DataSet_Detail.Locate('id_d',DataSet_Master['id_m'],[]);
  end;
end;
*)
//----------------------------------------------------------------------------

procedure TDMFIB.DSTotalPatDataChange(Sender: TObject; Field: TField);
begin
//сопоставляем курсоры
if not DSetTotalPat.IsEmpty then
  begin
    if not DSetAnketa.Active then DSetAnketa.Open;
    if not DSetAnketa.IsEmpty then
      DSetAnketa.Locate('ID_Anketa',DSetTotalPat['ID_Anketa'],[]);
    //VarID_Tbl_Anketa:= DSetTotalPat.FN('ID_ANKETA').AsInteger      
  end;

FrmMainProg.PatAnketsDisplay(Sender);//отображаем пациента под курсором
end;


//----------------------------------------------------------------------------

procedure TDMFIB.DSSinglePatDataChange(Sender: TObject; Field: TField);
begin
if not DSetSinglePat.IsEmpty then
  begin
    if not DSetVisitMain.Active then DSetVisitMain.Open;
    if not DSetVisitMain.IsEmpty then
      DSetVisitMain.Locate('ID_VISITMAIN',DSetSinglePat['ID_VISITMAIN'],[]);
  end;
end;

//----------------------------------------------------------------------------

procedure TDMFIB.DSVisitMainDataChange(Sender: TObject; Field: TField);
begin
if not DSetVisitMain.IsEmpty then
  begin
    if not DSetVisitLabor.Active then DSetVisitLabor.Open;
    if not DSetVisitLabor.IsEmpty then
      DSetVisitLabor.Locate('ID_VISITLABOR',DSetVisitMain['ID_VISITMAIN'],[]);

    if not DSetVisitExamin.Active then DSetVisitExamin.Open;
    if not DSetVisitExamin.IsEmpty then
      DSetVisitExamin.Locate('ID_VISITEXAMIN',DSetVisitMain['ID_VISITMAIN'],[]);

    if not DSetVisitBlob.Active then DSetVisitBlob.Open;
    if not DSetVisitBlob.IsEmpty then
      DSetVisitBlob.Locate('ID_VISITBLOB',DSetVisitMain['ID_VISITMAIN'],[]);

    if not DSetDoctor.Active then DSetDoctor.Open;
    if not DSetDoctor.IsEmpty then
      DSetDoctor.Locate('ID_DOCTOR',DSetVisitMain['ID_VISITMAIN'],[]);
  end;
end;

//----------------------------------------------------------------------------

procedure TDMFIB.DSAnketaDataChange(Sender: TObject; Field: TField);
begin
if not DSetAnketa.IsEmpty then
  begin
    if not DSetTown.Active then DSetTown.Open;
    if not DSetTown.IsEmpty then
      DSetTown.Locate('ID_TOWN',DSetAnketa['ANK_LINKTOWN'],[]);
  end;
end;

//----------------------------------------------------------------------------

procedure TDMFIB.ErrorHandlerFIBErrorEvent(Sender: TObject;
  ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
begin
ErrorGDSCode:= ErrorValue.IBErrorCode;
DoRaise:= True;
MsgFlag:= False;

case ErrorValue.IBErrorCode of
  //========================
  335544324: ErrorMsg:= 'Не удалось подсоединиться к базе данных!';
  //========================
  335544332: ErrorMsg:= 'Невозможно закончить редактирование текущей записи. Скорее всего, '
                                                             + 'ее уже успели удалить!';
  //========================
  335544382: ErrorMsg:= 'Блоб поле (картинка или большой текст) не найдено!';
  //========================
  335544472: ErrorMsg:= 'Логин не соответствует паролю!';
  //========================
  335544344: ErrorMsg:= 'Не удалось открыть требуемый файл!';
  //========================
  335544345: ErrorMsg:= 'Кто-то отредактировал ту же самую запись и попытался сохранить изменения в ней '
                    + 'одновременно с Вами. Однако он успел сделать это чуточку раньше Вас, поэтому его '
                    + 'изменения были успешно сохранены, а Ваши - нет !' + #13#10 + 'Не огорчайтесь. '
                    + 'Подобные ситуации чрезвычайно редки. Попробуйте внести изменения в эту запись еще '
                    + 'раз (если в этом еще будет существовать необходимость).';
  //========================
  335544352: ErrorMsg:= 'У вас нет соответствующих прав на изменение данных '
             + 'этой таблицы или данная связка логин/пароль соответствует другой '
             + 'группе пользователей!';
  //========================
  335544517: begin //пользовательские исключения самой базы данных
               case ErrorHandler.ExceptionNumber of
                 1: ErrorMsg:= 'Это служебная таблица, данные в которой обновляются '
                      + 'программно !';
                 2: ErrorMsg:= 'Классификатор болезней является неизменяемой таблицей !';
                 3: ErrorMsg:= 'Вы не можете удалить этого пациента, пока в базе данных '
                      + 'есть сведения (жалобы, лабораторные анализы, УЗИ, прочие '
                      + 'исследования), связанные с посещениями врача данным пациентом!';
                 4: ErrorMsg:= 'Вы не можете удалить врача из базы, поскольку он указан в '
                      + 'качестве лечащего доктора у одного или нескольких пациентов!';
                 5: ErrorMsg:= 'Вы не можете удалить этот населенный пункт из базы данных '
                      + 'пока у одного или нескольких пациентов он указан в качестве '
                      + 'места жительства!';
                 6: ErrorMsg:= 'Вы не можете удалить эту услугу из базового прайса, так '
                      + 'как она включена в список некоторых прайс-листов. Если Вы '
                      + 'твердо намерены все-таки удалить этот пункт, то сначала удалите '
                      + 'все созданные Вами прайсы, где эта услуга упомянута. *'
                      + #13#10 + #13#10 + '*  примечание: права на удаление и изменения '
                      + 'данных в прайсах имеют только пользователи группы '
                      + '"Администратор" и системный администратор (пользователь '
                      + 'SYSDBA).';
                 7: ErrorMsg:= 'Введенное Вами значение не может быть отрицательным числом!';
                 8: ErrorMsg:= 'Вы не можете удалить данное ЛПУ из базы данных, так как у одного '
                      + 'из пациентов оно указано в качестве лечебного учреждения, где ему '
                      + 'была оказана медицинская услуга!';
                 9: ErrorMsg:= 'Вы не можете удалить врача из базы, поскольку это может нарушить '
                      + 'логическую целостность данных в вашей базе ! Сначала удалите все '
                      + 'упоминания об этом враче из таблицы расписания консультаций.';
                10: ErrorMsg:= 'Вы не можете удалить данное ЛПУ из базы данных, поскольку это '
                      + 'может нарушить логическую целостность данных в вашей базе ! Сначала '
                      + 'удалите из таблицы расписания консультаций всех врачей, практикующих '
                      + 'в данной клинике.';
                11: ErrorMsg:= 'Вы не можете удалить этот корневой раздел прайса, так как он уже '
                      + 'используется в базовом прайсе для группировки медицинских услуг по '
                      + 'корневым разделам ! Для удаления корневого раздела Вам необходимо сначала '
                      + 'удалить из базового прайса все медицинские услуги, ссылающиеся на этот '
                      + 'раздел.';
                12: ErrorMsg:= 'Вы должны использовать буквы только латинского алфавита !';
                13: ErrorMsg:= 'Вы не можете удалить этого пациента, пока в таблице пометок имеются записи, '
                      + 'касаемые него!';
                  else
                   ErrorMsg:= 'Сообщение сервера: ' + '"' + Trim(ErrorValue.Message) + '"' + #13#10
                   + 'Номер пользовательского исключения: ' + IntToStr(ErrorHandler.ExceptionNumber)
                   + #13#10 + #13#10 + 'Запишите сообщение сервера и номер пользовательского '
                   + 'исключения, чтобы потом показать системному администратору, если не можете '
                   + 'подозвать его сейчас.';
               end;{case}
             end;
  //========================
  335544569:  begin
                ErrorMsg:= 'Ваше приложение не может открыть эту базу данных, так как '
                + 'она имеет другую структуру. Такое может случится, если она повреждена,'
                + ' либо Вы пытаетесь открыть не "родную" базу данных.';
              end;
  335544349:  begin
               if SenderTag = 665 //если ошибка на кнопке TStatusPatUnit.BtnSave
                 then ErrorMsg:= 'У пациента уже есть посещение к данному врачу на эту дату! '
                               + 'Либо измените дату этого визита на новую, либо отредактируйте '

                               + 'данные визита к врачу за требуемую дату.';
              end;
  335544665:  begin
               if SenderTag = 667 //если ошибка на кнопке TFrmConsultation.BtnSave
                 then ErrorMsg:= 'Врач не должен иметь два расписания приема в одном и том же '
                               + 'лечебном учреждении! Либо измените лечебное учреждение для '
                               + 'данного врача, либо отредактируйте уже имеющееся расписание.';
              end;

  else
    begin
      ErrorMsg:= Format('GDSCODE: %d' + #13#10 + 'IBMessage: %s' + #13#10
      + '          Не удалось выполнить требуемое Вами действие! Попробуйте записать '
      + 'на бумагу номер GDSCODA''а и текст английского сообщения ошибки, чтобы '
      + 'показать ее системному администратору потом, если не можете позвать его сейчас.',
      [ErrorValue.IBErrorCode]);
    end;
end;
end;


end.
