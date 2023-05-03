page 52000 WH_SamplePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'PowerApps Sample data';

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
                Caption = 'Generate sample Data';
                trigger OnAction()
                var
                    myCodeUnit: Codeunit WH_SampleDataGenerator;
                begin
                    myCodeUnit.GenerateDemoDataForPowerApps();
                end;
            }
            action(DeleteTestData)
            {
                ApplicationArea = All;
                Promoted = true;
                Caption = 'Delete sample Data';
                trigger OnAction()
                var
                    myCodeUnit: Codeunit WH_SampleDataGenerator;
                begin
                    myCodeUnit.DeleteDemoDataForPowerApps();
                end;
            }
        }
    }
}