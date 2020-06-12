unit VarAndrUnit;

interface

uses   Windows, Graphics, ComCtrls, SysUtils, StrUtils, DBCtrlsEh, Classes, StdCtrls, CtlPanel,
       IBBlobFilter, Dialogs, Forms, Controls, HtmlHelp, Registry;

type
  TSystemPath=(
                Desktop,
                StartMenu,
                Programs,
                StartUp,
                Personal,
                Templates,
                Cache,
                MyPictures,
                MyVideo,
                AdministrativeTools,
                CD_Burning,
                WinRoot,
                WinSys
                );
const
    ApplCurVersInfo:  //номер версии приложения с разным функционалом
//                      Integer = 10;//версия для торрента embedded
                      Integer = 11;//версия для торрента multiuser
//                      Integer = 30;//тестовая версия embedded
//                      Integer = 31;//тестовая версия multiuser
//                     Integer = 20;//местная версия embedded
//                     Integer = 21;//местная версия multiuser

    DBCurVersInfo: //текущая версия базы данных для контроля коннекта
                   Integer = 4;
    NiceSetRegKeyPath: string = 'Software\leybasoft\Andrology';//путь к ветке реестра с настройками форм
    ChmFileName: String = 'help\ARMDoctor_help.chm';//файл справки
    HH_HELP_CONTEXT = $F;
    DefOrdBy_Clause: string = 'DATEVISIT DESC';//"умолчательное" значение кляузы Order By общей табли

{$REGION 'HelpContext Constants'}
//здесь перечислены некоторые константы
//для имитации HelpContext контроллов,
//вызывающих справку

  HlpCtxBasePrice: Integer = 3235;
  HlpCtxConnect: Integer = 3212;
  HlpCtxIFA: Integer = 32254;
  HlpCtxBloodHorm: Integer = 32254;
  HlpCtxShedul: Integer = 32210;
  HlpCtxStatusPat_0: Integer = 32251;
  HlpCtxStatusPat_1: Integer = 32252;
  HlpCtxStatusPat_2: Integer = 32253;
  HlpCtxStatusPat_3: Integer = 32254;
  HlpCtxStatusPat_4: Integer = 32255;
  HlpCtxStatusPat_5: Integer = 32256;
  HlpCtxAnketa: Integer = 3221;
  HlpCtxClinic: Integer = 3233;
  HlpCtxDoctor: Integer = 3232;
  HlpCtxDrugs: Integer = 3237;
  HlpCtxDs: Integer = 3238;
  HlpCtxManip: Integer = 3239;
  HlpCtxPayment: Integer = 3229;
  HlpCtxPrice: Integer = 3235;
  HlpCtxRecom: Integer = 32310;
  HlpCtxTown: Integer = 3231;
  HlpCtxConsultation: Integer = 3234;
  HlpCtxReportResearch: Integer = 324;

{$ENDREGION}

{$REGION 'Variable Section'}
var
    ReportInitDir: string;//глобальная переменная для директории, куда сохраняются файлы отчетов

    TblClinicFlag,TblTownFlag,
    TblDoctorFlag,TblPriceFlag,
    TblAnketaFlag, VisitPatientFlag,
    BloodBtnFlag, TblDrugFlag, DrugChoiceBtn, RecomChoiceBtn,
    TblManipFlag, TblDsFlag, DsChoiceBtn, ManipChoiceBtn,
    TblRecomFlag, MsgFlag,
    TblConsultFlag{, ConsultEditDocFlag}: Boolean; //промежуточные флаги в соотв.формах

    IsFinishedThread,
    IsThreadExecuteAbort: Boolean;
//------------------- Переменные дат ---------------------------

    //переменные с датами полей лабораторных анализов
    VarDateAIDS, VarPCRDate, VarIFADate, VarOAMDate, VarNechiporDate, VarMazUrethraDate,
    VarMazProstDate, VarSpermDate, VarKrugDate, VarSpermBiochemicDate,
    VarMARDate, VarSpermVitalDate,
    VarOAKDate, VarBloodBioDate, VarHormSterDate, VarHormTireoidDate,
    VarOnkomarkDate, VarUrethBactInocDate, VarProstBactInocDate, VarMicUrBactInocDate,
    VarBloodIonesDate, VarUrinBactInocDate,

    //переменные инструментальных исследований
    VarUZIRenDate, VarUZIVesicUrDate, VarUrScopiaDryDate, VarUrScopiaIrrigDate,
    VarUZIProstataDate, VarUZITestisDate, VarUZIPenisDate, VarUZIDopplerTestisDate: TDateTime;

