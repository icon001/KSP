unit uCommon;

interface

uses
  SysUtils, Classes, DB, dbisamtb,Windows,Forms;



const
  SOH = #$1;
  STX = #$2;
  ETX = #$3;
  ENQ = #$5;
  ACK = #$6;
  NAK = #$15;
  EOT = #$04;
  TAB = #$09;
  HexString : String = '0123456789ABCDEF';

const PORTOPENFAIL = -1;
const PORTCONNECTFAIL = 0;
const PORTCONNECTED = 1;
const
  DELAYTIME = 3000;
  USEDDEVICE = 16;
  BROADSERVERPORT = 5001;
  BROADCLIENTPORT = 1460;
  TCPCLIENTPORT = 1461;
  TCPCLIENTKTTPORT = 4101;
  MAX_COMPORT = 35;
  FIXMAXECUNO = 63;    //최대 확장기 갯수
  FIXMAXDOORNO = 8;    //출입문 최대 갯수
  FIXMAXREADERNO = 8;  //카드리더 최대 갯수
  FIXMAXZONEEXTENDNO = 8; //존확장기 최대갯수
  FIXMAXZONENO = 8;    //기기별 최대 존 갯수
  FIXARMAREANO = 8;    //방범구역 최대 갯수

const MCUNAME = 'MCU-100';
      ECUNAME = 'ECU-100';
      ICUNAME = 'ICU-100';
const ECUTYPE = 'ECU';
      ICUTYPE = 'ICU';
//DeviceType
const NONETYPE = '0';
      KTT811 = '1';
      KTT812 = '2';
      KTT813 = '7';
      ICU100 = '3';
      ICU200 = '4';
      ICU300 = '5';
      ACC100 = '6'; //출입전용
      SGS100 = '8'; //SG 4Door
      ICU310 = '9';
//CARDType
const
  NOTHINGTYPE = '0';
  AUTOKT811 = '1'; //무인국사
  COMMON811 = '2'; //범용
  KT811     = '3'; //KT사옥용
  UNIVER811 = '4'; //대학교용
  MERGECARD = '5'; //통합 16자리
  SERVERCARD = '6'; //서버 제어용
  CNU811 = '7'; //충남대용

const
  KTT812FirmwareHeader = '0100AA';
  KTT812PAGESIZE = 128;


type CString = string[100];

type
  TZoneStatus = Class(TComponent)
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
    FOnParentStatus: string;
    FOnStatusCode: string;
    FOnStatusName: string;
    procedure SetParentStatus(const Value: string);
    procedure SetStatusCode(const Value: string);
    procedure SetStatusName(const Value: string);
  published
    property ParentStatus:string Read FOnParentStatus write SetParentStatus;
    property StatusCode:string Read FOnStatusCode write SetStatusCode;
    property StatusName:string Read FOnStatusName write SetStatusName;
  end;

