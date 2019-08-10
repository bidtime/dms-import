object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #25968#25454#29983#25104#24037#20855' ver1.2  2017-10-19 by riverbo'
  ClientHeight = 630
  ClientWidth = 1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1084
    Height = 19
    ButtonHeight = 19
    ButtonWidth = 62
    Caption = 'ToolBar1'
    List = True
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Caption = '  query   '
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 62
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      AlignWithMargins = True
      Left = 70
      Top = 0
      Caption = '   toJson   '
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 132
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object cbxResultDTO: TCheckBox
      Left = 140
      Top = 0
      Width = 83
      Height = 19
      Caption = 'ResultDTO'
      TabOrder = 0
    end
    object ToolButton5: TToolButton
      Left = 223
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 231
      Top = 0
      Caption = '      toSql  '
      ImageIndex = 4
      OnClick = ToolButton7Click
    end
    object ToolButton6: TToolButton
      Left = 293
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object cbxBatchSql: TCheckBox
      Left = 301
      Top = 0
      Width = 45
      Height = 19
      Caption = 'batch'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object ToolButton8: TToolButton
      Left = 346
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object edtURL: TEdit
      Left = 354
      Top = 0
      Width = 160
      Height = 19
      TabOrder = 2
      Text = 'http://172.16.200.233:8082/'
    end
    object ToolButton10: TToolButton
      Left = 514
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 522
      Top = 0
      Caption = 'update'
      ImageIndex = 5
      OnClick = ToolButton9Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 1090
    Height = 597
    ActivePage = TabSheet11
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #25968#25454#24211#36830#25509
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1082
        Height = 179
        Align = alTop
        Caption = 'DB '#36830#25509#23646#24615
        TabOrder = 0
        object Label9: TLabel
          Left = 23
          Top = 154
          Width = 46
          Height = 13
          Caption = 'password'
        end
        object Label8: TLabel
          Left = 23
          Top = 127
          Width = 48
          Height = 13
          Caption = 'userName'
        end
        object serverLabel: TLabel
          Left = 23
          Top = 50
          Width = 31
          Height = 13
          Caption = 'server'
        end
        object Label2: TLabel
          Left = 23
          Top = 23
          Width = 53
          Height = 13
          Caption = 'driverClass'
        end
        object Label1: TLabel
          Left = 23
          Top = 75
          Width = 20
          Height = 13
          Caption = 'port'
        end
        object Label3: TLabel
          Left = 231
          Top = 23
          Width = 36
          Height = 13
          Caption = 'charset'
        end
        object Label4: TLabel
          Left = 23
          Top = 102
          Width = 45
          Height = 13
          Caption = 'database'
        end
        object btnSaveDbInfo: TButton
          Left = 350
          Top = 96
          Width = 75
          Height = 25
          Caption = #20445#23384#36830#25509
          TabOrder = 0
          OnClick = btnSaveDbInfoClick
        end
        object edtPort: TEdit
          Left = 103
          Top = 71
          Width = 241
          Height = 21
          TabOrder = 1
          Text = 'edtPort'
        end
        object cbxCharset: TComboBox
          Left = 279
          Top = 19
          Width = 65
          Height = 21
          TabOrder = 2
          Text = 'utf8'
          Items.Strings = (
            'utf8')
        end
        object edtUserName: TEdit
          Left = 103
          Top = 124
          Width = 241
          Height = 21
          TabOrder = 3
          Text = 'userName'
        end
        object edtPassword: TEdit
          Left = 103
          Top = 151
          Width = 241
          Height = 21
          PasswordChar = '*'
          TabOrder = 4
          Text = 'password'
        end
        object btnTestDbInfo: TButton
          Left = 350
          Top = 43
          Width = 75
          Height = 25
          Caption = #27979#35797#36830#25509
          TabOrder = 5
          OnClick = btnTestDbInfoClick
        end
        object cbxDriverId: TComboBox
          Left = 103
          Top = 19
          Width = 105
          Height = 21
          ItemIndex = 0
          TabOrder = 6
          Text = 'MySQL'
          Items.Strings = (
            'MySQL'
            'MSSQL'
            'Ora'
            'MSAcc'
            'DB2')
        end
        object edtServer: TEdit
          Left = 103
          Top = 45
          Width = 241
          Height = 21
          TabOrder = 7
          Text = 'edtServer'
        end
        object edtDatabase: TEdit
          Left = 103
          Top = 98
          Width = 241
          Height = 21
          TabOrder = 8
          Text = 'edtDatabase'
        end
        object FDGUIxFormsMemo1: TFDGUIxFormsMemo
          Left = 431
          Top = 19
          Width = 274
          Height = 154
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 9
          Visible = False
          WordWrap = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'SQL'#26597#35810
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 185
        Width = 1082
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 3
        ExplicitTop = 89
        ExplicitWidth = 942
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 337
        Width = 1082
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 249
        ExplicitWidth = 696
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 189
        Width = 1082
        Height = 148
        Align = alTop
        DataSource = dmCarGoods.DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object FDGUIxFormsMemoSql: TFDGUIxFormsMemo
        Left = 0
        Top = 0
        Width = 1082
        Height = 185
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'select * from a_brand')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        WordWrap = False
      end
      object FDGUIxFormsMemoResult: TFDGUIxFormsMemo
        Left = 0
        Top = 341
        Width = 1082
        Height = 228
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Result')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 2
        WordWrap = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Http user login'
      ImageIndex = 2
      inline frameLogin1: TframeLogin
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'dms_storeroom'
      ImageIndex = 3
      inline frame_dms_storeroom_shelflocation1: Tframe_dms_storeroom_shelflocation
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'dms_repair_workhour'
      ImageIndex = 4
      inline frame_dms_repair_workhour1: Tframe_dms_repair_workhour
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'dms_his_repair_order'
      ImageIndex = 5
      inline frame_dms_his_repair_order1: Tframe_dms_his_repair_order
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 154
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'dms_his_repair_order_product'
      ImageIndex = 6
      inline frame_dms_his_repair_order_product1: Tframe_dms_his_repair_order_product
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'dms_his_repair_order_workhours'
      ImageIndex = 7
      inline frame_dms_his_repair_order_workhours1: Tframe_dms_his_repair_order_workhours
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'dms_finance_client'
      ImageIndex = 8
      inline frame_dms_finance_client1: Tframe_dms_finance_client
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'crm_base_product'
      ImageIndex = 9
      inline frame_crm_base_product1: Tframe_crm_base_product
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 942
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'crm_base_supplier'
      ImageIndex = 10
      inline frame_crm_base_supplier1: Tframe_crm_base_supplier
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 1082
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'dms_buy'
      ImageIndex = 11
      inline frame_dms_buy1: Tframe_dms_buy
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 1082
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'dms_buy_detail'
      ImageIndex = 12
      inline frame_dms_buy_detail1: Tframe_dms_buy_detail
        Left = 0
        Top = 0
        Width = 1082
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 569
        inherited Splitter1: TSplitter
          Width = 1082
          ExplicitWidth = 1082
        end
        inherited memoResult: TMemo
          Width = 1082
          Height = 213
          ExplicitWidth = 1082
          ExplicitHeight = 213
        end
        inherited GroupBox1: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBGrid1: TDBGrid
            Width = 1078
          end
        end
      end
    end
  end
end