// ---------------------- Целочисленные переменные -------------------

    //глобальные переменные-идентификаторы ID некоторых из таблиц
    VarID_Tbl_Anketa,
    VarID_Tbl_VisitMain,
    VarID_Tbl_Clinic,
    VarID_Tbl_Doctor,

    TmpHeight,          //высота в формах

    //числовое представление направления сортировки в столбцах главного грида
    SortClnLstNm, // фамилия (4)
    SortClnFstNm, // имя (5)
    SortClnDtBrn, //дата рождения (7)
    SortClnAdrTwn, //место проживания (3)
    SortClnDtVst, //дата посещения (11)
    SortClnNotes, //заметки (9)

    VarPgCtrlBloodHorm, //номер активной страницы PgCtrl на форме с анализами крови
    VarPgCtrlUZIGenit, //номер активной страницы PgCtrl на форме с УЗИ гениталий

    //номера результатов в комбах анализов
    VarOAMColor, VarOAMTransparent, VarOAMSugar, VarOAMProtein,//ОАМ

    //--- мазок из уретры
    VarMazUrGn, VarMazUrTr, VarMazUrFlora, VarMazUrKeyCell, VarMazUrCand,

    //--- мазок из шейки матки
    VarMazCvxGn, VarMazCvxTr, VarMazCvxFlora, VarMazCvxKeyCell, VarMazCvxCand,

    //--- мазок из влагалища
    VarMazVgnGn, VarMazVgnTr, VarMazVgnFlora, VarMazVgnKeyCell, VarMazVgnCand,

    //--- мазок из прямой кишки
    VarMazRectGn, VarMazRectTr, VarMazRectFlora, VarMazRectKeyCell, VarMazRectCand,

    //--- мазок сока простаты
    VarMazProstGn, VarMazProstTr, VarMazProstFlora, VarMazProstLZ, VarMazProstBekht,
    VarMazProstSperm,

    //--- ИФА
    VarNumIFAChlIgA, VarNumIFAChlIgG, VarNumIFAChlIgGb, VarNumIFAMicIgG, VarNumIFAMicIgA,
    VarNumIFAUrIgG, VarNumIFAUrIgA, VarNumIFATrIgG, VarNumIFACMVIgM, VarNumIFACMVIgG,
    VarNumIFACMVIgGavid, VarNumIFAHerpIgM, VarNumIFAHerpIgG, VarNumIFAHerpIgGavid,
    VarNumIFACandIgG,

    //--- спермограмма
    VarSpermReport,

    //--- УЗИ
    VarDextPielosSize, VarDextPielosDens, VarDextPielosDeform, VarDextPielosLytos,
    VarSinPielosSize, VarSinPielosDens, VarSinPielosDeform, VarSinPielosLytos,
    VarDextUreterSize, VarDextUreterLytos, VarSinUreterSize, VarSinUreterLytos,
    VarVesicUrContents, VarVesicUrLytos,
    VarDextRenPosit, VarDextRenRmvbl, VarDextRenPathPrec, VarDextRenPathEven,
    VarSinRenPosit, VarSinRenRmvbl, VarSinRenPathPrec, VarSinRenPathEven,
    VarVesicUrPathPrec, VarVesicUrPathEven, VarVesicUrWallDensity, VarVesicUrWallThickn,

    VarUZIProstContour, VarUZIProstOutline,
    VarUZIProstStructure, VarUZIProstDensity, VarUZIProstFibrosis, VarUZIProstLytos,
    VarUZIProstCentrFocal, VarUZIProstCentrDens, VarUZIProstPerifFocal,
    VarUZIProstPerifDens, VarUZIVesSeminDextWall, VarUZIVesSeminDextDens,
    VarUZIVesSeminSinWall, VarUZIVesSeminSinDens, VarUZIProstEchogenDext,
    VarUZIProstEchogenSin,

    VarUZITestisDextPath, VarUZITestisDextEdge, VarUZITestisDextStruct,
    VarUZITestisDextLiquid, VarUZIEpididimDextPath, VarUZIEpididimDextEdge,
    VarUZIEpididimDextStruct, VarUZIEpididimDextNidus,

    VarUZITestisSinPath, VarUZITestisSinEdge, VarUZITestisSinStruct,
    VarUZITestisSinLiquid, VarUZIEpididimSinPath, VarUZIEpididimSinEdge,
    VarUZIEpididimSinStruct, VarUZIEpididimSinNidus,

    VarUZIPenisCavernStruct, VarUZIPenisCavernDensit, VarUZIPenisCavernInclus,
    VarUZIPenisAlbuginStruct, VarUZIPenisAlbuginThick,

    VarChkDopplerTestis, VarVasaFunicDext, VarValsalveDext, VarVasaFunicParenchDext,
    VarVasaFunicSin, VarValsalveSin, VarVasaFunicParenchSin,

    //--- уретроскопии
    VarUrScopiaDryOstium_01, VarUrScopiaDryOstium_02, VarUrScopiaDryOstium_03,
    VarUrScopiaDryTubus_01, VarUrScopiaDryTubus_02, VarUrScopiaDryTubus_03,
    VarUrScopiaDryTubus_04, VarUrScopiaDryTubus_05, VarUrScopiaDryGland_01,
    VarUrScopiaDryGland_02, VarUrScopiaDryGland_03, VarUrScopiaDryGland_04,
    VarUrScopiaDryGland_05, VarUrScopiaDryFigure_01, VarUrScopiaDryFigure_02,
    VarUrScopiaDryFigure_03, VarUrScopiaDryPattern_01, VarUrScopiaDryPattern_02,
    VarUrScopiaDryPattern_03, VarUrScopiaDrySurface_01, VarUrScopiaDrySurface_02,
    VarUrScopiaDrySurface_03, VarUrScopiaDrySurface_04, VarUrScopiaDrySurface_05,
    VarUrScopiaDrySurface_06,

    VarIrrigUrScAntTool_01, VarIrrigUrScAntTool_02, VarIrrigUrScAntTool_03,
    VarIrrigUrScAntTool_04, VarIrrigUrScAntOstium_01, VarIrrigUrScAntOstium_02,
    VarIrrigUrScAntOstium_03, VarIrrigUrScAntMedium_01, VarIrrigUrScAntMedium_02,
    VarIrrigUrScAntScanne_01, VarIrrigUrScAntScanne_02, VarIrrigUrScAntScanne_03,
    VarIrrigUrScAntScanne_04, VarIrrigUrScAntScanne_05, VarIrrigUrScAntPenal_01,
    VarIrrigUrScAntPenal_02, VarIrrigUrScAntPenal_03, VarIrrigUrScAntPenal_04,
    VarIrrigUrScAntPenal_05, VarIrrigUrScAntPenal_06,
    VarIrrigUrScAntBulb_01, VarIrrigUrScAntBulb_02, VarIrrigUrScAntBulb_03,
    VarIrrigUrScAntMembr_01, VarIrrigUrScAntMembr_02, VarIrrigUrScAntCooper_01,
    VarIrrigUrScAntCooper_02, VarIrrigUrScAntCooper_03,VarIrrigUrScAntCooper_04,
    VarIrrigUrScPostMedium_01, VarIrrigUrScPostMedium_02, VarIrrigUrScPostMucous_01,
    VarIrrigUrScPostMucous_02, VarIrrigUrScPostMucous_03, VarIrrigUrScPostMucous_04,
    VarIrrigUrScPostMucous_05, VarIrrigUrScPostMucous_06, VarIrrigUrScPostMucous_07,
    VarIrrigUrScPostMucous_08, VarIrrigUrScPostCollic_01, VarIrrigUrScPostCollic_02,
    VarIrrigUrScPostCollic_03, VarIrrigUrScPostCollic_04, VarIrrigUrScPostCollic_05,
    VarIrrigUrScPostCollic_06, VarIrrigUrScPostCollic_07, VarIrrigUrScPostCollic_08,
    VarIrrigUrScPostDucts_01, VarIrrigUrScPostDucts_02, VarIrrigUrScPostDucts_03,
    VarIrrigUrScPostDucts_04, VarIrrigUrScPostVesic_01, VarIrrigUrScPostVesic_02,
    VarIrrigUrScPostVesic_03, VarIrrigUrScPostVesic_04, VarIrrigUrScPostVesic_05,
    VarIrrigUrScPostVesic_06, VarIrrigUrScPostVesic_07,

    //переменные для обмена данными между листом обследования на сифилис и этой формой
    VarLVisus,VarLOtis,VarLMemor,VarLTaxis,
    VarHAllopecia, VarHPapula, VarHPustula, VarHKorochka,
    VarTMakula, VarTPapula, VarTErozia, VarTUlcer, VarTAngina, VarTMindal,
    VarLipPapula, VarLipZaeda, VarLipErozia, VarLipUlcer, VarPhonemaSound,
    VarLdiCervix, VarLdiSubLing, VarLdiAxillar, VarLdiUlnar, VarLdiInguinal,
    VarSellaNos, VarPalatumGotica, VarGetchinsonZub, VarProcessusMetch, VarSableGolen,

    //переменные с данными полей лабораторных анализов
    //--- маркеры гепатитов - признак наличия анализа
    VarChkHBsAg, VarChkHBeAg, VarChkAntiHBcSum, VarChkAntiHBc_IgM,
    VarChkAntiHBe_IgG, VarChkAntiHBsNumer, VarChkAntiHCVSum,
    VarChkAntiHCV_Core_IgM, VarChkAntiHDVSum, VarChkAntiHCVSumCore,
    VarChkAntiHCVSumNS3,VarChkAntiHCVSumNS4, VarChkAntiHCVSumNS5,
    VarChkSumAtLues, VarChkRW, VarChkAIDS,

    //--- маркеры гепатитов - признак наличия полож.результата
    VarRW, VarHBeAg, VarAntiHBcSum, VarAntiHBc_IgM, VarAntiHBe_IgG,
    VarAntiHCVSum, VarAntiHCV_Core_IgM, VarAntiHDVSum, VarAntiHCVSumCore,
    VarAntiHCVSumNS3, VarAntiHCVSumNS4, VarAntiHCVSumNS5, VarSumAtLues,
    VarAIDS, VarHBsAg,

    //--- бак.посев из уретры
    VarChkUrethPathogen1, VarUreth_Pathogen1_01, VarUreth_Pathogen1_02, VarUreth_Pathogen1_03,
    VarUreth_Pathogen1_04, VarUreth_Pathogen1_05, VarUreth_Pathogen1_06, VarUreth_Pathogen1_07,
    VarUreth_Pathogen1_08, VarUreth_Pathogen1_09, VarUreth_Pathogen1_10, VarUreth_Pathogen1_11,
    VarUreth_Pathogen1_12, VarUreth_Pathogen1_13, VarUreth_Pathogen1_14, VarUreth_Pathogen1_15,
    VarUreth_Pathogen1_16, VarChkUrethPathogen2, VarUreth_Pathogen2_01, VarUreth_Pathogen2_02,
    VarUreth_Pathogen2_03, VarUreth_Pathogen2_04, VarUreth_Pathogen2_05, VarUreth_Pathogen2_06,
    VarUreth_Pathogen2_07, VarUreth_Pathogen2_08, VarUreth_Pathogen2_09, VarUreth_Pathogen2_10,
    VarUreth_Pathogen2_11, VarUreth_Pathogen2_12, VarUreth_Pathogen2_13, VarUreth_Pathogen2_14,
    VarUreth_Pathogen2_15, VarUreth_Pathogen2_16,
    VarChkUrethDrug_01, VarChkUrethDrug_02, VarChkUrethDrug_03, VarChkUrethDrug_04, VarChkUrethDrug_05,
    VarChkUrethDrug_06, VarChkUrethDrug_07, VarChkUrethDrug_08, VarChkUrethDrug_09, VarChkUrethDrug_10,
    VarChkUrethDrug_11, VarChkUrethDrug_12, VarChkUrethDrug_13, VarChkUrethDrug_14, VarChkUrethDrug_15,
    VarChkUrethDrug_16, VarNumEdtUrethBact1,VarNumEdtUrethBact2,

    //--- бак.посев СПЖ
    VarChkProstPathogen1, VarProst_Pathogen1_01, VarProst_Pathogen1_02, VarProst_Pathogen1_03,
    VarProst_Pathogen1_04, VarProst_Pathogen1_05, VarProst_Pathogen1_06, VarProst_Pathogen1_07,
    VarProst_Pathogen1_08, VarProst_Pathogen1_09, VarProst_Pathogen1_10, VarProst_Pathogen1_11,
    VarProst_Pathogen1_12, VarProst_Pathogen1_13, VarProst_Pathogen1_14, VarProst_Pathogen1_15,
    VarProst_Pathogen1_16, VarProst_Pathogen1_17,

    VarChkProstPathogen2, VarProst_Pathogen2_01, VarProst_Pathogen2_02, VarProst_Pathogen2_03,
    VarProst_Pathogen2_04, VarProst_Pathogen2_05, VarProst_Pathogen2_06, VarProst_Pathogen2_07,
    VarProst_Pathogen2_08, VarProst_Pathogen2_09, VarProst_Pathogen2_10, VarProst_Pathogen2_11,
    VarProst_Pathogen2_12, VarProst_Pathogen2_13, VarProst_Pathogen2_14, VarProst_Pathogen2_15,
    VarProst_Pathogen2_16, VarProst_Pathogen2_17,
    VarChkProstDrug_01, VarChkProstDrug_02, VarChkProstDrug_03, VarChkProstDrug_04, VarChkProstDrug_05,
    VarChkProstDrug_06, VarChkProstDrug_07, VarChkProstDrug_08, VarChkProstDrug_09, VarChkProstDrug_10,
    VarChkProstDrug_11, VarChkProstDrug_12, VarChkProstDrug_13, VarChkProstDrug_14, VarChkProstDrug_15,
    VarChkProstDrug_16, VarChkProstDrug_17, VarNumEdtProstBact1, VarNumEdtProstBact2,


    //--- бак.посев микоплазма и уреаплазма
    VarChkUrBactInocPathogen, VarNumEdtUrBactInoc, VarUrPathogen1_01, VarUrPathogen1_02,
    VarUrPathogen1_03, VarUrPathogen1_04, VarUrPathogen1_05, VarUrPathogen1_06,
    VarUrPathogen1_07, VarUrPathogen1_08, VarUrPathogen1_09, VarUrPathogen1_10,
    VarUrPathogen2_01, VarUrPathogen2_02, VarUrPathogen2_03, VarUrPathogen2_04,
    VarUrPathogen2_05, VarUrPathogen2_06, VarUrPathogen2_07, VarUrPathogen2_08,
    VarUrPathogen2_09, VarUrPathogen2_10,

    VarChkMicBactInocPathogen, VarNumEdtMicBactInoc, VarMicPathogen1_01, VarMicPathogen1_02,
    VarMicPathogen1_03, VarMicPathogen1_04, VarMicPathogen1_05, VarMicPathogen1_06,
    VarMicPathogen1_07, VarMicPathogen1_08, VarMicPathogen1_09, VarMicPathogen1_10,
    VarMicPathogen2_01, VarMicPathogen2_02, VarMicPathogen2_03, VarMicPathogen2_04,
    VarMicPathogen2_05, VarMicPathogen2_06, VarMicPathogen2_07, VarMicPathogen2_08,
    VarMicPathogen2_09, VarMicPathogen2_10,
    VarChkMicUrDrug_01, VarChkMicUrDrug_02, VarChkMicUrDrug_03, VarChkMicUrDrug_04, VarChkMicUrDrug_05,
    VarChkMicUrDrug_06, VarChkMicUrDrug_07, VarChkMicUrDrug_08, VarChkMicUrDrug_09, VarChkMicUrDrug_10,

    //--- бак.посев мочи
    VarChkUrinPathogen1, VarNumEdtUrin1, VarUrin_Pathogen1_01, VarUrin_Pathogen1_02, VarUrin_Pathogen1_03,
    VarUrin_Pathogen1_04, VarUrin_Pathogen1_05, VarUrin_Pathogen1_06, VarUrin_Pathogen1_07,
    VarUrin_Pathogen1_08, VarUrin_Pathogen1_09, VarUrin_Pathogen1_10, VarUrin_Pathogen1_11,
    VarUrin_Pathogen1_12, VarUrin_Pathogen1_13, VarUrin_Pathogen1_14, VarUrin_Pathogen1_15,
    VarUrin_Pathogen1_16, VarUrin_Pathogen1_17, VarUrin_Pathogen1_18, VarUrin_Pathogen1_19, VarUrin_Pathogen1_20,

    VarChkUrinPathogen2, VarNumEdtUrin2, VarUrin_Pathogen2_01, VarUrin_Pathogen2_02, VarUrin_Pathogen2_03,
    VarUrin_Pathogen2_04, VarUrin_Pathogen2_05, VarUrin_Pathogen2_06, VarUrin_Pathogen2_07,
    VarUrin_Pathogen2_08, VarUrin_Pathogen2_09, VarUrin_Pathogen2_10, VarUrin_Pathogen2_11,
    VarUrin_Pathogen2_12, VarUrin_Pathogen2_13, VarUrin_Pathogen2_14, VarUrin_Pathogen2_15,
    VarUrin_Pathogen2_16, VarUrin_Pathogen2_17, VarUrin_Pathogen2_18, VarUrin_Pathogen2_19, VarUrin_Pathogen2_20,

    VarChkUrinDrug_01, VarChkUrinDrug_02, VarChkUrinDrug_03, VarChkUrinDrug_04, VarChkUrinDrug_05,
    VarChkUrinDrug_06, VarChkUrinDrug_07, VarChkUrinDrug_08, VarChkUrinDrug_09, VarChkUrinDrug_10,
    VarChkUrinDrug_11, VarChkUrinDrug_12, VarChkUrinDrug_13, VarChkUrinDrug_14, VarChkUrinDrug_15,
    VarChkUrinDrug_16, VarChkUrinDrug_17, VarChkUrinDrug_18, VarChkUrinDrug_19, VarChkUrinDrug_20,

    //--- ПЦР
    VarGnAn, VarGnRez, VarTrAn, VarTrRez,
    VarChlamAn, VarChlamRez, VarUrAn, VarUrRez, VarMicHomAn, VarMicHomRez,
    VarMicGenAn, VarMicGenRez, VarGardAn, VarGardRez, VarCMVAn, VarCMVRez,
    VarVHSAn, VarVHSRez, VarPHVAn, VarPHVRez, VarTubAn, VarTubRez, VarCandAn, VarCandRez,
    VarPHVAnHigh, VarPHVRezHigh,

    //--- ИФА
    VarIFAChlIgA, VarIFAChlIgG, VarIFAChlIgGb, VarIFAMicIgG, VarIFAMicIgA,
    VarIFAUrIgG, VarIFAUrIgA, VarIFATrIgG, VarIFACMVIgM, VarIFACMVIgG, VarIFACMVIgGavid,
    VarIFAHerpIgM, VarIFAHerpIgG, VarIFAHerpIgGavid, VarIFACandIgG,

    //--- УЗИ
    VarBoolUZIRen, VarBoolUZIVesicUr, VarBoolUZIProstata, VarBoolUZITestis,
    VarBoolUZIPenis, VarChkUZIVesicSemin,

    DrugInput, DrugMethod,//номера комбов в справочнике лекарств
    ErrorGDSCode, //глобальный номер ошибки
    UsrRoleNumb, UsrPortNumb, //глобальные номера роли и порта подключения
    SenderTag: integer;//номер сендера для идентификации
    
      //номера сендеров для облегчения навигации (номер:объект)
