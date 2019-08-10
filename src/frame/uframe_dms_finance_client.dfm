inherited frame_dms_finance_client: Tframe_dms_finance_client
  Width = 443
  Height = 293
  ExplicitHeight = 510
  inherited Splitter1: TSplitter
    Width = 443
    ExplicitWidth = 753
  end
  inherited memoResult: TMemo
    Width = 443
    ExplicitWidth = 650
    ExplicitHeight = 150
  end
  inherited GroupBox1: TGroupBox
    Width = 443
    ExplicitWidth = 650
    inherited edtUrl: TEdit
      Text = 'api/dms/import/dms_finance_client/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 53,'
        #9'"store_id": 1,'
        #9'"client_code": "501",'
        #9'"client_name": "client_name",'
        #9'"short_name": "short_name",'
        #9'"retrieval_code": "501",'
        #9'"address": "address",'
        #9'"postcode": "postcode",'
        #9'"prov": 1,'
        #9'"city": 1,'
        #9'"phone": "phone",'
        #9'"fax": "fax",'
        #9'"register_address": "register_address",'
        #9'"work_address": "work_address",'
        #9'"business_register": "business_register",'
        #9'"tax_register": "tax_register",'
        #9'"finance_name": "finance_name",'
        #9'"finance_phone": "finance_phone",'
        #9'"main_name": "main_name",'
        #9'"main_phone": "main_phone",'
        #9'"main_duty": "main_duty",'
        #9'"reserve_name": "reserve_name",'
        #9'"reserve_phone": "reserve_phone",'
        #9'"reserve_duty": "reserve_duty",'
        #9'"account_period": "account_period",'
        #9'"temp_period": "temp_period",'
        #9'"max_debt": 1,'
        #9'"temp_debt": 1,'
        #9'"receivable": 1,'
        #9'"acc_receivable": 1,'
        #9'"acc_receipt": 1,'
        #9'"status": 1,'
        #9'"creator": 1,'
        #9'"create_time": "2019-08-07 23:26:11",'
        #9'"account_opener": "account_opener",'
        #9'"account_name": "account_name",'
        #9'"account_num": "account_num"'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 439
    end
  end
end
