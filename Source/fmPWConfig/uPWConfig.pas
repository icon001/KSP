unit uPWConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,iniFiles;

type
  TfmPWConfig = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    sbLogin: TSpeedButton;
    sbCancel: TSpeedButton;
    Bevel1: TBevel;
    ed_OrgPw: TEdit;
    ed_Newpw1: TEdit;
    ed_Newpw2: TEdit;
    Label3: TLabel;
    procedure sbLoginClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure ed_OrgPwKeyPress(Sender: TObject; var Key: Char);
    procedure ed_Newpw1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_Newpw2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    OrgPW:string;
  end;

var
  fmPWConfig: TfmPWConfig;

implementation

{$R *.dfm}

procedure TfmPWConfig.sbLoginClick(Sender: TObject);
var
  ini_fun : TiniFile;
begin
  if ed_OrgPw.Text <> OrgPW then
  begin
    showmessage('기존비밀번호가 틀립니다.');
    ed_orgpw.SetFocus;
    exit;
  end;
  if ed_Newpw1.Text <> ed_Newpw2.Text then
  begin
    showmessage('신규 비밀번호가 서로 다릅니다.');
    exit;
  end;
  ini_fun := TiniFile.Create(ExtractFileDir(Application.ExeName) + '\ztcs.INI');
  ini_fun.Writestring('Config','PW',ed_Newpw1.Text);
  Close;
end;

procedure TfmPWConfig.sbCancelClick(Sender: TObject);
begin
Close;
end;

procedure TfmPWConfig.ed_OrgPwKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then  ed_Newpw1.SetFocus;
end;

procedure TfmPWConfig.ed_Newpw1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then ed_Newpw2.SetFocus;
end;

procedure TfmPWConfig.ed_Newpw2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then  sbLogin.Click;
end;

end.
