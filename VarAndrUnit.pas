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
    ApplCurVersInfo:  //����� ������ ���������� � ������ ������������
//                      Integer = 10;//������ ��� �������� embedded
                      Integer = 11;//������ ��� �������� multiuser
//                      Integer = 30;//�������� ������ embedded
//                      Integer = 31;//�������� ������ multiuser
//                     Integer = 20;//������� ������ embedded
//                     Integer = 21;//������� ������ multiuser

    DBCurVersInfo: //������� ������ ���� ������ ��� �������� ��������
                   Integer = 4;
    NiceSetRegKeyPath: string = 'Software\leybasoft\Andrology';//���� � ����� ������� � ����������� ����
    ChmFileName: String = 'help\ARMDoctor_help.chm';//���� �������
    HH_HELP_CONTEXT = $F;
    DefOrdBy_Clause: string = 'DATEVISIT DESC';//"�������������" �������� ������ Order By ����� �����

{$REGION 'HelpContext Constants'}
//����� ����������� ��������� ���������
//��� �������� HelpContext ����������,
//���������� �������

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
    ReportInitDir: string;//���������� ���������� ��� ����������, ���� ����������� ����� �������

    TblClinicFlag,TblTownFlag,
    TblDoctorFlag,TblPriceFlag,
    TblAnketaFlag, VisitPatientFlag,
    BloodBtnFlag, TblDrugFlag, DrugChoiceBtn, RecomChoiceBtn,
    TblManipFlag, TblDsFlag, DsChoiceBtn, ManipChoiceBtn,
    TblRecomFlag, MsgFlag,
    TblConsultFlag{, ConsultEditDocFlag}: Boolean; //������������� ����� � �����.������

    IsFinishedThread,
    IsThreadExecuteAbort: Boolean;
//------------------- ���������� ��� ---------------------------

    //���������� � ������ ����� ������������ ��������
    VarDateAIDS, VarPCRDate, VarIFADate, VarOAMDate, VarNechiporDate, VarMazUrethraDate,
    VarMazProstDate, VarSpermDate, VarKrugDate, VarSpermBiochemicDate,
    VarMARDate, VarSpermVitalDate,
    VarOAKDate, VarBloodBioDate, VarHormSterDate, VarHormTireoidDate,
    VarOnkomarkDate, VarUrethBactInocDate, VarProstBactInocDate, VarMicUrBactInocDate,
    VarBloodIonesDate, VarUrinBactInocDate,

    //���������� ���������������� ������������
    VarUZIRenDate, VarUZIVesicUrDate, VarUrScopiaDryDate, VarUrScopiaIrrigDate,
    VarUZIProstataDate, VarUZITestisDate, VarUZIPenisDate, VarUZIDopplerTestisDate: TDateTime;

