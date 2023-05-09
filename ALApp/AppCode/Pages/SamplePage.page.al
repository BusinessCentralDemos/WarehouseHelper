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
        }
    }
}