//    665 : TStatusPatUnit.BtnSave
//    667 : TFrmConsultation.BtnSave
//    668 : TFrmConsultation.DBLookupCBDocChoiceEditButtons0
//    669 : MainActManager.ActTblDrug - пункт в меню для вызова формы с лекарствами
//    670 : FrmStatusPat.BtnSelDrug - кнопка выбора формы с лекарствами из окна редактирования визита пациента к
//          врачу
//    444 : условный тэг для вызова распечатки отчетов в формате А4
//    555 : условный тэг для вызова распечатки отчетов в формате А5

// ------------- Строковые переменные --------------
    //некоторые глобальные переменные
    OrdByStrTotalGrid,//кляуза в общем гриде с переменным значением
    VarTblPrice_PriceName,
    VarAntiHBsNumerStr, //строковый параметр значения Anti-HBs колич.

    //строковые переменные анализов мочи
    VarOAMDensity, VarOAMLeu, VarOAMEr,
    VarOAMEpit, VarOAMSalt, VarOAMFlora, VarNechiporLeu, VarNechiporEr,
    VarOAMVolume, VarOAMSmell, VarOAMResiduum, VarOAM_pH,
    VarOAMAceticAcid, VarOAMBilifuscin, VarOAMAceton, VarOAMUrobilin,
    VarOAMCylindr, VarOAMMucos, VarNechiporFlora,

    //строковые переменные мазка из уретры
    VarMazUrLeu, VarMazUrEr, VarMazUrEpit, VarMazUrMucos,

    //строковые переменные мазка из шейки матки
    VarMazCvxLeu, VarMazCvxEr, VarMazCvxEpit, VarMazCvxMucos,

    //строковые переменные мазка из влагалища
    VarMazVgnLeu, VarMazVgnEr, VarMazVgnEpit, VarMazVgnMucos,

    //строковые переменные мазка из прямой кишки
    VarMazRectLeu, VarMazRectEr, VarMazRectEpit, VarMazRectMucos,

    //строковые переменные мазка сока простаты
    VarMazProstLeu, VarMazProstEr, VarMazProstEpit, VarMazProstMFag, VarMazProstAmil, VarMazProst_pH,

    //строковые переменные исследований эякулята
    VarSpermVolume, VarSpermColor, VarSperm_pH, VarSpermViscosity,
    VarSpermFluid, VarSpermLeu, VarSpermEr, VarSpermLipoidSoma,
    VarSpermAgglut, VarSpermAggreg, VarSpermEpitel, VarSpermAbstinence,
    VarSpermConcentr, VarSpermTotal, VarSpermFastForwMove, VarSpermSlowForwMove,
    VarSpermRollMove, VarSpermStaticMove,

    VarKrugCapCoarse, VarKrugCapSlight, VarKrugCapSpecif, VarKrugCollumCoarse,
    VarKrugCollumSlight, VarKrugBrush, VarKrugSpermCell, VarKrugYoungCell,
    VarKrugMorphIndex, VarKrugNotice, VarKrugNorma,

    VarSpermBiochemicFruct, VarSpermBiochemicGlyc, VarMAR, VarSpermVitalTest,
    VarSpermVitalHOS,


    //строковые переменные исследования общего анализа крови
    VarOAKHb, VarOAKEr, VarOAKColourIndex, VarOAKTromb, VarOAKLeu, VarOAKLeuYoung,
    VarOAKLeuStab, VarOAKLeuSegment, VarOAKLymph, VarOAKMonocyte, VarOAKEosinophil,
    VarOAKBasophil, VarOAKSOE, VarOAKCoagul, VarOAKHemorrhagTime, VarOAKReticulocyte,
    VarOAKGlucosaCapill, VarOAKEosinSliz, VarOAKHmtc,

    //строковые переменные исследования биохимии крови
    VarBloodBioALT, VarBloodBioAST, VarBloodBioProtein, VarBloodBioBiTotal,
    VarBloodBioBiDirect, VarBloodBioCholest, VarBloodBioSodiumFosf, VarBloodBioGGT,
    VarBloodBioLPVP, VarBloodBioLPNP, VarBloodBioMochevina, VarBloodBioUricAcid,
    VarBloodBioCreatinin, VarBloodBioAlbumin, VarBloodBioGlucosa, VarBloodBioTriglyc,
    VarBloodBioCalcium, VarBloodBioPhosphor, VarBloodBioFerrum, VarBloodBioOZhSS,

    //строковые переменные исследования гормонов крови
    VarHormLG, VarHormFSG, VarHormProlactin, VarHormEstradiol,
    VarHormProgest, VarHormTestosterTotal, VarHormDGEAS,
    VarHormProgest_17OH, VarHormTestosterFree, VarHormSSSG,
    VarHormT4_Total, VarHormT4_Free, VarHormT3_Total,
    VarHormT3_Free, VarHormTTG, VarHormKortizol, VarHormTireoglob_At,
    VarHormTireoPerox_At, VarHormInhibin_B,

    //строковые переменные исследования онкомаркеров и электролитов крови
    VarPSA_Total, VarPSA_Free, VarPSA_Ratio,
    VarIones_Na, VarIones_K, VarIones_Cl, VarIones_Ca, VarIonesBlood_pH,

    //строковые переменные УЗИ исследования
    VarDextRen_01, VarDextRen_02, VarDextRen_03, VarDextRen_04,
    VarSinRen_01, VarSinRen_02, VarSinRen_03, VarSinRen_04,
    VarVesicUr_01, VarVesicUr_02, VarVesicUr_03, VarVesicUr_04, VarVesicUr_05, VarVesicUr_06,

    VarUZIProstSize_01, VarUZIProstSize_02, VarUZIProstSize_03,
    VarUZIProstVolume, VarUZIProstResidUrine, VarUZIVesSeminDext_01,
    VarUZIVesSeminDext_02, VarUZIVesSeminSin_01, VarUZIVesSeminSin_02,

    VarUZITestisDext_01, VarUZITestisDext_02, VarUZITestisDext_03,
    VarUZITestisDext_04, VarUZIEpididimDext_01, VarUZIEpididimDext_02,
    VarUZIEpididimDext_03, VarUZIEpididimDext_04,

    VarUZITestisSin_01, VarUZITestisSin_02, VarUZITestisSin_03,
    VarUZITestisSin_04, VarUZIEpididimSin_01, VarUZIEpididimSin_02,
    VarUZIEpididimSin_03, VarUZIEpididimSin_04,

    VarUZIPenisArtCavDext_01, VarUZIPenisArtCavDext_02, VarUZIPenisArtCavDext_03,
    VarUZIPenisArtCavDext_04, VarUZIPenisArtCavDext_05,
    VarUZIPenisArtCavSin_01, VarUZIPenisArtCavSin_02, VarUZIPenisArtCavSin_03,
    VarUZIPenisArtCavSin_04, VarUZIPenisArtCavSin_05,

    VarUZIPenisArtDorsDext_01, VarUZIPenisArtDorsDext_02, VarUZIPenisArtDorsDext_03,
    VarUZIPenisArtDorsDext_04, VarUZIPenisArtDorsDext_05,
    VarUZIPenisArtDorsSin_01, VarUZIPenisArtDorsSin_02, VarUZIPenisArtDorsSin_03,
    VarUZIPenisArtDorsSin_04, VarUZIPenisArtDorsSin_05,

    VarUZIPenisVenaDorsDext_01, VarUZIPenisVenaDorsDext_02, VarUZIPenisVenaDorsDext_03,
    VarUZIPenisVenaDorsSin_01, VarUZIPenisVenaDorsSin_02, VarUZIPenisVenaDorsSin_03,

    VarStrVasaFunic_HorzDext, VarStrVasaFunic_VertDext, VarStrVasa_LSKFunicDext, VarStrVasa_LSKTestisDext,
    VarStrVasaFunic_HorzSin, VarStrVasaFunic_VertSin, VarStrVasa_LSKFunicSin, VarStrVasa_LSKTestisSin,

    //строковые переменные бак.посева из уретры
    VarStrUrethPathogen1, VarStrUrethPathogen2, VarStrUrethExtra1, VarStrUrethExtra2,

    //строковые переменные бак.посева СПЖ
    VarStrProstPathogen1, VarStrProstPathogen2, VarStrProstExtra1, VarStrProstExtra2,

    //строковые переменные бак.посева уреаплазмы и микоплазмы
    VarStrMicUrExtra1, VarStrMicUrExtra2, VarStrExtra1Ur_Val1, VarStrExtra1Ur_Val2,
    VarStrExtra2Ur_Val1, VarStrExtra2Ur_Val2,VarStrExtra1Mic_Val1, VarStrExtra1Mic_Val2,
    VarStrExtra2Mic_Val1, VarStrExtra2Mic_Val2,

    //строковые переменные бак.посева мочи
    VarStrUrinPathogen1, VarStrUrinPathogen2, VarStrUrinExtra1, VarStrUrinExtra2,

    UsrLgn, UsrPswd, UsrRoleName,//логин, пароль, роль пользователя
    SpBtnCapt, // заголовок TJvSpeedButton
    DsMKBnumberID//список номеров диагнозов пациента по МКБ-10

    ,TextComplaint            //текст описания жалоб
    ,TextSecretStuff          //текст "секретного" анамнеза
    ,TextAnamAllergy          //текст аллергологического анамнеза
    ,TextAnamChldDes          //текст перенесенных детских болезней
    ,TextAnamAnthrDes         //текст сопутствующих заболеваний
    ,TextAndrZPPP             //текст перенесенных ИППП у мужчины
    ,TextGinZPPP              //текст перенесенных ИППП у женщины
    ,TextStPraesens           //текст описания объективного статуса
    ,TextStLocalis            //текст описания местного статуса
    ,TextStProstata           //текст описания статуса простаты
    ,TextLues                 //текст осмотра на сифилис
    ,TextBlood                //общий текст анализов крови
    ,TextAIDS                 //общий текст анализов ВИЧ, RW, гепатитов
    ,TextSperm                //общий текст исследований эякулята
    ,TextUrethBactInoc        //бак.посев из уретры
    ,TextUrinBactInoc         //бак.посев мочи
    ,TextProstBactInoc        //бак.посев СПЖ
    ,TextMicUrBactInoc        //бак.посев на микоплазму и уреаплазму
    ,TextIFA                  //текст анализа ИФА
    ,TextPCR                  //текст анализа ПЦР
    ,TextOAM                  //текст анализа мочи
    ,TextMazUr                //текст мазка из уретры
    ,TextMazProst             //текст мазка сока простаты
    ,TextUZIRen               //текст протокола УЗИ почек
    ,TextUZIGenit             //текст протокола УЗИ гениталий
    ,TextUrScopiaDry          //текст протокола "сухой" уретроскопии
    ,TextUrScopiaIrrig        //текст протокола ирригационной уретроскопии
    ,TextDrugs                //текст перечня "таблеточного" лечения
    ,TextManip                //текст перечня манипуляций
    ,TextDs                   //текст списка диагнозов
    ,TextRecom
    , SimpleREStr, CaptionREStr, //промежуточные переменные для передачи текста и заголовка в rich-редактор и обратно
    DBConnectString//строка подключения к БД
    , FB_Client_Path //полный путь к клиентской библиотеке сервера gds32.dll или fbclient.dll (
        //текст списка рекомендаций
    ,ErrorMsg: String;

    FrmSenderModalResult: TModalResult;//позволяет абстрактному модальной форме-сендеру задать ModalResult

