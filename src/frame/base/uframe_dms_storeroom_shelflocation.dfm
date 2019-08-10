inherited frame_dms_storeroom_shelflocation: Tframe_dms_storeroom_shelflocation
  Width = 443
  Height = 293
  inherited Splitter1: TSplitter
    Width = 443
    ExplicitWidth = 753
  end
  inherited memoResult: TMemo
    Width = 443
    ExplicitHeight = 76
  end
  inherited GroupBox1: TGroupBox
    Width = 443
    inherited edtUrl: TEdit
      Text = 'api/dms/import/dms_storeroom_shelflocation/insert'
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
    inherited DBGrid1: TDBGrid
      Width = 439
    end
  end
end
