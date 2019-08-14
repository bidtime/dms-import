inherited frame_dms_his_repair_order_workhours: Tframe_dms_his_repair_order_workhours
  inherited Splitter1: TSplitter
    ExplicitWidth = 738
  end
  inherited memoResult: TMemo
    ExplicitWidth = 451
    ExplicitHeight = 154
  end
  inherited GroupBox1: TGroupBox
    ExplicitWidth = 451
    inherited edtUrl: TEdit
      Text = 'api/dms/import/dms_his_repair_order_workhours/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 2,'
        #9'"store_id": 1,'
        #9'"order_no": "8",'
        #9'"workhour_code": "workhour_code",'
        #9'"workhour_name": "workhour_name",'
        #9'"rated_workhour": 1,'
        #9'"work_price": 1,'
        #9'"worker_name": "worker_name",'
        #9'"dispatcher": 1,'
        #9'"oper_time": "2019-08-07 20:55:53",'
        #9'"create_time": "2019-08-07 20:55:53"'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 439
    end
  end
end