type
  TPanelMessage = procedure(Sender: TObject;  aMessage:string) of object; //메시지 전송 폼
  TNodeConnect = procedure(Sender: TObject;  aConnected:Boolean) of object; //
  TECUConnect = procedure(Sender: TObject; aEcuID:string; aConnected:Boolean) of object;
  TPacketView = procedure(Sender: TObject;  aSendingData,aType:string) of object;
  TReceivePacket = procedure(Sender: TObject;  aReceiveData:string) of object;
  TServerModeConnect = procedure(Sender:TObject) of object;
  //알람이벤트
  TAlarmEvent = procedure(Sender: TObject;  aECUID,aCmd,aTime,aSubCLass,aSubAddr,aZone,
                          aMode,aStatus,aLoop,aState,aOper:string) of object;
  //등록 이벤트
  TDeviceIDSetting = procedure(Sender: TObject;  aECUID,aDeviceID:string) of object;
  TCardReaderSetting = procedure(Sender: TObject;  aECUID,aReaderNo,aUsedCR,
                       aCRPosition,aDoorNo,aReaderArmArea,aLocate,aBuildingPosi:string) of object;
  TSystemSetting = procedure(Sender: TObject;  aECUID,aPowerWatch,aOutDelay,
                       aDoor1Type,aDoor2Type,aLocate,aInDelay,aLockExtend:string) of object;
  TLampSirenOnOff = procedure(Sender: TObject;  aECUID,stLampOnOff,aSirenOnOff:string) of object;
  TLampTime = procedure(Sender: TObject;  aECUID,aLampTime:string) of object;
  TSirenTime = procedure(Sender: TObject;  aECUID,aSirenTime:string) of object;
  TPortSetting = procedure(Sender: TObject;  aECUID,aPort,aWatchType,aAlarmType,
                          aRecoverType,aDelayTimeType,aPortLocate,aDetectTime,aZoneArmArea,aZoneUsed:string) of object;
  TDeviceUsedSetting = procedure(Sender: TObject;  aECUID,aDeviceUsed:string) of object;
  TWiznetInfoSetting = procedure(Sender: TObject;  aECUID,aHeader,aMacAddress,aMode,
                          aIPAddress,aSubnet,aGateway,aClientPort,aServerIP,aServerPort,
                          aSerial_Baud,aSerial_data,aSerial_Parity,aSerial_stop,
                          aSerial_flow,aDelimiterChar,aDelimiterSize,aDelimitertime,
                          aDelimiterIdle,aDebugMode,aROMVer,aOnDHCP,aReserve:string) of object;
  TCardReaderTypeSetting = procedure(Sender: TObject;  aECUID,aCardReaderType:string) of object;
  TDeviceState = procedure(Sender: TObject;  aECUID,aCmd,aData:string) of object;
  TCCCSetting = procedure(Sender:TObject; aEcuID,aData:String) of object;
  //원격제어
  TDeviceTime = procedure(Sender: TObject;  aECUID,aTime:string) of object;
  TDeviceType = procedure(Sender: TObject;  aECUID,aDeviceType:string) of object;
  TSystemFunction = procedure(Sender: TObject;  aECUID:string;
                          aJavaraCloseCommand,aJavaraOpenCommand,aFireServerCommand:Boolean) of object;
  TDeviceVersion = procedure(Sender: TObject;  aECUID,aDeviceVersion:string) of object;
  TCardReaderVersion = procedure(Sender: TObject;  aECUID,aCardReaderNo,aCardReaderVersion:string) of object;
  TDeviceReset = procedure(Sender: TObject;  aECUID:string) of object;
  TCardListSearch = procedure(Sender: TObject;  aECUID,aData:string) of object;
  TEcuState = procedure(Sender: TObject;  aECUID,aData:string) of object;
  TCardGrade = procedure(Sender:TObject; aEcuID,aData:string) of object;
  TRemoteControl = procedure(Sender:TObject; aEcuID,aData:string) of object;
  //출입통제이벤트
  TCardAccessEvent = procedure(Sender: TObject;  aECUID,aDoorNo,aReaderNo,aInOut,aTime,
                          aCardMode,aDoorMode,aChangeState,aAccessResult,aDoorState,
                          aATButton,stCardNo:string) of object;
  TDoorEvent = procedure(Sender: TObject;  aECUID,aDoorNo,aReaderNo,aInOut,aTime,
                          aCardMode,aDoorMode,aChangeState,aAccessResult,aDoorState:string) of object;
  TDoorSettingEvent = procedure(Sender: TObject;  aECUID,aDoorNo,aCardMode,aDoorMode,
                          aDoorControlTime,aLongDoorOpenTime,aSchedule,aDoorState,
                          aNetFailRun,aAntiPass,aLongDoorOpenUse,aNetFailAlarm,
                          aDoorLockType,aFireDoorControl,aLockState,aDoorOpenState,
                          aRemoteDoorOpen:string) of object;
  TDoorState  = procedure(Sender: TObject;  aECUID,aDoorNo,aCardMode,aDoorMode,aDoorState,aDoorSchedule:string) of object;
  TCardRegist  = procedure(Sender: TObject;  aECUID,aDoorNo,aCmdState,aCardType,
                          aCardNo,aExpireDate,aRegResult,aCardAuth,aTimeMode,
                          aCardIDNo,aAlarmAreaGrade,aDoorAreaGrade:string) of object;
  TScheduleSetting = procedure(Sender: TObject;  aECUID,aDoorNo,aCmd,aDayOfWeek,a1ModeTime,a1Mode,
                          a2ModeTime,a2Mode,a3ModeTime,a3Mode,a4ModeTime,a4Mode,
                          a5ModeTime,a5Mode:string) of object;
  THolidaySetting = procedure(Sender: TObject;  aECUID,aDoorNo,aMonth,aDate:string) of object;
 
  TDoorDSState = (dsNothing,dsClose,dsOpen,dsLongTime,dsOpenErr,dsCloseErr);        //열림/닫힘 상태
  TDoorLockState = (lsNothing,lsClose,lsOpen);        //잠김/열림 상태
  TDoorManageMode = (dmNothing,dmManager,dmOpen,dmLock);   //운영/개방 모드 /폐쇄
  TDoorPNMode = (pnNothing,pnPositive,pnNegative);   //Positive/Negative 상태
  TWatchMode = (cmNothing,cmArm, cmDisarm,cmPatrol,cmInit,cmTest);
  TDeviceChange = procedure(Sender: TObject;aEcuID,aNo:string;aValue:Boolean) of object; //이벤트 변경

  TdmCommon = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  dmCommon: TdmCommon;
  DeviceTypeNameList : TStringList;
  DeviceList : TStringList;
  //전문 생성
  RecvMsgNo : string; //수신메시지번호
  SendMsgNo : integer = 0; //송신메시지번호

  // KT-TELECOP 용과 S-TEC 용 구분하기 위함
  {
  G_nIDLength : integer = 17;
  G_stDeviceVer : string = 'ST'; //전문 버젼 정보
  G_nProgramType : integer = 1; //0 : KTTelecop,1:S-TEC
  G_nCardType : integer = 2;  // 0: 4Byte 숫자,1:KT사옥,2:대학교
  G_nHolidayCount : integer =  5;
  }
  //{
  G_nIDLength : integer = 7;
  G_stDeviceVer : string = 'K1'; //전문 버젼 정보
  G_nProgramType : integer = 0; //0 : KTTelecop,1:S-TEC
  G_nCardType : integer = 0;  // 0: 4Byte 숫자,1:KT사옥,2:대학교
  G_nHolidayCount : integer =  5;
  G_nMaxCardPositionNum : integer = 0; //가장 큰 위치번호
  //}
  G_nDelayTime : integer = 1000;  //기기전송 후 대기 시간
  G_stTCPConf : string;    //TCPIP,TCPPort
  G_nComPort : integer;    //시리얼 포트
  G_nLoopCount : integer ; //에러 대기 횟수
  G_nLANTime : integer;
  G_nLANLoop : integer;
  G_nConnectMode : Integer; //0:TCP,1:RS232
  G_nServerMode : integer;  //0:클라이언트모드 1:서버모드
  G_bDeviceConnected : Boolean; //기기 연결 상태

  G_bDeviceSearch : Boolean;  //기기선택시 기기정보 조회
  G_bRealRegist : Boolean;    //실시간 기기 등록
  G_bMacView : Boolean = True;    //실시간 기기 등록
  G_bEventControlerSave : Boolean;    //실시간 기기 등록
  G_bDirectConnect : Boolean;         //통신 연결시 바로 접속
  G_bIntercept : Boolean;
  G_stSelectEcuID : string; //현재 선택된 ECUID

  G_nCardReaderNumber :integer = 8; //카드리더 갯수
  G_nPortNumber :integer = 8; //존 갯수
  //G_nDoorNumber :integer = 8; //출입문 갯수

  G_bFireDevice: Array [0..100] of Boolean;     //화재발생기기
  G_bCardReaderUse: Array [0..8] of Boolean;  //카드리더 사용 유무 체크

  ZoneStatusList : TStringList; //존구분 리스트
  ZoneStatusCodeList : TStringList; //존상태 코드 리스트

  G_bApplicationTerminate : Boolean; //Application 종료 여부

  G_nMCMode : integer;
  G_b812MainFirmWareDownloadComplete : boolean; //812 메인 펌웨어 다운로드 완료 유무
  G_nSearchType : integer; //0:기본조회,1:확장조회

  G_nMaxEcuCount : integer = 63;

//{$DEFINE DEBUG}


implementation

{$R *.dfm}

{ TZoneStatus }

constructor TZoneStatus.Create(AOwner: TComponent);
begin
  inherited;
//
end;

destructor TZoneStatus.Destroy;
begin
//
  inherited;
end;

procedure TZoneStatus.SetParentStatus(const Value: string);
begin
  FOnParentStatus := Value;
end;

procedure TZoneStatus.SetStatusCode(const Value: string);
begin
  FOnStatusCode := Value;
end;

procedure TZoneStatus.SetStatusName(const Value: string);
begin
  FOnStatusName := Value;
end;

end.
