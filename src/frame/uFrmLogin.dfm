inherited frameLogin: TframeLogin
  inherited Splitter1: TSplitter
    Top = 313
    ExplicitTop = 313
    ExplicitWidth = 724
  end
  inherited memoResult: TMemo
    Top = 316
    Height = 176
    ExplicitTop = 316
    ExplicitWidth = 451
    ExplicitHeight = 176
  end
  inherited GroupBox1: TGroupBox
    Height = 313
    ExplicitWidth = 451
    ExplicitHeight = 313
    inherited Label12: TLabel
      Top = 61
      ExplicitTop = 61
    end
    object Label1: TLabel [2]
      Left = 6
      Top = 36
      Width = 21
      Height = 13
      Caption = 'user'
    end
    object Label2: TLabel [3]
      Left = 294
      Top = 36
      Width = 20
      Height = 13
      Caption = 'pwd'
    end
    inherited edtUrl: TEdit
      Text = 'api/dms/import/user/login'
    end
    inherited memoCtx: TMemo
      Top = 61
      Height = 286
      Lines.Strings = (
        '{'
        '"user": "jss",'
        '"pwd": "123456"'
        '}')
      ExplicitTop = 61
      ExplicitHeight = 286
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
    object Edit1: TEdit
      Left = 56
      Top = 34
      Width = 177
      Height = 21
      TabOrder = 7
      Text = 'jss'
    end
    object Edit2: TEdit
      Left = 328
      Top = 34
      Width = 177
      Height = 21
      TabOrder = 8
      Text = '123456'
    end
  end
end
