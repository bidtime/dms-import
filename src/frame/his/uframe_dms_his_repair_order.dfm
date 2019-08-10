inherited frame_dms_his_repair_order: Tframe_dms_his_repair_order
  Width = 443
  Height = 293
  ExplicitHeight = 510
  inherited Splitter1: TSplitter
    Width = 443
    ExplicitWidth = 738
  end
  inherited memoResult: TMemo
    Width = 443
    ExplicitWidth = 738
  end
  inherited GroupBox1: TGroupBox
    Width = 443
    ExplicitWidth = 738
    inherited edtUrl: TEdit
      Text = 'api/dms/import/dms_his_repair_order/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 22,'
        #9'"store_id": 1,'
        #9'"order_no": "order_no",'
        #9'"repair_type": "repair_type",'
        #9'"custom_name": "custom_name",'
        #9'"custom_mobile": "custom_mobile",'
        #9'"repair_time": "2019-08-07 00:00:00",'
        #9'"plate_no": "plate_no",'
        #9'"model_name": "model_name",'
        #9'"mileage": 1,'
        #9'"consultant_name": "consultant_name",'
        #9'"product_money": 1,'
        #9'"workhour_money": 1,'
        #9'"package_money": 1,'
        #9'"additional_money": 1,'
        #9'"total_discount": 1,'
        #9'"predict_date": "2019-08-07 00:00:00",'
        #9'"create_time": "2019-08-07 00:00:00"'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 439
    end
  end
end