// ---------------------- ������������� ���������� -------------------

    //���������� ����������-�������������� ID ��������� �� ������
    VarID_Tbl_Anketa,
    VarID_Tbl_VisitMain,
    VarID_Tbl_Clinic,
    VarID_Tbl_Doctor,

    TmpHeight,          //������ � ������

    //�������� ������������� ����������� ���������� � �������� �������� �����
    SortClnLstNm, // ������� (4)
    SortClnFstNm, // ��� (5)
    SortClnDtBrn, //���� �������� (7)
    SortClnAdrTwn, //����� ���������� (3)
    SortClnDtVst, //���� ��������� (11)
    SortClnNotes, //������� (9)

    VarPgCtrlBloodHorm, //����� �������� �������� PgCtrl �� ����� � ��������� �����
    VarPgCtrlUZIGenit, //����� �������� �������� PgCtrl �� ����� � ��� ���������

    //������ ����������� � ������ ��������
    VarOAMColor, VarOAMTransparent, VarOAMSugar, VarOAMProtein,//���

    //--- ����� �� ������
    VarMazUrGn, VarMazUrTr, VarMazUrFlora, VarMazUrKeyCell, VarMazUrCand,

    //--- ����� �� ����� �����
    VarMazCvxGn, VarMazCvxTr, VarMazCvxFlora, VarMazCvxKeyCell, VarMazCvxCand,

    //--- ����� �� ���������
    VarMazVgnGn, VarMazVgnTr, VarMazVgnFlora, VarMazVgnKeyCell, VarMazVgnCand,

    //--- ����� �� ������ �����
    VarMazRectGn, VarMazRectTr, VarMazRectFlora, VarMazRectKeyCell, VarMazRectCand,

    //--- ����� ���� ��������
    VarMazProstGn, VarMazProstTr, VarMazProstFlora, VarMazProstLZ, VarMazProstBekht,
    VarMazProstSperm,

    //--- ���
    VarNumIFAChlIgA, VarNumIFAChlIgG, VarNumIFAChlIgGb, VarNumIFAMicIgG, VarNumIFAMicIgA,
    VarNumIFAUrIgG, VarNumIFAUrIgA, VarNumIFATrIgG, VarNumIFACMVIgM, VarNumIFACMVIgG,
    VarNumIFACMVIgGavid, VarNumIFAHerpIgM, VarNumIFAHerpIgG, VarNumIFAHerpIgGavid,
    VarNumIFACandIgG,

    //--- ������������
    VarSpermReport,

    //--- ���
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

    //--- ������������
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

    //���������� ��� ������ ������� ����� ������ ������������ �� ������� � ���� ������
    VarLVisus,VarLOtis,VarLMemor,VarLTaxis,
    VarHAllopecia, VarHPapula, VarHPustula, VarHKorochka,
    VarTMakula, VarTPapula, VarTErozia, VarTUlcer, VarTAngina, VarTMindal,
    VarLipPapula, VarLipZaeda, VarLipErozia, VarLipUlcer, VarPhonemaSound,
    VarLdiCervix, VarLdiSubLing, VarLdiAxillar, VarLdiUlnar, VarLdiInguinal,
    VarSellaNos, VarPalatumGotica, VarGetchinsonZub, VarProcessusMetch, VarSableGolen,

    //���������� � ������� ����� ������������ ��������
    //--- ������� ��������� - ������� ������� �������
    VarChkHBsAg, VarChkHBeAg, VarChkAntiHBcSum, VarChkAntiHBc_IgM,
    VarChkAntiHBe_IgG, VarChkAntiHBsNumer, VarChkAntiHCVSum,
    VarChkAntiHCV_Core_IgM, VarChkAntiHDVSum, VarChkAntiHCVSumCore,
    VarChkAntiHCVSumNS3,VarChkAntiHCVSumNS4, VarChkAntiHCVSumNS5,
    VarChkSumAtLues, VarChkRW, VarChkAIDS,

    //--- ������� ��������� - ������� ������� �����.����������
    VarRW, VarHBeAg, VarAntiHBcSum, VarAntiHBc_IgM, VarAntiHBe_IgG,
    VarAntiHCVSum, VarAntiHCV_Core_IgM, VarAntiHDVSum, VarAntiHCVSumCore,
    VarAntiHCVSumNS3, VarAntiHCVSumNS4, VarAntiHCVSumNS5, VarSumAtLues,
    VarAIDS, VarHBsAg,

    //--- ���.����� �� ������
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

    //--- ���.����� ���
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


    //--- ���.����� ���������� � ����������
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

    //--- ���.����� ����
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

    //--- ���
    VarGnAn, VarGnRez, VarTrAn, VarTrRez,
    VarChlamAn, VarChlamRez, VarUrAn, VarUrRez, VarMicHomAn, VarMicHomRez,
    VarMicGenAn, VarMicGenRez, VarGardAn, VarGardRez, VarCMVAn, VarCMVRez,
    VarVHSAn, VarVHSRez, VarPHVAn, VarPHVRez, VarTubAn, VarTubRez, VarCandAn, VarCandRez,
    VarPHVAnHigh, VarPHVRezHigh,

    //--- ���
    VarIFAChlIgA, VarIFAChlIgG, VarIFAChlIgGb, VarIFAMicIgG, VarIFAMicIgA,
    VarIFAUrIgG, VarIFAUrIgA, VarIFATrIgG, VarIFACMVIgM, VarIFACMVIgG, VarIFACMVIgGavid,
    VarIFAHerpIgM, VarIFAHerpIgG, VarIFAHerpIgGavid, VarIFACandIgG,

    //--- ���
    VarBoolUZIRen, VarBoolUZIVesicUr, VarBoolUZIProstata, VarBoolUZITestis,
    VarBoolUZIPenis, VarChkUZIVesicSemin,

    DrugInput, DrugMethod,//������ ������ � ����������� ��������
    ErrorGDSCode, //���������� ����� ������
    UsrRoleNumb, UsrPortNumb, //���������� ������ ���� � ����� �����������
    SenderTag: integer;//����� ������� ��� �������������
    
      //������ �������� ��� ���������� ��������� (�����:������)
