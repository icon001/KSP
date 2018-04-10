unit uSchedule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, BaseGrid, AdvGrid, Buttons, uSubForm,
  CommandArray, Gauges, AdvObj;

type
  TTimeSch = record
    xGrade: Char;
    xTime: TDateTime;
  end;

type
  TfmSchedule = class(TfmASubForm)
    GroupBox1: TGroupBox;
    sg_Door: TAdvStringGrid;
    Panel1: TPanel;
    gb_Schedule: TGroupBox;
    Panel2: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    gb1: TGroupBox;
    pb_graph1: TPaintBox;
    lb_time11: TLabel;
    lb_time12: TLabel;
    lb_time14: TLabel;
    lb_time13: TLabel;
    pan_Day1: TPanel;
    panTime11: TPanel;
    pan_tab: TPanel;
    panTime14: TPanel;
    Panel17: TPanel;
    panTime15: TPanel;
    panTime13: TPanel;
    Panel20: TPanel;
    panTime12: TPanel;
    Panel22: TPanel;
    gb2: TGroupBox;
    pb_graph2: TPaintBox;
    lb_time21: TLabel;
    lb_time22: TLabel;
    lb_time24: TLabel;
    lb_time23: TLabel;
    pan_Day2: TPanel;
    panTime21: TPanel;
    Panel25: TPanel;
    panTime24: TPanel;
    Panel27: TPanel;
    panTime25: TPanel;
    panTime23: TPanel;
    Panel30: TPanel;
    panTime22: TPanel;
    Panel36: TPanel;
    gb3: TGroupBox;
    pb_graph3: TPaintBox;
    lb_time31: TLabel;
    lb_time32: TLabel;
    lb_time34: TLabel;
    lb_time33: TLabel;
    pan_Day3: TPanel;
    panTime31: TPanel;
    Panel39: TPanel;
    panTime34: TPanel;
    Panel41: TPanel;
    panTime35: TPanel;
    panTime33: TPanel;
    Panel44: TPanel;
    panTime32: TPanel;
    Panel46: TPanel;
    gb4: TGroupBox;
    pb_graph4: TPaintBox;
    lb_time41: TLabel;
    lb_time42: TLabel;
    lb_time44: TLabel;
    lb_time43: TLabel;
    pan_Day4: TPanel;
    panTime41: TPanel;
    Panel49: TPanel;
    panTime44: TPanel;
    Panel51: TPanel;
    panTime45: TPanel;
    panTime43: TPanel;
    Panel54: TPanel;
    panTime42: TPanel;
    Panel56: TPanel;
    btn_scheduleSearch: TSpeedButton;
    btn_ScheduleReg: TSpeedButton;
    Label1: TLabel;
    stDoor: TStaticText;
    pan_Gauge: TPanel;
    Gauge_schedule: TGauge;
    lb_msg: TLabel;
    pan_Msg: TPanel;
    Label2: TLabel;
    gb6: TGroupBox;
    pb_graph6: TPaintBox;
    lb_time61: TLabel;
    lb_time62: TLabel;
    lb_time64: TLabel;
    lb_time63: TLabel;
    pan_Day6: TPanel;
    panTime61: TPanel;
    Panel5: TPanel;
    panTime64: TPanel;
    Panel7: TPanel;
    panTime65: TPanel;
    panTime63: TPanel;
    Panel13: TPanel;
    panTime62: TPanel;
    Panel15: TPanel;
    gb5: TGroupBox;
    pb_graph5: TPaintBox;
    lb_time51: TLabel;
    lb_time52: TLabel;
    lb_time54: TLabel;
    lb_time53: TLabel;
    pan_Day5: TPanel;
    panTime51: TPanel;
    Panel59: TPanel;
    panTime54: TPanel;
    Panel61: TPanel;
    panTime55: TPanel;
    panTime53: TPanel;
    Panel64: TPanel;
    panTime52: TPanel;
    Panel66: TPanel;
    Panel3: TPanel;
    procedure pan_tabMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure panTime11DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure panTime11DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure panTime11Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pb_graph1Paint(Sender: TObject);
    procedure panTime11DblClick(Sender: TObject);
    procedure Panel31Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sg_DoorCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure sg_DoorClick(Sender: TObject);
    procedure btn_scheduleSearchClick(Sender: TObject);
    procedure btn_ScheduleRegClick(Sender: TObject);
  private
    L_nDoorCheckCount : integer;
    { Private declarations }
    Procedure CheckFields(Sender : TObject);
    procedure TimeInitialize;
    procedure ScheduleDoorTableToList;
    procedure InsertDeviceList(sg_list:TAdvStringGrid;aData:string;aCheckBox:Boolean=True);
    procedure AdvStrinGridSetAllCheck(Sender: TObject;bchkState:Boolean);
    function GetFirstCheckListData(sg_list:TAdvStringGrid;aIndex:integer):string;
    procedure DisplayDoorSchedule(aEcuID,aDoorNo:string);
    procedure PanelSetting(aDayCode:string);
  private
    function InitializeDoorSchedule(aEcuID,aDoorNo:string):Boolean;
    function CheckDoorSchedule(aEcuID,aDoorNo:string):Boolean;
    function InitializescheduleDayCode(aEcuID,aDoorNo,aDayCode:string):Boolean;
  private
    function DeviceScheduleCheck(aEcuID,aDoorNo:string):Boolean;
    function RegistrationDeviceSchedule(aEcuID,aDoorNo:string):Boolean;
    function MakeScheduleData(aEcuID,aDoorNo,aDayCode:string):string;
    function ScreenToDataBase(aEcuID,aDoorNo:string):Boolean;
  public
    { Public declarations }
    procedure RecvScheduleData(aECUID, aDoorNo, aCmd,
        aDayOfWeek, a1ModeTime, a1Mode, a2ModeTime, a2Mode, a3ModeTime, a3Mode,
        a4ModeTime, a4Mode, a5ModeTime, a5Mode:string);
    procedure SettingChange;
  end;

