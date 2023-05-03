codeunit 52001 WH_SampleDataGenerator
{
    procedure DeleteDemoDataForPowerApps()
    var
        itemRecord: Record Item;
        cutsomerRecord: Record Customer;
    begin
        UpdateItemWithGTIN('1928-S', '');
        UpdateItemWithGTIN('SP-SCM1004', '');
        UpdateItemWithGTIN('1906-S', '');
        UpdateItemWithGTIN('1980-S', '');
    end;

    procedure GenerateDemoDataForPowerApps()
    begin
        GenerateDemoDataForTakeMyOrder();
    end;

    procedure GenerateDemoDataForTakeWarehouseHelper()
    begin
        // Set up barcodes for items
        UpdateItemWithGTIN('1928-S', '5901234123457');
        UpdateItemWithGTIN('SP-SCM1004', '9312345678907');
        UpdateItemWithGTIN('1906-S', '9780201379624');
        UpdateItemWithGTIN('1980-S', '9780201376532');
    end;

    procedure UpdateItemWithGTIN(itemNumber: Text; gtin: Text)
    var
        itemRecord: Record Item;
    begin
        if itemRecord.Get(itemNumber) then begin
            itemRecord.Validate(GTIN, gtin);
            itemRecord.Modify(true);
        end;
    end;
}