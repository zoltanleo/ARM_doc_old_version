unit HtmlHelp;

interface

uses
  Windows, Graphics;

const
  HH_DISPLAY_TOPIC = $0000;
  HH_DISPLAY_TOC = $0001;
  HH_DISPLAY_INDEX = $0002;
  HH_DISPLAY_SEARCH = $0003;
  HH_SET_WIN_TYPE = $0004;
  HH_GET_WIN_TYPE = $0005;
  HH_GET_WIN_HANDLE = $0006;
  HH_GET_INFO_TYPES = $0007;
  HH_SET_INFO_TYPES = $0008;
  HH_SYNC = $0009;
  HH_ADD_NAV_UI = $000A;
  HH_ADD_BUTTON = $000B;
  HH_GETBROWSER_APP = $000C;
  HH_KEYWORD_LOOKUP = $000D;
  HH_DISPLAY_TEXT_POPUP = $000E;
  HH_HELP_CONTEXT = $000F;

const
  HHWIN_PROP_ONTOP = 2;
  HHWIN_PROP_NOTITLEBAR = 4;
  HHWIN_PROP_NODEF_STYLES = 8;
  HHWIN_PROP_NODEF_EXSTYLES = 16;
  HHWIN_PROP_TRI_PANE = 32;
  HHWIN_PROP_NOTB_TEXT = 64;
  HHWIN_PROP_POST_QUIT = 128;
  HHWIN_PROP_AUTO_SYNC = 256;
  HHWIN_PROP_TRACKING = 512;
  HHWIN_PROP_TAB_SEARCH = 1024;
  HHWIN_PROP_TAB_HISTORY = 2048;
  HHWIN_PROP_TAB_FAVORITES = 4096;
  HHWIN_PROP_CHANGE_TITLE = 8192;
  HHWIN_PROP_NAV_ONLY_WIN = 16384;
  HHWIN_PROP_NO_TOOLBAR = 32768;

const
  HHWIN_PARAM_PROPERTIES = 2;
  HHWIN_PARAM_STYLES = 4;
  HHWIN_PARAM_EXSTYLES = 8;
  HHWIN_PARAM_RECT = 16;
  HHWIN_PARAM_NAV_WIDTH = 32;
  HHWIN_PARAM_SHOWSTATE = 64;
  HHWIN_PARAM_INFOTYPES = 128;
  HHWIN_PARAM_TB_FLAGS = 256;
  HHWIN_PARAM_EXPANSION = 512;
  HHWIN_PARAM_TABPOS = 1024;
  HHWIN_PARAM_TABORDER = 2048;
  HHWIN_PARAM_HISTORY_COUNT = 4096;
  HHWIN_PARAM_CUR_TAB = 8192;

const
  HHWIN_BUTTON_EXPAND = 2;
  HHWIN_BUTTON_BACK = 4;
  HHWIN_BUTTON_FORWARD = 8;
  HHWIN_BUTTON_STOP = 16;
  HHWIN_BUTTON_REFRESH = 32;
  HHWIN_BUTTON_HOME = 64;
  HHWIN_BUTTON_BROWSE_FWD = 128;
  HHWIN_BUTTON_BROWSE_BCK = 256;
  HHWIN_BUTTON_NOTES = 512;
  HHWIN_BUTTON_CONTENTS = 1024;
  HHWIN_BUTTON_SYNC = 2048;
  HHWIN_BUTTON_OPTIONS = 4096;
  HHWIN_BUTTON_PRINT = 8192;
  HHWIN_BUTTON_INDEX = 16384;
  HHWIN_BUTTON_SEARCH = 32768;
  HHWIN_BUTTON_HISTORY = 65536;
  HHWIN_BUTTON_FAVORITES = 131072;
  HHWIN_BUTTON_JUMP1 = 262144;
  HHWIN_BUTTON_JUMP2 = 524288;
  HHWIN_BUTTON_ZOOM = HHWIN_Button_Jump2 * 2;
  HHWIN_BUTTON_TOC_NEXT = HHWIN_Button_Zoom * 2;
  HHWIN_BUTTON_TOC_PREV = HHWIN_Button_Toc_Next * 2;