//    665 : TStatusPatUnit.BtnSave
//    667 : TFrmConsultation.BtnSave
//    668 : TFrmConsultation.DBLookupCBDocChoiceEditButtons0
//    669 : MainActManager.ActTblDrug - ����� � ���� ��� ������ ����� � �����������
//    670 : FrmStatusPat.BtnSelDrug - ������ ������ ����� � ����������� �� ���� �������������� ������ �������� �
//          �����
//    444 : �������� ��� ��� ������ ���������� ������� � ������� �4
//    555 : �������� ��� ��� ������ ���������� ������� � ������� �5

// ------------- ��������� ���������� --------------
    //��������� ���������� ����������
    OrdByStrTotalGrid,//������ � ����� ����� � ���������� ���������
    VarTblPrice_PriceName,
    VarAntiHBsNumerStr, //��������� �������� �������� Anti-HBs �����.

    //��������� ���������� �������� ����
    VarOAMDensity, VarOAMLeu, VarOAMEr,
    VarOAMEpit, VarOAMSalt, VarOAMFlora, VarNechiporLeu, VarNechiporEr,
    VarOAMVolume, VarOAMSmell, VarOAMResiduum, VarOAM_pH,
    VarOAMAceticAcid, VarOAMBilifuscin, VarOAMAceton, VarOAMUrobilin,
    VarOAMCylindr, VarOAMMucos, VarNechiporFlora,

    //��������� ���������� ����� �� ������
    VarMazUrLeu, VarMazUrEr, VarMazUrEpit, VarMazUrMucos,

    //��������� ���������� ����� �� ����� �����
    VarMazCvxLeu, VarMazCvxEr, VarMazCvxEpit, VarMazCvxMucos,

    //��������� ���������� ����� �� ���������
    VarMazVgnLeu, VarMazVgnEr, VarMazVgnEpit, VarMazVgnMucos,

    //��������� ���������� ����� �� ������ �����
    VarMazRectLeu, VarMazRectEr, VarMazRectEpit, VarMazRectMucos,

    //��������� ���������� ����� ���� ��������
    VarMazProstLeu, VarMazProstEr, VarMazProstEpit, VarMazProstMFag, VarMazProstAmil, VarMazProst_pH,

    //��������� ���������� ������������ ��������
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


    //��������� ���������� ������������ ������ ������� �����
    VarOAKHb, VarOAKEr, VarOAKColourIndex, VarOAKTromb, VarOAKLeu, VarOAKLeuYoung,
    VarOAKLeuStab, VarOAKLeuSegment, VarOAKLymph, VarOAKMonocyte, VarOAKEosinophil,
    VarOAKBasophil, VarOAKSOE, VarOAKCoagul, VarOAKHemorrhagTime, VarOAKReticulocyte,
    VarOAKGlucosaCapill, VarOAKEosinSliz, VarOAKHmtc,

    //��������� ���������� ������������ �������� �����
    VarBloodBioALT, VarBloodBioAST, VarBloodBioProtein, VarBloodBioBiTotal,
    VarBloodBioBiDirect, VarBloodBioCholest, VarBloodBioSodiumFosf, VarBloodBioGGT,
    VarBloodBioLPVP, VarBloodBioLPNP, VarBloodBioMochevina, VarBloodBioUricAcid,
    VarBloodBioCreatinin, VarBloodBioAlbumin, VarBloodBioGlucosa, VarBloodBioTriglyc,
    VarBloodBioCalcium, VarBloodBioPhosphor, VarBloodBioFerrum, VarBloodBioOZhSS,

    //��������� ���������� ������������ �������� �����
    VarHormLG, VarHormFSG, VarHormProlactin, VarHormEstradiol,
    VarHormProgest, VarHormTestosterTotal, VarHormDGEAS,
    VarHormProgest_17OH, VarHormTestosterFree, VarHormSSSG,
    VarHormT4_Total, VarHormT4_Free, VarHormT3_Total,
    VarHormT3_Free, VarHormTTG, VarHormKortizol, VarHormTireoglob_At,
    VarHormTireoPerox_At, VarHormInhibin_B,

    //��������� ���������� ������������ ������������ � ������������ �����
    VarPSA_Total, VarPSA_Free, VarPSA_Ratio,
    VarIones_Na, VarIones_K, VarIones_Cl, VarIones_Ca, VarIonesBlood_pH,

    //��������� ���������� ��� ������������
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

    //��������� ���������� ���.������ �� ������
    VarStrUrethPathogen1, VarStrUrethPathogen2, VarStrUrethExtra1, VarStrUrethExtra2,

    //��������� ���������� ���.������ ���
    VarStrProstPathogen1, VarStrProstPathogen2, VarStrProstExtra1, VarStrProstExtra2,

    //��������� ���������� ���.������ ���������� � ����������
    VarStrMicUrExtra1, VarStrMicUrExtra2, VarStrExtra1Ur_Val1, VarStrExtra1Ur_Val2,
    VarStrExtra2Ur_Val1, VarStrExtra2Ur_Val2,VarStrExtra1Mic_Val1, VarStrExtra1Mic_Val2,
    VarStrExtra2Mic_Val1, VarStrExtra2Mic_Val2,

    //��������� ���������� ���.������ ����
    VarStrUrinPathogen1, VarStrUrinPathogen2, VarStrUrinExtra1, VarStrUrinExtra2,

    UsrLgn, UsrPswd, UsrRoleName,//�����, ������, ���� ������������
    SpBtnCapt, // ��������� TJvSpeedButton
    DsMKBnumberID//������ ������� ��������� �������� �� ���-10

    ,TextComplaint            //����� �������� �����
    ,TextSecretStuff          //����� "����������" ��������
    ,TextAnamAllergy          //����� ������������������ ��������
    ,TextAnamChldDes          //����� ������������ ������� ��������
    ,TextAnamAnthrDes         //����� ������������� �����������
    ,TextAndrZPPP             //����� ������������ ���� � �������
    ,TextGinZPPP              //����� ������������ ���� � �������
    ,TextStPraesens           //����� �������� ������������ �������
    ,TextStLocalis            //����� �������� �������� �������
    ,TextStProstata           //����� �������� ������� ��������
    ,TextLues                 //����� ������� �� �������
    ,TextBlood                //����� ����� �������� �����
    ,TextAIDS                 //����� ����� �������� ���, RW, ���������
    ,TextSperm                //����� ����� ������������ ��������
    ,TextUrethBactInoc        //���.����� �� ������
    ,TextUrinBactInoc         //���.����� ����
    ,TextProstBactInoc        //���.����� ���
    ,TextMicUrBactInoc        //���.����� �� ���������� � ����������
    ,TextIFA                  //����� ������� ���
    ,TextPCR                  //����� ������� ���
    ,TextOAM                  //����� ������� ����
    ,TextMazUr                //����� ����� �� ������
    ,TextMazProst             //����� ����� ���� ��������
    ,TextUZIRen               //����� ��������� ��� �����
    ,TextUZIGenit             //����� ��������� ��� ���������
    ,TextUrScopiaDry          //����� ��������� "�����" ������������
    ,TextUrScopiaIrrig        //����� ��������� ������������� ������������
    ,TextDrugs                //����� ������� "������������" �������
    ,TextManip                //����� ������� �����������
    ,TextDs                   //����� ������ ���������
    ,TextRecom
    , SimpleREStr, CaptionREStr, //������������� ���������� ��� �������� ������ � ��������� � rich-�������� � �������
    DBConnectString//������ ����������� � ��
    , FB_Client_Path //������ ���� � ���������� ���������� ������� gds32.dll ��� fbclient.dll (
        //����� ������ ������������
    ,ErrorMsg: String;

    FrmSenderModalResult: TModalResult;//��������� ������������ ��������� �����-������� ������ ModalResult

