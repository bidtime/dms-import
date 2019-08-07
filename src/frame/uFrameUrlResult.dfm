object frameUrlResult: TframeUrlResult
  Left = 0
  Top = 0
  Width = 645
  Height = 534
  Align = alClient
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 305
  object Splitter1: TSplitter
    Left = 0
    Top = 353
    Width = 645
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 295
    ExplicitWidth = 100
  end
  object memoResult: TMemo
    Left = 0
    Top = 356
    Width = 645
    Height = 178
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
    ExplicitWidth = 451
    ExplicitHeight = 141
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 645
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
    object Button2: TButton
      Left = 511
      Top = 6
      Width = 75
      Height = 25
      Caption = 'post'
      TabOrder = 0
      OnClick = Button2Click
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
  end
end