const
  HHWIN_DEF_Buttons = HHWIN_Button_Expand or HHWIN_Button_Back or
    HHWIN_Button_Options or HHWIN_Button_Print;

const
  IDTB_EXPAND = 200;
  IDTB_CONTRACT = 201;
  IDTB_STOP = 202;
  IDTB_REFRESH = 203;
  IDTB_BACK = 204;
  IDTB_HOME = 205;
  IDTB_SYNC = 206;
  IDTB_PRINT = 207;
  IDTB_OPTIONS = 208;
  IDTB_FORWARD = 209;
  IDTB_NOTES = 210;
  IDTB_BROWSE_FWD = 211;
  IDTB_BROWSE_BACK = 212;
  IDTB_CONTENTS = 213;
  IDTB_INDEX = 214;
  IDTB_SEARCH = 215;
  IDTB_HISTORY = 216;
  IDTB_FAVORITES = 217;
  IDTB_JUMP1 = 218;
  IDTB_JUMP2 = 219;
  IDTB_CUSTOMIZE = 221;
  IDTB_ZOOM = 222;
  IDTB_TOC_NEXT = 223;
  IDTB_TOC_PREV = 224;

const
  HHN_First = Cardinal(-860);
  HHN_Last = Cardinal(-879);

  HHN_NavComplete = HHN_First - 0;
  HHN_Track = HHN_First - 1;

type
  HHN_Notify = record
    hdr: Pointer;
    pszUrl: PWideChar;
  end;

  HH_Popup = record
    cbStruct: Integer;
    hinst: THandle;
    idString: Cardinal;
    pszText: PChar;
    pt: TPoint;
    clrForeground: TColor;
    clrBackground: TColor;
    rcMargins: TRect;
    pszFont: PChar;
  end;

  HH_AKLINK = record
    cbStruct: Integer;
    fReserved: bool;
    pszKeywords: PChar;
    pszUrl: PChar;
    pszMsgText: PChar;
    pszMsgTitle: PChar;
    pszWindow: PChar;
    fIndexOnFail: bool;
  end;

type
  HHWin_NavTypes = (HHWIN_NAVTYPE_TOC,
    HHWIN_NAVTYPE_INDEX,
    HHWIN_NAVTYPE_SEARCH,
    HHWIN_NAVTYPE_HISTORY,
    HHWIN_NAVTYPE_FAVOURITES);

type
  HH_InfoType = Longint;
  PHH_InfoType = ^HH_InfoType;

type
  HHWin_NavTabs = (HHWIN_NavTab_Top,
    HHWIN_NavTab_Left,
    HHWIN_NavTab_Bottom);

const
  HH_Max_Tabs = 19;

type
  HH_Tabs = (HH_TAB_CONTENTS,
    HH_TAB_INDEX,
    HH_TAB_SEARCH,
    HH_TAB_HISTORY,
    HH_TAB_FAVORITES
    );

const
  HH_FTS_DEFAULT_PROXIMITY = (-1);

type
  HH_FTS_Query = record
    cbStruct: Integer;
    fUniCodeStrings: bool;
    pszSearchQuery: PChar;
    iProximity: Longint;
    fStemmedSearch: bool;
    fTitleOnly: bool;
    fExecute: bool;
    pszWindow: PChar;
  end;

type
  HH_WinType = record
    cbStruct: Integer;
    fUniCodeStrings: bool;
    pszType: PChar;
    fsValidMembers: Longint;
    fsWinProperties: Longint;
    pszCaption: PChar;
    dwStyles: Longint;
    dwExStyles: Longint;
    rcWindowPos: TRect;
    nShowState: Integer;
    hwndHelp: THandle;
    hwndCaller: THandle;
    paInfoTypes: ^HH_InfoType;
    hwndToolbar: THandle;
    hwndNavigation: THandle;
    hwndHTML: THandle;
    iNavWidth: Integer;
    rcHTML: TRect;
    pszToc: PChar;
    pszIndex: PChar;
    pszFile: PChar;
    pszHome: PChar;
    fsToolbarFlags: Longint;
    fNotExpanded: bool;
    curNavType: Integer;
    tabPos: Integer;
    idNotify: Integer;
    TabOrder: array[0..HH_Max_Tabs + 1] of Byte;
    cHistory: Integer;
    pszJump1: PChar;
    pszJump2: PChar;
    pszUrlJump1: PChar;
    pszUrlJump2: PChar;
    rcMinSize: TRect;
  end;

  PHH_WinType = ^HH_WinType;

