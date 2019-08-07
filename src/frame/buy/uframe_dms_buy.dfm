inherited frame_dms_buy: Tframe_dms_buy
  inherited Splitter1: TSplitter
    Width = 451
    ExplicitWidth = 753
  end
  inherited memoResult: TMemo
    Width = 451
    Height = 224
    ExplicitHeight = 224
  end
  inherited GroupBox1: TGroupBox
    Width = 451
    inherited edtUrl: TEdit
      Text = 'api/dms/import/dms_buy/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 76,'
        #9'"buy_number": "201934060003",'
        #9'"store_id": 1,'
        #9'"contact_name": "contact_name",'
        #9'"contact_phone": "contact_phone",'
        #9'"buy_type_id": 1,'
        #9'"supplier_id": 1,'
        #9'"require_reach_date": "require_reach_date",'
        #9'"act_type": 1,'
        #9'"is_sale_proxy": 1,'
        #9'"act_name": "act_name",'
        #9'"creator": 1,'
        #9'"c_time": "2019-08-06 16:34:40",'
        #9'"buyer_id": 1,'
        #9'"buy_time": "2019-08-06 16:34:40",'
        #9'"executor": 1,'
        #9'"exec_time": "2019-08-06 16:34:40",'
        #9'"cashier": 1,'
        #9'"cashier_time": "2019-08-06 16:34:40",'
        #9'"receipts_no": "receipts_no",'
        #9'"status": 1,'
        #9'"desc": null,'
        #9'"app_number": "app_number",'
        #9'"generate_from": "generate_from",'
        #9'"original_number": "original_number",'
        #9'"delivery_address": "delivery_address",'
        #9'"delivery_way_id": 1,'
        #9'"recipient_name": "recipient_name",'
        #9'"recipient_mobile": "recipient_mobile"'
        '}')
    end
  end
end