var
  fmSchedule: TfmSchedule;
  timePanels1 : Array[0..4] of TPanel; {����}
  timePanels2 : Array[0..4] of TPanel; {�����}
  timePanels3 : Array[0..4] of TPanel; {�Ͽ���}
  timePanels4 : Array[0..4] of TPanel; {����1}
  timePanels5 : Array[0..4] of TPanel; {����2}
  timePanels6 : Array[0..4] of TPanel; {����3}

  xData1 : Array[0..4] of TTimeSch; {����}
  xData2 : Array[0..4] of TTimeSch; {�����}
  xData3 : Array[0..4] of TTimeSch; {�Ͽ���}
  xData4 : Array[0..4] of TTimeSch; {����1}
  xData5 : Array[0..4] of TTimeSch; {����2}
  xData6 : Array[0..4] of TTimeSch; {����3}

implementation
uses
  dllFunction,
  udmDataBase,
  uSocket,
  uCommon;
{$R *.dfm}

procedure TfmSchedule.pan_tabMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if ssLeft in Shift then
  if Sender is TPanel then
  if TPanel(Sender).Tag= 2 then
  Begin

    With TPanel(TPanel(Sender).Parent) do
    Begin
      if Width + x > 0 then
        Width := Width + x;
    end;
  end;

end;

procedure TfmSchedule.panTime11DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender is TPanel) then Accept := Tpanel(Source).Tag = 1;
  CheckFields(Sender);

end;

procedure TfmSchedule.panTime11DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Sender is TPanel) then
    if Tpanel(Source).Tag = 1 then
    Begin
      TPanel(Sender).Color := Tpanel(Source).Color;
      CheckFields(Sender);
    end;
end;

procedure TfmSchedule.CheckFields(Sender: TObject);
Var
  a : Integer;
  ox : Real;
  ax : Real;
  bx : Integer;
  st : String;
  t  : string;
  ff : TDateTime;
  Hour, Min, Sec, MSec: Word;
  timePanels : Array[0..4] of TPanel;
  obLabel : TLabel;
  obGroupBox : TGroupBox;
Begin
  if TPanel(Sender).Color = clRed then TPanel(Sender).Caption := '���'
  else if TPanel(Sender).Color = clGreen then TPanel(Sender).Caption := '����'
  else if TPanel(Sender).Color = clAqua then TPanel(Sender).Caption := '�'
  else if TPanel(Sender).Color = clPurple then TPanel(Sender).Caption := '������'
  ;
  for a := 0 to ComponentCount - 1 do
  Begin
    if Components[a] is TPanel then
      if Tpanel(Components[a]).Tag= 2 then
        Tpanel(Components[a]).Color := Tpanel(Tpanel(Components[a]).Parent).Color;
  end;

  for a := 0 to 4 do
  Begin
    ox := TPanel(Sender).Parent.Width - 2;
    if TPanel(Sender).Hint = '1' then
    begin
      bx := timePanels1[a].Left+TimePanels1[a].Width-1;
      obGroupBox := gb1;
    end
    else if TPanel(Sender).Hint = '2' then
    begin
      bx := timePanels2[a].Left+TimePanels2[a].Width-1;
      obGroupBox := gb2;
    end
    else if TPanel(Sender).Hint = '3' then
    begin
      bx := timePanels3[a].Left+TimePanels3[a].Width-1;
      obGroupBox := gb3;
    end
    else if TPanel(Sender).Hint = '4' then
    begin
      bx := timePanels4[a].Left+TimePanels4[a].Width-1;
      obGroupBox := gb4;
    end else if TPanel(Sender).Hint = '5' then
    begin
      bx := timePanels5[a].Left+TimePanels5[a].Width-1;
      obGroupBox := gb5;
    end else if TPanel(Sender).Hint = '6' then
    begin
      bx := timePanels6[a].Left+TimePanels6[a].Width-1;
      obGroupBox := gb6;
    end;

    ff := (bx/ox);
    ff := Round(12*24 * ff);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    t := IntToStr(Hour);  if Length(t) = 1 then t := '0' + t;
    st := IntToStr(Min);  if Length(st) = 1 then st := '0' + st;
    st := t + ':' + st;
    Case a of
      0 :
        Begin
          obLabel := TravelLabelItem(obGroupBox,'lb_time',(strtoint(TPanel(Sender).Hint) * 10) + 1);
          obLabel.Caption := st;
          obLabel.Left := bx-07;
        end;
      1 :
        Begin
          obLabel := TravelLabelItem(obGroupBox,'lb_time',(strtoint(TPanel(Sender).Hint) * 10) + 2);
          obLabel.Caption := st;
          obLabel.Left := bx-07;
        end;
      2 :
        Begin
          obLabel := TravelLabelItem(obGroupBox,'lb_time',(strtoint(TPanel(Sender).Hint) * 10) + 3);
          obLabel.Caption := st;
          obLabel.Left := bx-07;
        end;
      3 :
        Begin
          obLabel := TravelLabelItem(obGroupBox,'lb_time',(strtoint(TPanel(Sender).Hint) * 10) + 4);
          obLabel.Caption := st;
          obLabel.Left := bx-07;
        end;
      4 :
        Begin
          obLabel := TravelLabelItem(obGroupBox,'lb_time',(strtoint(TPanel(Sender).Hint) * 10) + 4);
          obLabel.Caption := st;
          obLabel.Left := bx-07;
        end;
      5 :
        Begin
          obLabel := TravelLabelItem(obGroupBox,'lb_time',(strtoint(TPanel(Sender).Hint) * 10) + 4);
          obLabel.Caption := st;
          obLabel.Left := bx-07;
        end;
    end;
  end;
end;

procedure TfmSchedule.panTime11Resize(Sender: TObject);
begin
  CheckFields(Sender);
end;

procedure TfmSchedule.FormCreate(Sender: TObject);
begin
  timePanels1[0] := panTime11;
  timePanels1[1] := panTime12;
  timePanels1[2] := panTime13;
  timePanels1[3] := panTime14;
  timePanels1[4] := panTime15;

  timePanels2[0] := panTime21;
  timePanels2[1] := panTime22;
  timePanels2[2] := panTime23;
  timePanels2[3] := panTime24;
  timePanels2[4] := panTime25;

  timePanels3[0] := panTime31;
  timePanels3[1] := panTime32;
  timePanels3[2] := panTime33;
  timePanels3[3] := panTime34;
  timePanels3[4] := panTime35;

  timePanels4[0] := panTime41;
  timePanels4[1] := panTime42;
  timePanels4[2] := panTime43;
  timePanels4[3] := panTime44;
  timePanels4[4] := panTime45;

  timePanels5[0] := panTime51;
  timePanels5[1] := panTime52;
  timePanels5[2] := panTime53;
  timePanels5[3] := panTime54;
  timePanels5[4] := panTime55;

  timePanels6[0] := panTime61;
  timePanels6[1] := panTime62;
  timePanels6[2] := panTime63;
  timePanels6[3] := panTime64;
  timePanels6[4] := panTime65;

  L_nDoorCheckCount := 0;
