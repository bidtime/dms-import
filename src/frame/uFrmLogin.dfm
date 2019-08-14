inherited frameLogin: TframeLogin
  inherited Splitter1: TSplitter
    ExplicitWidth = 724
  end
  inherited memoResult: TMemo
    Height = 157
    ExplicitWidth = 451
    ExplicitHeight = 157
  end
  inherited GroupBox1: TGroupBox
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
      Left = 3
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
end
