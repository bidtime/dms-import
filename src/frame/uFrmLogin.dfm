inherited frameLogin: TframeLogin
  Width = 443
  Height = 293
  ExplicitHeight = 510
  inherited Splitter1: TSplitter
    Width = 443
    ExplicitWidth = 724
  end
  inherited memoResult: TMemo
    Width = 443
    ExplicitWidth = 652
    ExplicitHeight = 167
  end
  inherited GroupBox1: TGroupBox
    Width = 443
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
  end
end