end;

procedure TfmSchedule.pb_graph1Paint(Sender: TObject);
Var
  st  : String;
  x,y : Integer;
  r   : TRect;
  a,b : Integer;
  rr  : Real;
  dx : Integer;
  dy : Integer;
  obPanel : TPanel;
begin
  if TPaintBox(Sender).Hint = '1' then obPanel := pan_Day1
  else if TPaintBox(Sender).Hint = '2' then obPanel := pan_Day2
  else if TPaintBox(Sender).Hint = '3' then obPanel := pan_Day3
  else if TPaintBox(Sender).Hint = '4' then obPanel := pan_Day4
  else if TPaintBox(Sender).Hint = '5' then obPanel := pan_Day5
  else if TPaintBox(Sender).Hint = '6' then obPanel := pan_Day6
  ;

  TPaintBox(Sender).Width := obPanel.ClientRect.Right;
  dx := obPanel.Width - 2;
  With TPaintBox(Sender).Canvas do
  Begin
    Pen.Color := clGray;
    Pen.Width := 1;
    r := ClientRect;
    FillRect(r);
    dy := Height;
    for a := 0 to 23 do
    for b := 0 to 11 do
    Begin
      if b = 0 then y := dy
      else if b = 6 then y := dy div 2
      else y := dy div 4;
      rr := (a*12 + b)/(24*12);
      x := Round(dx * rr);
      MoveTo(x,Height);
      LineTo(x,Height-y);
      if b = 0 then
      Begin
        st := IntToStr(a);
        TextOut(x+2,0,st);
      end;
    end;
    y := Height;
    rr := 1;
    x := Round(dx * rr);
    MoveTo(x,Height);
    LineTo(x,Height-y);
  end;   //}
end;

procedure TfmSchedule.panTime11DblClick(Sender: TObject);
Var
  aColor : TColor;
  bColor : TColor;
begin
  aColor := TPanel(Sender).Color;
  if aColor = clGreen then bColor := clAqua
  else if aColor = clRed then bColor := clGreen
  else if aColor = clAqua then bColor := clPurple
  else if aColor = clPurple then bColor := clRed
  ;
  TPanel(Sender).Color := bColor;
  CheckFields(Sender);

end;

procedure TfmSchedule.TimeInitialize;
var
  a: Integer;
  r: TDatetime;
  ox: INteger;