{$ENDREGION}

{$REGION 'Functions & procedures declaration section'}
    //блок объявления процедур
    function PrmIsDigit(const APrm: string): Boolean;
    function PrmIsDigitSymb(const PrmKey: Char): Boolean;
    function PrmIsLatinSymb(var PrmKey: Char): Boolean;
    function PrmIsCyrillicSymb(var PrmKey: Char): Boolean;

    function WriteSymbolToEndString(const TmpString, TmpSymbol: String): String;
    function GetRTFText(ARichEdit: TRichedit): AnsiString;
    function UpFirstChar(Sender: TEdit): String;
    function UpFirstCharEhEdt(Sender: TDBEditEh): String;
    function BoolConvertInt(const ChkStatus: Boolean): Integer;
    function IntConvertBool(const VarInt: Integer): Boolean;
    function RemoveTmpDir(sDir: String): Boolean;
    function GetFileSize(const FileName: string): longint;
    function FormatStrListToBulkText(ARichEdt: TRichEdit; ExcludStr: String;
                                                                      ShrtVar: Boolean): AnsiString;
    function CutStrFromBulkText(ARichEdt: TRichEdit; ExcludStr: String): AnsiString;
    function PADC(Src:string; Lg:Integer): string;
    function PADR(Src:string; Lg:Integer): string;
    function PADL(Src:string; Lg:Integer): string;

    function DeleteBlank(S: String): String;
    function GetSystemPath(SystemPath:TSystemPath):string;//получение значений "системных" ключей для текущего юзера
    function GetFBDefaultInstance: string;//получение полного пути к каталогу FB из реестра
    function InvertStr(const AStr: string): string;//инверсия строки
