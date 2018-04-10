unit uCardReaderVersion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, Buttons, ExtCtrls, AdvPanel, RzButton,
  uSubForm, CommandArray, AdvObj;

type
  TfmCardReaderVersion = class(TfmASubForm)
    AdvPanel1: TAdvPanel;
    sg_DeviceVer: TAdvStringGrid;
    btnClose: TRzBitBtn;
    btn_csvSave: TRzBitBtn;
    SaveDialog1: TSaveDialog;
    pan_Message: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    SearchTimer1: TTimer;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_csvSaveClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SearchTimer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CardReaderVersionCheck;
    procedure CardReaderVersionSearch;
    procedure CardReaderUseCheck;
  end;

var
  fmCardReaderVersion: TfmCardReaderVersion;

implementation

uses
  uCommon,
  uUtil,
  dllFunction,
  uSocket,
  uMain, udmDataBase;

{$R *.dfm}

procedure TfmCardReaderVersion.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TfmCardReaderVersion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmMain.L_bCardReaderVersionShow := False;
  Action := caFree;
end;

procedure TfmCardReaderVersion.FormActivate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  SearchTimer1.Enabled := True;
end;

procedure TfmCardReaderVersion.FormShow(Sender: TObject);
begin
  inherited;
  fmMain.L_bCardReaderVersionShow := True;

end;

procedure TfmCardReaderVersion.btn_csvSaveClick(Sender: TObject);
var
  aFileName: String;
  sDate: String;
  eDate: String;
begin
  Screen.Cursor:= crHourGlass;
  aFileName:='카드리더 버젼정보';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    sg_DeviceVer.SaveToCSV(SaveDialog1.FileName);
  end;
  Screen.Cursor:= crDefault; 
end;

procedure TfmCardReaderVersion.CardReaderVersionSearch;
var
  i : integer;
  j : integer;
begin
  GridInitialize(sg_DeviceVer);
  for i := 0 to DeviceList.Count - 1 do
  begin
    for j := 1 to TCurrentDeviceState(DeviceList.Objects[i]).MaxReaderNo do
    begin
      if TCurrentDeviceState(DeviceList.Objects[i]).GetReaderUse(j) then
      begin
        sg_DeviceVer.InsertRows(sg_DeviceVer.RowCount-1,1);
        sg_DeviceVer.Cells[0,sg_DeviceVer.RowCount-2] := DeviceList.Strings[i];
        sg_DeviceVer.Cells[1,sg_DeviceVer.RowCount-2] := FillZeroNumber(j,2);
        sg_DeviceVer.Cells[2,sg_DeviceVer.RowCount-2] := TCurrentDeviceState(DeviceList.Objects[i]).GetReaderVersion(j);
      end;
    end;
  end;
  if sg_DeviceVer.RowCount > 2 then sg_Devicever.RemoveRows(sg_DeviceVer.RowCount-1,1);
end;

procedure TfmCardReaderVersion.CardReaderUseCheck;
var
  i,j,k : integer;
  bResult : Boolean;
begin
  Try
    pan_Message.Visible := True;
    pan_Message.Color := clYellow;
    for i := 0 to DeviceList.Count - 1 do
    begin
      for j := 1 to TCurrentDeviceState(DeviceList.Objects[i]).MaxReaderNo do
      begin
        if dmDataBase.GetTB_READERSETTINGRCV_Value(DeviceList.Strings[i],'0',inttostr(j),'READER_USE') <> 'Y' then
        begin
          if TCurrentDeviceState(DeviceList.Objects[i]).Connected then
          begin
            pan_Message.Caption := DeviceList.Strings[i] + '번 컨트롤러의 ' + inttostr(j) + '번 리더의 사용유무를 체크중입니다.';
            for k := 0 to G_nLoopCount do
            begin
              if G_bApplicationTerminate then Exit;
              bResult := dmSocket.CardReaderInfo_Check(DeviceList.Strings[i],inttostr(j),True);
              if bResult then Break;
            end;
            if Not bResult then
            begin
              if Application.MessageBox(Pchar(DeviceList.Strings[i] + '번 컨트롤러의 ' + inttostr(j) + '번 카드리더 조회시 문제가 발생 했습니다. 계속 하시겠습니까?'),'주의',MB_OKCANCEL) = IDCANCEL then Exit;
            end;
          end;
        end;
      end;
    end;
  Finally
    pan_Message.Visible := False;
  End;

end;

procedure TfmCardReaderVersion.FormResize(Sender: TObject);
var
  nLeft : integer;
  nTop : integer;
begin
  inherited;
  nLeft := (Width div 2) - (pan_message.Width div 2);
  nTop := (Height div 2) - (pan_message.Height div 2);
  pan_message.Left := nLeft;
  pan_message.Top := nTop;

end;

procedure TfmCardReaderVersion.SearchTimer1Timer(Sender: TObject);
begin
  inherited;
  SearchTimer1.Enabled := False;
  CardReaderUseCheck;
  CardReaderVersionCheck;
  CardReaderVersionSearch;

end;

procedure TfmCardReaderVersion.CardReaderVersionCheck;
var
  i : integer;
  j : integer;
  k : integer;
  bResult : Boolean;
begin
  Try
    pan_Message.Visible := True;
    pan_Message.Color := clYellow;
    for i := 0 to DeviceList.Count - 1 do
    begin
      for j := 1 to TCurrentDeviceState(DeviceList.Objects[i]).MaxReaderNo do
      begin
        if TCurrentDeviceState(DeviceList.Objects[i]).GetReaderUse(j) then
        begin
          //여기에서 버젼 정보가 없으면 버젼 체크
          if TCurrentDeviceState(DeviceList.Objects[i]).GetReaderVersion(j) = '' then
          begin
            if TCurrentDeviceState(DeviceList.Objects[i]).Connected then
            begin
              pan_Message.Caption := DeviceList.Strings[i] + '번 컨트롤러의 ' + inttostr(j) +'번 리더 버젼 체크 중입니다.';
              for k := 0 to G_nLoopCount do
              begin
                if G_bApplicationTerminate then Exit;
                bResult := dmSocket.CardReaderVersion_Check(DeviceList.Strings[i],inttostr(j));
                if bResult then Break;
              end;
            end;
          end;
        end;
      end;
    end;
  Finally
    pan_Message.Visible := False;
  End;
end;

initialization
  RegisterClass(TfmCardReaderVersion);
Finalization
  UnRegisterClass(TfmCardReaderVersion);

end.
