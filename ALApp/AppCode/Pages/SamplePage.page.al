page 69010 WH_SamplePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Warehouse Helper sample data';

    layout
    {
        area(Content)
        {
            part(itempart; WH_ItemListPart)
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Items with GTIN numbers';
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GenerateTestData)
            {
                ApplicationArea = All;
                Promoted = true;
                Caption = 'Update Items with GTIN numbers';
                trigger OnAction()
                var
                    sampleDataGenerator: Codeunit WH_SampleDataGenerator;
                begin
                    sampleDataGenerator.GenerateDemoDataForPowerApps();
                end;
            }

            action(OpenItemList)
            {
                ApplicationArea = All;
                Promoted = true;
                Caption = 'Items';
                Image = Item;
                RunObject = page "item list";
            }
        }
    }
}