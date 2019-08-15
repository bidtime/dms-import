object frameUrlResult: TframeUrlResult
  Left = 0
  Top = 0
  Width = 784
  Height = 518
  Align = alClient
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 305
  object Splitter1: TSplitter
    Left = 0
    Top = 353
    Width = 784
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 295
    ExplicitWidth = 100
  end
  object memoResult: TMemo
    Left = 0
    Top = 356
    Width = 784
    Height = 162
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
    ExplicitWidth = 451
    ExplicitHeight = 146
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 784
    Height = 353
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 451
    object Label11: TLabel
      Left = 6
      Top = 9
      Width = 35
      Height = 13
      Caption = 'http url'
    end
    object Label12: TLabel
      Left = 6
      Top = 30
      Width = 30
      Height = 13
      Caption = 'param'
    end
    object btnPost: TButton
      Left = 520
      Top = 6
      Width = 75
      Height = 25
      Caption = 'post'
      TabOrder = 0
      OnClick = btnPostClick
    end
    object edtUrl: TEdit
      Left = 56
      Top = 7
      Width = 449
      Height = 21
      TabOrder = 1
      Text = 'api/dms/import/xxxx/insert'
    end
    object memoCtx: TMemo
      Left = 56
      Top = 32
      Width = 449
      Height = 315
      ScrollBars = ssBoth
      TabOrder = 2
    end
    object DBGrid1: TDBGrid
      Left = 520
      Top = 30
      Width = 433
      Height = 317
      DataSource = DataSource1
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object btnImport: TButton
      Left = 725
      Top = 6
      Width = 75
      Height = 25
      Caption = #23548#20837'(O)'
      TabOrder = 4
      OnClick = btnImportClick
    end
    object cbxRows: TCheckBox
      Left = 601
      Top = 11
      Width = 48
      Height = 17
      Caption = #25152#26377
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = dataset
    Left = 656
    Top = 144
  end
  object dataset: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 144
  end
  object OpenDialog1: TOpenDialog
    Left = 576
    Top = 104
  end
end
