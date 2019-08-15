inherited frame_crm_member_car: Tframe_crm_member_car
  inherited Splitter1: TSplitter
    ExplicitWidth = 753
  end
  inherited memoResult: TMemo
    ExplicitWidth = 451
    ExplicitHeight = 154
  end
  inherited GroupBox1: TGroupBox
    ExplicitWidth = 451
    inherited edtUrl: TEdit
      Text = 'api/dms/import/crm_member_car/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"address": "address",'
        #9'"car_frame_num": "car_frame_num",'
        #9'"card_num": "C-869",'
        #9'"color": "color",'
        #9'"createTime": 1565852090619,'
        #9'"creatorId": 1,'
        #9'"creatorName": "1",'
        #9'"delFlag": 0,'
        #9'"idcard": "idcard",'
        #9'"insurance_edate": 1565852090619,'
        #9'"invoice_date": 1565852090619,'
        #9'"level": 1,'
        #9'"mobile": "mobile",'
        #9'"model_name": "model_name",'
        #9'"modifierId": 1,'
        #9'"modifierName": "1",'
        #9'"modifyTime": 1565852090619,'
        #9'"name": "name",'
        #9'"plate_no": "plate_no",'
        #9'"points": 1,'
        #9'"pre_top_up": 1,'
        #9'"store_id": 1,'
        #9'"top_up": 1,'
        #9'"working_sum": 1'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 439
    end
  end
end