/// <summary>
///   This function reads the file resource of "FileName" and returns
///   the version number as formatted text.</summary>
/// <example>
///   Sto_GetFmtFileVersion() = '4.13.128.0'
///   Sto_GetFmtFileVersion('', '%.2d-%.2d-%.2d') = '04-13-128'
/// </example>
/// <remarks>If "Fmt" is invalid, the function may raise an
///   EConvertError exception.</remarks>
/// <param name="FileName">Full path to exe or dll. If an empty
///   string is passed, the function uses the filename of the
///   running exe or dll.</param>
/// <param name="Fmt">Format string, you can use at most four integer
///   values.</param>
/// <returns>Formatted version number of file, '' if no version
///   resource found.</returns>
    function Sto_GetFmtFileVersion(const FileName: String = ''; const Fmt: String = '%d.%d.%d.%d'): String;//получение File Version

    //функция проверяет корректность url или мыла и возвращает "правильную строку"
    function Sto_UrlEncode(const Text: String): String;

    //посылка мейла
    procedure Sto_OpenMail(const Address: String; const Subject: String = ''; const Body: String = ''; const Cc: String = ''; const Bcc: String = '');

    procedure Sto_OpenWebSite(const Site: String);//открываем URL

    procedure AddFormatStrInRichEdit(Sender: TRichEdit; const Txt: String);
    procedure FormatTextInTempRichEdit(ARichEdit: TRichEdit;
                                          const CurStart,Index: Integer; TxtStr: String);
    procedure SetFocusToEmptyEdit(EdtSender: TEdit; PgCtrlSender: TPageControl;
                                                                 const SheetNum: Integer);
    procedure PackBuffer(var Buffer: PChar; var BufSize: Integer);
    procedure UnpackBuffer(var Buffer: PChar; var BufSize: Integer);
    procedure FileCopy(Const SourceFileName, TargetFileName: String);
    procedure CallMyDocByHlpContext(Sender: TObject; HlpCntx: Integer = 0);
    procedure CallHelpTopic_With_Bookmark(const ChmFN: string = ''; const TopicFileName: string = ''; const BookMark: string = '');
    procedure RemoveNoEmptyDir(var ADir: string);//удаление не пустой папки
{$ENDREGION}

implementation

uses
  ShellAPI;

//----------------------------------------------------------------------------
//функция проверяет, содержит ли строка целое число без пробелов(в т.ч. и отрицательное)
function PrmIsDigit(const APrm: string): Boolean;
const TmpTxt: string = '-0123456789';
var i,counter: Integer;
begin
Result:= False;
if Length(Trim(APrm)) = 0  then Exit;//выйдем, если строка пустая

counter:= 0;//обнулим счетчик

//каждый символ строки сравниваем с эталоном
//если хоть один символ не присутствует в строке, то наращиваем счетчик
for i:= 1 to Length(APrm) do
  if (Pos(APrm[i],TmpTxt) = 0) then Inc(counter);

Result:= (counter = 0);
end;

//----------------------------------------------------------------------------
//функция проверяет, является ли переданный символ целым числом
function PrmIsDigitSymb(const PrmKey: Char): Boolean;
const TmpStr: string = '0123456789';
begin
Result:= (Pos(PrmKey,TmpStr) > 0);
end;

//----------------------------------------------------------------------------
//функция проверяет, является ли переданный символ частью массива кириллических знаков
function PrmIsCyrillicSymb(var PrmKey: Char): Boolean;
//const TmpStr: array[0..66] of Char = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
//var i, counter: Integer;
const TmpStr: string = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
begin
Result:= (Pos(PrmKey,TmpStr) > 0);

//counter:= 0;
//for i:= 0 to High(TmpStr) - 1 do
//    if ord(TmpStr[i]) = ord(PrmKey) then Inc(counter);
//
//Result:= (counter > 0);
end;

//----------------------------------------------------------------------------
//функция проверяет, является ли переданный символ частью массива латинских знаков
function PrmIsLatinSymb(var PrmKey: Char): Boolean;
//const TmpStr: array[0..52] of Char = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
//var i, counter: Integer;
const TmpStr: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
begin
//counter:= 0;
//for i:= 0 to High(TmpStr) - 1 do
//    if ord(TmpStr[i]) = ord(PrmKey) then Inc(counter);
//
//Result:= (counter > 0);
Result:= (Pos(PrmKey,TmpStr) > 0); 
end;

//----------------------------------------------------------------------------
// функция проверяет, не является ли последний знак в строке TmpString запятой, точкой
// или точкой с запятой. Если таковые имеются, то обрезает любую из них, а затем
// вставляет в конец строки строку TmpSymbol.
// Полученная строка возращается в Result функции

