inherited frame_dms_buy_detail: Tframe_dms_buy_detail
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
      Text = 'api/dms/import/dms_buy_detail/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 142,'
        #9'"store_id": 1,'
        #9'"buy_number": "201928080005",'
        #9'"product_id": 1,'
        #9'"cost_price": "1",'
        #9'"cost_price_notax": "1",'
        #9'"buy_count": 1,'
        #9'"add_rate": 1,'
        #9'"amount": "1",'
        #9'"amount_notax": "1",'
        #9'"location_id": 1,'
        #9'"location_name": "location_name",'
        #9'"desc": null,'
        #9'"c_time": "2019-08-08 01:28:07",'
        #9'"status": 1'
        '}')
    end
  end
end
