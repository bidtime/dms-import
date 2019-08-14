unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult,
  Vcl.StdCtrls, FireDAC.VCLUI.Memo, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient;

type
  TframeLogin = class(TframeUrlResult)
    Button1: TButton;
    procedure btnPostClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function postDataSet(const json: string; var msg:string): boolean; override;
  end;

implementation

uses uInvokeUser, uUploadDTO;

{$R *.dfm}

//api/dms/import/user/login

//{
//	"user": "jss",
//	"pwd": "123456"
//}

{
  "user": "jss",
  "pwd": "123456"
}

{ TframeLogin }

procedure TframeLogin.btnPostClick(Sender: TObject);
var msg: string;
begin
  //inherited;
  postDataSet(self.memoCtx.text, msg);
  addlog(msg);
end;

procedure TframeLogin.Button1Click(Sender: TObject);
var dto: TReturnDTO<TStoresInfo>;
begin
  dto := TInvoke_user.getStores();
  if dto.success then begin
    self.addLog(IntToStr(dto.data.id));
    self.addLog(dto.data.name);
  end;
end;

function TframeLogin.postDataSet(const json: string; var msg: string): boolean;

  procedure getStores();
  var dto: TReturnDTO<TStoresInfo>;
  begin
    dto := TInvoke_user.getStores();
    if dto.success then begin
      self.addLog(IntToStr(dto.data.id));
      self.addLog(dto.data.name);
    end;
  end;

begin
  Result := TInvoke_user.login(json, msg);
  if Result then begin
    // getStores();
    addLog('login: ' + json + ', ' + 'success');
  end else begin
    addLog('login: ' + json + ', ' + 'failure');
  end;
end;

end.
