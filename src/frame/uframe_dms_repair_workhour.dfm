inherited frame_dms_repair_workhour: Tframe_dms_repair_workhour
  Width = 744
  Height = 479
  inherited Splitter1: TSplitter
    Width = 744
    ExplicitWidth = 711
  end
  inherited memoResult: TMemo
    Width = 744
    Height = 123
  end
  inherited GroupBox1: TGroupBox
    Width = 744
    inherited edtUrl: TEdit
      Text = 'api/dms/import/dms_repair_workhour/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 13,'
        #9'"store_id": 1,'
        #9'"workhour_code": "88",'
        #9'"workhour_name": "workhour_name",'
        #9'"review_workhour": 1,'
        #9'"review_price": 1,'
        #9'"rated_workhour": 1,'
        #9'"rated_price": 1,'
        #9'"is_universal": "0",'
        #9'"is_discount": "0",'
        #9'"is_sheetmetal": "0",'
        #9'"retrieval_code": "retrieval_code",'
        #9'"state": "0",'
        #9'"workhour_level": "C",'
        #9'"creator": 1,'
        #9'"create_time": "2019-08-07 19:32:12",'
        #9'"is_wash_car": "0"'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 439
    end
  end
end