{$ENDREGION}

{$REGION 'Functions & procedures declaration section'}
    //���� ���������� ��������
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
    function GetSystemPath(SystemPath:TSystemPath):string;//��������� �������� "���������" ������ ��� �������� �����
    function GetFBDefaultInstance: string;//��������� ������� ���� � �������� FB �� �������
    function InvertStr(const AStr: string): string;//�������� ������
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
    function Sto_GetFmtFileVersion(const FileName: String = ''; const Fmt: String = '%d.%d.%d.%d'): String;//��������� File Version

    //������� ��������� ������������ url ��� ���� � ���������� "���������� ������"
    function Sto_UrlEncode(const Text: String): String;

    //������� �����
    procedure Sto_OpenMail(const Address: String; const Subject: String = ''; const Body: String = ''; const Cc: String = ''; const Bcc: String = '');

    procedure Sto_OpenWebSite(const Site: String);//��������� URL

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
    procedure RemoveNoEmptyDir(var ADir: string);//�������� �� ������ �����
{$ENDREGION}

implementation

uses
  ShellAPI;

//----------------------------------------------------------------------------
//������� ���������, �������� �� ������ ����� ����� ��� ��������(� �.�. � �������������)
function PrmIsDigit(const APrm: string): Boolean;
const TmpTxt: string = '-0123456789';
var i,counter: Integer;
begin
Result:= False;
if Length(Trim(APrm)) = 0  then Exit;//������, ���� ������ ������

