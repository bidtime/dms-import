inherited frameLogin: TframeLogin
  Width = 652
  Height = 455
  inherited Splitter1: TSplitter
    Width = 652
    ExplicitWidth = 724
  end
  inherited memoResult: TMemo
    Width = 652
    Height = 167
    ExplicitWidth = 652
    ExplicitHeight = 167
  end
  inherited GroupBox1: TGroupBox
    Width = 652
    ExplicitWidth = 451
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
  end
end
