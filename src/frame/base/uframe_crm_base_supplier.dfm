inherited frame_crm_base_supplier: Tframe_crm_base_supplier
  Width = 814
  Height = 539
  inherited Splitter1: TSplitter
    Width = 814
    ExplicitWidth = 753
  end
  inherited memoResult: TMemo
    Width = 814
    Height = 183
    ExplicitHeight = 139
  end
  inherited GroupBox1: TGroupBox
    Width = 814
    inherited edtUrl: TEdit
      Text = 'api/dms/import/crm_base_supplier/insert'
    end
    inherited memoCtx: TMemo
      Lines.Strings = (
        '{'
        #9'"id": 191,'
        #9'"store_id": 1,'
        #9'"supplier_store_id": 1,'
        #9'"name": "name",'
        #9'"code": "653",'
        #9'"tel": "tel",'
        #9'"mobile": "mobile",'
        #9'"fax": "fax",'
        #9'"mail": "mail",'
        #9'"cdate": "2019-08-08 00:00:00",'
        #9'"postcode": "postcode",'
        #9'"website": "website",'
        #9'"linkman": "linkman",'
        #9'"business_id": 1,'
        #9'"business_num": "business_num",'
        #9'"boss": "boss",'
        #9'"province": 1,'
        #9'"city": 1,'
        #9'"address": "address",'
        #9'"bank": "bank",'
        #9'"account": "account",'
        #9'"open_date": "2019-08-08 00:00:00",'
        #9'"business_scope": "business_scope",'
        #9'"payable": 1,'
        #9'"acc_payable": 1,'
        #9'"acc_payment": 1,'
        #9'"remark": "",'
        #9'"status": 1,'
        #9'"is_del": 1,'
        #9'"type": 1'
        '}')
    end
    inherited DBGrid1: TDBGrid
      Width = 639
    end
  end
end
