unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult,
  Vcl.StdCtrls, FireDAC.VCLUI.Memo, Vcl.ExtCtrls;

type
  TframeLogin = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

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

end.
