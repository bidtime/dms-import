﻿unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.VCLUI.Memo, uDbConfig,
  uFrameUrlResult, uFrmLogin, uframe_storeroom_shelflocation,
  uframe_dms_repair_workhour, uframe_dms_his_repair_order,
  uframe_dms_his_repair_order_product, uframe_dms_his_repair_order_workhours;

type
  TfrmMain = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    ToolButton3: TToolButton;
    cbxResultDTO: TCheckBox;
    ToolButton4: TToolButton;
    GroupBox1: TGroupBox;
    btnSaveDbInfo: TButton;
    Label9: TLabel;
    Label8: TLabel;
    serverLabel: TLabel;
    Label2: TLabel;
    cbxDriverId: TComboBox;
    edtServer: TEdit;
    edtPort: TEdit;
    Label1: TLabel;
    cbxCharset: TComboBox;
    edtUserName: TEdit;
    edtPassword: TEdit;
    Label3: TLabel;
    edtDatabase: TEdit;
    Label4: TLabel;
    btnTestDbInfo: TButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    cbxBatchSql: TCheckBox;
    ToolButton7: TToolButton;
    FDGUIxFormsMemoSql: TFDGUIxFormsMemo;
    FDGUIxFormsMemoResult: TFDGUIxFormsMemo;
    FDGUIxFormsMemo1: TFDGUIxFormsMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ToolButton8: TToolButton;
    edtURL: TEdit;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    frameLogin1: TframeLogin;
    TabSheet4: TTabSheet;
    frame_dms_storeroom_shelflocation1: Tframe_dms_storeroom_shelflocation;
    TabSheet5: TTabSheet;
    frame_dms_repair_workhour1: Tframe_dms_repair_workhour;
    TabSheet6: TTabSheet;
    frame_dms_his_repair_order1: Tframe_dms_his_repair_order;
    TabSheet7: TTabSheet;
    frame_dms_his_repair_order_product1: Tframe_dms_his_repair_order_product;
    TabSheet8: TTabSheet;
    frame_dms_his_repair_order_workhours1: Tframe_dms_his_repair_order_workhours;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveDbInfoClick(Sender: TObject);
    procedure btnTestDbInfoClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
  private
    { Private declarations }
    procedure dbInfoToCtrls(const u: TDbConfig);
    procedure dbInfoToCtrls_auto();
    procedure ctrsToDbInfo(var u: TDbConfig);
    procedure dbTestOrSaveCfg(const bSave: boolean=false);
    function getPath: string;
    procedure DbInfoDoAfter(const S: string);
    procedure setHttpUrl();
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uDmCarGoods, uDmBase, uDataSetConvertSql, uDataSetConvertJson;

{$R *.dfm}

function TfrmMain.getPath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

procedure TfrmMain.btnTestDbInfoClick(Sender: TObject);
begin
  dbTestOrSaveCfg(false);
end;

procedure TfrmMain.btnSaveDbInfoClick(Sender: TObject);
begin
  dbTestOrSaveCfg(true);
end;

procedure TfrmMain.dbInfoToCtrls(const u: TDbConfig);
begin
  try
    self.cbxDriverId.Text := u.driverId;
    self.cbxCharset.Text := u.CharacterSet;
    self.edtServer.Text := u.Server;
    self.edtPort.Text := u.Port;
    self.edtDatabase.Text := u.database;
    self.edtUserName.Text := u.User_Name;
    self.edtPassword.Text := u.password;
  finally
  end;
end;

procedure TfrmMain.dbInfoToCtrls_auto;
var u: TDbConfig;
begin
  u := TDbConfig.Create;
  try
    dmBase.LoadConfig(u);
    self.dbInfoToCtrls(u);
  finally
    u.Free;
  end;
end;

procedure TfrmMain.DbInfoDoAfter(const S: string);
begin
  self.FDGUIxFormsMemo1.Lines.Add('----------');
  self.FDGUIxFormsMemo1.Lines.Add(S);
end;

procedure TfrmMain.dbTestOrSaveCfg(const bSave: boolean);
var u: TDbConfig;
begin
  u := TDbConfig.Create;
  try
    ctrsToDbInfo(u);
    //
    FDGUIxFormsMemo1.Show;
    self.FDGUIxFormsMemo1.Lines.Text := u.toConfig;
    Application.ProcessMessages;
    //
    if not bSave then begin
      DmBase.Connection(u.toConfig, DbInfoDoAfter);
    end else begin
      DmBase.SaveConfig(u, DbInfoDoAfter);
    end;
  finally
    u.Free;
  end;
end;

procedure TfrmMain.ctrsToDbInfo(var u: TDbConfig);
begin
  try
    u.driverId := self.cbxDriverId.Text;
    u.CharacterSet := self.cbxCharset.Text;
    u.Server := self.edtServer.Text;
    u.Port := self.edtPort.Text;
    u.database := self.edtDatabase.Text;
    u.User_Name := self.edtUserName.Text;
    u.password := self.edtPassword.Text;
  finally
  end;
end;

procedure TfrmMain.setHttpUrl();
  procedure setFrames(const S: string);
  begin
    self.frameLogin1.server(S);
    self.frame_dms_storeroom_shelflocation1.server(S);
    self.frame_dms_repair_workhour1.server(S);
    self.frame_dms_his_repair_order1.server(S);
    self.frame_dms_his_repair_order_product1.server(S);
    //
    self.frame_dms_his_repair_order_workhours1.server(S);
    //self.frame_dms_his_repair_order_product1.server(S);
  end;
begin
  setFrames(self.edtURL.Text);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  if FileExists(self.getPath() + 'my.sql') then begin
    self.FDGUIxFormsMemoSql.Lines.LoadFromFile(self.getPath() + 'my.sql');
  end else begin
  end;
  dbInfoToCtrls_auto();
  //
  setHttpUrl();
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  self.FDGUIxFormsMemoSql.Lines.SaveToFile(self.getPath() + 'my.sql', TEncoding.UTF8);
end;

procedure TfrmMain.ToolButton1Click(Sender: TObject);
begin
  DmCarGoods.openSql(self.FDGUIxFormsMemoSql.Text);
end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
begin
  self.FDGUIxFormsMemoResult.Text := TDataSetConvertJson.convert(DmCarGoods.FDQuery1, cbxResultDTO.Checked);
end;

procedure TfrmMain.ToolButton7Click(Sender: TObject);
begin
  self.FDGUIxFormsMemoResult.Text := TDataSetConvertSql.convert(DmCarGoods.FDQuery1, self.cbxBatchSql.Checked);
end;

procedure TfrmMain.ToolButton9Click(Sender: TObject);
begin
  setHttpUrl();
end;

end.
