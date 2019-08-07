inherited frame_dms_his_repair_order_product: Tframe_dms_his_repair_order_product
  Width = 790
  Height = 558
  inherited Splitter1: TSplitter
    Width = 790
  end
  inherited memoResult: TMemo
    Width = 790
    Height = 202
    ExplicitHeight = 178
  end
  inherited GroupBox1: TGroupBox
    Width = 790
    inherited edtUrl: TEdit
      Text = 'api/dms/import/dms_his_repair_order_product/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 3,'
        #9'"store_id": 1,'
        #9'"order_no": "802",'
        #9'"product_code": "product_code",'
        #9'"product_name": "product_name",'
        #9'"product_model": "product_model",'
        #9'"product_price": 1,'
        #9'"product_amount": 1,'
        #9'"worker_name": "worker_name",'
        #9'"dispatcher": 1,'
        #9'"oper_time": "2019-08-07 20:46:07",'
        #9'"create_time": "2019-08-07 20:46:07"'
        '}')
    end
  end
end