type
  HHACTTYpes = (HHACT_TAB_CONTENTS,
    HHACT_TAB_INDEX,
    HHACT_TAB_SEARCH,
    HHACT_TAB_HISTORY,
    HHACT_TAB_FAVORITES,

    HHACT_EXPAND,
    HHACT_CONTRACT,
    HHACT_BACK,
    HHACT_FORWARD,
    HHACT_STOP,
    HHACT_REFRESH,
    HHACT_HOME,
    HHACT_SYNC,
    HHACT_OPTIONS,
    HHACT_PRINT,
    HHACT_HIGHLIGHT,
    HHACT_CUSTOMIZE,
    HHACT_JUMP1,
    HHACT_JUMP2,
    HHACT_ZOOM,
    HHACT_TOC_NEXT,
    HHACT_TOC_PREV,
    HHACT_NOTES,

    HHACT_LAST_ENUM
    );

type
  HHNTRACK = record
    hdr: TNMHDR;
    pszCurUrl: PWideChar;
    idAction: Integer;
    phhWinType: ^HH_WinType;
  end;
  PHHNTRACK = ^HHNTRACK;

  HHNNAVCOMPLETE = record
    hdr: TNMHDR;
    pszUrl: PChar;
  end;
  PHHNNAVCOMPLETE = ^HHNNAVCOMPLETE;

type
  THtmlHelpA = function(hwndCaller: THandle; pszFile: PChar;
    uCommand: Cardinal; dwData: Longint): THandle;
  stdCall;
  THtmlHelpW = function(hwndCaller: THandle; pszFile: PChar;
    uCommand: Cardinal; dwData: Longint): THandle;
  stdCall;

function HH(hwndCaller: THandle; pszFile: PChar; uCommand: Cardinal;
  dwData: Longint): THandle;
function HtmlHelpInstalled: Boolean;

implementation

const
  ATOM_HTMLHELP_API_ANSI = #14#0;
ATOM_HTMLHELP_API_UNICODE = #15#0;

var
HtmlHelpA: THtmlHelpA;
  OCXHandle: THandle;

function HH;
begin
  Result := 0;
  if (Assigned(HtmlHelpA)) then
  begin
    Result := HtmlHelpA(hwndCaller, pszFile, uCommand, dwData);
  end;
end;

function HtmlHelpInstalled: Boolean;
begin
  Result := (Assigned(HtmlHelpA));
end;

initialization
  begin
    HtmlHelpA := nil;
    OCXHandle := LoadLibrary('HHCtrl.OCX');
    if (OCXHandle <> 0) then
    begin
      HtmlHelpA := GetProcAddress(OCXHandle, 'HtmlHelpA');
    end;
  end;

finalization
  begin
    if (OCXHandle <> 0) then
      FreeLibrary(OCXHandle);
  end;
end.
//-----------------------------------------------
//
//unit Unit1;
//
//{....}
//
//implementation
//
//uses
//  HtmlHelp;
//
//const
//  HH_HELP_CONTEXT = $F;
//  MYHELP_FILE = 'DualHelp.chm' + Chr(0);
//var
//  RetCode: LongInt;
//
//{$R *.DFM}
//
//procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
//begin
//  if Key = vk_f1 then
//  begin
//    if HtmlHelpInstalled = True then
//    begin
//      RetCode := HH(Form1.Handle, PChar(MYHELP_FILE), HH_HELP_CONTEXT,
//        ActiveControl.HelpContext);
//      Key := 0; //eat it!
//    end
//    else
//      helpfile := 'hhtest.hlp';
//  end;
//end;