counter:= 0;//������� �������

//������ ������ ������ ���������� � ��������
//���� ���� ���� ������ �� ������������ � ������, �� ���������� �������
for i:= 1 to Length(APrm) do
  if (Pos(APrm[i],TmpTxt) = 0) then Inc(counter);

Result:= (counter = 0);
end;

//----------------------------------------------------------------------------
//������� ���������, �������� �� ���������� ������ ����� ������
function PrmIsDigitSymb(const PrmKey: Char): Boolean;
const TmpStr: string = '0123456789';
begin
Result:= (Pos(PrmKey,TmpStr) > 0);
end;

//----------------------------------------------------------------------------
//������� ���������, �������� �� ���������� ������ ������ ������� ������������� ������
function PrmIsCyrillicSymb(var PrmKey: Char): Boolean;
//const TmpStr: array[0..66] of Char = '�����Ũ����������������������������������������������������������';
//var i, counter: Integer;
const TmpStr: string = '�����Ũ����������������������������������������������������������';
begin
Result:= (Pos(PrmKey,TmpStr) > 0);

//counter:= 0;
//for i:= 0 to High(TmpStr) - 1 do
//    if ord(TmpStr[i]) = ord(PrmKey) then Inc(counter);
//
//Result:= (counter > 0);
end;