function WriteSymbolToEndString(const TmpString, TmpSymbol: String): String;
begin
Result:= Trim(TmpString);
if (RightStr(Result,1) = ',') or (RightStr(Result,1) = '.') or (RightStr(Result,1) = ';')
  then
    Result:= LeftStr(Result,Length(Result)-1) + TmpSymbol
  else
    Result:= Result + TmpSymbol;
end;

//----------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////
/////  Функция, возвращающая строку RTF. Нужна, например, для передачи     /////
/////  форматированного текста из RichEdit в строковую переменную типа     /////
/////  AnsiString.                                                         /////
////////////////////////////////////////////////////////////////////////////////

function GetRTFText(ARichEdit: TRichedit): AnsiString;
var ss: TStringStream;
begin
ss := TStringStream.Create(EmptyStr);
   try
     ARichEdit.PlainText := False;
     ARichEdit.Lines.SaveToStream(ss);
     Result := ss.DataString;
   finally
     ss.Free
   end;
end;

//----------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////
/////  Функция, делает заглавной первую букву в первом слове текста Edit'а /////
////////////////////////////////////////////////////////////////////////////////

function UpFirstChar(Sender: TEdit): String;
begin
if Length(Trim(Sender.Text)) = 1 then
  begin
    Sender.Text:= AnsiUpperCase(Sender.Text);
    Sender.SelStart:= 1;
  end;
end;

//----------------------------------------------------------------------------
//аналогично предыдущей функции, только для TDBEditEh
function UpFirstCharEhEdt(Sender: TDBEditEh): String;
begin
if Length(Trim(Sender.Text)) = 1 then
  begin
    Sender.Text:= AnsiUpperCase(Sender.Text);
    Sender.SelStart:= 1;
  end;
end;

//----------------------------------------------------------------------------
//переводим check/uncheck радиокнопок в цифру
function BoolConvertInt(const ChkStatus: Boolean): Integer;
begin
if ChkStatus
  then Result:= 1
  else Result:= 0;
end;

//----------------------------------------------------------------------------
//переводим цифру в check/uncheck радиокнопок
function IntConvertBool(const VarInt: Integer): Boolean;
begin
if VarInt = 1
  then Result:= True
  else Result:= False;
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
/////      Процедура добавления в текст RichEdit подчеркнутой строки     /////
//////////////////////////////////////////////////////////////////////////////

procedure AddFormatStrInRichEdit(Sender: TRichEdit; const Txt: String);
begin
with TRichEdit(Sender) do
  begin
      Lines.Add(Txt);
      SelStart:= Length(Text) - Length(Txt) - 2;
      SelLength:= Length(Txt);//выделяем "нужную" часть строки
      SelAttributes.Style:= [fsUnderline];//почеркиваем выделенный текст
      SelStart:= Length(Text);//курсор в конец текста
      SelLength:= 0;//уберем выделение
      SelAttributes.Assign(DefAttributes);//дефолтовые атрибуты
  end;{with TRichEdit(Sender) do}
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
/////  Процедура форматирует текст в данном RichEdit в соответствии с    /////
///// переданными параметрами:                                           /////
///// ARichEdit - переданный рич-эдит                                    /////
///// CurStart - начальная позиция курсора для выделения                 /////
///// Index - "номер" цвета форматируемой строки                         /////
///// TxtStr - форматируемая строка                                      /////
//////////////////////////////////////////////////////////////////////////////

procedure FormatTextInTempRichEdit(ARichEdit: TRichEdit;
  const CurStart, Index: Integer; TxtStr: String);
begin
with ARichEdit do
      begin
        PlainText:= False;
        Lines.Add(TxtStr);//добавляем строку
        SelStart:= Length(Text) - CurStart - 2;//откатываемся назад
        SelLength:= CurStart - 1;//выделяем "нужное" кол-во символов
        with SelAttributes do //красим выделенную строку
          begin
            case Index of
              0: Color:= clNavy;
              1: Color:= clTeal;
              2: Color:= clMaroon;
              //3: Color:= clRed;
            3,4: begin
                  Color:= clRed;
                  Style:= [fsBold];
                 end;
            end;{case}
          end;{with SelAttributes do}
        SelStart:= Length(Text);//курсор в конец текста
        SelAttributes.Assign(DefAttributes);//возвращаем дефолтовые аттрибуты
      end;{with TRichEdit(Sender) do}
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
///// Процедура переключает вкладку PgCtrlSender с номером SheetNum,     /////
///// и передает фокус в EdtSender                                       /////
//////////////////////////////////////////////////////////////////////////////

procedure SetFocusToEmptyEdit(EdtSender: TEdit; PgCtrlSender: TPageControl;
                                                                 const SheetNum: Integer);
begin
PgCtrlSender.ActivePageIndex:= SheetNum;
if EdtSender.CanFocus then EdtSender.SetFocus;
end;

///////////////////////////////////////////////////////////////////////////////
//////             Функции упаковки-распаковки блоб-полей               ///////
///////////////////////////////////////////////////////////////////////////////

//---------------------------------------------------------------

procedure PackBuffer(var Buffer: PChar; var BufSize: Integer);
//var srcStream, dstStream: TStream;
begin
//srcStream := TMemoryStream.Create;
//dstStream := TMemoryStream.Create;
//  try
//    srcStream.WriteBuffer(Buffer^, BufSize);
//    srcStream.Position := 0;
//    UclCompressStream(srcStream, dstStream);
//    //GZipStream(srcStream, dstStream, 6);
//    srcStream.Free;
//    srcStream := nil;
//    BufSize := dstStream.Size;
//    dstStream.Position := 0;
//    ReallocMem(Buffer, BufSize);
//    dstStream.ReadBuffer(Buffer^, BufSize);
//  finally
//    if Assigned(srcStream) then srcStream.Free;
//    dstStream.Free;
//  end;
end;

//---------------------------------------------------------------

procedure UnpackBuffer(var Buffer: PChar; var BufSize: Integer);
//var srcStream,dstStream: TStream;
begin
//srcStream := TMemoryStream.Create;
//dstStream := TMemoryStream.Create;
//  try
//    srcStream.WriteBuffer(Buffer^, BufSize);
//    srcStream.Position := 0;
//    UclDeCompressStream(srcStream, dstStream);
//    //GunZipStream(srcStream, dstStream);
//    srcStream.Free;
//    srcStream:=nil;
//    BufSize := dstStream.Size;
//    dstStream.Position := 0;
//    ReallocMem(Buffer, BufSize);
//    dstStream.ReadBuffer(Buffer^, BufSize);
//  finally
//    if assigned(srcStream) then srcStream.Free;
//    dstStream.Free;
//  end;
end;

//---------------------------------------------------------------
//удаление каталога с подкаталогами
function RemoveTmpDir(sDir: String): Boolean;
var iIndex : Integer;
    SearchRec : TSearchRec;
    sFileName : String;
begin
  Result := False;
  sDir := sDir + '\*.*';
  iIndex := FindFirst(sDir, faAnyFile, SearchRec);
  while iIndex = 0 do
    begin
      sFileName := ExtractFileDir(sDir)+'\'+SearchRec.Name;
      if SearchRec.Attr = faDirectory
        then
          begin
            if (SearchRec.Name <> '' ) and (SearchRec.Name <> '.') and (SearchRec.Name <> '..')
              then
                RemoveTmpDir(sFileName);
          end
        else
          begin
            if SearchRec.Attr <> faArchive
              then FileSetAttr(sFileName, faArchive);
            if not DeleteFile(sFileName)
              then ShowMessage('Невозможно удалить папку ' + sFileName);
          end;
      iIndex := FindNext(SearchRec);
    end;
  FindClose(SearchRec);
  RemoveDir(ExtractFileDir(sDir));
  Result := True;
end;

//---------------------------------------------------------------
//вычисляем размер файла
function GetFileSize(const FileName: string): longint;
var
SearchRec : TSearchRec;
begin
if FindFirst(ExpandFileName(FileName),faAnyFile,SearchRec)=0
then Result:=SearchRec.Size
else Result:=-1;
FindClose(SearchRec);
end;

//----------------------------------------------------------
//копируем файл с одного места в другой методом потока
procedure FileCopy(const SourceFileName, TargetFileName: String);
var S,T: TFileStream;
Begin
 S:= TFileStream.Create(sourcefilename, fmOpenRead );
 try
  T:= TFileStream.Create(targetfilename, fmOpenWrite or fmCreate);
  try
    T.CopyFrom(S, S.Size ) ;
    FileSetDate(T.Handle, FileGetDate(S.Handle));
  finally
   T.Free;
  end;
 finally
  S.Free;
 end;
