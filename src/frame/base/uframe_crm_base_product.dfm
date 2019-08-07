inherited frame_crm_base_product: Tframe_crm_base_product
  Width = 704
  Height = 512
  ExplicitHeight = 504
  inherited Splitter1: TSplitter
    Width = 704
    ExplicitWidth = 753
  end
  inherited memoResult: TMemo
    Width = 704
    Height = 224
    ExplicitWidth = 704
    ExplicitHeight = 224
  end
  inherited GroupBox1: TGroupBox
    Width = 704
    ExplicitWidth = 451
    inherited edtUrl: TEdit
      Text = 'api/dms/import/crm_base_product/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 46,'
        #9'"store_id": 0,'
        #9'"location_code": "1",'
        #9'"location_name": "",'
        #9'"location_area": "",'
        #9'"function_type": 0,'
        #9'"occupy_status": "0",'
        #9'"room_type": "'#33258#26377'",'
        #9'"from_store_id": 0,'
        #9'"remark": "",'
        #9'"status": "1"'
        '}')
    end
  end
end