//----------------------------------------------------------------------------
//������� ���������, �������� �� ���������� ������ ������ ������� ��������� ������
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
// ������� ���������, �� �������� �� ��������� ���� � ������ TmpString �������, ������
// ��� ������ � �������. ���� ������� �������, �� �������� ����� �� ���, � �����
// ��������� � ����� ������ ������ TmpSymbol.
// ���������� ������ ����������� � Result �������

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
/////  �������, ������������ ������ RTF. �����, ��������, ��� ��������     /////
/////  ���������������� ������ �� RichEdit � ��������� ���������� ����     /////
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
/////  �������, ������ ��������� ������ ����� � ������ ����� ������ Edit'� /////
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
//���������� ���������� �������, ������ ��� TDBEditEh
function UpFirstCharEhEdt(Sender: TDBEditEh): String;
begin
if Length(Trim(Sender.Text)) = 1 then
  begin
    Sender.Text:= AnsiUpperCase(Sender.Text);
    Sender.SelStart:= 1;
  end;
end;

//----------------------------------------------------------------------------
//��������� check/uncheck ����������� � �����
function BoolConvertInt(const ChkStatus: Boolean): Integer;
begin
if ChkStatus
  then Result:= 1
  else Result:= 0;
end;

//----------------------------------------------------------------------------
//��������� ����� � check/uncheck �����������
function IntConvertBool(const VarInt: Integer): Boolean;
begin
if VarInt = 1
  then Result:= True
  else Result:= False;
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
/////      ��������� ���������� � ����� RichEdit ������������ ������     /////
//////////////////////////////////////////////////////////////////////////////

procedure AddFormatStrInRichEdit(Sender: TRichEdit; const Txt: String);
begin
with TRichEdit(Sender) do
  begin
      Lines.Add(Txt);
      SelStart:= Length(Text) - Length(Txt) - 2;
      SelLength:= Length(Txt);//�������� "������" ����� ������
      SelAttributes.Style:= [fsUnderline];//����������� ���������� �����
      SelStart:= Length(Text);//������ � ����� ������
      SelLength:= 0;//������ ���������
      SelAttributes.Assign(DefAttributes);//���������� ��������
  end;{with TRichEdit(Sender) do}
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
/////  ��������� ����������� ����� � ������ RichEdit � ������������ �    /////
///// ����������� �����������:                                           /////
///// ARichEdit - ���������� ���-����                                    /////
///// CurStart - ��������� ������� ������� ��� ���������                 /////
///// Index - "�����" ����� ������������� ������                         /////
///// TxtStr - ������������� ������                                      /////
//////////////////////////////////////////////////////////////////////////////

procedure FormatTextInTempRichEdit(ARichEdit: TRichEdit;
  const CurStart, Index: Integer; TxtStr: String);
begin
with ARichEdit do
      begin
        PlainText:= False;
        Lines.Add(TxtStr);//��������� ������
        SelStart:= Length(Text) - CurStart - 2;//������������ �����
        SelLength:= CurStart - 1;//�������� "������" ���-�� ��������
        with SelAttributes do //������ ���������� ������
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
        SelStart:= Length(Text);//������ � ����� ������
        SelAttributes.Assign(DefAttributes);//���������� ���������� ���������
      end;{with TRichEdit(Sender) do}
end;

//----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////
///// ��������� ����������� ������� PgCtrlSender � ������� SheetNum,     /////
///// � �������� ����� � EdtSender                                       /////
//////////////////////////////////////////////////////////////////////////////

procedure SetFocusToEmptyEdit(EdtSender: TEdit; PgCtrlSender: TPageControl;
                                                                 const SheetNum: Integer);
begin
PgCtrlSender.ActivePageIndex:= SheetNum;
if EdtSender.CanFocus then EdtSender.SetFocus;
end;

///////////////////////////////////////////////////////////////////////////////
//////             ������� ��������-���������� ����-�����               ///////
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
//�������� �������� � �������������
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
              then ShowMessage('���������� ������� ����� ' + sFileName);
          end;
      iIndex := FindNext(SearchRec);
    end;
  FindClose(SearchRec);
  RemoveDir(ExtractFileDir(sDir));
  Result := True;