end;

//---------------------------------------------------------------
//функция возвращает строку, состоящую из последовательно "склеенных" строк ARichEdt, отделенных
//друг от друга запятыми.
//Параметр ExcludStr позволяет удалить первую строчку рич-эдита, если она имеет содержащиеся
//в нем символы (без учета) регистра - для "обрезания" заголовка.
//Параметр ShrtVar позволяет возвращать от каждой строчки рич-эдита только одно слово в нижнем
//регистре.
//
// ВНИМАНИЕ!
// Каждая строка рич-эдита будет отделена запятой от соседней, если только она начинается с
// символов "-", "+" или "*"

function FormatStrListToBulkText(ARichEdt: TRichEdit; ExcludStr: String; ShrtVar: Boolean): AnsiString;
var i: Integer;
    TmpBool: Boolean;
    tmpstr, tstr: AnsiString;//внутренние переменные
    TmpRE: TRichEdit;
begin
  tmpstr:= '';
  TmpRE:= TRichEdit.Create(ARichEdt.Parent);
  try
    with TmpRE do
      begin
        Parent:= ARichEdt.Parent;
        PlainText:= True;
        Visible:= False;

        Lines.Assign(ARichEdt.Lines);

        if Trim(Text) = '' then
          begin
            Result:= '';
            Exit;
          end;

        if Pos(AnsiUpperCase(ExcludStr),AnsiUpperCase(Lines.Strings[0])) > 0 then  Lines.Delete(0);

        if ShrtVar
          then //если в текст вписывается по 1 слову от строки
            begin
              //если нужно оставить только одно слово от каждой строки
              for i:= 0 to Lines.Count - 1 do
                begin
                  tstr:= Trim(Lines.Strings[i]);//обрезаем пробелы

                  if ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1))
                    then //если встречаются символы "+", "-", "*" в самом начале строки
                      begin
                        //перебираем строки, пока не кончились
                        while ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1)) do
                          begin
                            tstr:= Trim(RightStr(tstr,Length(tstr) - 1));//нещадно их обрезаем
                          end;

                        //"декапитализируем" слово
                        tstr:= AnsiLowerCase(tstr);

                        if i = 0
                          then
                            tmpstr:= LeftStr(tstr,pos(' ',tstr)-1)//если это самая первая строка
                          else
                            tmpstr:= tmpstr + ', ' + LeftStr(tstr,pos(' ',tstr)-1);//если не самая
                                                              //первая, то перед ней поставим запятую
                      end;
                end;
            end
          else //если строки вписываются в текст полностью
            begin
              for i:= 0 to Lines.Count - 1 do
                begin
                  tstr:= Trim(Lines.Strings[i]);//обрезаем пробелы

                  if ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1))
                    then //если встречаются символы "+", "-", "*"
                      begin
                        while ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1)) do
                          begin
                            tstr:= Trim(RightStr(tstr,Length(tstr) - 1));//нещадно их обрезаем
                          end;
                        TmpBool:= True; //флаг того, строку кромсали от указанных символов
                      end
                    else
                      TmpBool:= False;//флаг того, что строку не кромсали
                  if TmpBool
                    then //если строку кромсали
                      begin
                        if i = 0
                          then tmpstr:= tstr //если это самая первая строка
                          else tmpstr:= tmpstr + ', ' + tstr;//если не самая первая, то перед ней
                                                             //поставим запятую
                      end
                    else //если не кромсали, то просто присоединим через пробел
                      tmpstr:= tmpstr + ' ' + Trim(tstr);
                end;
            end;

        Result:= Trim(tmpstr) + '.';
      end;
  finally
    TmpRE.Free;
  end;
end;

//--------------------------------------------------------------------------
//функция вырезает из текста ARichEdt начальную построку ExcludStr (без учета регистра)
//и возвращает текст
function CutStrFromBulkText(ARichEdt: TRichEdit; ExcludStr: String): AnsiString;
var LenStr: Integer;
begin
LenStr:= Pos(AnsiUpperCase(Trim(ExcludStr)),AnsiUpperCase(Trim(ARichEdt.Text)));
if LenStr > 0
  then
    Result:= RightStr(Trim(ARichEdt.Text), Length(Trim(ARichEdt.Text)) - LenStr
                                                                      - length(Trim(ExcludStr)));
end;

//--------------------------------------------------------------------------
{ **** UBPFD *********** by ****
>> Дополнение строки пробелами с обоих сторон

Дополнение строки пробелами с обоих сторон до указанной длины

Зависимости: нет
Автор:       Anatoly Podgoretsky, anatoly@podgoretsky.com, Johvi
Copyright:
Дата:        26 апреля 2002 г.
пример использования:      S := PADC(S,32);

******************************* }

function PADC(Src:string; Lg:Integer) : string;
begin
  Result := Src;
  while Length(Result) < Lg do begin
    Result := Result + ' ';
    if Length(Result) < Lg then begin
      Result := ' ' + Result;
    end;
  end;
end;

//--------------------------------------------------------------------------
{ **** UBPFD *********** by ****
>> Дополнение строки пробелами справа

Дополняет строку пробелами справа до указанной длины.

Зависимости: нет
Автор:       Anatoly Podgoretsky, anatoly@podgoretsky.com, Johvi
Copyright:   Anatoly Podgoretsky
Дата:        26 апреля 2002 г.

пример использования:      S := PADR(S,32);
******************************* }

function PADR(Src:string; Lg:Integer) : string;
begin
  Result := Src;
  while Length(Result) < Lg do Result := Result + ' ';
end;

//--------------------------------------------------------------------------
{ **** UBPFD *********** by ****
>> Дополнение строки пробелами слева

Дополненяет строку слева пробелами до указанной длины

Зависимости: нет
Автор:       Anatoly Podgoretsky, anatoly@podgoretsky.com, Johvi
Copyright:  
Дата:        26 апреля 2002 г.

пример использования:      S := PADL(S,32);
******************************* }

function PADL(Src:string; Lg:Integer) : string;
begin
  Result := Src;
  while Length(Result) < Lg do Result := ' ' + Result;
end;


//--------------------------------------------------------------------------
{ **** UBPFD *********** by ****
>> Удаление лишних пробелов в строке (рекурсивное удаление)

Зависимости: SysUtils
Автор:       COOLer, COOLer_Master@mail.ru, ICQ:315733656, Омск
Copyright:   Interactive Incode - т.е. придумал сам.
Дата:        12 мая 2004 г.


******************************* }

function DeleteBlank(S : String) : String;
 var
  i : Integer;
begin
 for I := 2 to Length (S) + 1 do {делаем до длины строки}
  begin
   if (S[I-1] = ' ') and (S[I] = ' ') then {проверяем на пробелы}
    begin {да, есть лишние}
     Delete (S, I, 1); {удаляем их}
     S := DeleteBlank (S); {и снова проверяем}
    end; {рекурсия происходит до тех пор, пока строка не примет нормальный вид}
  end;
 Result := S; {результат}
end;

//----------------------------------------------------------------------------------
//----------------------------------------------------------------------------
//вызов справки по HelpContext сендера,
//если специальная переменная с ID топика (HlpCntx) имеет
//дефолтное значение и равна 0.
//Если и HelpContext у сендера имеет 0 значение, то вызывается
//раздел справки с ID=1
//ChmFileName - название файла справки (может включать абсолютный или относительный путь)
procedure CallMyDocByHlpContext(Sender: TObject; HlpCntx: Integer);
var IDindex: Integer;
begin
if not FileExists(ExtractFilePath(Application.ExeName) + ChmFileName) then
  begin
    Application.MessageBox('Файл справки отсутствует!','Ошибка доступа к файлу', MB_ICONINFORMATION);
    Exit;
  end;

if HlpCntx = 0
  then
    begin
      if (Sender as TControl).HelpContext = 0
        then
          begin
            Application.MessageBox(PChar('Данному элементу не сопоставлен ни один из разделов справки. '
                                   + 'Обратитесь разработчику или попробуйте поискать раздел самостоятельно.'),
                                    'Ошибка доступа к справке', MB_ICONINFORMATION);
            Exit;
          end
        else
          IDindex:= (Sender as TControl).HelpContext;
    end
  else
    IDindex:= HlpCntx;

HH(Application.Handle, PChar(ChmFileName), HH_HELP_CONTEXT, IDindex);
end;

