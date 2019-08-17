inherited frame_crm_base_product: Tframe_crm_base_product
  Width = 443
  Height = 293
  inherited Splitter1: TSplitter
    Width = 443
    ExplicitWidth = 893
  end
  inherited memoResult: TMemo
    Width = 443
    ExplicitWidth = 893
    ExplicitHeight = 199
  end
  inherited GroupBox1: TGroupBox
    Width = 443
    ExplicitWidth = 893
    inherited edtUrl: TEdit
      Text = 'api/dms/import/crm_base_product/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"act_count": 1,'
        #9'"apply_serie": "apply_serie",'
        #9'"apply_type": "apply_type",'
        #9'"bar_code": "bar_code",'
        #9'"base_num": 1,'
        #9'"brief_desc": "brief_desc",'
        #9'"c_time": 1,'
        #9'"car_model": "car_model",'
        #9'"code": "489",'
        #9'"cost_type": "other",'
        #9'"createTime": 1566021881654,'
        #9'"creatorId": 1,'
        #9'"creatorName": "1",'
        #9'"delFlag": 0,'
        #9'"desc": "desc",'
        #9'"edate": 1566021881654,'
        #9'"figure": "figure",'
        #9'"good_type_id": 1,'
        #9'"good_unit_id": 1,'
        #9'"grade_1": 1,'
        #9'"grade_2": 1,'
        #9'"grade_3": 1,'
        #9'"heavy_buyer_price": 1,'
        #9'"index_code": "index_code",'
        #9'"install_way": 1,'
        #9'"is_common": 1,'
        #9'"is_fav": 1,'
        #9'"is_free": 1,'
        #9'"is_member_discount": "1",'
        #9'"is_weixin": 1,'
        #9'"last_buy_price": 1,'
        #9'"last_price": 1,'
        #9'"last_price_notax": 1,'
        #9'"load_index": "load_index",'
        #9'"location_name": "location_name",'
        #9'"maintain_cycle": 1,'
        #9'"mall_price": 1,'
        #9'"model": "model",'
        #9'"modifierId": 1,'
        #9'"modifierName": "1",'
        #9'"modifyTime": 1566021881654,'
        #9'"name": "name",'
        #9'"name_trim": "name_trim",'
        #9'"oil_capacity": "oil_capacity",'
        #9'"oil_class": "oil_class",'
        #9'"oil_viscosity": "oil_viscosity",'
        #9'"origin": "origin",'
        #9'"origin_price": 1,'
        #9'"pic1": "pic1",'
        #9'"pic2": "pic2",'
        #9'"pic3": "pic3",'
        #9'"platform": 1,'
        #9'"pmodel": 1,'
        #9'"points": 1,'
        #9'"points_to_money": 1,'
        #9'"product_brand": 1,'
        #9'"product_type_id": 1,'
        #9'"proxy_count": 1,'
        #9'"ptype": "deposit",'
        #9'"refund_count": 1,'
        #9'"repair_price": 1,'
        #9'"rest_payment": 1,'
        #9'"sales_price": 1,'
        #9'"sdate": 1566021881654,'
        #9'"send_type": 1,'
        #9'"speed_level": "speed_level",'
        #9'"status": 1,'
        #9'"stock_lowest": 1,'
        #9'"supplier_id": 1,'
        #9'"tire_diameter": "tire_diameter",'
        #9'"tire_flat": "tire_flat",'
        #9'"tire_speed_level": "tire_speed_level",'
        #9'"tire_width": "tire_width",'
        #9'"unit": "unit",'
        #9'"vid": 1,'
        #9'"weixin_mall_type": 1,'
        #9'"work_hour": 1'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 439
    end
    inherited btnCheck: TButton
      OnClick = nil
    end
  end
end