end;

//---------------------------------------------------------------
//��������� ������ �����
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
//�������� ���� � ������ ����� � ������ ������� ������
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
//������� ���������� ������, ��������� �� ��������������� "���������" ����� ARichEdt, ����������
//���� �� ����� ��������.
//�������� ExcludStr ��������� ������� ������ ������� ���-�����, ���� ��� ����� ������������
//� ��� ������� (��� �����) �������� - ��� "���������" ���������.
//�������� ShrtVar ��������� ���������� �� ������ ������� ���-����� ������ ���� ����� � ������
//��������.
//
// ��������!
// ������ ������ ���-����� ����� �������� ������� �� ��������, ���� ������ ��� ���������� �
// �������� "-", "+" ��� "*"

function FormatStrListToBulkText(ARichEdt: TRichEdit; ExcludStr: String; ShrtVar: Boolean): AnsiString;
var i: Integer;
    TmpBool: Boolean;
    tmpstr, tstr: AnsiString;//���������� ����������
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
          then //���� � ����� ����������� �� 1 ����� �� ������
            begin
              //���� ����� �������� ������ ���� ����� �� ������ ������
              for i:= 0 to Lines.Count - 1 do
                begin
                  tstr:= Trim(Lines.Strings[i]);//�������� �������

                  if ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1))
                    then //���� ����������� ������� "+", "-", "*" � ����� ������ ������
                      begin
                        //���������� ������, ���� �� ���������
                        while ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1)) do
                          begin
                            tstr:= Trim(RightStr(tstr,Length(tstr) - 1));//������� �� ��������
                          end;

                        //"����������������" �����
                        tstr:= AnsiLowerCase(tstr);

                        if i = 0
                          then
                            tmpstr:= LeftStr(tstr,pos(' ',tstr)-1)//���� ��� ����� ������ ������
                          else
                            tmpstr:= tmpstr + ', ' + LeftStr(tstr,pos(' ',tstr)-1);//���� �� �����
                                                              //������, �� ����� ��� �������� �������
                      end;
                end;
            end
          else //���� ������ ����������� � ����� ���������
            begin
              for i:= 0 to Lines.Count - 1 do
                begin
                  tstr:= Trim(Lines.Strings[i]);//�������� �������

                  if ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1))
                    then //���� ����������� ������� "+", "-", "*"
                      begin
                        while ((Pos('-',tstr) = 1) or (Pos('*',tstr) = 1) or (Pos('+',tstr) = 1)) do
                          begin
                            tstr:= Trim(RightStr(tstr,Length(tstr) - 1));//������� �� ��������
                          end;
                        TmpBool:= True; //���� ����, ������ �������� �� ��������� ��������
                      end
                    else
                      TmpBool:= False;//���� ����, ��� ������ �� ��������
                  if TmpBool
                    then //���� ������ ��������
                      begin
                        if i = 0
                          then tmpstr:= tstr //���� ��� ����� ������ ������
                          else tmpstr:= tmpstr + ', ' + tstr;//���� �� ����� ������, �� ����� ���
                                                             //�������� �������
                      end
                    else //���� �� ��������, �� ������ ����������� ����� ������
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
//������� �������� �� ������ ARichEdt ��������� �������� ExcludStr (��� ����� ��������)
//� ���������� �����
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
>> ���������� ������ ��������� � ����� ������

���������� ������ ��������� � ����� ������ �� ��������� �����

�����������: ���
�����:       Anatoly Podgoretsky, anatoly@podgoretsky.com, Johvi
Copyright:
����:        26 ������ 2002 �.
������ �������������:      S := PADC(S,32);

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
>> ���������� ������ ��������� ������

��������� ������ ��������� ������ �� ��������� �����.

�����������: ���
�����:       Anatoly Podgoretsky, anatoly@podgoretsky.com, Johvi
Copyright:   Anatoly Podgoretsky
����:        26 ������ 2002 �.