//----------------------------------------------------------------------------

function GetSystemPath(SystemPath: TSystemPath): string;
var p:PChar;
begin
with TRegistry.Create do
  try
    RootKey := HKEY_CURRENT_USER;
    OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders');
      case SystemPath of
        Desktop: result:=readstring('desktop');
        StartMenu:result:=readstring('start menu');
        Programs:result:=readstring('programs');
        StartUp:result:=readstring('startup');
        Personal:result:=readstring('personal');
        Templates:result:=readstring('Templates');
        Cache: result:=readstring('Cache');
        MyPictures: result:=readstring('My Pictures');
        MyVideo: result:=readstring('My Video');
        AdministrativeTools: result:=readstring('Administrative Tools');
        CD_Burning: result:=readstring('CD Burning');
        WinRoot: begin
                   GetMem(p,255);
                   GetWindowsDirectory(p,254);
                   Result:=StrPas(p);
                   FreeMem(p);
                 end;
        WinSys:  begin
                   GetMem(p,255);
                   GetSystemDirectory(p,254);
                   Result:=StrPas(p);
                   FreeMem(p);
                 end;
      end;
  finally
    CloseKey;
    Free;
  end;

  if (Result <> '') and (Result[Length(Result)]<>'') then Result:= Result + '';
end;

//----------------------------------------------------------------------------
//получение полного пути к каталогу FB из реестра
function GetFBDefaultInstance: string;
begin
Result:= '';
with TRegistry.Create do
  begin
    try
      RootKey:= HKEY_LOCAL_MACHINE;
      if OpenKeyReadOnly('\SOFTWARE\Firebird Project\Firebird Server\Instances') then
        if ValueExists('DefaultInstance') then
          begin
            OpenKeyReadOnly('DefaultInstance');
            Result:= ReadString('DefaultInstance');
          end;
     finally
      CloseKey;
      Free;
    end;
  end;
end;

//----------------------------------------------------------------------------
//функция возвращает инвертированную строку (т.е. 'строка' возвращается как 'акортс')

//Зависимости: Windows, Classes, StdCtrls
//Автор:       Fenik, chook_nu@uraltc.ru, Новоуральск
//Copyright:   Автор: Федоровских Николай
//Дата:        26 июня 2002 г.

function InvertStr(const AStr: string): string;
var i, Len: Integer;
begin
Len := Length(AStr);
SetLength(Result, Len);
for i := 1 to Len do
  Result[i] := AStr[Len - i + 1];
end;

//----------------------------------------------------------------------------
///   This function reads the file resource of "FileName" and returns
///   the version number as formatted text.

///   Sto_GetFmtFileVersion() = '4.13.128.0'
///   Sto_GetFmtFileVersion('', '%.2d-%.2d-%.2d') = '04-13-128'

/// If "Fmt" is invalid, the function may raise an EConvertError exception.
/// <param name="FileName">Full path to exe or dll. If an empty
///   string is passed, the function uses the filename of the
///   running exe or dll.</param>
/// <param name="Fmt">Format string, you can use at most four integer
///   values.</param>
/// <returns>Formatted version number of file, '' if no version
///   resource found.</returns>

function Sto_GetFmtFileVersion(const FileName, Fmt: String): String;
var
  sFileName: String;
  iBufferSize: DWORD;
  iDummy: DWORD;
  pBuffer: Pointer;
  pFileInfo: Pointer;
  iVer: array[1..4] of Word;
begin
  // set default value
  Result := '';
  // get filename of exe/dll if no filename is specified
  sFileName := FileName;
  if (sFileName = '') then
  begin
    // prepare buffer for path and terminating #0
    SetLength(sFileName, MAX_PATH + 1);
    SetLength(sFileName,
      GetModuleFileName(hInstance, PChar(sFileName), MAX_PATH + 1));
  end;
  // get size of version info (0 if no version info exists)
  iBufferSize := GetFileVersionInfoSize(PChar(sFileName), iDummy);
  if (iBufferSize > 0) then
  begin
    GetMem(pBuffer, iBufferSize);
    try
    // get fixed file info (language independent)
    GetFileVersionInfo(PChar(sFileName), 0, iBufferSize, pBuffer);
    VerQueryValue(pBuffer, '\', pFileInfo, iDummy);
    // read version blocks
    iVer[1] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[2] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[3] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    iVer[4] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    finally
      FreeMem(pBuffer);
    end;
    // format result string
    Result := Format(Fmt, [iVer[1], iVer[2], iVer[3], iVer[4]]);
  end;
end;

//----------------------------------------------------------------------------
    //функция проверяет корректность url или мыла и возвращает "правильную строку"
function Sto_UrlEncode(const Text: String): String;
var
  iPos: Integer;
  cCharacter: Char;
begin
  Result := Text;
  // search for not web save characters
  for iPos := Length(Result) downto 1 do
  begin
    cCharacter := Result[iPos];
    if (not (cCharacter in ['A'..'Z', 'a'..'z', '0'..'9'])) then
    begin
      Delete(Result, iPos, 1);
      Insert('%' + IntToHex(Ord(cCharacter), 2), Result, iPos);
    end;
  end;
end;

//----------------------------------------------------------------------------

procedure Sto_OpenMail(const Address: String; const Subject: String = '';
  const Body: String = ''; const Cc: String = ''; const Bcc: String = '');
var
  slParameters: TStrings;
  sMailCommand: String;
  iParameter: Integer;
begin
  slParameters := TStringList.Create;
  try
    if (Subject <> '') then slParameters.Add('subject=' + Sto_UrlEncode(Subject));
    if (Body <> '') then slParameters.Add('body=' + Sto_UrlEncode(Body));
    if (Cc <> '') then slParameters.Add('cc=' + Cc);
    if (Bcc <> '') then slParameters.Add('bcc=' + Bcc);

    // bring parameters into a form like:
    // mailto:<address>?subject=<subjectline>&body=<mailtext>&cc=<address>&bcc=<address>
    sMailCommand := 'mailto:' + Address;

    for iParameter := 0 to slParameters.Count - 1 do
      begin
        if (iParameter = 0) then
          sMailCommand := sMailCommand + '?'
        else
          sMailCommand := sMailCommand + '&';
        sMailCommand := sMailCommand + slParameters.Strings[iParameter];
      end;
    ShellExecute(0, 'open', PChar(sMailCommand), nil, nil, SW_SHOWNORMAL);
  finally
    slParameters.Free;
  end;
end;


//----------------------------------------------------------------------------
//открываем url
procedure Sto_OpenWebSite(const Site: String);
begin
  ShellExecute(0, 'open', PChar(Site), nil, nil, SW_SHOWNORMAL);
end;

//----------------------------------------------------------------------------
//процедура открывает CHM-файл не только на определенной странице, но и на определенной закладке (если она введена)
//ChmFN путь с CHM-файлу, начиная от корня с экзешником
//TopicFileName - имя страницы(*.htm) топика
//BookMark - имя закладки
procedure CallHelpTopic_With_Bookmark(const ChmFN: string = ''; const TopicFileName: string = ''; const BookMark: string = '');
begin
if (Trim(ChmFN) = '') or (Trim(TopicFileName) = '') then Exit;

if Length(Trim(BookMark)) <> 0
  then
    ShellExecute(Application.Handle,'open',PChar('hh.exe'),
      pchar(ExtractFileDir(Application.ExeName) + '\' +ChmFN + '::/' + Trim(TopicFileName) + '#' + Trim(BookMark)),nil,SW_SHOW)
  else
    ShellExecute(Application.Handle,'open',PChar('hh.exe'),
      pchar(ExtractFileDir(Application.ExeName) + '\' +ChmFN + '::/' + Trim(TopicFileName)),nil,SW_SHOW);
end;
//----------------------------------------------------------------------------

procedure RemoveNoEmptyDir(var ADir: string);//удаление не пустой папки
  var sh : SHFILEOPSTRUCT;//uses ShellAPI
      hnd: THandle;
  begin
  ZeroMemory(@sh, SizeOf(sh));
  sh.Wnd := hnd;
  sh.wFunc := FO_DELETE;
  sh.pFrom := PChar(ADir + #0#0);
  sh.pTo := nil;
  sh.fFlags := FOF_NOCONFIRMATION or FOF_SILENT;
  sh.hNameMappings := nil;
  sh.lpszProgressTitle := nil;
  SHFileOperation (sh);
end;
//----------------------------------------------------------------------------
end.
