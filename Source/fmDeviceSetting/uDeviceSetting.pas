unit uDeviceSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,uSubForm, CommandArray, ExtCtrls, Shader, ComCtrls, StdCtrls,
  ImgList, RzButton, RzPanel, RzRadGrp, Mask, RzEdit, RzSpnEdt, RzCmboBx,
  IPEdit, Buttons, RzLabel, Grids, BaseGrid, AdvGrid, Menus, Spin,
  RzLstBox, RzChkLst, RzListVw, RzTabs;

type
  TfmDeviceSetting = class(TfmASubForm)
    PageControl1: TPageControl;
    tbDEVICE: TTabSheet;
    GroupBox3: TGroupBox;
    TreeView_Device: TTreeView;
    Shader3: TShader;
    toolslist: TImageList;
    Panel1: TPanel;
    pg_DeviceSetting: TPageControl;
    TabMCSetting: TTabSheet;
    TabSystemInfo: TTabSheet;
    tab_DoorLock: TTabSheet;
    tab_CardReader: TTabSheet;
    Tab_Port: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    st_EcuID: TStaticText;
    Label2: TLabel;
    st_DeviceVer: TStaticText;
    Label3: TLabel;
    st_DeviceCode: TStaticText;
    StaticText2: TStaticText;
    ed_mcid: TEdit;
    GroupBox1: TGroupBox;
    StaticText3: TStaticText;
    ComboBox_WatchPowerOff: TRzComboBox;
    StaticText6: TStaticText;
    ComboBox_DoorType1: TRzComboBox;
    ComboBox_DoorType2: TRzComboBox;
    st_Door2Type: TStaticText;
    StaticText8: TStaticText;
    Edit_Locate: TEdit;
    GroupBox2: TGroupBox;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    ComboBox_CardModeType1: TRzComboBox;
    ComboBox_CardModeType2: TRzComboBox;
    StaticText10: TStaticText;
    ComboBox_DoorModeType1: TRzComboBox;
    ComboBox_DoorModeType2: TRzComboBox;
    cmb_DoorControlTime1: TRzComboBox;
    Label12: TLabel;
    cmb_DoorControlTime2: TRzComboBox;
    Label16: TLabel;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    ComboBox_SendDoorStatus1: TRzComboBox;
    ComboBox_SendDoorStatus2: TRzComboBox;
    StaticText13: TStaticText;
    ComboBox_AlarmLongOpen1: TRzComboBox;
    ComboBox_AlarmLongOpen2: TRzComboBox;
    StaticText14: TStaticText;
    ComboBox_ControlFire1: TRzComboBox;
    ComboBox_ControlFire2: TRzComboBox;
    StaticText16: TStaticText;
    ComboBox_LockType1: TRzComboBox;
    ComboBox_LockType2: TRzComboBox;
    cmb_DsOpenState2: TRzComboBox;
    cmb_DsOpenState1: TRzComboBox;
    cmb_RemoteDoorOpen1: TRzComboBox;
    cmb_RemoteDoorOpen2: TRzComboBox;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    gb_CardReader: TGroupBox;
    StaticText20: TStaticText;
    RzPanel1: TRzPanel;
    cmb_ReaderUse1: TRzComboBox;
    RzPanel5: TRzPanel;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    RzPanel3: TRzPanel;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    cmb_ReaderDoor1: TRzComboBox;
    cmb_ReaderDoorLocate1: TRzComboBox;
    cmb_ReaderBuildingLocate1: TRzComboBox;
    st_ReaderComstate1: TStaticText;
    cmb_ReaderUse2: TRzComboBox;
    cmb_ReaderDoor2: TRzComboBox;
    cmb_ReaderDoorLocate2: TRzComboBox;
    cmb_ReaderBuildingLocate2: TRzComboBox;
    st_ReaderComstate2: TStaticText;
    cmb_ReaderUse3: TRzComboBox;
    cmb_ReaderDoor3: TRzComboBox;
    cmb_ReaderDoorLocate3: TRzComboBox;
    cmb_ReaderBuildingLocate3: TRzComboBox;
    st_ReaderComstate3: TStaticText;
    cmb_ReaderUse4: TRzComboBox;
    cmb_ReaderDoor4: TRzComboBox;
    cmb_ReaderDoorLocate4: TRzComboBox;
    cmb_ReaderBuildingLocate4: TRzComboBox;
    st_ReaderComstate4: TStaticText;
    cmb_ReaderUse5: TRzComboBox;
    cmb_ReaderDoor5: TRzComboBox;
    cmb_ReaderDoorLocate5: TRzComboBox;
    cmb_ReaderBuildingLocate5: TRzComboBox;
    st_ReaderComstate5: TStaticText;
    cmb_ReaderUse6: TRzComboBox;
    cmb_ReaderDoor6: TRzComboBox;
    cmb_ReaderDoorLocate6: TRzComboBox;
    cmb_ReaderBuildingLocate6: TRzComboBox;
    st_ReaderComstate6: TStaticText;
    cmb_ReaderUse7: TRzComboBox;
    cmb_ReaderDoor7: TRzComboBox;
    cmb_ReaderDoorLocate7: TRzComboBox;
    cmb_ReaderBuildingLocate7: TRzComboBox;
    st_ReaderComstate7: TStaticText;
    cmb_ReaderUse8: TRzComboBox;
    cmb_ReaderDoor8: TRzComboBox;
    cmb_ReaderDoorLocate8: TRzComboBox;
    cmb_ReaderBuildingLocate8: TRzComboBox;
    st_ReaderComstate8: TStaticText;
    StaticText9: TStaticText;
    st_cardreaderType: TStaticText;
    cb_CardType: TRzComboBox;
    gb_Port: TGroupBox;
    StaticText37: TStaticText;
    RzPanel9: TRzPanel;
    cmb_WatchType1: TRzComboBox;
    RzPanel10: TRzPanel;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    RzPanel12: TRzPanel;
    cmb_recorver1: TRzComboBox;
    cmb_WatchType2: TRzComboBox;
    cmb_recorver2: TRzComboBox;
    cmb_WatchType3: TRzComboBox;
    cmb_recorver3: TRzComboBox;
    cmb_WatchType4: TRzComboBox;
    cmb_recorver4: TRzComboBox;
    cmb_WatchType5: TRzComboBox;
    cmb_recorver5: TRzComboBox;
    cmb_WatchType6: TRzComboBox;
    cmb_recorver6: TRzComboBox;
    GroupBox6: TGroupBox;
    btn_Alarm: TRzBitBtn;
    btn_DisAlarm: TRzBitBtn;
    StaticText45: TStaticText;
    st_AlarmState: TStaticText;
    GroupBox7: TGroupBox;
    RzPanel13: TRzPanel;
    RzPanel14: TRzPanel;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    cmb_COMNO1: TRzComboBox;
    cmb_COMNO2: TRzComboBox;
    cmb_ExGnd2: TRzComboBox;
    cmb_ExGnd1: TRzComboBox;
    cmb_dsgnd2: TRzComboBox;
    cmb_dsgnd1: TRzComboBox;
    cmb_Firestat: TRzComboBox;
    btn_DevicState: TRzBitBtn;
    Panel3: TPanel;
    StaticText51: TStaticText;
    SpinEdit_OpenMoni1: TRzSpinEdit;
    Label46: TLabel;
    SpinEdit_OpenMoni2: TRzSpinEdit;
    Label11: TLabel;
    RzPanel15: TRzPanel;
    st_ZoneState1: TStaticText;
    st_ZoneState2: TStaticText;
    st_ZoneState3: TStaticText;
    st_ZoneState4: TStaticText;
    st_ZoneState5: TStaticText;
    st_ZoneState6: TStaticText;
    btn_FireDevice: TRzBitBtn;
    st_AlarmState2: TStaticText;
    StaticText4: TStaticText;
    cmb_lsgnd1: TRzComboBox;
    cmb_lsgnd2: TRzComboBox;
    sg_FireDevice: TAdvStringGrid;
    gb_ControlButton: TGroupBox;
    btn_UseControlerSearch: TRzBitBtn;
    btn_Registration: TRzBitBtn;
    btn_Next: TRzBitBtn;
    GroupBox4: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox5: TGroupBox;
    btn_Door1CloseMode: TRzBitBtn;
    btn_Door1OpenMode: TRzBitBtn;
    btn_Door2OpenMode: TRzBitBtn;
    btn_Door2CloseMode: TRzBitBtn;
    Popup_Fire: TPopupMenu;
    Menu_FireRecovery: TMenuItem;
    btn_Door1Open: TRzBitBtn;
    btn_Door2Open: TRzBitBtn;
    GroupBox9: TGroupBox;
    StaticText1: TStaticText;
    st_CtrDoorNum: TStaticText;
    StaticText7: TStaticText;
    st_CtrCardMode: TStaticText;
    StaticText29: TStaticText;
    st_CtrDoorMode: TStaticText;
    StaticText31: TStaticText;
    st_CtrDoorState: TStaticText;
    rg_LanSet: TRzGroupBox;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Rg_Mode: TRadioGroup;
    chk_DHCP: TCheckBox;
    btn_WizNetSetting: TRzBitBtn;
    Edit_IP: TEdit;
    Edit_subnet: TEdit;
    edit_Gateway: TEdit;
    edit_port: TEdit;
    ed_server: TEdit;
    ed_ServerPort: TEdit;
    GroupBox10: TGroupBox;
    btn_TimeSync: TRzBitBtn;
    btn_TimeSearch: TRzBitBtn;
    st_Time: TStaticText;
    gb_cdma: TGroupBox;
    chk_Cdma: TCheckBox;
    pan_cdma: TPanel;
    lb_cccip: TLabel;
    ed_cccip_org: TRzEdit;
    lb_cccport: TLabel;
    ed_cccport: TRzEdit;
    Label366: TLabel;
    Label368: TLabel;
    ed_cccTimeInterval: TRzEdit;
    Label367: TLabel;
    Label369: TLabel;
    ed_cccStartTime: TRzEdit;
    Panel5: TPanel;
    GroupMAc: TRzGroupBox;
    editMAC1: TRzEdit;
    editMAC2: TRzEdit;
    editMAC3: TRzEdit;
    editMAC4: TRzEdit;
    editMAC5: TRzEdit;
    editMAC6: TRzEdit;
    btnRegMAC: TRzBitBtn;
    btn_MacSearch: TRzBitBtn;
    ed_cccip: TIPEdit;
    deviceLoadTimer: TTimer;
    StaticText63: TStaticText;
    cmb_WatchType7: TRzComboBox;
    cmb_recorver7: TRzComboBox;
    st_ZoneState7: TStaticText;
    st_ZoneState8: TStaticText;
    cmb_recorver8: TRzComboBox;
    cmb_WatchType8: TRzComboBox;
    StaticText64: TStaticText;
    RzPanel11: TRzPanel;
    cmb_WatchDelay1: TRzComboBox;
    cmb_WatchDelay2: TRzComboBox;
    cmb_WatchDelay3: TRzComboBox;
    cmb_WatchDelay4: TRzComboBox;
    cmb_WatchDelay5: TRzComboBox;
    cmb_WatchDelay6: TRzComboBox;
    cmb_WatchDelay7: TRzComboBox;
    cmb_WatchDelay8: TRzComboBox;
    StaticText15: TStaticText;
    ComboBox_UseSch1: TRzComboBox;
    ComboBox_UseSch2: TRzComboBox;
    SpinEdit_OutDelay: TRzSpinEdit;
    Label15: TLabel;
    SpinEdit_InDelay: TRzSpinEdit;
    Label4: TLabel;
    StaticText5: TStaticText;
    StaticText28: TStaticText;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    lvECU: TRzListView;
    cmb_EcuType: TRzComboBox;
    TabSheet2: TRzTabSheet;
    CheckList_Alarm: TRzCheckList;
    btnECUAdd: TRzBitBtn;
    btnECUErase: TRzBitBtn;
    RzGroupBox5: TRzGroupBox;
    RzLabel9: TRzLabel;
    RzLabel17: TRzLabel;
    Label79: TLabel;
    Label25: TLabel;
    RzLabel4: TRzLabel;
    Spinner_Ring: TRzSpinner;
    Spinner_cancelRing: TRzSpinner;
    Edit_LinkusID: TEdit;
    Edit_LinkusTel: TEdit;
    Edit_LinkusTel2: TEdit;
    gb_EcuAdd: TGroupBox;
    Label13: TLabel;
    seDeviceNo: TRzSpinEdit;
    cbDeviceType: TRzComboBox;
    Label5: TLabel;
    chk_All: TCheckBox;
    btnAdd: TRzBitBtn;
    btnClose: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CommandArrayCommandsTNODECONNECTEDExecute(Command: TCommand;
      Params: TStringList);
    procedure TreeView_DeviceClick(Sender: TObject);
    procedure pg_DeviceSettingChange(Sender: TObject);
    procedure btn_NextClick(Sender: TObject);
    procedure ed_mcidChange(Sender: TObject);
    procedure ed_mcidKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_WizNetSettingClick(Sender: TObject);
    procedure Group_DeviceClick(Sender: TObject);
    procedure ComboBox_WatchPowerOffChange(Sender: TObject);
    procedure Edit_LocateKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_LocateExit(Sender: TObject);
    procedure ComboBox_WatchPowerOffClick(Sender: TObject);
    procedure btn_AlarmClick(Sender: TObject);
    procedure btn_DisAlarmClick(Sender: TObject);
    procedure Group_DeviceChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure ComboBox_CardModeType1Change(Sender: TObject);
    procedure ComboBox_CardModeType2Change(Sender: TObject);
    procedure btn_DevicStateClick(Sender: TObject);
    procedure btn_FireDeviceClick(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure cb_CardTypeChange(Sender: TObject);
    procedure ReaderInfoChange(Sender: TObject);
    procedure Menu_FireRecoveryClick(Sender: TObject);
    procedure DoorControl(Sender: TObject);
    procedure cmb_WatchTypeClick(Sender: TObject);
    procedure btn_UseControlerSearchClick(Sender: TObject);
    procedure btn_RegistrationClick(Sender: TObject);
    procedure Edit_IPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_subnetKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_GatewayKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_portKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_serverKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_ServerPortKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Rg_ModeClick(Sender: TObject);
    procedure chk_DHCPClick(Sender: TObject);
    procedure Edit_LocateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_TimeSyncClick(Sender: TObject);
    procedure btn_TimeSearchClick(Sender: TObject);
    procedure Edit_LocateChange(Sender: TObject);
    procedure ComboBox_LockType2Enter(Sender: TObject);
    procedure ComboBox_LockType2Exit(Sender: TObject);
    procedure ComboBox_LockType1Exit(Sender: TObject);
    procedure ComboBox_LockType1Enter(Sender: TObject);
    procedure chk_CdmaClick(Sender: TObject);
    procedure btn_MacSearchClick(Sender: TObject);
    procedure btnRegMACClick(Sender: TObject);
    procedure deviceLoadTimerTimer(Sender: TObject);
    procedure SpinEdit_OutDelayChange(Sender: TObject);
    procedure SpinEdit_InDelayChange(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnECUAddClick(Sender: TObject);
    procedure lvECUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnECUEraseClick(Sender: TObject);
  private
    L_bSettingChanged : Boolean;
    L_nOldPageIndex : integer; //���� Page
    //Form
    EcuList :TStringList;
    FDeviceType: string;
    L_stSelectEcuID : string; //���� ���õ� ECUID
    L_bDeviceUsedChange : Boolean;
    L_bDoorSystemChange : Boolean;
    L_bDeviceLoad : Boolean;
    L_bDeviceLoadTime : Boolean;
    L_bZoneDoor: Array [0..2] of Boolean;     //���Թ��������


    ZoneStateNameList : TStringList;
    ZoneStateCodeList : TStringList;
    { Private declarations }
    procedure ZoneStatusLoad;
    procedure ZoneWatchDelayLoad;
    procedure ZoneRecoverLoad;
    procedure ZoneStateLoad;
    procedure FormSetting;
    procedure ECUFormSetting;
    procedure ICUFormSetting;
    procedure setDeviceType(const Value: string);
    function  GetEcu:string;
    function MCUSettingSearch:Boolean;
    procedure TableToFormSetting(aEcuID:string);
    function GetWatchType(aAlarmType: string; var aParentWatchType: string; var aParentIndex: integer): Boolean;
  private
    //Function
    function GetDoorControlTime(aDoorNo:string;var aDoorControlTime:string):Boolean;
    function GetDoorLockType(aDoorNo:string;var aDoorLockType:string):Boolean;
    function GetDoorCardMode(aDoorNo:string;var aCardModeType:string):Boolean;
    function GetDoorModeType(aDoorNo:string;var aDoorModeType:string):Boolean;
    function GetDoorLongOpenTime(aDoorNo:string;var aDoorLongOpenTime:string):Boolean;
    function GetDoorScheduleUse(aDoorNo:string;var aScheduleUse:string):Boolean;
    function GetDoorStatusUse(aDoorNo:string;var aDoorStatusUse:string):Boolean;
    function GetDoorLongTimeUse(aDoorNo:string;var aDoorLongTimeUse:string):Boolean;
    function GetDoorFireOpenUse(aDoorNo:string;var aDoorFireOpenUse:string):Boolean;
    function GetDoorDSOpenState(aDoorNo:string;var aDoorOpenState:string):Boolean;
    function GetDoorRemoteOpen(aDoorNo:string;var aRemoteOpen:string):Boolean;
    function GetPortComboBox(nPortNo:integer;aComboBoxName:string):TComboBox;
    function GetPortStaticText(nPortNo:integer;aName:string):TStaticText;
  private
    //Form
    procedure Form_DeviceVersion_Clear;
    procedure Form_DeviceCode_Clear;
    procedure Form_ControllerID_ColorInitialize;
    procedure Form_UsedDevice_ColorInitialize;
    procedure Form_CCCInfo_ColorInitialize;
    procedure Form_WizenetModule_ColorInitialize;
    procedure Form_SystemInfo_ColorInitialize;
    procedure Form_AlarmState_ColorInitialize;
    procedure Form_DoorSystem_ColorInitialize(aDoorNo:string);
    procedure Form_DoorLockDeviceState_Clear;
    procedure Form_AlarmState_Clear;
    procedure Form_CardReaderType_ColorInitialize;
    procedure Form_AllCardReader_ColorInitialize(aReaderNo:integer);
    procedure Form_AllPort_ColorInitialize(aPortNo:integer);
    procedure Form_DoorControl_Clear;

    //TabForm //Tab�� ����� ȭ�� Ŭ����
    procedure Form_MCUSetting_Initialize;
    procedure Form_SystemInfo_Initialize;
    procedure Form_DoorSystemInfo_Initialize;
    procedure Form_CardReader_Initialize;
    procedure Form_Port_Initialize;
    procedure Form_ECUChange_Initialize;
    procedure Port_DoorEnabelCheck(aEcuID:string);
    procedure PortDoorEnable(aDoorNo:string;aEnable:Boolean);
  private
    //����
    function ChangeAlarmMode(aEcuID,aMode:string):Boolean;
    function AllFireRecovery:Boolean;
    function RemoteDoorControl(aEcuID,aDoorNo,aControlType,aControl:string):Boolean;
  private
    //���
    function RegistControllerID(aControllerID:string):integer;
    function RegistUsedDevice(aUseEcu:string):Boolean;
    function RegistCCCInfo:Boolean;
    function RegistSystemInfo:Boolean;
    function RegistDoorSystyemInfo(aDoorNo:string):Boolean;
    function RegistCardType(aEcuID:string;aCardType:integer):Boolean;
    function RegistCardReaderInfo(aEcuID:string;aReaderNo,aReaderUse,aReaderDoor,aReaderDoorLocate,aReaderBuildingLocate:integer;aLocate:string):Boolean;
    function RegistPortInfo(aEcuID,aPortNo,aWatchType,aDelayUse,aRecoverUse,aPortDelayTime,aLocate:string):Boolean;
    function TimeSync(aDate:string):Boolean;
    //��Ϲ�ư�� ���� ��ü ��ϻ���
    procedure MCUSetting_Registration;
    procedure SystemInfo_Registration;
    procedure DoorSystemInfo_Registration;
    procedure AllCardReader_Registration;
    procedure AllPort_Registration;
  private
    //��ȸ
    function DeviceVersionCheck(aEcuID:string):Boolean;
    function DeviceTypeCheck(aEcuID:string):Boolean;
    function ControllerIDSearch:Boolean;
    function UsedDeviceSearch:Boolean;
    function CCCInfoSearch:Boolean;
    function WiznetModuleInfoSearch:Boolean;
    function SystemInfoSearch(aEcuID:string):Boolean;
    function CurrentAlarmStateSearch:Boolean;
    function DoorSystemInfoSearch(aEcuID,aDoorNo:string):Boolean;
    function DoorLockDeviceStateCheck:Boolean;
    function AlarmStateCheck:Boolean;
    function CardReaderTypeSearch:Boolean;
    function AllCardReaderCheck:Boolean;
    function CardReaderInfoSearch(aEcuID:string;nCardReaderNo:integer):Boolean;
    function CardReaderVersionCheck(aEcuID:string;nCardReaderNo:integer):Boolean;
    function AllPortCheck:Boolean;
    function PortInfoSearch(aEcuID:string;nPortNo:integer):Boolean;
    function PortStateCheck(aEcuID:string):Boolean;
    function EcuStatusCheck:Boolean;
  public
    { Public declarations }
    procedure NodeConnected(aValue:Boolean);
    procedure ECUConnected(aEcuID:string;aValue:Boolean);
    procedure RecvDeviceVersion(aEcuID,aDeviceVersion:string);
    procedure RecvDeviceType(aECUID,aDeviceType:string);
    procedure RecvControllerID(aDeviceID:string);
    procedure RecvDeviceUsedSetting(aDeviceUsed:string);
    procedure RecvSystemInfoData(aECUID,aPowerWatch,aOutDelay,
                       aDoor1Type,aDoor2Type,aLocate,aInDelay,aLockExtend:string);
    procedure RecvAlarmEvent(aECUID,aTime,aSubCLass,aSubAddr,aZone,
                          aMode,aStatus,aLoop,aState,aOper:string);
    procedure RecvDoorSettingEvent(aECUID,aDoorNo,aCardMode,aDoorMode,
                          aDoorControlTime,aLongDoorOpenTime,aSchedule,aDoorState,
                          aNetFailRun,aAntiPass,aLongDoorOpenUse,aNetFailAlarm,
                          aDoorLockType,aFireDoorControl,aLockState,aDoorOpenState,
                          aRemoteDoorOpen:string);
    procedure RecvDeviceStateData(aECUID,aCmd,aData:string);
    procedure RecvCardReaderType(aECUID, aCardReaderType:string);
    procedure RecvCardReaderSetData(aECUID,aReaderNo,aUsedCR,
                       aCRPosition,aDoorNo,aLocate,aBuildingPosi:string);
    procedure RecvCardReaderVersion(aECUID,aCardReaderNo, aCardReaderVersion:string);
    procedure RecvDoorState(aECUID, aDoorNo, aCardMode,aDoorMode, aDoorState,aDoorSchedule:string);
    procedure RecvPortSettingData(aECUID, aPort,aWatchType, aAlarmType, aRecoverType,
                          aDelayTimeType, aPortLocate,aDetectTime:string);
    procedure RecvWiznetInfo(aECUID, aHeader,aMacAddress, aMode, aIPAddress, aSubnet,
        aGateway, aClientPort,aServerIP, aServerPort, aSerial_Baud, aSerial_data,
        aSerial_Parity,aSerial_stop, aSerial_flow, aDelimiterChar, aDelimiterSize,
        aDelimitertime, aDelimiterIdle, aDebugMode, aROMVer, aOnDHCP,aReserve:string);
    procedure RecvEcuStateData(aECUID, aData:string);
    procedure RecvDeviceTime(aECUID,aTime:string);
    procedure CDMASetting(aEcuID,aData:string);
    procedure CCCInfoSetting(aEcuID,aIP,aPort:string);
    procedure CCCTimeInterval(aEcuID,aTime:string);
    procedure CCCStartTime(aEcuID,aTime:string);

  public
    procedure DeviceLoad(aIndex:integer=-1);
    procedure NodeReaderAdd(aEcuID:string;aNode:TTreeNode;aDoorNo:string);
    procedure CurrentDeviceView;
  private
    //ȭ�� ��ȸ ���μ���
    procedure DoorLockState(aData:string); //���Թ� �� ����
    procedure DeviceAlarmState(aData:string); //����� �̻� �˶� ���� üũ(ȭ��/ħ��/����)
    procedure Port_ShortOpenCheck(aData:string);
    procedure InsertFireDevice(aEcuID:string);
    procedure DeleteFireDevice(aEcuID:string);
  private
    //��ȸ ��� �Ҷ� ���氪 �������� ���ϵ��� ó��
    procedure MCUControlEnable(aValue:Boolean);
    procedure SystemControlEnable(aValue:Boolean);
    procedure LockControlEnable(aValue:Boolean);
    procedure Door1Enable(aValue:Boolean);
    procedure Door2Enable(aValue:Boolean);
    procedure ReaderControlEnable(aValue:Boolean);
    procedure ZoneControlEnable(aValue:Boolean);
    procedure ReaderDoorNoMinValueSetting(aValue:integer);
    procedure ReaderDoorNoMaxValueSetting(aValue:integer);
    procedure ReaderDoorNoEnable(aValue:Boolean);
  published
    property DeviceType : string read FDeviceType write setDeviceType;
  end;

var
  fmDeviceSetting: TfmDeviceSetting;

implementation
uses
  dllFunction,
  udmDataBase,
  uCommon,
  uUtil,
  uSocket,
  uCheckValiable;
{$R *.dfm}
procedure TfmDeviceSetting.DeviceLoad(aIndex:integer=-1);
var
  alist: TListItem;
begin
  Try
    L_bDeviceUsedChange := True;

    EcuList.Clear;
    lvECU.Clear;
    EcuList.Add('Controller');
    with dmDataBase.TB_DEVICE do
    begin
      First;
      while Not Eof do
      begin
        if FindField('DEVICEUSE').AsString = 'Y' then
        begin
          EcuList.Add(FindField('ECU_ID').AsString);
          G_stDeviceType[strtoint(FindField('ECU_ID').AsString)] := FindField('DEVICE_TYPE').AsString;
          if FindField('ECU_ID').AsString <> '00' then
          begin
            aList:= lvECU.Items.Add;
            aList.Caption:= FindField('ECU_ID').AsString; //��� ��ȣ
            aList.ImageIndex:= -1;
            aList.SubItems.Add(DeviceTypeNameList.Strings[strtoint(FindField('DEVICE_TYPE').AsString)]);
          end;
          if aIndex > -1 then
          begin
            if lvECU.Items.Count - 1 = aIndex then
            begin
              lvECU.Items[aIndex].Selected:= True;
            end;
          end;
        end else
        begin
        end;
        Next;
      end;
    end;
  Finally
    L_bDeviceUsedChange := False;
  End;
end;

procedure TfmDeviceSetting.FormCreate(Sender: TObject);
begin
  Self.ModuleID := 'DEVICE';

  L_stSelectEcuID := '00';
  L_bDeviceUsedChange := False;
  L_bDoorSystemChange := False;
  L_bDeviceLoad := False;
  L_bDeviceLoadTime := False;
  
  EcuList := TStringList.Create;
  EcuList.Clear;

  ZoneStatusLoad;
  ZoneWatchDelayLoad;
  ZoneRecoverLoad;
  ZoneStateLoad;

  FormSetting;
  CurrentDeviceView;
  DeviceLoad;
  L_nOldPageIndex := 0;
  L_bSettingChanged := False;
end;

procedure TfmDeviceSetting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  self.FindSubForm('Main').FindCommand('DEVICESETTING').Params.Values['VALUE'] := 'FALSE';
  self.FindSubForm('Main').FindCommand('DEVICESETTING').Execute;

  EcuList.Free;
  ZoneStateNameList.Free;
  ZoneStateCodeList.Free;

  Action := caFree;
end;


procedure TfmDeviceSetting.FormShow(Sender: TObject);
begin
  self.FindSubForm('Main').FindCommand('DEVICESETTING').Params.Values['VALUE'] := 'TRUE';
  self.FindSubForm('Main').FindCommand('DEVICESETTING').Execute;

  TreeView_Device.Items[1].Selected:=True;
  TreeView_DeviceClick(self);

  EcuStatusCheck; //��Ż���üũ

end;

procedure TfmDeviceSetting.CommandArrayCommandsTNODECONNECTEDExecute(
  Command: TCommand; Params: TStringList);
var
  stValue : string;
begin
  stValue := Params.Values['VALUE'];

  if stValue = 'TRUE' then NodeConnected(True)
  else NodeConnected(False);


end;

procedure TfmDeviceSetting.NodeConnected(aValue: Boolean);
var
  aTreeView   : TTreeview;
  aNode   : TTreeNode;
  i : integer;
begin
  if TreeView_Device.Items.Count < 1 then Exit;

  aTreeView := TreeView_Device;

  for i :=1 to EcuList.Count - 1 do
  begin
    aNode:= GetNodeByText(aTreeView,EcuList.Strings[i] ,False);
    if aValue then
    begin
      if i = 1 then //Main
      begin
        aNode.ImageIndex:=1;
        aNode.SelectedIndex:=1;
      end else
      begin
        if dmSocket.DeviceConnectCheck(FillzeroNumber(i,2)) then
        begin
          aNode.ImageIndex:=1;
          aNode.SelectedIndex:=1;
        end else
        begin
          aNode.ImageIndex:=2;
          aNode.SelectedIndex:=2;
        end;
      end;
    end else
    begin
      aNode.ImageIndex:=2;
      aNode.SelectedIndex:=2;
    end;
  end;


end;

procedure TfmDeviceSetting.ECUConnected(aEcuID: string; aValue: Boolean);
var
  aTreeView   : TTreeview;
  aNode   : TTreeNode;
  i : integer;
begin
  if TreeView_Device.Items.Count < 1 then Exit;

  aTreeView := TreeView_Device;

  aNode:= GetNodeByText(aTreeView,aEcuID ,False);
  if aNode = nil then Exit;

  if aValue then
  begin
    if aNode.ImageIndex <> 1 then
    begin
      aNode.ImageIndex:=1;
      aNode.SelectedIndex:=1;
    end;
  end else
  begin
    if aNode.ImageIndex <> 2 then
    begin
      aNode.ImageIndex:=2;
      aNode.SelectedIndex:=2;
    end;
  end;
end;

procedure TfmDeviceSetting.TreeView_DeviceClick(Sender: TObject);
var
  stCaption : string;
  nIndex : integer;
begin
  if TreeView_Device.Selected = nil then Exit;
  DeviceType := ECUTYPE;
  stCaption := TreeView_Device.Selected.Text;

  nIndex := ECUList.IndexOf(stCaption);
  if nIndex < 1 then
  begin
    TreeView_Device.Selected := TreeView_Device.Items[1];
    //Exit;
  end;
  L_stSelectEcuID := TreeView_Device.Selected.Text;
  TableToFormSetting(L_stSelectEcuID);
  st_EcuID.Caption := L_stSelectEcuID;
  if stCaption = '00' then
  begin
    TabMCSetting.TabVisible := True;
    pg_DeviceSetting.ActivePageIndex := 0;
  end else
  begin
    TabMCSetting.TabVisible := False;
    pg_DeviceSetting.ActivePageIndex := 1;
  end;
  Form_ECUChange_Initialize;
  DeviceVersionCheck(L_stSelectEcuID);
  DeviceTypeCheck(L_stSelectEcuID);
  pg_DeviceSettingChange(self);
end;

procedure TfmDeviceSetting.FormSetting;
var
  i : integer;
begin
  ed_mcid.MaxLength := G_nIDLength;
  //ed_mcid.Text := FillZeroNumber(0,G_nIDLength);
  ed_mcid.Text := dmSocket.DeviceID;

  if G_nConnectMode = 0 then rg_LanSet.Visible := False
  else rg_LanSet.Visible := True;


  with ComboBox_WatchPowerOff do //��������
  begin
    Clear;
    Items.Add('���� ���� OFF');
    Items.Add('���� ���� ON');
    ItemIndex := 1;
  end;

  with ComboBox_DoorType1 do //��1 �뵵
  begin
    Clear;
    Items.Add('0.�������');
    Items.Add('1.��������');
    Items.Add('2.��� + ����');
    ItemIndex := 2;
  end;

  with ComboBox_DoorType2 do  //��2�뵵
  begin
    Clear;
    Items.Add('0.�������');
    Items.Add('1.��������');
    Items.Add('2.��� + ����');
    ItemIndex := 2;
  end;

  with ComboBox_CardModeType1 do     //���Թ�1 ī�� ���
  begin
    Clear;
    Items.Add('Positive');
    Items.Add('Negative');
    ItemIndex := 0;
  end;

  with ComboBox_CardModeType2 do     //���Թ�2 ī�� ���
  begin
    Clear;
    Items.Add('Positive');
    Items.Add('Negative');
    ItemIndex := 0;
  end;


  with ComboBox_DoorModeType1 do     //���Թ�1 � ���
  begin
    Clear;
    Items.Add('����');
    Items.Add('������');
    Items.Add('�����');
    ItemIndex := 0;
  end;
  with ComboBox_DoorModeType2 do     //���Թ�2 � ���
  begin
    Clear;
    Items.Add('����');
    Items.Add('������');
    Items.Add('�����');
    ItemIndex := 0;
  end;


  with ComboBox_UseSch1 do     //���Թ�1 ������
  begin
    Clear;
    Items.Add('����');
    Items.Add('����');
    ItemIndex := 0;
  end;
  with ComboBox_UseSch2 do     //���Թ�2 ������
  begin
    Clear;
    Items.Add('����');
    Items.Add('����');
    ItemIndex := 0;
  end;

  with ComboBox_SendDoorStatus1 do     //���Թ�1 ���� ���ۿ���
  begin
    Clear;
    Items.Add('������');
    Items.Add('���Թ�����');
    Items.Add('���������');
    Items.Add('���Թ�+���������');
    ItemIndex := 1;
  end;
  with ComboBox_SendDoorStatus2 do     //���Թ�1 ���� ���ۿ���
  begin
    Clear;
    Items.Add('������');
    Items.Add('���Թ�����');
    Items.Add('���������');
    Items.Add('���Թ�+���������');
    ItemIndex := 1;
  end;

  with ComboBox_AlarmLongOpen1 do     //���Թ�1��ð� ���� ���� ���
  begin
    Clear;
    Items.Add('����');
    Items.Add('���');
    ItemIndex := 0;
  end;

  with ComboBox_AlarmLongOpen2 do     //���Թ�2��ð� ���� ���� ���
  begin
    Clear;
    Items.Add('����');
    Items.Add('���');
    ItemIndex := 0;
  end;

  with ComboBox_LockType1 do       //���Թ�1 ������ Ÿ��
  begin
    Clear;
    Items.Add('EM��(������ ���)');
    Items.Add('EM��(������ ����)');
    Items.Add('���庼Ʈ(������ ���)');
    Items.Add('���庼Ʈ(������ ����)');
    Items.Add('��Ʈ����ũ(������ ���)');
    Items.Add('��Ʈ����ũ(������ ����)');
//    Items.Add('0x36 ����');
    Items.Add('�ڵ���/����');
//    Items.Add('0x37 �Ĵ�');
    Items.Add('�Ĵ�(����/��������)');
    Items.Add('SPEED GATE');
    Items.Add('===========');
    Items.Add('�ڹٶ�-����');
    Items.Add('�ڹٶ�-����');
    ItemIndex := 1;
  end;

  with ComboBox_LockType2 do       //���Թ�2 ������ Ÿ��
  begin
    Clear;
    Items.Add('EM��(������ ���)');
    Items.Add('EM��(������ ����)');
    Items.Add('���庼Ʈ(������ ���)');
    Items.Add('���庼Ʈ(������ ����)');
    Items.Add('��Ʈ����ũ(������ ���)');
    Items.Add('��Ʈ����ũ(������ ����)');
    Items.Add('�ڵ���/����');
//    Items.Add('0x37 �Ĵ�');
    Items.Add('�Ĵ�(����/��������)');
    Items.Add('SPEED GATE');
    Items.Add('===========');
    Items.Add('�ڹٶ�-����');
    Items.Add('�ڹٶ�-����');
    ItemIndex := 1;
  end;



  with ComboBox_ControlFire1 do     //���Թ�1 ȭ�� �߻��� ������
  begin
    Clear;
    Items.Add('����');
    Items.Add('���');
    ItemIndex := 0;
  end;

  with ComboBox_ControlFire2 do     //���Թ�2 ȭ�� �߻��� ������
  begin
    Clear;
    Items.Add('����');
    Items.Add('���');
    ItemIndex := 0;
  end;

  if G_nProgramType = 1 then
  begin
    st_cardreaderType.Visible := false;
    cb_CardType.Visible := False;
  end;

end;

procedure TfmDeviceSetting.pg_DeviceSettingChange(Sender: TObject);
begin
  if L_bSettingChanged then
  begin
    if Application.MessageBox(pchar('����� ������ ������� �����̽��ϴ�. ��� �����Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = ID_CANCEL then
    begin
      pg_DeviceSetting.ActivePageIndex := L_nOldPageIndex;
      Exit;
    end;
    L_bSettingChanged := False;
  end;
  L_nOldPageIndex := pg_DeviceSetting.ActivePageIndex;
  if pg_DeviceSetting.ActivePageIndex = pg_DeviceSetting.PageCount - 1 then btn_Next.Enabled := False
  else btn_Next.Enabled := True;

  if pg_DeviceSetting.ActivePage = TabMCSetting then
  begin
    Form_MCUSetting_Initialize;
    if G_bDeviceSearch then MCUSettingSearch;
  end else if pg_DeviceSetting.ActivePage = TabSystemInfo then
  begin
    Form_SystemInfo_Initialize;
    if G_bDeviceSearch then
    begin
      SystemInfoSearch(L_stSelectEcuID);
      CurrentAlarmStateSearch;
    end;
  end else if pg_DeviceSetting.ActivePage = tab_DoorLock then
  begin
    Form_DoorSystemInfo_Initialize;
    if G_bDeviceSearch then
    begin
      DoorSystemInfoSearch(L_stSelectEcuID,'1');
      if DeviceType = ECUTYPE then DoorSystemInfoSearch(L_stSelectEcuID,'2');
      btn_DevicStateClick(self);
    end;
  end else if pg_DeviceSetting.ActivePage = tab_CardReader then
  begin
    Form_CardReader_Initialize;
    if G_bDeviceSearch then
    begin
      ReaderControlEnable(False);
      CardReaderTypeSearch;
      AllCardReaderCheck;
      ReaderControlEnable(True);
    end;
  end else if pg_DeviceSetting.ActivePage = Tab_Port then
  begin
    Form_Port_Initialize;
    if G_bDeviceSearch then
    begin
      AllPortCheck;
    end;
  end;

//
end;

function TfmDeviceSetting.DeviceVersionCheck(aEcuID: string): Boolean;
var
  i : integer;
begin
  Form_DeviceVersion_Clear;
  
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.DeviceVersion_Check(aEcuID);
    if result then Break;
  end;
end;

function TfmDeviceSetting.MCUSettingSearch: Boolean;
begin
  MCUControlEnable(False);
  ControllerIDSearch;
  UsedDeviceSearch;
  if G_nConnectMode = 1 then //�ø���
    WiznetModuleInfoSearch;
  dmSocket.TimeCheck;
  CCCInfoSearch;
  MCUControlEnable(True);
end;

procedure TfmDeviceSetting.RecvDeviceVersion(aEcuID,
  aDeviceVersion: string);
begin
  if L_stSelectEcuID = aEcuID then st_DeviceVer.Caption := aDeviceVersion;
end;

function TfmDeviceSetting.DeviceTypeCheck(aEcuID: string): Boolean;
var
  i : integer;
begin
  Form_DeviceCode_Clear;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.DeviceType_Check(aEcuID,True);
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.RecvDeviceType(aECUID, aDeviceType: string);
begin
  if L_stSelectEcuID <> aEcuID then Exit;
  st_DeviceCode.Caption := aDeviceType;

  if aDeviceType = 'ACC-503' then DeviceType := 'ICU'
  else DeviceType := 'ECU';
  
end;

procedure TfmDeviceSetting.setDeviceType(const Value: string);
begin
  FDeviceType := Value;
  if DeviceType = 'ECU' then ECUFormSetting
  else if DeviceType = 'ICU' then ICUFormSetting
  else ECUFormSetting;
end;

procedure TfmDeviceSetting.ECUFormSetting;
begin
  ComboBox_WatchPowerOff.Enabled := True;

  st_Door2Type.Enabled := True;
  ComboBox_DoorType2.Enabled := True;

  //���Թ�2
  ComboBox_CardModeType2.Enabled := True;
  ComboBox_DoorModeType2.Enabled := True;
  cmb_DoorControlTime2.Enabled := True;
  ComboBox_UseSch1.Enabled := True;
  ComboBox_UseSch2.Enabled := True;
  ComboBox_SendDoorStatus2.Enabled := True;
  ComboBox_AlarmLongOpen2.Enabled := True;
  ComboBox_ControlFire2.Enabled := True;
  ComboBox_LockType2.Enabled := True;
  cmb_DsOpenState2.Enabled := True;
  cmb_RemoteDoorOpen2.Enabled := True;

  cmb_COMNO2.Enabled := True;
  cmb_ExGnd2.Enabled := True;
  cmb_dsgnd2.Enabled := True;

  tab_CardReader.TabVisible := True;


end;

procedure TfmDeviceSetting.ICUFormSetting;
begin
  ComboBox_WatchPowerOff.Enabled := False;

  st_Door2Type.Enabled := False;
  ComboBox_DoorType2.Enabled := False;

  //���Թ�2
  ComboBox_CardModeType2.Enabled := False;
  ComboBox_DoorModeType2.Enabled := False;
  cmb_DoorControlTime2.Enabled := False;
  ComboBox_UseSch1.Enabled := False;
  ComboBox_UseSch2.Enabled := False;
  ComboBox_SendDoorStatus2.Enabled := False;
  ComboBox_AlarmLongOpen2.Enabled := False;
  ComboBox_ControlFire2.Enabled := False;
  ComboBox_LockType2.Enabled := False;
  cmb_DsOpenState2.Enabled := False;
  cmb_RemoteDoorOpen2.Enabled := False;

  cmb_COMNO2.Enabled := False;
  cmb_ExGnd2.Enabled := False;
  cmb_dsgnd2.Enabled := False;

  tab_CardReader.TabVisible := False;

  cmb_WatchType7.Enabled := False;
  cmb_WatchType8.Enabled := False;

  cmb_recorver7.Enabled := False;
  cmb_recorver8.Enabled := False;

end;

procedure TfmDeviceSetting.btn_NextClick(Sender: TObject);
begin
  if L_bSettingChanged then
  begin
    if Application.MessageBox(pchar('����� ������ ������� �����̽��ϴ�. ��� �����Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = ID_CANCEL then
    begin
      pg_DeviceSetting.ActivePageIndex := L_nOldPageIndex;
      Exit;
    end;
    L_bSettingChanged := False;
  end;
  pg_DeviceSetting.ActivePageIndex := pg_DeviceSetting.ActivePageIndex + 1;
  if pg_DeviceSetting.ActivePageIndex = pg_DeviceSetting.PageCount - 1 then btn_Next.Enabled := False;
  L_nOldPageIndex := pg_DeviceSetting.ActivePageIndex;

end;

function TfmDeviceSetting.RegistControllerID(
  aControllerID: string): integer;
var
  i : integer;
  bresult : Boolean;
begin
  Form_ControllerID_ColorInitialize;
  
  result := 0;   //���˿���
  if Length(aControllerID) <> G_nIDLength then Exit;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    bresult := dmSocket.ID_Registration(aControllerID);
    if bresult then Break;
  end;
  if bResult then result := 1
  else result := -1;//�ð� �ʰ�
end;

procedure TfmDeviceSetting.RecvControllerID(aDeviceID: string);
begin
  ed_mcid.Text := aDeviceID;
  ed_mcid.Color := clYellow;
  L_bSettingChanged := False;
end;

procedure TfmDeviceSetting.ed_mcidChange(Sender: TObject);
begin
  Form_ControllerID_ColorInitialize;
end;

procedure TfmDeviceSetting.ed_mcidKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ed_mcid.Color := clWhite;
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DEVICE_ID',ed_mcid.Text);
  if G_bRealRegist then RegistControllerID(ed_mcid.Text);
end;

function TfmDeviceSetting.GetEcu: string;
var
  i : integer;
begin
  result :='1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';

end;

function TfmDeviceSetting.RegistUsedDevice(aUseEcu: string): Boolean;
var
  i : integer;
begin
  Form_UsedDevice_ColorInitialize;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.UsedDevice_Registration(aUseEcu);
    if result then Break;
  end;
end;

procedure TfmDeviceSetting.RecvDeviceUsedSetting(aDeviceUsed: string);
var
  i : integer;
begin
  Try
    L_bDeviceUsedChange := True;
    for I:= 1 to 63 do
    begin
    end;
  Finally
    L_bDeviceUsedChange := False;
  End;
  L_bSettingChanged := False;
end;

procedure TfmDeviceSetting.btn_WizNetSettingClick(Sender: TObject);
var
  bResult : Boolean;
  nLoop : integer;
  aMode : string;
  stIP : string;
  stSubNet : string;
  stGateway : string;
  stServerIP : string;
  stPort : string;
  stServerPort : string;
  stDhcp : string;
begin
  Form_WizenetModule_ColorInitialize;

  if Edit_IP.Text = '' then       Edit_IP.Text :=       '127.0.0.1';
  if Edit_subnet.Text = '' then   Edit_subnet.Text :=   '255.255.255.0';
  if edit_Gateway.Text = '' then  Edit_Gateway.Text :=  '192.168.10.1';
  if ed_Server.Text = '' then    ed_Server.Text := '192.168.10.1';
  if edit_port.Text = '' then     Edit_port.Text :=     '3000';
  if ed_Serverport.Text = ''  then ed_serverport.Text := '3000';
  if rg_mode.ItemIndex = 0 then aMode := '02'
  else aMode := '00';

  stIP := Edit_IP.Text;
  stSubNet := Edit_subnet.Text;
  stGateway := Edit_Gateway.Text;
  stServerIP := ed_Server.Text;
  stPort := Edit_port.Text;
  stServerPort := ed_serverport.Text;

  {Edit_IP.Clear;
  Edit_subnet.Clear;
  edit_Gateway.Clear;
  edit_port.Text := '';
  ed_server.Clear;
  ed_ServerPort.Text := ''; }

// 21.DHCP option (00: DHCP OFF, 01:DHCP ON)
  if chk_DHCP.Checked then stDhcp := '01'
  else stDhcp := '00';
  
  for nLoop := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    bResult := dmSocket.RegistSerialWritewiznet(stIP,stSubNet,stGateway,stPort,stServerIP,stServerPort,aMode,stDhcp);
    if bResult then break;
  end;
  L_bSettingChanged := False;

end;

function TfmDeviceSetting.ControllerIDSearch: Boolean;
var
  i : integer;
begin
  Form_ControllerID_ColorInitialize;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.ID_Check;
    if result then Break;
  end;

end;

function TfmDeviceSetting.UsedDeviceSearch: Boolean;
var
  i : integer;
begin
  Form_UsedDevice_ColorInitialize;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.UsedDevice_Check;
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Group_DeviceClick(Sender: TObject);
//var
//  stUseEcu : string;
begin
{  Form_UsedDevice_ColorInitialize;
  stUseEcu := GetEcu;
  if G_bRealRegist then RegistUsedDevice(stUseEcu);
}

end;

function TfmDeviceSetting.SystemInfoSearch(aEcuID:string): Boolean;
var
  i : integer;
begin
  SystemControlEnable(False);
  Form_SystemInfo_ColorInitialize;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.SysInfo_Check(aEcuID);
    if result then Break;
  end;
  SystemControlEnable(True);
end;

procedure TfmDeviceSetting.RecvSystemInfoData(aECUID,
  aPowerWatch, aOutDelay, aDoor1Type, aDoor2Type, aLocate,
  aInDelay,aLockExtend: string);
begin
  if L_stSelectEcuID <> aEcuID then Exit;
  ComboBox_WatchPowerOff.ItemIndex := StrToInt(aPowerWatch);
  ComboBox_WatchPowerOff.Color := clYellow;

  {��������ð�}
  if isDigit(aOutDelay) then
  begin
    SpinEdit_OutDelay.IntValue := StrToInt(aOutDelay);
    SpinEdit_OutDelay.Color := clYellow;
  end;
  {�Խ������ð�}
  if isDigit(aInDelay) then
  begin
    SpinEdit_InDelay.IntValue := StrToInt(aInDelay);
    SpinEdit_InDelay.Color := clYellow;
  end;

  ComboBox_DoorType1.ItemIndex := StrToInt(aDoor1Type);
  ComboBox_DoorType1.Color := clYellow;
  if StrToInt(aDoor1Type) = 0 then L_bZoneDoor[1] := False
  else L_bZoneDoor[1] := True;

  ComboBox_DoorType2.ItemIndex := StrToInt(aDoor2Type);
  ComboBox_DoorType2.Color := clYellow;
  if StrToInt(aDoor2Type) = 0 then L_bZoneDoor[2] := False
  else L_bZoneDoor[2] := True;


  Edit_Locate.Text := aLocate;
  Edit_Locate.Color := clYellow;
  ComboBox_WatchPowerOffClick(self);
  L_bSettingChanged := False;
end;

procedure TfmDeviceSetting.ComboBox_WatchPowerOffChange(Sender: TObject);
begin
  if G_bRealRegist then RegistSystemInfo;
  Form_SystemInfo_ColorInitialize;
  self.FindSubForm('Main').FindCommand('SettingChange').Params.Values['VALUE'] := 'WatchPowerOff';
  self.FindSubForm('Main').FindCommand('SettingChange').Execute;
  L_bSettingChanged := True;
end;

function TfmDeviceSetting.RegistSystemInfo: Boolean;
var
  i : integer;
begin

  Form_SystemInfo_ColorInitialize;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.RegistSystemInfo(L_stSelectEcuID,
                       inttostr(ComboBox_WatchPowerOff.ItemIndex),
                       inttostr(SpinEdit_InDelay.IntValue),
                       inttostr(SpinEdit_OutDelay.IntValue),
                       inttostr(ComboBox_DoorType1.ItemIndex),
                       inttostr(ComboBox_DoorType2.ItemIndex),
                       Edit_Locate.Text);
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Edit_LocateKeyPress(Sender: TObject;
  var Key: Char);
begin
  Form_SystemInfo_ColorInitialize;
  if Key = #13 then
  begin
    if G_bRealRegist then RegistSystemInfo;
  end;

end;

procedure TfmDeviceSetting.Edit_LocateExit(Sender: TObject);
begin
  Form_SystemInfo_ColorInitialize;
  if G_bRealRegist then RegistSystemInfo;
end;

procedure TfmDeviceSetting.Form_ControllerID_ColorInitialize;
begin
  ed_mcid.Color := clWhite;
end;

procedure TfmDeviceSetting.Form_UsedDevice_ColorInitialize;
begin
  lvECU.Color := clWhite;

end;

procedure TfmDeviceSetting.Form_SystemInfo_ColorInitialize;
begin
  ComboBox_WatchPowerOff.Color := clWhite;
  SpinEdit_OutDelay.Color := clWhite;
  SpinEdit_InDelay.Color := clWhite;
  ComboBox_DoorType1.Color := clWhite;
  ComboBox_DoorType2.Color := clWhite;
  Edit_Locate.Color := clWhite;
end;

procedure TfmDeviceSetting.ComboBox_WatchPowerOffClick(Sender: TObject);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'WATCH_POWER',inttostr(ComboBox_WatchPowerOff.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'OUT_DELAY',inttostr(SpinEdit_OutDelay.IntValue));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'IN_DELAY',inttostr(SpinEdit_InDelay.IntValue));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_TYPE1',inttostr(ComboBox_DoorType1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_TYPE2',inttostr(ComboBox_DoorType2.itemIndex));

  if ComboBox_DoorType1.itemIndex = 0 then L_bZoneDoor[1] := False
  else L_bZoneDoor[1] := True;

  if ComboBox_DoorType2.itemIndex = 0 then L_bZoneDoor[2] := False
  else L_bZoneDoor[2] := True;

  //minvalue = 0 ���� ����
  ReaderDoorNoMinValueSetting(0);
  ReaderDoorNoMaxValueSetting(2);
  ReaderDoorNoEnable(True);
  if (ComboBox_DoorType1.itemIndex = 0) and (ComboBox_DoorType2.itemIndex = 0) then
  begin
    ReaderDoorNoMaxValueSetting(0);
    ReaderDoorNoEnable(False);
    // ����ȣ ��ü 0���� ���� �ϰ� ��Ȱ��ȭ
  end;
  if (ComboBox_DoorType1.itemIndex = 1) and (ComboBox_DoorType2.itemIndex = 1) then
  begin
    ReaderDoorNoMinValueSetting(1);
    // minvalue= 1 ����
  end;

end;

procedure TfmDeviceSetting.Form_DeviceVersion_Clear;
begin
  st_DeviceVer.Caption := '';
end;

procedure TfmDeviceSetting.Form_DeviceCode_Clear;
begin
  st_DeviceCode.Caption := '';
end;

function TfmDeviceSetting.CurrentAlarmStateSearch: Boolean;
var
  i : integer;
begin
  Form_AlarmState_ColorInitialize;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.AlarmState_Check('00'); //Main ���θ� ���� ��ȸ ��
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Form_AlarmState_ColorInitialize;
begin
  st_AlarmState.Color := clWhite;
  st_AlarmState2.Color := clWhite;
end;

procedure TfmDeviceSetting.RecvAlarmEvent(aECUID, aTime, aSubCLass,
  aSubAddr, aZone, aMode, aStatus, aLoop, aState, aOper: string);
var
  stAlarmCaption : string;
begin
  if L_stSelectEcuID <> aEcuID then Exit;

  if aStatus = 'NF' then Exit;

  case Uppercase(aMode)[1] of
      'A': begin //�����
             st_AlarmState.Color := clRed;
             st_AlarmState2.Color := clRed;
             stAlarmCaption:= '�����';
           end;
      'D': begin //�������
             st_AlarmState.Color := clBlue;
             st_AlarmState2.Color := clBlue;
             stAlarmCaption:= '�������';
           end;
      'P': begin //��ȸ���
             st_AlarmState.Color := clYellow;
             st_AlarmState2.Color := clYellow;
             stAlarmCaption:= '�������';
           end;
  end;
  st_AlarmState.Caption := stAlarmCaption;
  st_AlarmState2.Caption := stAlarmCaption;

end;

function TfmDeviceSetting.ChangeAlarmMode(aEcuID, aMode:string): Boolean;
var
  i : integer;
begin
{  result := False;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;  }
    result := dmSocket.ChangeAlarmMode(aEcuID, aMode);
{    if result then Break;
  end;
}
end;

procedure TfmDeviceSetting.btn_AlarmClick(Sender: TObject);
begin
  ChangeAlarmMode(L_stSelectEcuID,'A');
end;

procedure TfmDeviceSetting.btn_DisAlarmClick(Sender: TObject);
begin
  ChangeAlarmMode(L_stSelectEcuID,'D');

end;

procedure TfmDeviceSetting.Group_DeviceChange(Sender: TObject;
  Index: Integer; NewState: TCheckBoxState);
var
  stUseEcu : string;
begin
  if Index = 0 then Exit;
  if NewState = cbChecked then dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(index,2),'DEVICEUSE','Y')
  else dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(index,2),'DEVICEUSE','N');
  L_bDeviceLoadTime := True;
  //if Not L_bDeviceLoad then DeviceLoad(False);

  if L_bDeviceUsedChange then Exit;
  Form_UsedDevice_ColorInitialize;
  stUseEcu := GetEcu;
//  if Not L_bDeviceUsedChange then
//  begin
    if G_bRealRegist then RegistUsedDevice(stUseEcu);
//  end;
  L_bSettingChanged := True;

end;

function TfmDeviceSetting.DoorSystemInfoSearch(aEcuID,
  aDoorNo: string): Boolean;
var
  i : integer;
begin
  LockControlEnable(False);
  Form_DoorSystem_ColorInitialize(aDoorNo);
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.DoorSystemInfo_Check(aEcuID,aDoorNo);
    if result then Break;
  end;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.DoorState_Check(aEcuID,aDoorNo);
    if result then Break;
  end;
  LockControlEnable(True);
end;

procedure TfmDeviceSetting.Form_DoorSystem_ColorInitialize(
  aDoorNo: string);
begin
  if aDoorNo = '1' then
  begin
    ComboBox_CardModeType1.Color := clWhite;
    ComboBox_DoorModeType1.Color := clWhite;
    cmb_DoorControlTime1.Color := clWhite;
    SpinEdit_OpenMoni1.Color := clWhite;
    ComboBox_UseSch1.Color := clWhite;
    ComboBox_SendDoorStatus1.Color := clWhite;
    ComboBox_AlarmLongOpen1.Color := clWhite;
    ComboBox_ControlFire1.Color := clWhite;
    ComboBox_LockType1.Color := clWhite;
    cmb_DsOpenState1.Color := clWhite;
    cmb_RemoteDoorOpen1.Color := clWhite;
  end else if aDoorNo = '2' then
  begin
    ComboBox_CardModeType2.Color := clWhite;
    ComboBox_DoorModeType2.Color := clWhite;
    cmb_DoorControlTime2.Color := clWhite;
    SpinEdit_OpenMoni2.Color := clWhite;
    ComboBox_UseSch2.Color := clWhite;
    ComboBox_SendDoorStatus2.Color := clWhite;
    ComboBox_AlarmLongOpen2.Color := clWhite;
    ComboBox_ControlFire2.Color := clWhite;
    ComboBox_LockType2.Color := clWhite;
    cmb_DsOpenState2.Color := clWhite;
    cmb_RemoteDoorOpen2.Color := clWhite;
  end;
end;

procedure TfmDeviceSetting.RecvDoorSettingEvent(aECUID, aDoorNo, aCardMode,
  aDoorMode, aDoorControlTime, aLongDoorOpenTime, aSchedule, aDoorState,
  aNetFailRun, aAntiPass, aLongDoorOpenUse, aNetFailAlarm, aDoorLockType,
  aFireDoorControl, aLockState, aDoorOpenState, aRemoteDoorOpen: string);
var
  nDoorControlTime : integer;
  nOrd : integer;
  nMsec : integer;
begin
  if L_stSelectEcuID <> aEcuID then Exit;

  if Not isDigit(aDoorNo) then Exit;

  L_bDoorSystemChange := True;

  if aDoorNo = '1' then
  begin
    ComboBox_CardModeType1.ItemIndex:=     strtoint(aCardMode);
    ComboBox_CardModeType1.Color := clYellow;
    ComboBox_DoorModeType1.ItemIndex:=     strtoint(aDoorMode);
    ComboBox_DoorModeType1.Color := clYellow;
    cmb_DoorControlTime1.Text := aDoorControlTime;
    cmb_DoorControlTime1.Color := clYellow;
    SpinEdit_OpenMoni1.IntValue:=  strtoint(aLongDoorOpenTime);
    SpinEdit_OpenMoni1.Color := clYellow;
    ComboBox_UseSch1.ItemIndex:= strtoint(aSchedule);
    ComboBox_UseSch1.Color := clYellow;
    ComboBox_SendDoorStatus1.ItemIndex:=   strtoint(aDoorState);
    ComboBox_SendDoorStatus1.Color := clYellow;
    ComboBox_AlarmLongOpen1.ItemIndex:=    strtoint(aLongDoorOpenUse);
    ComboBox_AlarmLongOpen1.Color := clYellow;

    ComboBox_ControlFire1.ItemIndex:= strtoint(aFireDoorControl);
    ComboBox_ControlFire1.Color := clYellow;
    ComboBox_LockType1.ItemIndex:=         strtoint(aDoorLockType);
    ComboBox_LockType1.Color := clYellow;

    //���Թ���������
    if IsDigit(aDoorOpenState) then
    begin
      cmb_DsOpenState1.ItemIndex := strtoint(aDoorOpenState);
      cmb_DsOpenState1.Color := clYellow;
    end;
    //���������� Door Open
    if IsDigit(aRemoteDoorOpen) then
    begin
      cmb_RemoteDoorOpen1.ItemIndex := strtoint(aRemoteDoorOpen);
      cmb_RemoteDoorOpen1.Color := clYellow;
    end;

    if Not L_bZoneDoor[1] then
    begin
      SpinEdit_OpenMoni1.IntValue := 0;
      ComboBox_AlarmLongOpen1.ItemIndex := 0;
    end;

  end else if aDoorNo = '2' then
  begin
    ComboBox_CardModeType2.ItemIndex:=     strtoint(aCardMode);
    ComboBox_CardModeType2.Color := clYellow;
    ComboBox_DoorModeType2.ItemIndex:=     strtoint(aDoorMode);
    ComboBox_DoorModeType2.Color := clYellow;
    cmb_DoorControlTime2.Text := aDoorControlTime;
    cmb_DoorControlTime2.Color := clYellow;
    SpinEdit_OpenMoni2.IntValue:= strtoint(aLongDoorOpenTime);;
    SpinEdit_OpenMoni2.Color := clYellow;
    ComboBox_UseSch2.ItemIndex:= strtoint(aSchedule);
    ComboBox_UseSch2.Color := clYellow;
    ComboBox_SendDoorStatus2.ItemIndex:=   strtoint(aDoorState);
    ComboBox_SendDoorStatus2.Color := clYellow;
    ComboBox_AlarmLongOpen2.ItemIndex:=    strtoint(aLongDoorOpenUse);
    ComboBox_AlarmLongOpen2.Color := clYellow;
    ComboBox_ControlFire2.ItemIndex:= strtoint(aFireDoorControl);
    ComboBox_ControlFire2.Color := clYellow;
    ComboBox_LockType2.ItemIndex:=         strtoint(aDoorLockType);
    ComboBox_LockType2.Color := clYellow;

    //���Թ���������
    if IsDigit(aDoorOpenState) then
    begin
      cmb_DsOpenState2.ItemIndex := strtoint(aDoorOpenState);
      cmb_DsOpenState2.Color := clYellow;
    end;
    //���������� Door Open
    if IsDigit(aRemoteDoorOpen) then
    begin
      cmb_RemoteDoorOpen2.ItemIndex := strtoint(aRemoteDoorOpen);
      cmb_RemoteDoorOpen2.Color := clYellow;
    end;

    if Not L_bZoneDoor[2] then
    begin
      SpinEdit_OpenMoni2.IntValue := 0;
      ComboBox_AlarmLongOpen2.ItemIndex := 0;
    end;
  end;

  L_bSettingChanged := False;
  L_bDoorSystemChange := False;
end;

procedure TfmDeviceSetting.ComboBox_CardModeType1Change(Sender: TObject);
begin
  if Sender = ComboBox_LockType1 then
  begin
    if ComboBox_LockType1.ItemIndex = 7 then
    begin
      ComboBox_LockType2.ItemIndex := 7;
      ComboBox_CardModeType2Change(self);
    end else
    begin
      if ComboBox_LockType2.ItemIndex = 7 then
      begin
        ComboBox_LockType2.ItemIndex := 1;
        ComboBox_CardModeType2Change(self);
      end;
    end;
  end;
  L_bSettingChanged := True;
  if L_bDoorSystemChange then Exit;
  if G_bRealRegist then RegistDoorSystyemInfo('1');

  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'CARD_TYPE1',inttostr(ComboBox_CardModeType1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOORMODE_TYPE1',inttostr(ComboBox_DoorModeType1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_OPEN1',cmb_DoorControlTime1.Text);
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'OPEN_MONI1',inttostr(SpinEdit_OpenMoni1.IntValue));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'USE_SCH1',inttostr(ComboBox_UseSch1.ItemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_STATUS1',inttostr(ComboBox_SendDoorStatus1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'ALARM_LONG1',inttostr(ComboBox_AlarmLongOpen1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'CONTROL_FIRE1',inttostr(ComboBox_ControlFire1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'LOCK_TYPE1',inttostr(ComboBox_LockType1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_DSOPENSTATUS1',inttostr(cmb_DsOpenState1.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_REMOTECANCEL1',inttostr(cmb_RemoteDoorOpen1.itemIndex));


end;

function TfmDeviceSetting.RegistDoorSystyemInfo(aDoorNo: string): Boolean;
var
  i : integer;
  stDoorControlTime : string;
  stDoorLockType : string;
  stCardModeType : string;
  stDoorModeType : string;
  stDoorLongOpenTime : string;
  stScheduleUse : string;
  stDoorStatusUse : string;
  stDoorLongTimeUse : string;
  stDoorFireOpenUse : string;
  stDoorDSOpenState : string;
  stRemoteOpen : string;
begin
  Form_DoorSystem_ColorInitialize(aDoorNo);
  if cmb_DsOpenState1.ItemIndex < 0 then cmb_DsOpenState1.ItemIndex := 0;
  if cmb_DsOpenState2.ItemIndex < 0 then cmb_DsOpenState2.ItemIndex := 0;
  if cmb_RemoteDoorOpen1.ItemIndex < 0 then cmb_RemoteDoorOpen1.ItemIndex := 0;
  if cmb_RemoteDoorOpen2.ItemIndex < 0 then cmb_RemoteDoorOpen2.ItemIndex := 0;

  if Not GetDoorControlTime(aDoorNo,stDoorControlTime) then Exit;
  if Not GetDoorLockType(aDoorNo,stDoorLockType) then Exit;
  if Not GetDoorCardMode(aDoorNo,stCardModeType) then Exit;
  if Not GetDoorModeType(aDoorNo,stDoorModeType) then Exit;
  if Not GetDoorLongOpenTime(aDoorNo,stDoorLongOpenTime) then Exit;
  if Not GetDoorScheduleUse(aDoorNo,stScheduleUse) then Exit;
  if Not GetDoorStatusUse(aDoorNo,stDoorStatusUse) then Exit;
  if Not GetDoorLongTimeUse(aDoorNo,stDoorLongTimeUse) then Exit;
  if Not GetDoorFireOpenUse(aDoorNo,stDoorFireOpenUse) then Exit;
  if Not GetDoorDSOpenState(aDoorNo,stDoorDSOpenState) then Exit;
  if Not GetDoorRemoteOpen(aDoorNo,stRemoteOpen) then Exit;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.RegistDoorSystemInfo(L_stSelectEcuID,                             // ����ȣ
              aDoorNo,                               // ����ȣ
              stCardModeType,                        // ī�� ���� (0:Positive, 1:Negative)
              stDoorModeType,                        // ���Թ� ���� (0:�, 1:����)
              stDoorControlTime,                     // Door ����ð�
              stDoorLongOpenTime,                    // ��ð� ���� �溸
              stScheduleUse,                         // ������ ���� ���� (0:������, 1:���)
              stDoorStatusUse,                       // ���Թ� ���� ����(0:������, 1:���)
              stDoorLongTimeUse,                     // ��ð� ���� ���� ���(0:������, 1:���)
              stDoorLockType,                        // ������ Ÿ��
              stDoorFireOpenUse,                     // ȭ�� �߻��� ������
              stDoorDSOpenState,                     //���Թ��������� (DS OPEN 0x30,DS CLOSE 0x31)
              stRemoteOpen);
    if result then Break;
  end;

end;

function TfmDeviceSetting.GetDoorControlTime(aDoorNo: string;
  var aDoorControlTime: string): Boolean;
var
  nOrdUDiff : integer;
  nDoorTime : integer;
  stMSEC : string;
  nMSec : integer;
  nOrd : integer;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      if IsDigit(cmb_DoorControlTime1.text) then
      begin
        if strtoint(cmb_DoorControlTime1.text) < 10 then
        begin
           aDoorControlTime := Trim(cmb_DoorControlTime1.text);
        end else
        begin
          nOrdUDiff := 26;
          nDoorTime := strtoint(cmb_DoorControlTime1.text) - 10;
          nDoorTime := nDoorTime div 5;
          if nDoorTime < nOrdUDiff then  nOrd := Ord('A') + nDoorTime
          else nOrd := Ord('a') + nDoorTime - nOrdUDiff;
          if nOrd > Ord('z') then nOrd := Ord('z');
          aDoorControlTime := Char(nOrd);
        end;
      end else
      begin
        stMSEC := copy(cmb_DoorControlTime1.text,1,3);
        if Not isDigit(stMSEC) then
        begin
          showmessage('�и��� ������ ���ÿ� ���ؼ��� �����մϴ�.');
          Exit;
        end;
        nMSec := strtoint(stMsec) div 100;
        if nMSec < 1 then
        begin
          showmessage('�и��� ������ ���ÿ� ���ؼ��� �����մϴ�.');
          Exit;
        end;
        if nMSec > 9 then
        begin
          showmessage('�и��� ������ ���ÿ� ���ؼ��� �����մϴ�.');
          Exit;
        end;
        nOrd := $20 + nMSec; //21~29 ���� MSEC;
        aDoorControlTime := Char(nOrd);
      end;
      result := True;
    end else if aDoorNo = '2' then
    begin
      if IsDigit(cmb_DoorControlTime2.text) then
      begin
        if strtoint(cmb_DoorControlTime2.text) < 10 then
        begin
           aDoorControlTime := Trim(cmb_DoorControlTime2.text);
        end else
        begin
          nOrdUDiff := 26;
          nDoorTime := strtoint(cmb_DoorControlTime2.text) - 10;
          nDoorTime := nDoorTime div 5;
          if nDoorTime < nOrdUDiff then  nOrd := Ord('A') + nDoorTime
          else nOrd := Ord('a') + nDoorTime - nOrdUDiff;
          if nOrd > Ord('z') then nOrd := Ord('z');
          aDoorControlTime := Char(nOrd);
        end;
      end else
      begin
        stMSEC := copy(cmb_DoorControlTime2.text,1,3);
        if Not isDigit(stMSEC) then
        begin
          showmessage('�и��� ������ ���ÿ� ���ؼ��� �����մϴ�.');
          Exit;
        end;
        nMSec := strtoint(stMsec) div 100;
        if nMSec < 1 then
        begin
          showmessage('�и��� ������ ���ÿ� ���ؼ��� �����մϴ�.');
          Exit;
        end;
        if nMSec > 9 then
        begin
          showmessage('�и��� ������ ���ÿ� ���ؼ��� �����մϴ�.');
          Exit;
        end;
        nOrd := $20 + nMSec; //21~29 ���� MSEC;
        aDoorControlTime := Char(nOrd);
      end;
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorLockType(aDoorNo: string;
  var aDoorLockType: string): Boolean;
var
  nLockType : integer;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      {if ComboBox_LockType1.ItemIndex < 4 then
          nLockType := ord('0') + ComboBox_LockType1.ItemIndex
      else nLockType := ord('0') + ComboBox_LockType1.ItemIndex + 2; }
      nLockType := ord('0') + ComboBox_LockType1.ItemIndex;
      aDoorLockType := char(nLockType);
      result := True;
    end else if aDoorNo = '2' then
    begin
      {if ComboBox_LockType2.ItemIndex < 4 then
          nLockType := ord('0') + ComboBox_LockType2.ItemIndex
      else nLockType := ord('0') + ComboBox_LockType2.ItemIndex + 2; }
      nLockType := ord('0') + ComboBox_LockType2.ItemIndex;
      aDoorLockType := char(nLockType);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorCardMode(aDoorNo: string;
  var aCardModeType: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aCardModeType := inttostr(ComboBox_CardModeType1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aCardModeType := inttostr(ComboBox_CardModeType2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorModeType(aDoorNo: string;
  var aDoorModeType: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aDoorModeType := inttostr(ComboBox_DoorModeType1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aDoorModeType := inttostr(ComboBox_DoorModeType2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorLongOpenTime(aDoorNo: string;
  var aDoorLongOpenTime: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aDoorLongOpenTime := inttostr(SpinEdit_OpenMoni1.IntValue);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aDoorLongOpenTime := inttostr(SpinEdit_OpenMoni2.IntValue);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorScheduleUse(aDoorNo: string;
  var aScheduleUse: string): Boolean;
begin
  result := False;
  aScheduleUse := '0'; //������ �������� �ٲ���
  Try
    if aDoorNo = '1' then
    begin
      aScheduleUse := inttostr(ComboBox_UseSch1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aScheduleUse := inttostr(ComboBox_UseSch2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
//  aScheduleUse := '1';
end;

function TfmDeviceSetting.GetDoorStatusUse(aDoorNo: string;
  var aDoorStatusUse: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aDoorStatusUse := inttostr(ComboBox_SendDoorStatus1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aDoorStatusUse := inttostr(ComboBox_SendDoorStatus2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorLongTimeUse(aDoorNo: string;
  var aDoorLongTimeUse: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aDoorLongTimeUse := inttostr(ComboBox_AlarmLongOpen1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aDoorLongTimeUse := inttostr(ComboBox_AlarmLongOpen2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorFireOpenUse(aDoorNo: string;
  var aDoorFireOpenUse: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aDoorFireOpenUse := inttostr(ComboBox_ControlFire1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aDoorFireOpenUse := inttostr(ComboBox_ControlFire2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorDSOpenState(aDoorNo: string;
  var aDoorOpenState: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aDoorOpenState := inttostr(cmb_DsOpenState1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aDoorOpenState := inttostr(cmb_DsOpenState2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
end;

function TfmDeviceSetting.GetDoorRemoteOpen(aDoorNo: string;
  var aRemoteOpen: string): Boolean;
begin
  result := False;
  Try
    if aDoorNo = '1' then
    begin
      aRemoteOpen := inttostr(cmb_RemoteDoorOpen1.ItemIndex);
      result := True;
    end else if aDoorNo = '2' then
    begin
      aRemoteOpen := inttostr(cmb_RemoteDoorOpen2.ItemIndex);
      result := True;
    end;
  Except
    Exit;
  End;
end;

procedure TfmDeviceSetting.ComboBox_CardModeType2Change(Sender: TObject);
begin
  if Sender = ComboBox_LockType2 then
  begin
    if ComboBox_LockType2.ItemIndex = 5 then
    begin
      ComboBox_LockType1.ItemIndex := 5;
      ComboBox_CardModeType1Change(self);
    end else
    begin
      if ComboBox_LockType1.ItemIndex = 5 then
      begin
        ComboBox_LockType1.ItemIndex := 1;
        ComboBox_CardModeType1Change(self);
      end;
    end;
  end;
  if L_bDoorSystemChange then Exit;
  if G_bRealRegist then RegistDoorSystyemInfo('2');

  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'CARD_TYPE2',inttostr(ComboBox_CardModeType2.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOORMODE_TYPE2',inttostr(ComboBox_DoorModeType2.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_OPEN2',cmb_DoorControlTime2.Text);
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'OPEN_MONI2',inttostr(SpinEdit_OpenMoni2.IntValue));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'USE_SCH2',inttostr(ComboBox_UseSch2.ItemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_STATUS2',inttostr(ComboBox_SendDoorStatus2.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'ALARM_LONG2',inttostr(ComboBox_AlarmLongOpen2.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'CONTROL_FIRE2',inttostr(ComboBox_ControlFire2.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'LOCK_TYPE2',inttostr(ComboBox_LockType2.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_DSOPENSTATUS2',inttostr(cmb_DsOpenState2.itemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DOOR_REMOTECANCEL2',inttostr(cmb_RemoteDoorOpen2.itemIndex));

  L_bSettingChanged := True;

end;

procedure TfmDeviceSetting.btn_DevicStateClick(Sender: TObject);
begin
  DoorLockDeviceStateCheck;
  AlarmStateCheck;
  CurrentAlarmStateSearch;

end;

function TfmDeviceSetting.DoorLockDeviceStateCheck: Boolean;
var
  i : integer;
begin
  Form_DoorLockDeviceState_Clear;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.DoorLockDeviceState_Check(L_stSelectEcuID);
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Form_DoorLockDeviceState_Clear;
begin
  cmb_COMNO1.ItemIndex := -1;
  cmb_COMNO1.Color := clWhite;
  cmb_ExGnd1.ItemIndex := -1;
  cmb_ExGnd1.Color := clWhite;
  cmb_dsgnd1.ItemIndex := -1;
  cmb_dsgnd1.Color := clWhite;
  cmb_lsgnd1.ItemIndex := -1;
  cmb_lsgnd1.Color := clWhite;

  cmb_COMNO2.ItemIndex := -1;
  cmb_COMNO2.Color := clWhite;
  cmb_ExGnd2.ItemIndex := -1;
  cmb_ExGnd2.Color := clWhite;
  cmb_dsgnd2.ItemIndex := -1;
  cmb_dsgnd2.Color := clWhite;
  cmb_lsgnd2.ItemIndex := -1;
  cmb_lsgnd2.Color := clWhite;
end;

procedure TfmDeviceSetting.RecvDeviceStateData(aECUID, aCmd,
  aData: string);
begin
  //if L_stSelectEcuID <> aEcuID then Exit;

  if aCmd = '20' then  //���Թ� ���� üũ
  begin
    if L_stSelectEcuID = aEcuID then DoorLockState(aData);
  end else if aCmd = '24' then  //�˶� �߻� ��� üũ(ȭ��/����)
  begin
    DeviceAlarmState(aData);
  end else if aCmd = '10' then  //���� ���� �ܼ�/��Ʈ���� üũ
  begin
    if L_stSelectEcuID = aEcuID then Port_ShortOpenCheck(aData);
  end;

end;

procedure TfmDeviceSetting.DoorLockState(aData: string);
begin
  if isDigit(aData[6]) then
  begin
    cmb_COMNO1.ItemIndex := strtoint(aData[6]);
    cmb_COMNO1.Color := clYellow;
  end;

  if isDigit(aData[7]) then
  begin
    cmb_lsgnd1.ItemIndex := strtoint(aData[7]);
    cmb_lsgnd1.Color := clYellow;
  end;

  if isDigit(aData[8]) then
  begin
    cmb_dsgnd1.ItemIndex := strtoint(aData[8]);
    cmb_dsgnd1.Color := clYellow;
  end;

  if isDigit(aData[9]) then
  begin
    cmb_ExGnd1.ItemIndex := strtoint(aData[9]);
    cmb_ExGnd1.Color := clYellow;
  end;

  if DeviceType <> ECUTYPE then exit;

  if isDigit(aData[11]) then
  begin
    cmb_COMNO2.ItemIndex := strtoint(aData[11]);
    cmb_COMNO2.Color := clYellow;
  end;

  if isDigit(aData[12]) then
  begin
    cmb_lsgnd2.ItemIndex := strtoint(aData[12]);
    cmb_lsgnd2.Color := clYellow;
  end;

  if isDigit(aData[13]) then
  begin
    cmb_dsgnd2.ItemIndex := strtoint(aData[13]);
    cmb_dsgnd2.Color := clYellow;
  end;

  if isDigit(aData[14]) then
  begin
    cmb_ExGnd2.ItemIndex := strtoint(aData[14]);
    cmb_ExGnd2.Color := clYellow;
  end;


end;

function TfmDeviceSetting.AlarmStateCheck: Boolean;
var
  i : integer;
begin
  Form_AlarmState_Clear;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.ZoneSensState_Check;
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Form_AlarmState_Clear;
begin
  cmb_Firestat.ItemIndex := -1;
  cmb_Firestat.Color := clWhite;
end;

procedure TfmDeviceSetting.DeviceAlarmState(aData: string);
var
  i : integer;
  bFire : Boolean;
begin
  cmb_Firestat.itemIndex := 0;
  cmb_Firestat.Color := clYellow;

  bFire := False;
  for i:=0 to HIGH(G_bFireDevice) do
  begin
    if G_bFireDevice[i] then
    begin
      bFire := True;
      InsertFireDevice(FillZeroNumber(i,2));
    end else DeleteFireDevice(FillZeroNumber(i,2));
  end;
  if bFire then
  begin
    btn_FireDevice.Enabled := True;
    cmb_Firestat.itemIndex := 1;
    cmb_Firestat.Color := clRed;
  end else
  begin
    btn_FireDevice.Enabled := False;
    sg_FireDevice.Visible := False;
    cmb_Firestat.itemIndex := 0;
    cmb_Firestat.Color := clYellow;
  end;


end;

procedure TfmDeviceSetting.btn_FireDeviceClick(Sender: TObject);
begin
  sg_FireDevice.Visible := Not sg_FireDevice.Visible;
end;

procedure TfmDeviceSetting.DeleteFireDevice(aEcuID: string);
var
  i : integer;
begin
  for i := 1 to sg_FireDevice.RowCount - 1 do
  begin
    if sg_FireDevice.Cells[0,i] = aEcuID then
    begin
      sg_FireDevice.RemoveRows(i,1);
      if  sg_FireDevice.RowCount < 2 then sg_FireDevice.RowCount := 2;
    end;
  end;

end;

procedure TfmDeviceSetting.InsertFireDevice(aEcuID: string);
var
  i : integer;
  bSearch : Boolean;
begin

  bSearch := False;
  for i := 1 to sg_FireDevice.RowCount - 1 do
  begin
    if sg_FireDevice.Cells[0,i] = aEcuID then
    begin
      bSearch := True;
      break;
    end;
  end;
  if Not bSearch then
  begin
    if sg_FireDevice.Cells[0,1] = '' then sg_FireDevice.Cells[0,1] := aEcuID
    else
    begin
      sg_FireDevice.AddRow;
      sg_FireDevice.Cells[0,sg_FireDevice.RowCount - 1] := aEcuID;
    end;
  end;
end;

procedure TfmDeviceSetting.Panel3Resize(Sender: TObject);
begin
  gb_ControlButton.Left := (Panel3.Width div 2) - (gb_ControlButton.Width div 2);
end;

function TfmDeviceSetting.AllCardReaderCheck: Boolean;
var
  i : integer;
  bResult : Boolean;
  stEcuID : string;
  stReaderNo : string;
  nCount : integer;
  static_Text:TStaticText;
begin
  Form_AllCardReader_ColorInitialize(0);
  for i := 1 to G_nCardReaderNumber do
  begin
    bResult := CardReaderInfoSearch(L_stSelectEcuID,i);
    if Not bResult then
    begin
      if Application.MessageBox(Pchar(inttostr(i) + '�� ī�帮�� ��ȸ�� ������ �߻� �߽��ϴ�. ��� �Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = IDCANCEL then Exit;
    end;
  end;
  for i:= 1 to G_nCardReaderNumber do
  begin
    if G_bCardReaderUse[i] then
    begin
      static_Text := TravelTStaticTextItem(gb_CardReader,'st_ReaderComstate',i);
      if static_Text <> nil then
      begin
        static_Text.Caption := '����üũ��';
      end;
      if Not CardReaderVersionCheck(L_stSelectEcuID,i) then
      begin
        if static_Text <> nil then
        begin
          static_Text.Caption := '����';
          static_Text.Color := clRed;
        end;
      end;
    end else
    begin
      static_Text := TravelTStaticTextItem(gb_CardReader,'st_ReaderComstate',i);
      if static_Text <> nil then
      begin
        static_Text.Caption := '';
        static_Text.Color := clYellow;
      end;
    end;
  end;
end;

function TfmDeviceSetting.CardReaderTypeSearch: Boolean;
var
  i : integer;
begin
  if G_nProgramType = 1 then Exit;
  Form_CardReaderType_ColorInitialize;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CardReaderType_Check(L_stSelectEcuID);
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Form_AllCardReader_ColorInitialize(aReaderNo:integer);
var
  i : integer;
  cmb_box:TCombobox;
  static_Text :TStaticText;
  spinEdit:TSpinEdit;
begin
  if aReaderNo = 0 then
  begin
    for i:=1 to G_nCardReaderNumber do
    begin
      cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',i);
      if cmb_Box <> nil then cmb_Box.Color := clWhite;
      cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',i);
      if cmb_Box <> nil then cmb_Box.Color := clWhite;
      spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',i);
      if spinEdit <> nil then spinEdit.Color := clWhite;
      cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',i);
      if cmb_Box <> nil then cmb_Box.Color := clWhite;
      cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',i);
      if cmb_Box <> nil then cmb_Box.Color := clWhite;
      static_Text := TravelTStaticTextItem(gb_CardReader,'st_ReaderComstate',i);
      if static_Text <> nil then
      begin
        static_Text.Caption := '';
        static_Text.Color := clWhite;
      end;
      G_bCardReaderUse[i] := False;
    end;
  end else
  begin
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',aReaderNo);
    if cmb_Box <> nil then cmb_Box.Color := clWhite;
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',aReaderNo);
    if cmb_Box <> nil then cmb_Box.Color := clWhite;
    spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',aReaderNo);
    if spinEdit <> nil then spinEdit.Color := clWhite;
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',aReaderNo);
    if cmb_Box <> nil then cmb_Box.Color := clWhite;
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',aReaderNo);
    if cmb_Box <> nil then cmb_Box.Color := clWhite;
    static_Text := TravelTStaticTextItem(gb_CardReader,'st_ReaderComstate',aReaderNo);
    if static_Text <> nil then
    begin
      static_Text.Caption := '';
      static_Text.Color := clWhite;
    end;
    G_bCardReaderUse[aReaderNo] := False;
  end;
end;

procedure TfmDeviceSetting.Form_CardReaderType_ColorInitialize;
begin
  cb_CardType.Color := clWhite;
end;

procedure TfmDeviceSetting.RecvCardReaderType(aECUID,
  aCardReaderType: string);
begin
  if L_stSelectEcuID <> aEcuID then Exit;
  Try
    cb_CardType.Color := clYellow;
    cb_CardType.ItemIndex := strtoint(aCardReaderType) + 1;
  Except
    cb_CardType.ItemIndex := 0;
  End;
  L_bSettingChanged := False;

end;

function TfmDeviceSetting.CardReaderInfoSearch(aEcuID: string;
  nCardReaderNo: integer): Boolean;
var
  i : integer;
begin
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CardReaderInfo_Check(aEcuID,inttostr(nCardReaderNo));
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.RecvCardReaderSetData(aECUID, aReaderNo,
  aUsedCR, aCRPosition, aDoorNo, aLocate, aBuildingPosi: string);
var
  cmb_box:TCombobox;
//  static_Text:TStaticText;
  nCardReaderNo : integer;
  spinEdit : TSpinEdit;
begin
  if L_stSelectEcuID <> aEcuID then Exit;
  Try
    nCardReaderNo := strtoint(aReaderNo);
    if strtoint(aUsedCR) = 0 then G_bCardReaderUse[nCardReaderNo] := False
    else G_bCardReaderUse[nCardReaderNo] := True;

    cmb_box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',nCardReaderNo);
    if cmb_box <> nil then
    begin
      cmb_box.ItemIndex := strtoint(aUsedCR);
      cmb_box.Color := clYellow;
    end;
    cmb_box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',nCardReaderNo);
    if cmb_box <> nil then
    begin
      cmb_box.ItemIndex := strtoint(aDoorNo);
      cmb_box.Color := clYellow;
    end;
    spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',nCardReaderNo);
    if spinEdit <> nil then
    begin
      spinEdit.Value := strtoint(aDoorNo);
      spinEdit.Color := clYellow;
    end;

    cmb_box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',nCardReaderNo);
    if cmb_box <> nil then
    begin
      cmb_box.ItemIndex := strtoint(aCRPosition);
      cmb_box.Color := clYellow;
    end;
    cmb_box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',nCardReaderNo);
    if cmb_box <> nil then
    begin
      cmb_box.ItemIndex := strtoint(aBuildingPosi);
      cmb_box.Color := clYellow;
    end;
  Except
    Exit;
  End;
  L_bSettingChanged := False;
end;

function TfmDeviceSetting.CardReaderVersionCheck(aEcuID: string;
  nCardReaderNo: integer): Boolean;
var
  i : integer;
begin
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then exit;
    result := dmSocket.CardReaderVersion_Check(aEcuID,inttostr(nCardReaderNo));
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.RecvCardReaderVersion(aECUID, aCardReaderNo,
  aCardReaderVersion: string);
var
  static_Text:TStaticText;
begin
  if L_stSelectEcuID <> aEcuID then Exit;
  if Not isDigit(aCardReaderNo) then Exit;
  static_Text := TravelTStaticTextItem(gb_CardReader,'st_ReaderComstate',strtoint(aCardReaderNo));
  if static_Text <> nil then
  begin
    static_Text.Caption := aCardReaderVersion;
    static_Text.Color := clYellow;
  end;
end;

procedure TfmDeviceSetting.cb_CardTypeChange(Sender: TObject);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'CARDREADER_TYPE',inttostr(cb_CardType.ItemIndex));
  if G_bRealRegist then
  begin
    if (cb_CardType.ItemIndex < 1) or (cb_CardType.ItemIndex > 4) then Exit;
    RegistCardType(L_stSelectEcuID,cb_CardType.ItemIndex - 1);
  end;
end;

function TfmDeviceSetting.RegistCardType(aEcuID: string;
  aCardType: integer): Boolean;
var
  i : integer;
begin
  if G_nProgramType = 1 then Exit;
  Form_CardReaderType_ColorInitialize;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.RegistCardType(aEcuID,inttostr(aCardType));
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.ReaderInfoChange(Sender: TObject);
var
  nReaderNo : integer;
  static_Text :TStaticText;
begin
  if Not isDigit(TComboBox(Sender).Hint) then Exit;
  nReaderNo := strtoint(TComboBox(Sender).Hint);
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'READER' + inttostr(nReaderNo) + '_USE',inttostr(TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',nReaderNo).ItemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'READER' + inttostr(nReaderNo) + '_DOOR',inttostr(TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',nReaderNo).ItemIndex));
  //dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'READER' + inttostr(nReaderNo) + '_DOOR',inttostr(TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',nReaderNo).Value));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'READER' + inttostr(nReaderNo) + '_NAME',inttostr(TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',nReaderNo).ItemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'READER' + inttostr(nReaderNo) + '_BUILDING',inttostr(TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',nReaderNo).ItemIndex));

  if G_bRealRegist then
  begin
    RegistCardReaderInfo(L_stSelectEcuID,
                         nReaderNo,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',nReaderNo).ItemIndex,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',nReaderNo).ItemIndex,
                         //TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',nReaderNo).Value,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',nReaderNo).ItemIndex,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',nReaderNo).ItemIndex,
                         '' //��ġ��
                         );
    if TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',nReaderNo).ItemIndex = 1 then
    begin
      static_Text := TravelTStaticTextItem(gb_CardReader,'st_ReaderComstate',nReaderNo);
      if static_Text <> nil then
      begin
        static_Text.Caption := 'üũ��';
      end;
      if Not CardReaderVersionCheck(L_stSelectEcuID,nReaderNo) then
      begin
        if static_Text <> nil then
        begin
          static_Text.Caption := '����';
          static_Text.Color := clRed;
        end;
      end;
    end else
    begin
      static_Text := TravelTStaticTextItem(gb_CardReader,'st_ReaderComstate',nReaderNo);
      if static_Text <> nil then
      begin
        static_Text.Caption := '';
        static_Text.Color := clYellow;
      end;
    end;
  end;
  L_bSettingChanged := True;

end;

function TfmDeviceSetting.RegistCardReaderInfo(aEcuID: string; aReaderNo,
  aReaderUse, aReaderDoor, aReaderDoorLocate,
  aReaderBuildingLocate: integer; aLocate: string): Boolean;
var
  i : integer;
begin
  Form_AllCardReader_ColorInitialize(aReaderNo);
  if aReaderUse = 1 then G_bCardReaderUse[aReaderNo] := True;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.RegistCardReaderInfo(aEcuID,aReaderNo,
                  aReaderUse, aReaderDoor, aReaderDoorLocate,
                  aReaderBuildingLocate,aLocate);
    if result then Break;
  end;

end;

function TfmDeviceSetting.AllPortCheck: Boolean;
var
  i : integer;
  bResult : Boolean;
  static_Text : TStaticText;
begin
  Form_AllPort_ColorInitialize(0);
  ZoneControlEnable(False);
  for i := 1 to G_nPortNumber do
  begin

    bResult := PortInfoSearch(L_stSelectEcuID,i);
    if Not bResult then
    begin
      if Application.MessageBox(Pchar(inttostr(i) + '�� ������ ��ȸ�� ������ �߻� �߽��ϴ�. ��� �Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = IDCANCEL then Exit;
    end;
  end;

  for i:= 1 to G_nPortNumber do
  begin
    //static_Text := TravelTStaticTextItem(gb_CardReader,'st_ZoneState',i);
    static_Text := GetPortStaticText(i,'st_ZoneState');
    if static_Text <> nil then
    begin
      static_Text.Caption := 'üũ��';
    end;
  end;
  PortStateCheck(L_stSelectEcuID);
  ZoneControlEnable(True);
end;

procedure TfmDeviceSetting.Form_AllPort_ColorInitialize(aPortNo: integer);
var
  i : integer;
  cmb_box:TCombobox;
  static_Text :TStaticText;
begin
  if aPortNo = 0 then
  begin
    for i:=1 to G_nPortNumber do
    begin
      cmb_Box := GetPortComboBox(i,'cmb_WatchType');
      if cmb_Box <> nil then cmb_Box.Color := clWhite;
      cmb_Box := GetPortComboBox(i,'cmb_WatchDelay');
      if cmb_Box <> nil then cmb_Box.Color := clWhite;
      cmb_Box := GetPortComboBox(i,'cmb_recorver');
      if cmb_Box <> nil then cmb_Box.Color := clWhite;
      static_Text := GetPortStaticText(i,'st_ZoneState');
      if static_Text <> nil then
      begin
        static_Text.Caption := '';
        static_Text.Color := clWhite;
      end;
    end;
  end else
  begin
    cmb_Box := GetPortComboBox(aPortNo,'cmb_WatchType');
    if cmb_Box <> nil then cmb_Box.Color := clWhite;
    cmb_Box := GetPortComboBox(aPortNo,'cmb_WatchDelay');
    if cmb_Box <> nil then cmb_Box.Color := clWhite;
    cmb_Box := GetPortComboBox(aPortNo,'cmb_recorver');
    if cmb_Box <> nil then cmb_Box.Color := clWhite;
    static_Text := GetPortStaticText(aPortNo,'st_ZoneState');
    if static_Text <> nil then
    begin
      static_Text.Caption := '';
      static_Text.Color := clWhite;
    end;
  end;
end;

procedure TfmDeviceSetting.ZoneStatusLoad;
var
  nPort,i : integer;
  cmb_Box : TComboBox;
begin
  if ZoneStatusList.Count < 1 then Exit;

  for nPort := 1 to G_nPortNumber do
  begin
    cmb_Box := GetPortComboBox(nPort,'cmb_WatchType');

    if cmb_Box = nil then continue;
    cmb_Box.Items.Clear;
    for i := 0 to ZoneStatusList.Count - 1 do
    begin
      cmb_Box.Items.Add(ZoneStatusList.Strings[i]);
    end;
  end;

end;

procedure TfmDeviceSetting.Menu_FireRecoveryClick(Sender: TObject);
begin
  inherited;
//ȭ�� ����
  AllFireRecovery;
end;

function TfmDeviceSetting.AllFireRecovery: Boolean;
var
  i : integer;
begin
  result := False;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.AllFireRecovery;
    if result then Break;
  end;
  if result then
  begin
    btn_DevicStateClick(self);
  end;

end;

procedure TfmDeviceSetting.DoorControl(Sender: TObject);
var
  stDoorControl:string;
begin
  Form_DoorControl_Clear;
  stDoorControl := TRzBitBtn(Sender).Hint;
  RemoteDoorControl(L_stSelectEcuID,stDoorControl[1],stDoorControl[2],stDoorControl[3]);
end;

function TfmDeviceSetting.RemoteDoorControl(aEcuID, aDoorNo, aControlType,
  aControl: string): Boolean;
var
  i : integer;
begin
  result := False;
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.RemoteDoorControl(aEcuID, aDoorNo, aControlType,aControl);
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.RecvDoorState(aECUID, aDoorNo, aCardMode,
  aDoorMode, aDoorState,aDoorSchedule: string);
var
  stTemp : string;
begin
  if L_stSelectEcuID <> aEcuID then Exit;

  st_CtrDoorNum.Caption := aDoorNo;
  st_CtrDoorNum.Color := clYellow;
  case aCardMode[1] of
    '0': stTemp := 'Positive';
    '1': stTemp := 'Negative';
    '2': stTemp := 'Positive(2)';
    '3': stTemp := 'Negative(3)';
    else   stTemp := aCardMode ;
  end;
  st_CtrCardMode.Caption := stTemp;
  st_CtrCardMode.Color := clYellow;
  if aDoorSchedule = 'S' then
  begin
    case aDoorMode[1] of
      '0' : begin stTemp := '�����ٿ' end;
      '1' : begin stTemp := '�����ٰ���' end;
      '2' : begin stTemp := '���������' end;
      else begin stTemp := '�˼� ����' end;
    end;
  end else
  begin
    case aDoorMode[1] of
      '0' : begin stTemp := '����' end;
      '1' : begin stTemp := '������' end;
      '2' : begin stTemp := '�����' end;
      else begin stTemp := '�˼� ����' end;
    end;
  end;


  st_CtrDoorMode.Caption := stTemp;
  st_CtrDoorMode.Color := clYellow;
  case aDoorState[1] of
    'C' : begin stTemp := '���Թ�����' end;
    'O' : begin stTemp := '���Թ�����' end;
    'T' : begin stTemp := '���Թ���ð�����' end;
    'U' : begin stTemp := '���Թ������̻�' end;
    'L' : begin stTemp := '���Թ������̻�' end;
    else begin stTemp := '�˼� ����' end;
  end;
  st_CtrDoorState.Caption := stTemp;
  st_CtrDoorState.Color := clYellow;

end;

procedure TfmDeviceSetting.Form_DoorControl_Clear;
begin
  st_CtrDoorNum.Caption := '';
  st_CtrDoorNum.Color := clWhite;
  st_CtrCardMode.Caption := '';
  st_CtrCardMode.Color := clWhite;
  st_CtrDoorMode.Caption := '';
  st_CtrDoorMode.Color := clWhite;
end;

procedure TfmDeviceSetting.ZoneRecoverLoad;
var
  nPort : integer;
  cmb_Box : TComboBox;
begin
  for nPort := 1 to G_nPortNumber do
  begin
    cmb_Box := GetPortComboBox(nPort,'cmb_recorver');

    if cmb_Box = nil then continue;
    cmb_Box.Items.Clear;
    cmb_Box.Items.Add('������');
    cmb_Box.Items.Add('����');
    if cmb_Box.Items.Count > 0 then
    begin
      cmb_Box.ItemIndex := 0;
    end;
  end;

end;

function TfmDeviceSetting.PortInfoSearch(aEcuID: string;
  nPortNo: integer): Boolean;
var
  i : integer;
begin
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.PortInfo_Check(aEcuID,inttostr(nPortNo));
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.RecvPortSettingData(aECUID, aPort, aWatchType,
  aAlarmType, aRecoverType, aDelayTimeType, aPortLocate,
  aDetectTime: string);
var
  nPort : integer;
  cmb_Box : TComboBox;
  stParentWatchType : string;
  nParentIndex : integer;
begin
  if L_stSelectEcuID <> aEcuID then Exit;
  nPort := strtoint(aPort);
  GetWatchType(aAlarmType,stParentWatchType,nParentIndex);
  cmb_Box := GetPortComboBox(nPort,'cmb_WatchType');
  if cmb_Box <> nil then
  begin
    cmb_Box.Text := stParentWatchType;
    cmb_Box.ItemIndex := nParentIndex;
    cmb_Box.Color := clYellow;
  end;
  cmb_Box := GetPortComboBox(nPort,'cmb_WatchDelay');
  if cmb_Box <> nil then
  begin
//    cmb_Box.Text := stDetailWatchType;
    if isdigit(aDelayTimeType) then
      cmb_Box.ItemIndex := strtoint(aDelayTimeType);
    cmb_Box.Color := clYellow;
  end;

  cmb_Box := GetPortComboBox(nPort,'cmb_recorver');
  if cmb_Box <> nil then
  begin
    cmb_Box.ItemIndex := strtoint(aRecoverType);
    cmb_Box.Color := clYellow;
  end;
  L_bSettingChanged := False;

end;

function TfmDeviceSetting.GetWatchType(aAlarmType: string;
  var aParentWatchType: string;var aParentIndex:integer): Boolean;
var
  i : integer;
  nIndex : integer;
begin
  result := False;
  if Not isdigit(aAlarmType) then Exit;
  aParentWatchType := ZoneStatusList.Strings[strtoint(aAlarmType)];
  aParentIndex := strtoint(aAlarmType);

end;

function TfmDeviceSetting.PortStateCheck(aEcuID: string): Boolean;
var
  i : integer;
begin
  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.PortState_Check(aEcuID);
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Port_ShortOpenCheck(aData: string);
var
  stZoneState : string;
  i : integer;
  nIndex : integer;
  stZoneStateName : string;
  static_Text : TStaticText;
begin
  stZoneState := copy(aData,2,G_nPortNumber);
  for i := 1 to G_nPortNumber do
  begin
    static_Text := GetPortStaticText(i,'st_ZoneState');
    if static_Text = nil then continue;

    static_Text.Color := clYellow;
    if i <= Length(stZoneState) then
    begin
      stZoneStateName := '';

      nIndex := ZoneStateCodeList.IndexOf(stZoneState[i]);
      if nIndex > -1 then
        stZoneStateName := ZoneStateNameList.Strings[nIndex];
      static_Text.Caption := stZoneStateName;
      if stZoneState[i] = 'N' then static_Text.Color := clYellow
      else static_Text.Color := clRed;
    end;
  end;
end;

procedure TfmDeviceSetting.ZoneStateLoad;
begin
  if ZoneStateNameList = nil then
    ZoneStateNameList := TStringList.Create;
  if ZoneStateCodeList = nil then
    ZoneStateCodeList := TStringList.Create;
  ZoneStateNameList.Clear;
  ZoneStateNameList.Add('�ܼ�');
  ZoneStateNameList.Add('����');
  ZoneStateNameList.Add('��Ʈ');
  
  ZoneStateCodeList.Clear;
  ZoneStateCodeList.Add('P');
  ZoneStateCodeList.Add('N');
  ZoneStateCodeList.Add('S');

end;

procedure TfmDeviceSetting.cmb_WatchTypeClick(Sender: TObject);
var
  nPortNo : integer;
  stStatusCode : string;
  cmb_Box : TComboBox;
  nWathType : integer;
begin

  if Not isDigit(TComboBox(Sender).Hint) then Exit;

  nPortNo := strtoint(TComboBox(Sender).Hint);

  cmb_Box := GetPortComboBox(nPortNo,'cmb_WatchType');
  nWathType := 0;
  if cmb_Box <> nil then nWathType := cmb_Box.ItemIndex;

  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'PORT' + inttostr(nPortNo) + '_TYPE',inttostr(nWathType));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'PORT' + inttostr(nPortNo) + '_DELAY',inttostr(GetPortComboBox(nPortNo,'cmb_WatchDelay').ItemIndex));
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'PORT' + inttostr(nPortNo) + '_RECORVER',inttostr(GetPortComboBox(nPortNo,'cmb_recorver').ItemIndex));
  L_bSettingChanged := True;

  if G_bRealRegist then
  begin
    RegistPortInfo(L_stSelectEcuID,
                         inttostr(nPortNo),
                         inttostr(nWathType),
                         '0', //�����ð� �������
                         inttostr(GetPortComboBox(nPortNo,'cmb_recorver').ItemIndex),
                         '04', //��Ʈ�����ð�
                         '' //��ġ��
                         );
  end;

end;

function TfmDeviceSetting.GetPortComboBox(nPortNo: integer;
  aComboBoxName: string): TComboBox;
begin
  result := nil;
  result := TravelComboBoxItem(gb_Port,aComboBoxName,nPortNo)

end;

function TfmDeviceSetting.GetPortStaticText(nPortNo: integer;
  aName: string): TStaticText;
begin
  result := nil;
  result := TravelTStaticTextItem(gb_Port,aName,nPortNo)

end;


function TfmDeviceSetting.RegistPortInfo(aEcuID, aPortNo, aWatchType,
  aDelayUse, aRecoverUse, aPortDelayTime, 
  aLocate: string): Boolean;
var
  i : integer;
  stStatusCode : string;
begin
  Form_AllPort_ColorInitialize(strtoint(aPortNo));

  stStatusCode := 'S' + aPortNo;
  if aWatchType = '1' then stStatuscode := 'FI'
  else if aWatchType = '2' then stStatuscode := 'G1'
  else if aWatchType = '3' then stStatuscode := 'E1'
  else if aWatchType = '4' then stStatuscode := 'Q1'
  else if aWatchType = '5' then stStatuscode := 'CL';

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.RegistPortInfo(aEcuID, aPortNo, aWatchType,
                      aDelayUse, aRecoverUse, aPortDelayTime, stStatusCode,
                      aLocate);
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Form_MCUSetting_Initialize;
begin
  Form_ControllerID_ColorInitialize;
  Form_UsedDevice_ColorInitialize;
  Form_WizenetModule_ColorInitialize;
  Form_CCCInfo_ColorInitialize;

end;

procedure TfmDeviceSetting.btn_UseControlerSearchClick(Sender: TObject);
begin
  if pg_DeviceSetting.ActivePage = TabMCSetting then
  begin
    MCUSettingSearch;
  end else if pg_DeviceSetting.ActivePage = TabSystemInfo then
  begin
    SystemInfoSearch(L_stSelectEcuID);
    CurrentAlarmStateSearch;
  end else if pg_DeviceSetting.ActivePage = tab_DoorLock then
  begin
    DoorSystemInfoSearch(L_stSelectEcuID,'1');
    if DeviceType = ECUTYPE then DoorSystemInfoSearch(L_stSelectEcuID,'2');
    btn_DevicStateClick(self);
  end else if pg_DeviceSetting.ActivePage = tab_CardReader then
  begin
    ReaderControlEnable(False);
    ReaderDoorNoMinValueSetting(0);
    ReaderDoorNoMaxValueSetting(2);
    CardReaderTypeSearch;
    AllCardReaderCheck;
    ReaderControlEnable(True);
  end else if pg_DeviceSetting.ActivePage = Tab_Port then
  begin
    AllPortCheck;
  end;
end;

procedure TfmDeviceSetting.Form_SystemInfo_Initialize;
begin
  Form_SystemInfo_ColorInitialize;
  Form_AlarmState_ColorInitialize;
end;

procedure TfmDeviceSetting.Form_DoorSystemInfo_Initialize;
begin
  Form_DoorSystem_ColorInitialize('1');
  Form_DoorSystem_ColorInitialize('2');
  Form_DoorLockDeviceState_Clear;
  Form_AlarmState_Clear;
  Form_AlarmState_ColorInitialize;
  Door1Enable(True);
  Door2Enable(True);
  if Not L_bZoneDoor[1] then
  begin
    SpinEdit_OpenMoni1.IntValue := 0;
    ComboBox_AlarmLongOpen1.ItemIndex := 0;
    Door1Enable(False);
  end;
  if Not L_bZoneDoor[2] then
  begin
    SpinEdit_OpenMoni2.IntValue := 0;
    ComboBox_AlarmLongOpen2.ItemIndex := 0;
    Door2Enable(False);
  end;
end;

procedure TfmDeviceSetting.Form_CardReader_Initialize;
begin
  Form_CardReaderType_ColorInitialize;
  Form_AllCardReader_ColorInitialize(0);
end;

procedure TfmDeviceSetting.Form_Port_Initialize;
begin
  Form_AllPort_ColorInitialize(0);
  Port_DoorEnabelCheck(L_stSelectEcuID);
end;

procedure TfmDeviceSetting.Form_ECUChange_Initialize;
begin
  Form_DeviceVersion_Clear;
  Form_DeviceCode_Clear;
end;

procedure TfmDeviceSetting.btn_RegistrationClick(Sender: TObject);
begin
  if pg_DeviceSetting.ActivePage = TabMCSetting then
  begin
    Form_MCUSetting_Initialize;
    MCUSetting_Registration;
  end else if pg_DeviceSetting.ActivePage = TabSystemInfo then
  begin
    Form_SystemInfo_Initialize;
    SystemInfo_Registration;
    CurrentAlarmStateSearch;
  end else if pg_DeviceSetting.ActivePage = tab_DoorLock then
  begin
    Form_DoorSystemInfo_Initialize;
    DoorSystemInfo_Registration;
    btn_DevicStateClick(self);
  end else if pg_DeviceSetting.ActivePage = tab_CardReader then
  begin
    ComboBox_WatchPowerOffClick(self);
    ReaderControlEnable(False);

    Form_CardReader_Initialize;
    AllCardReader_Registration;
    ReaderControlEnable(True);
  end else if pg_DeviceSetting.ActivePage = Tab_Port then
  begin
    Form_Port_Initialize;
    AllPort_Registration;
    PortStateCheck(L_stSelectEcuID);
  end;
  L_bSettingChanged := False;
end;

procedure TfmDeviceSetting.MCUSetting_Registration;
var
  stUseEcu : string;
begin
  MCUControlEnable(False);
  RegistControllerID(ed_mcid.Text);
  stUseEcu := GetEcu;
  RegistUsedDevice(stUseEcu);
  if G_nConnectMode = 1 then btn_WizNetSettingClick(self);  //�ø��� ������ ���
  RegistCCCInfo;
  MCUControlEnable(True);
end;

function TfmDeviceSetting.WiznetModuleInfoSearch: Boolean;
var
  i : integer;
begin
  Form_WizenetModule_ColorInitialize;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.WiznetModuleInfo_Check;
    if result then Break;
  end;
end;

procedure TfmDeviceSetting.Form_WizenetModule_ColorInitialize;
begin
  Edit_IP.Color := clWhite;
  Edit_subnet.Color := clWhite;
  edit_Gateway.Color := clWhite;
  edit_port.Color := clWhite;
  ed_server.Color := clWhite;
  ed_ServerPort.Color := clWhite;
  Rg_Mode.Color := clBtnFace;
end;

procedure TfmDeviceSetting.RecvWiznetInfo(aECUID, aHeader, aMacAddress,
  aMode, aIPAddress, aSubnet, aGateway, aClientPort, aServerIP,
  aServerPort, aSerial_Baud, aSerial_data, aSerial_Parity, aSerial_stop,
  aSerial_flow, aDelimiterChar, aDelimiterSize, aDelimitertime,
  aDelimiterIdle, aDebugMode, aROMVer, aOnDHCP, aReserve: string);
var
  i : integer;
begin
  Edit_IP.Text := aIPAddress;
  Edit_IP.Color := clYellow;

  Edit_subnet.Text := aSubnet;
  Edit_subnet.Color := clYellow;


  edit_Gateway.Text := aGateway;
  edit_Gateway.Color := clYellow;

  edit_port.Text := aClientPort;
  edit_port.Color := clYellow;

  ed_server.Text := aServerIP;
  ed_server.Color := clYellow;

  ed_ServerPort.Text := aServerPort;
  ed_ServerPort.Color := clYellow;

  if aMode = '00' then Rg_Mode.ItemIndex := 1           //Client Mode
  else Rg_Mode.ItemIndex := 0;

  if aOnDHCP = '01' then chk_DHCP.Checked := True
  else chk_DHCP.Checked := False;
  L_bSettingChanged := False;

  editMAC1.Color:= clYellow;
  editMAC2.Color:= clYellow;
  editMAC3.Color:= clYellow;
  editMAC4.Color:= clYellow;
  editMAC5.Color:= clYellow;
  editMAC6.Color:= clYellow;

  editMAC1.Text:= Copy(aMacAddress,1,2);
  editMAC2.Text:= Copy(aMacAddress,3,2);
  editMAC3.Text:= Copy(aMacAddress,5,2);
  editMAC4.Text:= Copy(aMacAddress,7,2);
  editMAC5.Text:= Copy(aMacAddress,9,2);
  editMAC6.Text:= Copy(aMacAddress,11,2);

end;

procedure TfmDeviceSetting.SystemInfo_Registration;
begin
  SystemControlEnable(False);
  RegistSystemInfo;
  SystemControlEnable(True);
end;

procedure TfmDeviceSetting.DoorSystemInfo_Registration;
begin
  LockControlEnable(False);
  RegistDoorSystyemInfo('1');
  if DeviceType = ECUTYPE then RegistDoorSystyemInfo('2');
  LockControlEnable(True);
end;

procedure TfmDeviceSetting.AllCardReader_Registration;
var
  i : integer;
begin
  if (cb_CardType.ItemIndex < 1) or (cb_CardType.ItemIndex > 4) then cb_CardType.ItemIndex := 1;
  RegistCardType(L_stSelectEcuID,cb_CardType.ItemIndex - 1);

  for i := 1 to G_nCardReaderNumber do
  begin
      RegistCardReaderInfo(L_stSelectEcuID,
                         i,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',i).ItemIndex,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',i).ItemIndex,
                         //TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',i).Value,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',i).ItemIndex,
                         TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',i).ItemIndex,
                         '' //��ġ��
                         );
  end;


end;

procedure TfmDeviceSetting.AllPort_Registration;
var
  i : integer;
  stStatusCode : string;
  cmb_Box : TComboBox;
  nDelay : integer;
begin
  ZoneControlEnable(False);
  for i:= 1 to G_nPortNumber do
  begin
    cmb_Box := GetPortComboBox(i,'cmb_WatchType');
    stStatusCode := '0';
    if cmb_Box <> nil then
    begin
      stStatusCode := inttostr(cmb_Box.ItemIndex);
    end;
    nDelay := 0;
    cmb_Box := GetPortComboBox(i,'cmb_WatchDelay');
    if cmb_Box <> nil then
    begin
      nDelay := cmb_Box.ItemIndex;
    end;
    RegistPortInfo(L_stSelectEcuID,
                         inttostr(i),
                         stStatusCode,
                         inttostr(nDelay), //�����ð� �������
                         inttostr(GetPortComboBox(i,'cmb_recorver').ItemIndex),
                         '04', //��Ʈ�����ð�
                         '' //��ġ��
                         );
  end;
  ZoneControlEnable(True);
end;

procedure TfmDeviceSetting.TableToFormSetting(aEcuID:string);
var
  i : integer;
  nTemp : integer;
  cmb_Box : TComboBox;
  spinEdit : TSpinEdit;
  stWatchType : string;
  stParentWatchType : string;
  stDetailWatchType : string;
  nParentIndex : integer;
begin
  with dmDataBase.TB_DEVICE do
  begin
    if FindKey([aEcuID]) then
    begin
      if aEcuID = '00' then
      begin
        ed_mcid.Text := FindField('DEVICE_ID').AsString;

        if FindField('MCU_IP').AsString <> '' then
          Edit_IP.Text := FindField('MCU_IP').AsString;
        if FindField('MCU_SUBNET').AsString <> '' then
          Edit_subnet.Text := FindField('MCU_SUBNET').AsString;
        if FindField('MCU_GATE').AsString <> '' then
          edit_Gateway.Text := FindField('MCU_GATE').AsString;
        edit_port.Text := FindField('MCU_PORT').AsString ;
        if FindField('Server_IP').AsString <> '' then
          ed_server.Text := FindField('Server_IP').AsString ;
        if FindField('MCU_SERVERPORT').AsString <> '' then
          ed_ServerPort.Text := FindField('MCU_SERVERPORT').AsString;
        if FindField('MCU_NETWORKMODE').AsString = '00' then rg_Mode.ItemIndex := 1
        else rg_Mode.ItemIndex := 0;
        if FindField('DHCP').asstring = '01' then chk_DHCP.checked := True
        else chk_DHCP.checked := False;

        ed_cccTimeInterval.Text := FindField('CCCTIMEINTERVAL').AsString;
        ed_cccStartTime.Text := FindField('CCCSTARTTIME').AsString;

      end;
      //����κ�
      ComboBox_WatchPowerOff.ItemIndex := FindField('WATCH_POWER').AsInteger;
      SpinEdit_OutDelay.IntValue := FindField('OUT_DELAY').AsInteger;
      SpinEdit_InDelay.IntValue := FindField('IN_DELAY').AsInteger;
      ComboBox_DoorType1.ItemIndex := FindField('DOOR_TYPE1').AsInteger;
      ComboBox_DoorType2.ItemIndex := FindField('DOOR_TYPE2').AsInteger;
      if ComboBox_DoorType1.itemIndex = 0 then L_bZoneDoor[1] := False
      else L_bZoneDoor[1] := True;
      if ComboBox_DoorType2.itemIndex = 0 then L_bZoneDoor[2] := False
      else L_bZoneDoor[2] := True;
      ComboBox_WatchPowerOffClick(self);

      Edit_Locate.Text := FindField('LOCATE').AsString;
      ComboBox_CardModeType1.ItemIndex := FindField('CARD_TYPE1').AsInteger;
      ComboBox_CardModeType2.ItemIndex := FindField('CARD_TYPE2').AsInteger;
      ComboBox_DoorModeType1.ItemIndex := FindField('DOORMODE_TYPE1').AsInteger;
      ComboBox_DoorModeType2.ItemIndex := FindField('DOORMODE_TYPE2').AsInteger;
      cmb_DoorControlTime1.Text := FindField('DOOR_OPEN1').AsString;
      cmb_DoorControlTime2.Text := FindField('DOOR_OPEN2').AsString;
      SpinEdit_OpenMoni1.IntValue := FindField('OPEN_MONI1').AsInteger;
      SpinEdit_OpenMoni2.IntValue := FindField('OPEN_MONI2').AsInteger;
      ComboBox_UseSch1.ItemIndex := FindField('USE_SCH1').AsInteger;
      ComboBox_UseSch2.ItemIndex := FindField('USE_SCH2').AsInteger;
      ComboBox_SendDoorStatus1.ItemIndex := FindField('DOOR_STATUS1').AsInteger;
      ComboBox_SendDoorStatus2.ItemIndex := FindField('DOOR_STATUS2').AsInteger;
      ComboBox_AlarmLongOpen1.ItemIndex := FindField('ALARM_LONG1').AsInteger;
      ComboBox_AlarmLongOpen2.ItemIndex := FindField('ALARM_LONG2').AsInteger;
      ComboBox_ControlFire1.ItemIndex := FindField('CONTROL_FIRE1').AsInteger;
      ComboBox_ControlFire2.ItemIndex := FindField('CONTROL_FIRE2').AsInteger;
      ComboBox_LockType1.ItemIndex := FindField('LOCK_TYPE1').AsInteger;
      ComboBox_LockType2.ItemIndex := FindField('LOCK_TYPE2').AsInteger;
      cmb_DsOpenState1.ItemIndex := FindField('DOOR_DSOPENSTATUS1').AsInteger;
      cmb_DsOpenState2.ItemIndex := FindField('DOOR_DSOPENSTATUS2').AsInteger;

      cmb_RemoteDoorOpen1.ItemIndex := FindField('DOOR_REMOTECANCEL1').AsInteger;
      cmb_RemoteDoorOpen2.ItemIndex := FindField('DOOR_REMOTECANCEL2').AsInteger;

      cb_CardType.itemindex := FindField('CARDREADER_TYPE').AsInteger;

      for i := 1 to G_nCardReaderNumber do
      begin
        if isDigit(FindField('READER'+ inttostr(i) + '_USE').Asstring) then nTemp := strtoint(FindField('READER'+ inttostr(i) + '_USE').Asstring)
        else nTemp := 0;
        cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',i);
        if cmb_Box <> nil then cmb_Box.ItemIndex := nTemp;
        if isDigit(FindField('READER'+ inttostr(i) + '_DOOR').Asstring) then nTemp := strtoint(FindField('READER'+ inttostr(i) + '_DOOR').Asstring)
        else nTemp := 0;
        cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',i);
        if cmb_Box <> nil then cmb_Box.ItemIndex := nTemp;
        spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',i);
        if spinEdit <> nil then spinEdit.Value := nTemp;
        if isDigit(FindField('READER'+ inttostr(i) + '_NAME').Asstring) then nTemp := strtoint(FindField('READER'+ inttostr(i) + '_NAME').Asstring)
        else nTemp := 0;
        cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',i);
        if cmb_Box <> nil then cmb_Box.ItemIndex := nTemp;
        if isDigit(FindField('READER'+ inttostr(i) + '_BUILDING').Asstring) then nTemp := strtoint(FindField('READER'+ inttostr(i) + '_BUILDING').Asstring)
        else nTemp := 0;
        cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',i);
        if cmb_Box <> nil then cmb_Box.ItemIndex := nTemp;
      end;
      for i := 1 to G_nPortNumber do
      begin
        stWatchType := FindField('PORT'+ inttostr(i) + '_TYPE').AsString;
        GetWatchType(stWatchType,stParentWatchType,nParentIndex);
        cmb_Box := GetPortComboBox(i,'cmb_WatchType');
        if cmb_Box <> nil then
        begin
          cmb_Box.Text := stParentWatchType;
          cmb_Box.ItemIndex := nParentIndex;
        end;
        cmb_Box := GetPortComboBox(i,'cmb_WatchDelay');
        if cmb_Box <> nil then
        begin
          if isDigit(FindField('PORT'+ inttostr(i) + '_DELAY').AsString) then
            cmb_Box.ItemIndex := strtoint(FindField('PORT'+ inttostr(i) + '_DELAY').AsString)
          else cmb_Box.ItemIndex :=  0;
        end;
        cmb_Box := GetPortComboBox(i,'cmb_recorver');
        if cmb_Box <> nil then
        begin
          if isDigit(FindField('PORT'+ inttostr(i) + '_RECORVER').AsString) then
            cmb_Box.ItemIndex := strtoint(FindField('PORT'+ inttostr(i) + '_RECORVER').AsString)
          else cmb_Box.ItemIndex :=  1;
        end;
      end;
    end; 
  end;
  L_bSettingChanged := False;

end;

function TfmDeviceSetting.EcuStatusCheck:Boolean;
var
  i : integer;
begin
//  for i := 0 to G_nLoopCount do
//  begin
//    if G_bApplicationTerminate then Exit;
    result := dmSocket.EcuStatusCheck;
//    if result then Break;
//  end;

end;

procedure TfmDeviceSetting.RecvEcuStateData(aECUID, aData: string);
var
  i : integer;
begin
  Delete(aData,1,4);
  for i:= 1 to Length(aData) do
  begin
    if aData[i] = '1' then
    begin
      ECUConnected(FillZeroNumber(i-1,2),True);
    end else
    begin
      ECUConnected(FillZeroNumber(i-1,2),False);
    end;
  end;

end;

procedure TfmDeviceSetting.Edit_IPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'MCU_IP',Edit_IP.Text);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.Edit_subnetKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'MCU_SUBNET',Edit_subnet.Text);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.edit_GatewayKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'MCU_GATE',edit_Gateway.Text);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.edit_portKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'MCU_PORT',edit_port.Text);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.ed_serverKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'Server_IP',ed_server.Text);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.ed_ServerPortKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'MCU_SERVERPORT',ed_ServerPort.Text);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.Rg_ModeClick(Sender: TObject);
var
  stMode : string;
begin
  if Rg_Mode.ItemIndex = 0 then stMode := '02'
  else stMode := '00';
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'MCU_NETWORKMODE',stMode);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.chk_DHCPClick(Sender: TObject);
var
  stDhcp : string;
begin
  if chk_DHCP.Checked then stDhcp := '01'
  else stDhcp := '00';

  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'DHCP',stDhcp);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.Edit_LocateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'LOCATE',Edit_Locate.Text);
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.Port_DoorEnabelCheck(aEcuID: string);
begin
  PortDoorEnable('1',Not L_bZoneDoor[1]);
  PortDoorEnable('2',Not L_bZoneDoor[2]);
 { with dmDataBase.TB_DEVICE do
  begin
    if FindKey([aEcuID]) then
    begin
      if FindField('DOOR_TYPE1').AsString = '0' then PortDoorEnable('1',True)
      else PortDoorEnable('1',False);
      if FindField('DOOR_TYPE2').AsString = '0' then PortDoorEnable('2',True)
      else PortDoorEnable('2',False);

    end;
  end;  }
end;

procedure TfmDeviceSetting.PortDoorEnable(aDoorNo: string;
  aEnable: Boolean);
begin
  //L_bZoneDoor[strtoint(aDoorNo)] := aEnable;
end;

procedure TfmDeviceSetting.btn_TimeSyncClick(Sender: TObject);
begin
  st_Time.Color := clWhite;
  st_Time.Caption := '';
  TimeSync(formatDateTime('yyyymmddhhnnss',now));
end;

function TfmDeviceSetting.TimeSync(aDate: string): Boolean;
begin
  dmSocket.registTime(aDate);
end;

procedure TfmDeviceSetting.RecvDeviceTime(aECUID, aTime: string);
begin
  st_Time.Caption := strToTimeFormat(aTime);
  st_Time.Color := clYellow;
end;

procedure TfmDeviceSetting.btn_TimeSearchClick(Sender: TObject);
begin
  st_Time.Color := clWhite;
  st_Time.Caption := '';
  dmSocket.TimeCheck;
end;

procedure TfmDeviceSetting.Edit_LocateChange(Sender: TObject);
begin
  L_bSettingChanged := True;
end;

procedure TfmDeviceSetting.MCUControlEnable(aValue: Boolean);
begin
  ed_mcid.Enabled := aValue;
  lvECU.Enabled := aValue;
  Edit_IP.Enabled := aValue;
  Edit_subnet.Enabled := aValue;
  edit_Gateway.Enabled := aValue;
  edit_port.Enabled := aValue;
  ed_server.Enabled := aValue;
  ed_ServerPort.Enabled := aValue;
  Rg_Mode.Enabled := aValue;
  chk_DHCP.Enabled := aValue;

end;

procedure TfmDeviceSetting.SystemControlEnable(aValue: Boolean);
begin
  ComboBox_WatchPowerOff.Enabled := aValue;
  ComboBox_DoorType1.Enabled := aValue;
  ComboBox_DoorType2.Enabled := aValue;
  Edit_Locate.Enabled := aValue;
end;

procedure TfmDeviceSetting.LockControlEnable(aValue: Boolean);
begin
  Door1Enable(aValue);
  Door2Enable(aValue);
end;

procedure TfmDeviceSetting.Door1Enable(aValue: Boolean);
begin
  if Not L_bZoneDoor[1] then aValue := False;
  ComboBox_CardModeType1.Enabled := aValue;
  ComboBox_DoorModeType1.Enabled := aValue;
  cmb_DoorControlTime1.Enabled := aValue;
  SpinEdit_OpenMoni1.Enabled := aValue;
  ComboBox_SendDoorStatus1.Enabled := aValue;
  ComboBox_AlarmLongOpen1.Enabled := aValue;
  ComboBox_ControlFire1.Enabled := aValue;
  ComboBox_LockType1.Enabled := aValue;
  cmb_DsOpenState1.Enabled := aValue;
  cmb_RemoteDoorOpen1.Enabled := aValue;
end;

procedure TfmDeviceSetting.Door2Enable(aValue: Boolean);
begin
  if Not L_bZoneDoor[2] then aValue := False;
  ComboBox_CardModeType2.Enabled := aValue;
  ComboBox_DoorModeType2.Enabled := aValue;
  cmb_DoorControlTime2.Enabled := aValue;
  SpinEdit_OpenMoni2.Enabled := aValue;
  ComboBox_SendDoorStatus2.Enabled := aValue;
  ComboBox_AlarmLongOpen2.Enabled := aValue;
  ComboBox_ControlFire2.Enabled := aValue;
  ComboBox_LockType2.Enabled := aValue;
  cmb_DsOpenState2.Enabled := aValue;
  cmb_RemoteDoorOpen2.Enabled := aValue;
end;

procedure TfmDeviceSetting.ReaderControlEnable(aValue: Boolean);
var
  i : integer;
  cmb_box:TCombobox;
  spinEdit : TSpinEdit;
begin
  cb_CardType.Enabled := aValue;
  for i:=1 to G_nCardReaderNumber do
  begin
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderUse',i);
    if cmb_Box <> nil then cmb_Box.Enabled := aValue;
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoor',i);
    if cmb_Box <> nil then cmb_Box.Enabled := aValue;
    spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',i);
    if spinEdit <> nil then spinEdit.Enabled := aValue;
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderDoorLocate',i);
    if cmb_Box <> nil then cmb_Box.Enabled := aValue;
    cmb_Box := TravelComboBoxItem(gb_CardReader,'cmb_ReaderBuildingLocate',i);
    if cmb_Box <> nil then cmb_Box.Enabled := aValue;
  end;
end;

procedure TfmDeviceSetting.ZoneControlEnable(aValue: Boolean);
var
  i : integer;
  cmb_box:TCombobox;
begin
  for i:=1 to G_nPortNumber do
  begin
    cmb_Box := GetPortComboBox(i,'cmb_WatchType');
    if cmb_Box <> nil then cmb_Box.Enabled := aValue;
    cmb_Box := GetPortComboBox(i,'cmb_WatchDelay');
    if cmb_Box <> nil then cmb_Box.Enabled := aValue;
    cmb_Box := GetPortComboBox(i,'cmb_recorver');
    if cmb_Box <> nil then cmb_Box.Enabled := aValue;
  end;

end;

procedure TfmDeviceSetting.ComboBox_LockType2Enter(Sender: TObject);
begin
//  ComboBox_LockType2.Width := 200;
end;

procedure TfmDeviceSetting.ComboBox_LockType2Exit(Sender: TObject);
begin
//  ComboBox_LockType2.Width := 129;

end;

procedure TfmDeviceSetting.ComboBox_LockType1Exit(Sender: TObject);
begin
//  ComboBox_LockType1.Width := 129;

end;

procedure TfmDeviceSetting.ComboBox_LockType1Enter(Sender: TObject);
begin
//  ComboBox_LockType1.Width := 200;

end;

procedure TfmDeviceSetting.chk_CdmaClick(Sender: TObject);
begin
  pan_cdma.Visible := chk_Cdma.Checked;
end;

function TfmDeviceSetting.CCCInfoSearch: Boolean;
var
  i : integer;
begin
  Form_CCCInfo_ColorInitialize;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CdmaUseCheck;
    if result then Break;
  end;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CCCInfoCheck;
    if result then Break;
  end;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CCCTimeIntervalCheck;
    if result then Break;
  end;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CCCStartTimeCheck;
    if result then Break;
  end;

end;

procedure TfmDeviceSetting.Form_CCCInfo_ColorInitialize;
begin
  ed_cccip.Color := clWhite;
  ed_cccport.Color := clWhite;
  ed_cccTimeInterval.Color := clWhite;
  ed_cccStartTime.Color := clWhite;
  gb_cdma.Color := clBtnFace;
end;

procedure TfmDeviceSetting.CDMASetting(aEcuID, aData: string);
begin
  if aData = '1' then
  begin
    chk_Cdma.Checked := True;
    pan_cdma.Visible := True;
  end else
  begin
    chk_Cdma.Checked := False;
    pan_cdma.Visible := False;
  end;
end;

procedure TfmDeviceSetting.CCCInfoSetting(aEcuID, aIP, aPort: string);
begin
  ed_cccip.Text := aIP;
  ed_cccport.Text := aPort;

  //ed_cccip.Color := clYellow;
  //ed_cccport.Color := clYellow;
  gb_cdma.Color := clYellow;
end;

procedure TfmDeviceSetting.CCCTimeInterval(aEcuID, aTime: string);
begin
  ed_cccTimeInterval.text := aTime;
  //ed_cccTimeInterval.Color := clYellow;
end;

procedure TfmDeviceSetting.CCCStartTime(aEcuID, aTime: string);
begin
  ed_cccStartTime.text := aTime;
  //ed_cccStartTime.Color := clYellow;

end;

function TfmDeviceSetting.RegistCCCInfo: Boolean;
var
  i : integer;
  stIP : string;
  stPort : string;
begin
  Form_CCCInfo_ColorInitialize;
  stIP := '0.0.0.0';
  stPort := '0';
  ed_cccTimeInterval.Text := '30';
  
  if Not IsDigit(ed_cccTimeInterval.Text) then
  begin
    showmessage('���ùߺ� �ð��� ���ڷ� �Է� �ϼž� �մϴ�.');
    Exit;
  end;
  if Not IsDigit(ed_cccStartTime.Text) then
  begin
    showmessage('���ùߺ� �ǽ� �ð��� ���ڷ� �Է� �ϼž� �մϴ�.');
    Exit;
  end;
  if chk_Cdma.Checked then
  begin
    stIP := ed_cccip.Text;
    stPort := ed_cccport.Text;
    if Not CheckIPType(stIP,True) then
    begin
      showmessage('IP Ÿ���� �߸� �Ǿ����ϴ�.');
      Exit;
    end;
    if Not Isdigit(stPort) then
    begin
      showmessage('Port Ÿ���� �߸� �Ǿ����ϴ�.');
      Exit;
    end;

    for i := 0 to G_nLoopCount do
    begin
      if G_bApplicationTerminate then Exit;
      result := dmSocket.CCCInfoRegist(stIP,stPort);
      if result then Break;
    end;
  end;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    if chk_Cdma.Checked then
      result := dmSocket.CdmaUseRegist('1')
    else result := dmSocket.CdmaUseRegist('0');
    if result then Break;
  end;


  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CCCTimeIntervalRegist(FillZeroNumber(strtoint(ed_cccTimeInterval.Text),5));
    if result then Break;
  end;

  for i := 0 to G_nLoopCount do
  begin
    if G_bApplicationTerminate then Exit;
    result := dmSocket.CCCStartTimeRegist(FillZeroNumber(strtoint(ed_cccStartTime.Text),5));
    if result then Break;
  end;
end;

procedure TfmDeviceSetting.btn_MacSearchClick(Sender: TObject);
begin
  editMAC1.Color:= clWhite;
  editMAC2.Color:= clWhite;
  editMAC3.Color:= clWhite;
  editMAC4.Color:= clWhite;
  editMAC5.Color:= clWhite;
  editMAC6.Color:= clWhite;
  dmSocket.MacSearch;
end;

procedure TfmDeviceSetting.btnRegMACClick(Sender: TObject);
var
  aData: string;
  DeviceID: String;
  stMac: String;
begin
  editMAC1.Color:= clWhite;
  editMAC2.Color:= clWhite;
  editMAC3.Color:= clWhite;
  editMAC4.Color:= clWhite;
  editMAC5.Color:= clWhite;
  editMAC6.Color:= clWhite;

  if editMAC1.Text = '' then editMAC1.Text:= '00';
  if editMAC2.Text = '' then editMAC2.Text:= '00';
  if editMAC3.Text = '' then editMAC3.Text:= '00';
  if editMAC4.Text = '' then editMAC4.Text:= '00';
  if editMAC5.Text = '' then editMAC5.Text:= '00';
  if editMAC6.Text = '' then editMAC6.Text:= '00';

  if Length(editMAC1.Text) < 2 then editMAC1.Text:= '0' + editMAC1.Text;
  if Length(editMAC2.Text) < 2 then editMAC2.Text:= '0' + editMAC2.Text;
  if Length(editMAC3.Text) < 2 then editMAC3.Text:= '0' + editMAC3.Text;
  if Length(editMAC4.Text) < 2 then editMAC4.Text:= '0' + editMAC4.Text;
  if Length(editMAC5.Text) < 2 then editMAC5.Text:= '0' + editMAC5.Text;
  if Length(editMAC6.Text) < 2 then editMAC6.Text:= '0' + editMAC6.Text;
  stMac:= editMAC1.Text + editMAC2.Text + editMAC3.Text +
        editMAC4.Text + editMAC5.Text + editMAC6.Text;

  dmSocket.RegistMacAddress(stMac);

  Delay(1000);

  dmSocket.MacSearch;
end;

procedure TfmDeviceSetting.deviceLoadTimerTimer(Sender: TObject);
begin
  if Not L_bDeviceLoadTime then Exit;
  if Not L_bDeviceLoad then
  begin
    deviceLoadTimer.Enabled := False;
    L_bDeviceLoadTime := False;
    DeviceLoad;
    self.FindSubForm('Main').FindCommand('SettingChange').Params.Values['VALUE'] := 'DeviceChange';
    self.FindSubForm('Main').FindCommand('SettingChange').Execute;
    deviceLoadTimer.Enabled := True;
  end;
end;

procedure TfmDeviceSetting.ReaderDoorNoMinValueSetting(aValue: integer);
var
  i : integer;
  spinEdit : TSpinEdit;
begin
    for i:=1 to G_nCardReaderNumber do
    begin
      spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',i);
      if spinEdit <> nil then
      begin
        spinEdit.MinValue := aValue;
        if spinEdit.Value < aValue then spinEdit.Value := aValue;
      end;
    end;

end;

procedure TfmDeviceSetting.ReaderDoorNoMaxValueSetting(aValue: integer);
var
  i : integer;
  spinEdit : TSpinEdit;
begin
    for i:=1 to G_nCardReaderNumber do
    begin
      spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',i);
      if spinEdit <> nil then
      begin
        spinEdit.MaxValue := aValue;
        if spinEdit.Value > aValue then spinEdit.Value := aValue;
      end;
    end;

end;

procedure TfmDeviceSetting.ReaderDoorNoEnable(aValue: Boolean);
var
  i : integer;
  spinEdit : TSpinEdit;
begin
    for i:=1 to G_nCardReaderNumber do
    begin
      spinEdit := TravelSpinEditItem(gb_CardReader,'se_ReaderDoor',i);
      if spinEdit <> nil then
      begin
        spinEdit.Enabled := aValue;
      end;
    end;

end;

procedure TfmDeviceSetting.ZoneWatchDelayLoad;
var
  nPort : integer;
  cmb_Box : TComboBox;
begin
  for nPort := 1 to G_nPortNumber do
  begin
    cmb_Box := GetPortComboBox(nPort,'cmb_WatchDelay');

    if cmb_Box = nil then continue;
    cmb_Box.Items.Clear;
    cmb_Box.Items.Add('�̻��');
    cmb_Box.Items.Add('���');
    if cmb_Box.Items.Count > 0 then
    begin
      cmb_Box.ItemIndex := 0;
    end;
  end;
end;

procedure TfmDeviceSetting.SpinEdit_OutDelayChange(Sender: TObject);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'OUT_DELAY',inttostr(SpinEdit_OutDelay.IntValue));

end;

procedure TfmDeviceSetting.SpinEdit_InDelayChange(Sender: TObject);
begin
  dmDataBase.UpdateTB_DEVICE_FieldName(L_stSelectEcuID,'IN_DELAY',inttostr(SpinEdit_InDelay.IntValue));

end;

procedure TfmDeviceSetting.btnCloseClick(Sender: TObject);
begin
  gb_EcuAdd.Visible := False;
end;

procedure TfmDeviceSetting.btnAddClick(Sender: TObject);
var
  nEcuNo : integer;
  i : integer;
begin
  nEcuNo:= seDeviceNo.IntValue;
  if chk_All.Checked then
  begin
    for i := 0 to nEcuNo do
    begin
      dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(i,2),'DEVICEUSE','Y');
      dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(i,2),'DEVICE_TYPE',inttostr(cbDeviceType.ItemIndex + 1));
    end;
    for i := nEcuNo + 1 to MAXECUCOUNT do
    begin
      dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(i,2),'DEVICEUSE','N');
    end;
  end else
  begin
      dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(nEcuNo,2),'DEVICEUSE','Y');
      dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(nEcuNo,2),'DEVICE_TYPE',inttostr(cbDeviceType.ItemIndex + 1));
  end;
  gb_EcuAdd.Visible := False;
  DeviceLoad;
end;

procedure TfmDeviceSetting.btnECUAddClick(Sender: TObject);
begin
  gb_EcuAdd.Visible := True;

end;

procedure TfmDeviceSetting.lvECUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  aIndex: Integer;
  stECUID,st : string;
begin
  if Key  = VK_DELETE then
  begin
    if lvECU.Selected <> nil then
    begin
      if lvECU.Selected.Index < 0 then Exit;
      aIndex:= lvECU.Selected.Index;
      stECUID := lvECU.Selected.Caption;
      ECUList.Delete(ECUList.IndexOf(stECUID));
      dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(strtoint(stECUID),2),'DEVICEUSE','N');
      lvECU.Selected.Delete;
    end;
    if aIndex >= lvECU.Items.Count then aIndex := lvECU.Items.Count - 1;
    DeviceLoad(aIndex);
  end;

end;

procedure TfmDeviceSetting.btnECUEraseClick(Sender: TObject);
var
  stECUID,st : string;
  nIndex : integer;
begin
  nIndex:= -1;
  if lvECU.Selected = nil then
  begin
    lvECU.SetFocus;
    if lvECU.Items.Count > 0 then lvECU.Items[0].Selected:= True;
    Exit;
  end else
  begin
    if lvECU.Selected.Index < 0 then Exit;
    nIndex:= lvECU.Selected.Index;
    stECUID := lvECU.Selected.Caption;
    ECUList.Delete(ECUList.IndexOf(stECUID));
    dmDataBase.UpdateTB_DEVICE_FieldName(FillZeroNumber(strtoint(stECUID),2),'DEVICEUSE','N');
    lvECU.Selected.Delete;
  end;
  if nIndex >= lvECU.Items.Count then nIndex := lvECU.Items.Count -1;
  DeviceLoad(nIndex);

  lvECU.SetFocus;
end;

procedure TfmDeviceSetting.NodeReaderAdd(aEcuID: string; aNode: TTreeNode;
  aDoorNo: string);
var
  bNode : TTreeNode;
begin
  with dmDataBase.TB_DEVICE do
  begin
    if FindKey([aEcuID]) then
    begin
      if FindField('READER1_USE').AsString = '1' then
      begin
        if FindField('READER1_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��1');
          if FindField('READER1_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;
      if FindField('READER2_USE').AsString = '1' then
      begin
        if FindField('READER2_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��2');
          if FindField('READER2_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;
      if FindField('READER3_USE').AsString = '1' then
      begin
        if FindField('READER3_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��3');
          if FindField('READER3_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;
      if FindField('READER4_USE').AsString = '1' then
      begin
        if FindField('READER4_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��4');
          if FindField('READER4_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;
      if FindField('READER5_USE').AsString = '1' then
      begin
        if FindField('READER5_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��5');
          if FindField('READER5_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;
      if FindField('READER6_USE').AsString = '1' then
      begin
        if FindField('READER6_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��6');
          if FindField('READER6_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;
      if FindField('READER7_USE').AsString = '1' then
      begin
        if FindField('READER7_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��7');
          if FindField('READER7_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;
      if FindField('READER8_USE').AsString = '1' then
      begin
        if FindField('READER8_DOOR').AsString = aDoorNo then
        begin
          bNode:= TreeView_Device.Items.AddChild(aNode,aEcuID + ':ī�帮��8');
          if FindField('READER8_VER').AsString = 'NF' then
          begin
            bNode.ImageIndex:=11;
            bNode.SelectedIndex:=11;
          end else
          begin
            bNode.ImageIndex:=10;
            bNode.SelectedIndex:=10;
          end;
        end;
      end;


    end;
  end;

end;

procedure TfmDeviceSetting.CurrentDeviceView;
var
  aTreeView   : TTreeview;
  aNode,bNode,cNode : TTreeNode;
begin

  if L_bDeviceLoad then Exit;

  Try
    L_bDeviceLoad := True;

    aTreeView := TreeView_Device;
    aTreeView.ReadOnly:= True;
    aTreeView.Items.Clear;
    EcuList.Clear;

    aNode:= aTreeView.Items.Add(nil,'Controller');
    aNode.ImageIndex:=0;
    aNode.SelectedIndex:=0;

    with dmDataBase.TB_DEVICE do
    begin
      First;
      while Not Eof do
      begin
        if FindField('DEVICEUSE').AsString = 'Y' then
        begin
          EcuList.Add(FindField('ECU_ID').AsString);
          G_stDeviceType[strtoint(FindField('ECU_ID').AsString)] := FindField('DEVICE_TYPE').AsString;
          if FindField('ECU_ID').AsString <> '00' then
          begin
            aList:= lvECU.Items.Add;
            aList.Caption:= FindField('ECU_ID').AsString; //��� ��ȣ
            aList.ImageIndex:= -1;
            aList.SubItems.Add(DeviceTypeNameList.Strings[strtoint(FindField('DEVICE_TYPE').AsString)]);
          end;
          bNode:= aTreeView.Items.AddChild(aNode,FindField('ECU_ID').AsString);
          if dmSocket.DeviceConnectCheck(FindField('ECU_ID').AsString) then
          begin
            bNode.ImageIndex:=1;
            bNode.SelectedIndex:=1;
          end else
          begin
            bNode.ImageIndex:=2;
            bNode.SelectedIndex:=2;
          end;
          bNode.StateIndex:= -1;
          cNode:= aTreeView.Items.AddChild(bNode,FindField('ECU_ID').AsString + ':���');
          if UpperCase(FindField('LASTARMMODE').AsString) = 'A' then
          begin
            cNode.ImageIndex:=3;
            cNode.SelectedIndex:=3;
          end else if UpperCase(FindField('LASTARMMODE').AsString) = 'D' then
          begin
            cNode.ImageIndex:=4;
            cNode.SelectedIndex:=4;
          end else
          begin
            cNode.ImageIndex:=9;
            cNode.SelectedIndex:=9;
          end;
          NodeReaderAdd(FindField('ECU_ID').AsString,cNode,'0');

          if FindField('DOOR_TYPE1').AsString <> '0' then  //��������� �ƴϸ�
          begin
            cNode:= aTreeView.Items.AddChild(bNode,FindField('ECU_ID').AsString + ':���Թ�1');
            if UpperCase(FindField('DOORMODE_TYPE1').AsString) = '1' then //������
            begin
              if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'C' then
              begin
                cNode.ImageIndex:=5;
                cNode.SelectedIndex:=5;
              end else if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'O' then
              begin
                cNode.ImageIndex:=6;
                cNode.SelectedIndex:=6;
              end else
              begin
                cNode.ImageIndex:=9;
                cNode.SelectedIndex:=9;
              end;
            end else if UpperCase(FindField('DOORMODE_TYPE1').AsString) = '0' then
            begin
              if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'C' then
              begin
                cNode.ImageIndex:=7;
                cNode.SelectedIndex:=7;
              end else if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'O' then
              begin
                cNode.ImageIndex:=8;
                cNode.SelectedIndex:=8;
              end else
              begin
                cNode.ImageIndex:=9;
                cNode.SelectedIndex:=9;
              end;
            end else
            begin
              cNode.ImageIndex:=9;
              cNode.SelectedIndex:=9;
            end;
            NodeReaderAdd(FindField('ECU_ID').AsString,cNode,'1');
          End;

          if FindField('DOOR_TYPE2').AsString <> '0' then  //��������� �ƴϸ�
          begin
            cNode:= aTreeView.Items.AddChild(bNode,FindField('ECU_ID').AsString + ':���Թ�2');
            if UpperCase(FindField('DOORMODE_TYPE2').AsString) = '1' then //������
            begin
              if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'C' then
              begin
                cNode.ImageIndex:=5;
                cNode.SelectedIndex:=5;
              end else if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'O' then
              begin
                cNode.ImageIndex:=6;
                cNode.SelectedIndex:=6;
              end else
              begin
                cNode.ImageIndex:=9;
                cNode.SelectedIndex:=9;
              end;
            end else if UpperCase(FindField('DOORMODE_TYPE2').AsString) = '0' then
            begin
              if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'C' then
              begin
                cNode.ImageIndex:=7;
                cNode.SelectedIndex:=7;
              end else if UpperCase(FindField('LASTDOOR1STATE').AsString) = 'O' then
              begin
                cNode.ImageIndex:=8;
                cNode.SelectedIndex:=8;
              end else
              begin
                cNode.ImageIndex:=9;
                cNode.SelectedIndex:=9;
              end;
            end else
            begin
              cNode.ImageIndex:=9;
              cNode.SelectedIndex:=9;
            end;
            NodeReaderAdd(FindField('ECU_ID').AsString,cNode,'2');
          End;

          aNode.Expanded := True;
        end else
        begin
        end;
        Next;
      end;
      if TreeView_Device.Items.Count > 1 then
        TreeView_Device.Selected := TreeView_Device.Items[1];
      TreeView_DeviceClick(TreeView_Device);
    end;
  Finally
    L_bDeviceLoad := False;
  End;
end;

initialization
  RegisterClass(TfmDeviceSetting);
Finalization
  UnRegisterClass(TfmDeviceSetting);

end.