������ �������������:      S := PADR(S,32);
******************************* }

function PADR(Src:string; Lg:Integer) : string;
begin
  Result := Src;
  while Length(Result) < Lg do Result := Result + ' ';
end;

//--------------------------------------------------------------------------
{ **** UBPFD *********** by ****
>> ���������� ������ ��������� �����

����������� ������ ����� ��������� �� ��������� �����

�����������: ���
�����:       Anatoly Podgoretsky, anatoly@podgoretsky.com, Johvi
Copyright:  
����:        26 ������ 2002 �.

������ �������������:      S := PADL(S,32);
******************************* }

function PADL(Src:string; Lg:Integer) : string;
begin
  Result := Src;
  while Length(Result) < Lg do Result := ' ' + Result;
end;


//--------------------------------------------------------------------------
{ **** UBPFD *********** by ****
>> �������� ������ �������� � ������ (����������� ��������)

�����������: SysUtils
�����:       COOLer, COOLer_Master@mail.ru, ICQ:315733656, ����
Copyright:   Interactive Incode - �.�. �������� ���.
����:        12 ��� 2004 �.


******************************* }

function DeleteBlank(S : String) : String;
 var
  i : Integer;
begin
 for I := 2 to Length (S) + 1 do {������ �� ����� ������}
  begin
   if (S[I-1] = ' ') and (S[I] = ' ') then {��������� �� �������}
    begin {��, ���� ������}
     Delete (S, I, 1); {������� ��}
     S := DeleteBlank (S); {� ����� ���������}
    end; {�������� ���������� �� ��� ���, ���� ������ �� ������ ���������� ���}
  end;
 Result := S; {���������}
end;

//----------------------------------------------------------------------------------
//----------------------------------------------------------------------------
//����� ������� �� HelpContext �������,
//���� ����������� ���������� � ID ������ (HlpCntx) �����
//��������� �������� � ����� 0.
//���� � HelpContext � ������� ����� 0 ��������, �� ����������
//������ ������� � ID=1
//ChmFileName - �������� ����� ������� (����� �������� ���������� ��� ������������� ����)
procedure CallMyDocByHlpContext(Sender: TObject; HlpCntx: Integer);
var IDindex: Integer;
begin
if not FileExists(ExtractFilePath(Application.ExeName) + ChmFileName) then
  begin
    Application.MessageBox('���� ������� �����������!','������ ������� � �����', MB_ICONINFORMATION);
    Exit;
  end;

if HlpCntx = 0
  then
    begin
      if (Sender as TControl).HelpContext = 0
        then
          begin
            Application.MessageBox(PChar('������� �������� �� ����������� �� ���� �� �������� �������. '
                                   + '���������� ������������ ��� ���������� �������� ������ ��������������.'),
                                    '������ ������� � �������', MB_ICONINFORMATION);
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
//��������� ������� ���� � �������� FB �� �������
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
//������� ���������� ��������������� ������ (�.�. '������' ������������ ��� '������')

//�����������: Windows, Classes, StdCtrls
//�����:       Fenik, chook_nu@uraltc.ru, �����������
//Copyright:   �����: ����������� �������
//����:        26 ���� 2002 �.

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
    //������� ��������� ������������ url ��� ���� � ���������� "���������� ������"
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
//��������� url
procedure Sto_OpenWebSite(const Site: String);
begin
  ShellExecute(0, 'open', PChar(Site), nil, nil, SW_SHOWNORMAL);
end;

//----------------------------------------------------------------------------
//��������� ��������� CHM-���� �� ������ �� ������������ ��������, �� � �� ������������ �������� (���� ��� �������)
//ChmFN ���� � CHM-�����, ������� �� ����� � ����������
//TopicFileName - ��� ��������(*.htm) ������
//BookMark - ��� ��������
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

procedure RemoveNoEmptyDir(var ADir: string);//�������� �� ������ �����
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
