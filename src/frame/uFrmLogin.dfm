inherited frameLogin: TframeLogin
  Width = 770
  Height = 492
  inherited Splitter1: TSplitter
    Top = 313
    Width = 770
    ExplicitWidth = 724
  end
  inherited memoResult: TMemo
    Top = 316
    Width = 770
    Height = 176
    ExplicitWidth = 451
    ExplicitHeight = 157
  end
  inherited GroupBox1: TGroupBox
    Width = 770
    Height = 313
    ExplicitTop = 40
    ExplicitWidth = 451
    ExplicitHeight = 313
    inherited edtUrl: TEdit
      Text = 'api/dms/import/user/login'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        '"user": "jss",'
        '"pwd": "123456"'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 439
    end
    object Button1: TButton
      Left = 520
      Top = 37
      Width = 75
      Height = 25
      Caption = 'getStore'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
end