begin
  xData1[0].xGrade := '0'      ;
  xData1[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { ���� Default �� }
  xData1[1].xGrade := '0'      ;
  xData1[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { ���� Default �� }
  xData1[2].xGrade := '0'      ;
  xData1[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { ���� Default �� }
  xData1[3].xGrade := '0'      ;
  xData1[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { ���� Default �� }
  xData1[4].xGrade := '0'      ;
  xData1[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { ���� Default �� }

  xData2[0].xGrade := '0'      ;
  xData2[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { ����� Default �� }
  xData2[1].xGrade := '0'      ;
  xData2[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { ����� Default �� }
  xData2[2].xGrade := '0'      ;
  xData2[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { ����� Default �� }
  xData2[3].xGrade := '0'      ;
  xData2[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { ����� Default �� }
  xData2[4].xGrade := '0'      ;
  xData2[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { ����� Default �� }

  xData3[0].xGrade := '0'      ;
  xData3[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { �Ͽ��� Default �� }
  xData3[1].xGrade := '0'      ;
  xData3[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { �Ͽ��� Default �� }
  xData3[2].xGrade := '0'      ;
  xData3[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { �Ͽ��� Default �� }
  xData3[3].xGrade := '0'      ;
  xData3[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { �Ͽ��� Default �� }
  xData3[4].xGrade := '0'      ;
  xData3[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { �Ͽ��� Default �� }

  xData4[0].xGrade := '0'      ;
  xData4[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����1 Default �� }
  xData4[1].xGrade := '0'      ;
  xData4[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����1 Default �� }
  xData4[2].xGrade := '0'      ;
  xData4[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����1 Default �� }
  xData4[3].xGrade := '0'      ;
  xData4[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { Ư����1 Default �� }
  xData4[4].xGrade := '0'      ;
  xData4[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����1 Default �� }

  xData5[0].xGrade := '0'      ;
  xData5[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����2 Default �� }
  xData5[1].xGrade := '0'      ;
  xData5[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����2 Default �� }
  xData5[2].xGrade := '0'      ;
  xData5[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����2 Default �� }
  xData5[3].xGrade := '0'      ;
  xData5[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { Ư����2 Default �� }
  xData5[4].xGrade := '0'      ;
  xData5[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����2 Default �� }

  xData6[0].xGrade := '0'      ;
  xData6[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����3 Default �� }
  xData6[1].xGrade := '0'      ;
  xData6[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����3 Default �� }
  xData6[2].xGrade := '0'      ;
  xData6[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����3 Default �� }
  xData6[3].xGrade := '0'      ;
  xData6[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { Ư����3 Default �� }
  xData6[4].xGrade := '0'      ;
  xData6[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { Ư����3 Default �� }

  for a := 0 to 4 do
  Begin
    timePanels1[a].Align := alNone;
    timePanels1[a].Width := 10;
    timePanels1[a].Left := 700;

    timePanels2[a].Align := alNone;
    timePanels2[a].Width := 10;
    timePanels2[a].Left := 700;

    timePanels3[a].Align := alNone;
    timePanels3[a].Width := 10;
    timePanels3[a].Left := 700;

    timePanels4[a].Align := alNone;
    timePanels4[a].Width := 10;
    timePanels4[a].Left := 700;

    timePanels5[a].Align := alNone;
    timePanels5[a].Width := 10;
    timePanels5[a].Left := 700;

    timePanels6[a].Align := alNone;
    timePanels6[a].Width := 10;
    timePanels6[a].Left := 700;
  end;

  for a := 0 to 4 do
  Begin
    if a = 4 then timePanels1[a].Align := alClient
    else          timePanels1[a].Align := alLeft;
    if a = 4 then timePanels2[a].Align := alClient
    else          timePanels2[a].Align := alLeft;
    if a = 4 then timePanels3[a].Align := alClient
    else          timePanels3[a].Align := alLeft;
    if a = 4 then timePanels4[a].Align := alClient
    else          timePanels4[a].Align := alLeft;
    if a = 4 then timePanels5[a].Align := alClient
    else          timePanels5[a].Align := alLeft;
    if a = 4 then timePanels6[a].Align := alClient
    else          timePanels6[a].Align := alLeft;
  end;

  r := 0;
  ox := pan_Day1.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels1[a].Color := clAqua;
    Case xData1[a].xGrade of
      '0': timePanels1[a].Color := clAqua;
      '1': timePanels1[a].Color := clGreen;
      '2': timePanels1[a].Color := clRed;
      '3': timePanels1[a].Color := clPurple;
    end;
    if a = 0 then r := xData1[a].xTime
    else          r := xData1[a].xTime-xData1[a-1].xTime;
    timePanels1[a].Width := Round((ox) * (r));

    timePanels2[a].Color := clAqua;
    Case xData2[a].xGrade of
      '0': timePanels2[a].Color := clAqua;
      '1': timePanels2[a].Color := clGreen;
      '2': timePanels2[a].Color := clRed;
      '3': timePanels2[a].Color := clPurple;
    end;
    if a = 0 then r := xData2[a].xTime
    else          r := xData2[a].xTime-xData2[a-1].xTime;
    timePanels2[a].Width := Round((ox) * (r));

    timePanels3[a].Color := clAqua;
    Case xData3[a].xGrade of
      '0': timePanels3[a].Color := clAqua;
      '1': timePanels3[a].Color := clGreen;
      '2': timePanels3[a].Color := clRed;
      '3': timePanels3[a].Color := clPurple;
    end;
    if a = 0 then r := xData3[a].xTime
    else          r := xData3[a].xTime-xData3[a-1].xTime;
    timePanels3[a].Width := Round((ox) * (r));

    timePanels4[a].Color := clAqua;
    Case xData4[a].xGrade of
      '0': timePanels4[a].Color := clAqua;
      '1': timePanels4[a].Color := clGreen;
      '2': timePanels4[a].Color := clRed;
      '3': timePanels4[a].Color := clPurple;
    end;
    if a = 0 then r := xData4[a].xTime
    else          r := xData4[a].xTime-xData4[a-1].xTime;
    timePanels4[a].Width := Round((ox) * (r));

    timePanels5[a].Color := clAqua;
    Case xData5[a].xGrade of
      '0': timePanels5[a].Color := clAqua;
      '1': timePanels5[a].Color := clGreen;
      '2': timePanels5[a].Color := clRed;
      '3': timePanels5[a].Color := clPurple;
    end;
    if a = 0 then r := xData5[a].xTime
    else          r := xData5[a].xTime-xData5[a-1].xTime;
    timePanels5[a].Width := Round((ox) * (r));

    timePanels6[a].Color := clAqua;
    Case xData6[a].xGrade of
      '0': timePanels6[a].Color := clAqua;
      '1': timePanels6[a].Color := clGreen;
      '2': timePanels6[a].Color := clRed;
      '3': timePanels6[a].Color := clPurple;
    end;
    if a = 0 then r := xData6[a].xTime
    else          r := xData6[a].xTime-xData4[a-1].xTime;
    timePanels6[a].Width := Round((ox) * (r));

  end;
  CheckFields(timePanels1[0]);
  CheckFields(timePanels2[0]);
  CheckFields(timePanels3[0]);
  CheckFields(timePanels4[0]);
  CheckFields(timePanels5[0]);
  CheckFields(timePanels6[0]);

end;

procedure TfmSchedule.Panel31Click(Sender: TObject);
begin
  TimeInitialize;
end;

procedure TfmSchedule.FormShow(Sender: TObject);
begin
  TimeInitialize;
  ScheduleDoorTableToList;
  self.FindSubForm('Main').FindCommand('SCHEDULEVIEW').Params.Values['VALUE'] := 'TRUE';
  self.FindSubForm('Main').FindCommand('SCHEDULEVIEW').Execute;
end;

procedure TfmSchedule.ScheduleDoorTableToList;
var
  i : integer;
begin
  GridInitialize(sg_Door,2,TRUE);

  with dmDataBase.TB_DEVICE do
  begin
    First;
    while Not Eof do
    begin
      if FindField('DEVICEUSE').AsString = 'Y' then
      begin
        for i := 1 to FIXMAXDOORNO do
        begin
          if dmDataBase.CheckTB_DOORType(FindField('ECU_ID').AsString,'0',inttostr(i)) <> '0' then
          begin
            InsertDeviceList(sg_Door,FindField('ECU_ID').AsString + '-' + inttostr(i));
            InitializeDoorSchedule(FindField('ECU_ID').AsString,inttostr(i));
          end;
        end;
      end;
      Next;
    end;
  end;
end;

procedure TfmSchedule.InsertDeviceList(sg_list: TAdvStringGrid;
  aData: string; aCheckBox: Boolean);
var
  nRow : integer;
begin
  with sg_list do
  begin
    if cells[0,1] = '' then nRow := 1
    else
    begin
      AddRow;
      nRow := RowCount - 1;
    end;
    Cells[0,nRow] := aData;
    if aCheckBox then AddCheckBox(0,nRow,False,False);
    SelectRows(nRow,1);
  end;

end;

procedure TfmSchedule.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

end;

procedure TfmSchedule.sg_DoorCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if ARow = 0 then //��ü���� �Ǵ� ����
  begin
    if State then L_nDoorCheckCount := (Sender as TAdvStringGrid).RowCount - 1
    else L_nDoorCheckCount := 0;
    AdvStrinGridSetAllCheck(Sender,State);
  end else
  begin
    if State then L_nDoorCheckCount := L_nDoorCheckCount + 1
    else L_nDoorCheckCount := L_nDoorCheckCount - 1 ;
  end;

end;

procedure TfmSchedule.AdvStrinGridSetAllCheck(Sender: TObject;
  bchkState: Boolean);
var
  i : integer;
begin
  for i:= 1 to (Sender as TAdvStringGrid).RowCount - 1  do
  begin
    (Sender as TAdvStringGrid).SetCheckBoxState(0,i,bchkState);
  end;
end;

procedure TfmSchedule.sg_DoorClick(Sender: TObject);
var
  bchkState : Boolean;
  stEcuID : string;
  stDoorNo : string;
begin
  with (Sender as TAdvStringGrid) do
  begin
    stDoor.Caption := cells[0,Row];
//    GetCheckBoxState(0,Row, bchkState);
//    if Not bchkState then GetFirstCheckListData(sg_Door,0);
    stEcuID := copy(cells[0,Row],1,2);
    stDoorNo := copy(cells[0,Row],4,1);
    DisplayDoorSchedule(stEcuID,stDoorNo);
  end;

end;

function TfmSchedule.GetFirstCheckListData(sg_list: TAdvStringGrid;
  aIndex: integer): string;
var
  nRow : integer;
  bchkState : Boolean;
begin
  result := '';

  with sg_list do
  begin
    if rowcount < 2 then Exit;
    for nRow := 1 to rowcount - 1 do
    begin
      GetCheckBoxState(0,nRow, bchkState);
      if bchkState then
      begin
        SelectRows(nRow,1);
        result := Cells[aIndex,nRow];
        Exit;
      end;
    end;
  end;
end;

procedure TfmSchedule.DisplayDoorSchedule(aEcuID, aDoorNo: string);
var
  stTemp : string;
begin
  Try
    with dmDataBase.TB_DOORSCHEDULE do
    begin
      First;
      while Not Eof do
      begin
        if Findfield('ECUID').AsString = aEcuID then
        begin
          if FindField('DOORNO').AsString = aDoorNo then
          begin
            if FindField('DAYCODE').AsString = '0' then
            begin
              xData1[0].xGrade:= FindField('TIME1MODE').AsString[1];
              stTemp := FindField('TIME1').AsString;
              xData1[0].xTime:= Convrtstr2Time(stTemp);
              xData1[1].xGrade:= FindField('TIME2MODE').AsString[1];
              stTemp := FindField('TIME2').AsString;
              xData1[1].xTime:= Convrtstr2Time(stTemp);
              xData1[2].xGrade:= FindField('TIME3MODE').AsString[1];
              stTemp := FindField('TIME3').AsString;
              xData1[2].xTime:= Convrtstr2Time(stTemp);
              xData1[3].xGrade:= FindField('TIME4MODE').AsString[1];
              stTemp := FindField('TIME4').AsString;
              xData1[3].xTime:= Convrtstr2Time(stTemp);
              xData1[4].xGrade:= FindField('TIME5MODE').AsString[1];
              stTemp := FindField('TIME5').AsString;
              xData1[4].xTime:= Convrtstr2Time(stTemp);
              PanelSetting(FindField('DAYCODE').AsString);
            end else if FindField('DAYCODE').AsString = '1' then
            begin
              xData2[0].xGrade:= FindField('TIME1MODE').AsString[1];
              xData2[0].xTime:= Convrtstr2Time(FindField('TIME1').AsString);
              xData2[1].xGrade:= FindField('TIME2MODE').AsString[1];
              xData2[1].xTime:= Convrtstr2Time(FindField('TIME2').AsString);
              xData2[2].xGrade:= FindField('TIME3MODE').AsString[1];
              xData2[2].xTime:= Convrtstr2Time(FindField('TIME3').AsString);
              xData2[3].xGrade:= FindField('TIME4MODE').AsString[1];
              xData2[3].xTime:= Convrtstr2Time(FindField('TIME4').AsString);
              xData2[4].xGrade:= FindField('TIME5MODE').AsString[1];
              xData2[4].xTime:= Convrtstr2Time(FindField('TIME5').AsString);
              PanelSetting(FindField('DAYCODE').AsString);
            end else if FindField('DAYCODE').AsString = '2' then
            begin
              xData3[0].xGrade:= FindField('TIME1MODE').AsString[1];
              xData3[0].xTime:= Convrtstr2Time(FindField('TIME1').AsString);
              xData3[1].xGrade:= FindField('TIME2MODE').AsString[1];
              xData3[1].xTime:= Convrtstr2Time(FindField('TIME2').AsString);
              xData3[2].xGrade:= FindField('TIME3MODE').AsString[1];
              xData3[2].xTime:= Convrtstr2Time(FindField('TIME3').AsString);
              xData3[3].xGrade:= FindField('TIME4MODE').AsString[1];
              xData3[3].xTime:= Convrtstr2Time(FindField('TIME4').AsString);
              xData3[4].xGrade:= FindField('TIME5MODE').AsString[1];
              xData3[4].xTime:= Convrtstr2Time(FindField('TIME5').AsString);
              PanelSetting(FindField('DAYCODE').AsString);
            end else if FindField('DAYCODE').AsString = '3' then
            begin
              xData4[0].xGrade:= FindField('TIME1MODE').AsString[1];
              xData4[0].xTime:= Convrtstr2Time(FindField('TIME1').AsString);
              xData4[1].xGrade:= FindField('TIME2MODE').AsString[1];
              xData4[1].xTime:= Convrtstr2Time(FindField('TIME2').AsString);
              xData4[2].xGrade:= FindField('TIME3MODE').AsString[1];
              xData4[2].xTime:= Convrtstr2Time(FindField('TIME3').AsString);
              xData4[3].xGrade:= FindField('TIME4MODE').AsString[1];
              xData4[3].xTime:= Convrtstr2Time(FindField('TIME4').AsString);
              xData4[4].xGrade:= FindField('TIME5MODE').AsString[1];
              xData4[4].xTime:= Convrtstr2Time(FindField('TIME5').AsString);
              PanelSetting(FindField('DAYCODE').AsString);
            end else if FindField('DAYCODE').AsString = '4' then
            begin
              xData5[0].xGrade:= FindField('TIME1MODE').AsString[1];
              xData5[0].xTime:= Convrtstr2Time(FindField('TIME1').AsString);
              xData5[1].xGrade:= FindField('TIME2MODE').AsString[1];
              xData5[1].xTime:= Convrtstr2Time(FindField('TIME2').AsString);
              xData5[2].xGrade:= FindField('TIME3MODE').AsString[1];
              xData5[2].xTime:= Convrtstr2Time(FindField('TIME3').AsString);
              xData5[3].xGrade:= FindField('TIME4MODE').AsString[1];
              xData5[3].xTime:= Convrtstr2Time(FindField('TIME4').AsString);
              xData5[4].xGrade:= FindField('TIME5MODE').AsString[1];
              xData5[4].xTime:= Convrtstr2Time(FindField('TIME5').AsString);
              PanelSetting(FindField('DAYCODE').AsString);
            end else if FindField('DAYCODE').AsString = '5' then
            begin
              xData6[0].xGrade:= FindField('TIME1MODE').AsString[1];
              xData6[0].xTime:= Convrtstr2Time(FindField('TIME1').AsString);
              xData6[1].xGrade:= FindField('TIME2MODE').AsString[1];
              xData6[1].xTime:= Convrtstr2Time(FindField('TIME2').AsString);
              xData6[2].xGrade:= FindField('TIME3MODE').AsString[1];
              xData6[2].xTime:= Convrtstr2Time(FindField('TIME3').AsString);
              xData6[3].xGrade:= FindField('TIME4MODE').AsString[1];
              xData6[3].xTime:= Convrtstr2Time(FindField('TIME4').AsString);
              xData6[4].xGrade:= FindField('TIME5MODE').AsString[1];
              xData6[4].xTime:= Convrtstr2Time(FindField('TIME5').AsString);
              PanelSetting(FindField('DAYCODE').AsString);
            end;
          end;
        end;
        Next;
      end;

    end;
  Except
    Exit;
  End;
end;

function TfmSchedule.InitializeDoorSchedule(aEcuID,
  aDoorNo: string): Boolean;
var
  i : integer;
begin
//  if CheckDoorSchedule(aEcuID,aDoorNo) then Exit;
  for i:=0 to 5 do
  begin
    InitializescheduleDayCode(aEcuID,aDoorNo,inttostr(i));
  end;

end;

function TfmSchedule.CheckDoorSchedule(aEcuID, aDoorNo: string): Boolean;
begin
  result := False;
  with dmDataBase.TB_DOORSCHEDULE do
  begin
    First;
    While Not Eof do
    begin
      if FindField('ECUID').AsString = aEcuID then
      begin
        if FindField('DOORNO').AsString = aDoorNo then
        begin
          result := True;
          Exit;
        end;
      end;
      Next;
    end;
  end;
end;

function TfmSchedule.InitializescheduleDayCode(aEcuID, aDoorNo,
  aDayCode: string): Boolean;
begin
  result := False;
  with dmDataBase.TB_DOORSCHEDULE do
  begin
    if Not FindKey([aEcuID,aDoorNo,aDayCode]) then
    begin
      Append;
      FindField('ECUID').AsString := aEcuID;
      FindField('DOORNO').AsString := aDoorNo;
      FindField('DAYCODE').AsString := aDayCode;
      FindField('TIME1').AsString := '0500';
      FindField('TIME1MODE').AsString := '0';
      FindField('TIME2').AsString := '1200';
      FindField('TIME2MODE').AsString := '0';
      FindField('TIME3').AsString := '1300';
      FindField('TIME3MODE').AsString := '0';
      FindField('TIME4').AsString := '1830';
      FindField('TIME4MODE').AsString := '0';
      FindField('TIME5').AsString := '2100';
      FindField('TIME5MODE').AsString := '0';

      Try
        Post;
      Except
        Exit;
      End;
      result := True;
    end;
  end;

end;

procedure TfmSchedule.PanelSetting(aDayCode: string);
var
  r : TDateTime;
  ox  : Integer;
  a : integer;
begin
  case aDayCode[1] of
    '0':
      begin
        r := 0;
        ox := pan_Day1.Width - 2;
        for a := 0 to 4 do
        Begin
          timePanels1[a].Color := clAqua;
          Case xData1[a].xGrade of
            '0' : timePanels1[a].Color := clAqua;
            '1' : timePanels1[a].Color := clGreen;
            '2' : timePanels1[a].Color := clRed;
            '3' : timePanels1[a].Color := clPurple;
          end;
          if a = 0 then r := xData1[a].xTime
                   else r := xData1[a].xTime-xData1[a-1].xTime;

          timePanels1[a].Width := Round((ox) * (r));
          CheckFields(timePanels1[a]);
        end;
      end;
    '1':
      begin
        r := 0;
        ox := pan_Day2.Width - 2;
        for a := 0 to 4 do
        Begin
          timePanels2[a].Color := clAqua;
          Case xData2[a].xGrade of
            '0' : timePanels2[a].Color := clAqua;
            '1' : timePanels2[a].Color := clGreen;
            '2' : timePanels2[a].Color := clRed;
            '3' : timePanels2[a].Color := clPurple;
          end;
          if a = 0 then r := xData2[a].xTime
                   else r := xData2[a].xTime-xData2[a-1].xTime;

          timePanels2[a].Width := Round((ox) * (r));
          CheckFields(timePanels2[a]);
        end;
      end;
    '2':
      begin
        r := 0;
        ox := pan_Day3.Width - 2;
        for a := 0 to 4 do
        Begin
          timePanels3[a].Color := clAqua;
          Case xData3[a].xGrade of
            '0' : timePanels3[a].Color := clAqua;
            '1' : timePanels3[a].Color := clGreen;
            '2' : timePanels3[a].Color := clRed;
            '3' : timePanels3[a].Color := clPurple;
          end;
          if a = 0 then r := xData3[a].xTime
                   else r := xData3[a].xTime-xData3[a-1].xTime;

          timePanels3[a].Width := Round((ox) * (r));
          CheckFields(timePanels3[a]);
        end;
      end;
    '3':
      begin
        r := 0;
        ox := pan_Day4.Width - 2;
        for a := 0 to 4 do
        Begin
          timePanels4[a].Color := clAqua;
          Case xData4[a].xGrade of
            '0' : timePanels4[a].Color := clAqua;
            '1' : timePanels4[a].Color := clGreen;
            '2' : timePanels4[a].Color := clRed;
            '3' : timePanels4[a].Color := clPurple;
          end;
          if a = 0 then r := xData4[a].xTime
                   else r := xData4[a].xTime-xData4[a-1].xTime;

          timePanels4[a].Width := Round((ox) * (r));
          CheckFields(timePanels4[a]);
        end;
      end;
   '4':
      begin
        r := 0;
        ox := pan_Day5.Width - 2;
        for a := 0 to 4 do
        Begin
          timePanels5[a].Color := clAqua;
          Case xData5[a].xGrade of
            '0' : timePanels5[a].Color := clAqua;
            '1' : timePanels5[a].Color := clGreen;
            '2' : timePanels5[a].Color := clRed;
            '3' : timePanels5[a].Color := clPurple;
          end;
          if a = 0 then r := xData5[a].xTime
                   else r := xData5[a].xTime-xData4[a-1].xTime;

          timePanels5[a].Width := Round((ox) * (r));
          CheckFields(timePanels5[a]);
        end;
      end;
   '5':
      begin
        r := 0;
        ox := pan_Day6.Width - 2;
        for a := 0 to 4 do
        Begin
          timePanels6[a].Color := clAqua;
          Case xData6[a].xGrade of
            '0' : timePanels6[a].Color := clAqua;
            '1' : timePanels6[a].Color := clGreen;
            '2' : timePanels6[a].Color := clRed;
            '3' : timePanels6[a].Color := clPurple;
          end;
          if a = 0 then r := xData6[a].xTime
                   else r := xData6[a].xTime-xData6[a-1].xTime;

          timePanels6[a].Width := Round((ox) * (r));
          CheckFields(timePanels6[a]);
        end;
      end;
    else
      begin
      end;
  end;
end;

function TfmSchedule.DeviceScheduleCheck(aEcuID, aDoorNo: string): Boolean;
var
  i,j : integer;
  bResult : Boolean;
begin
  result := False;
  for i := 0 to G_nHolidayCount do
  begin
    for j := 0 to G_nLoopCount do
    begin
      if G_bApplicationTerminate then Exit;
      bResult := dmSocket.DeviceSchedule_Check(aEcuID,aDoorNo,inttostr(i));
      if bResult then break;
    end;
    if Not bResult then Exit;
  end;
  result := True;
end;

procedure TfmSchedule.RecvScheduleData(aECUID, aDoorNo, aCmd, aDayOfWeek,
  a1ModeTime, a1Mode, a2ModeTime, a2Mode, a3ModeTime, a3Mode, a4ModeTime,
  a4Mode, a5ModeTime, a5Mode: string);
var
  stSelectEcuID : string;
  stSelectDoorNo : string;
begin
  stSelectEcuID := copy(stDoor.Caption,1,2);
  stSelectDoorNo := copy(stDoor.Caption,4,1);

  if stSelectEcuID <> aECUID then Exit;
  if stSelectDoorNo <> aDoorNo then Exit;
  DisplayDoorSchedule(aECUID,aDoorNo);
end;

procedure TfmSchedule.btn_scheduleSearchClick(Sender: TObject);
var
  i : integer;
  bChkState : Boolean;
  stEcuID : string;
  stDoorNo : string;
  stMsg : string;
begin
  if L_nDoorCheckCount < 1 then
  begin
    showmessage('���õ� ���Թ��� �����ϴ�.');
    Exit;
  end;
  btn_scheduleSearch.Enabled := False;
  btn_ScheduleReg.Enabled := False;
  stMsg := '';
  pan_Msg.Caption := '';
  pan_Gauge.Visible := True;
  Gauge_schedule.Progress := 0;
  Gauge_schedule.MaxValue := L_nDoorCheckCount;
  lb_msg.Caption := '������ ��ȸ��...';
  for i := 1 to sg_Door.RowCount - 1 do
  begin
    sg_Door.GetCheckBoxState(0,i, bChkState);
    if bChkState then
    begin
      stEcuID := copy(sg_Door.Cells[0,i],1,2);
      stDoorNo := copy(sg_Door.Cells[0,i],4,1);
      if Not DeviceScheduleCheck(stEcuID,stDoorNo) then
      begin
        if stMsg <> '' then stMsg := stMsg + '/';
        stMsg := stMsg + stEcuID + '-' + stDoorNo;
      end;
      Gauge_schedule.Progress := Gauge_schedule.Progress + 1;
    end;
  end;
  pan_Gauge.Visible := False;

  if stMsg <> '' then
  pan_Msg.Caption := '��������ȸ ���� ���Թ� : ' + stMsg ;

  btn_scheduleSearch.Enabled := True;
  btn_ScheduleReg.Enabled := True;
end;

procedure TfmSchedule.btn_ScheduleRegClick(Sender: TObject);
var
  i : integer;
  bChkState : Boolean;
  stEcuID : string;
  stDoorNo : string;
  stMsg : string;
begin
  if L_nDoorCheckCount < 1 then
  begin
    showmessage('���õ� ���Թ��� �����ϴ�.');
    Exit;
  end;
  btn_scheduleSearch.Enabled := False;
  btn_ScheduleReg.Enabled := False;
  stMsg := '';
  pan_Msg.Caption := '';
  pan_Gauge.Visible := True;
  Gauge_schedule.Progress := 0;
  Gauge_schedule.MaxValue := L_nDoorCheckCount;
  lb_msg.Caption := '������ �����...';
  for i := 1 to sg_Door.RowCount - 1 do
  begin
    sg_Door.GetCheckBoxState(0,i, bChkState);
    if bChkState then
    begin
      stEcuID := copy(sg_Door.Cells[0,i],1,2);
      stDoorNo := copy(sg_Door.Cells[0,i],4,1);
      ScreenToDataBase(stEcuID,stDoorNo);
      if Not RegistrationDeviceSchedule(stEcuID,stDoorNo) then
      begin
        if stMsg <> '' then stMsg := stMsg + '/';
        stMsg := stMsg + stEcuID + '-' + stDoorNo;
      end;
      Gauge_schedule.Progress := Gauge_schedule.Progress + 1;
    end;
  end;
  pan_Gauge.Visible := False;

  if stMsg <> '' then
  pan_Msg.Caption := '�����ٵ�� ���� ���Թ� : ' + stMsg ;

  btn_scheduleSearch.Enabled := True;
  btn_ScheduleReg.Enabled := True;

end;

function TfmSchedule.RegistrationDeviceSchedule(aEcuID,
  aDoorNo: string): Boolean;
var
  i,j : integer;
  bResult : Boolean;
  stScheduleData : string;
begin
  result := False;
  for i := 0 to G_nHolidayCount do
  begin
    for j := 0 to G_nLoopCount do
    begin
      if G_bApplicationTerminate then Exit;
      stScheduleData := MakeScheduleData(aEcuID,aDoorNo,inttostr(i));
      bResult := dmSocket.RegistrationDeviceSchedule(aEcuID,aDoorNo,inttostr(i),stScheduleData);
      if bResult then break;
    end;
    if Not bResult then Exit;
  end;
  result := True;
end;

function TfmSchedule.MakeScheduleData(aEcuID, aDoorNo,
  aDayCode: string): string;
var
  stData : string;
begin
  result := '';
  with dmDataBase.TB_DOORSCHEDULE do
  begin
    if FindKey([aEcuID,aDoorNo,aDayCode]) then
    begin
      stData:= '0000' + FindField('TIME1MODE').AsString +
                FindField('TIME1').AsString + FindField('TIME2MODE').AsString +
                FindField('TIME2').AsString + FindField('TIME3MODE').AsString +
                FindField('TIME3').AsString + FindField('TIME4MODE').AsString +
                FindField('TIME4').AsString + FindField('TIME5MODE').AsString;
    end else Exit;
  end;
  result := stData;

end;

function TfmSchedule.ScreenToDataBase(aEcuID, aDoorNo: string): Boolean;
var
  ox: Integer;
  bx  : Real;
  ff  : TDateTime;
  a : integer;
  stGrade : string;
  stTime : string;
  Hour, Min, Sec, MSec: Word;
begin
  ox := pan_Day1.Width - 2;

  for a := 0 to 4 do
  Begin
    {����}
         if timePanels1[a].Color = clGreen then stGrade :='1' //1����
    else if timePanels1[a].Color = clAqua  then stGrade :='0' //0�
    else if timePanels1[a].Color = clRed   then stGrade :='2'  //���
    else if timePanels1[a].Color = clPurple   then stGrade :='3'  //������
    ;//`--
    bx := timePanels1[a].Left+TimePanels1[a].Width-1;

    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    stTime := FillZeroNumber(Hour,2) + FillZeroNumber(Min,2);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'0','TIME' + inttostr(a+1) +'MODE',stGrade);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'0','TIME' + inttostr(a+1),stTime);

     {�����}
         if timePanels2[a].Color = clGreen then stGrade :='1'
    else if timePanels2[a].Color = clAqua  then stGrade :='0'
    else if timePanels2[a].Color = clRed   then stGrade :='2'
    else if timePanels2[a].Color = clPurple   then stGrade :='3'  //������
    ;
    bx := timePanels2[a].Left+TimePanels2[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    stTime := FillZeroNumber(Hour,2) + FillZeroNumber(Min,2);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'1','TIME' + inttostr(a+1) +'MODE',stGrade);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'1','TIME' + inttostr(a+1),stTime);

    {�Ͽ���}
         if timePanels3[a].Color = clGreen then stGrade :='1'
    else if timePanels3[a].Color = clAqua  then stGrade :='0'
    else if timePanels3[a].Color = clRed   then stGrade :='2'
    else if timePanels3[a].Color = clPurple   then stGrade :='3'  //������
    ;
    bx := timePanels3[a].Left+TimePanels3[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    stTime := FillZeroNumber(Hour,2) + FillZeroNumber(Min,2);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'2','TIME' + inttostr(a+1) +'MODE',stGrade);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'2','TIME' + inttostr(a+1),stTime);

    {����1}
         if timePanels4[a].Color = clGreen then stGrade :='1'
    else if timePanels4[a].Color = clAqua  then stGrade :='0'
    else if timePanels4[a].Color = clRed   then stGrade :='2'
    else if timePanels4[a].Color = clPurple   then stGrade :='3'  //������
    ;
    bx := timePanels4[a].Left+TimePanels4[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    stTime := FillZeroNumber(Hour,2) + FillZeroNumber(Min,2);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'3','TIME' + inttostr(a+1) +'MODE',stGrade);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'3','TIME' + inttostr(a+1),stTime);

    {����2}
         if timePanels5[a].Color = clGreen then stGrade :='1'
    else if timePanels5[a].Color = clAqua  then stGrade :='0'
    else if timePanels5[a].Color = clRed   then stGrade :='2'
    else if timePanels5[a].Color = clPurple   then stGrade :='3'  //������
    ;
    bx := timePanels5[a].Left+TimePanels5[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    stTime := FillZeroNumber(Hour,2) + FillZeroNumber(Min,2);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'4','TIME' + inttostr(a+1) +'MODE',stGrade);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'4','TIME' + inttostr(a+1),stTime);

    {����3}
         if timePanels6[a].Color = clGreen then stGrade :='1'
    else if timePanels6[a].Color = clAqua  then stGrade :='0'
    else if timePanels6[a].Color = clRed   then stGrade :='2'
    else if timePanels6[a].Color = clPurple   then stGrade :='3'  //������
    ;
    bx := timePanels6[a].Left+TimePanels6[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    stTime := FillZeroNumber(Hour,2) + FillZeroNumber(Min,2);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'5','TIME' + inttostr(a+1) +'MODE',stGrade);
    dmDataBase.UpdateTB_Schedule_FieldName(aEcuID,aDoorNo,'5','TIME' + inttostr(a+1),stTime);

  end;

end;

procedure TfmSchedule.SettingChange;
begin
  ScheduleDoorTableToList;
end;

initialization
  RegisterClass(TfmSchedule);
Finalization
  UnRegisterClass(TfmSchedule);

end.