unit uFrmUrlParam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TframeUrlParam = class(TFrame)
    memoCtx: TMemo;
    edtUrl: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Button2: TButton;
  private
    { Private declarations }
    //FServer: string;
    //FAPIUrl: string;
  public
    { Public declarations }
    procedure server(const srvPort: string);
    //property Server: string read FServer write FServer;
    //property APIUrl: string read FAPIUrl write FAPIUrl;
  end;

implementation

uses uCharSplit;

{$R *.dfm}

{ TframeUrlParam }

procedure TframeUrlParam.server(const srvPort: string);
  function getUrl(S: string; srvPort: string): string;
  var tmp: string;
  begin
    if S.StartsWith('/') then begin
      S := S.Substring(1, S.Length);
    end;
    if not srvPort.EndsWith('/') then begin
      //srvPort := srvPort.Substring(0, S.Length - 1);
      srvPort := srvPort + '/';
    end;
    if S.startsWith('http') then begin
      if srvPort.StartsWith('http') then begin
        tmp := TCharSplit.getSplitIdx(srvPort, '/', 2);
        Result := TCharSplit.setSplitIdx(S, '/', 2, tmp);
      end else begin
        Result := TCharSplit.setSplitIdx(S, '/', 2, srvPort);
      end;
    end else begin
      Result := srvPort + S;
    end;
  end;
begin
  self.edtUrl.text := getUrl(self.edtUrl.Text, srvPort);
end;

end.
