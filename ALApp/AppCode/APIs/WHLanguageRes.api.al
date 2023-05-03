page 52006 WH_LanguageResourcesWH
{
    PageType = API;
    Caption = 'Warehouse helper language resources';
    EntityName = 'warehousehelperlanguageresource';
    EntitySetName = 'warehousehelperlanguageresources';
    APIPublisher = 'microsoft';
    APIGroup = 'powerApps';
    APIVersion = 'beta';

    InsertAllowed = false;
    ModifyAllowed = false;
    SourceTable = WH_Labels;
    SourceTableTemporary = true;
    Extensible = false;
    ODataKeyFields = "Label ID";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(labelId; Rec."Label ID")
                {
                    Caption = 'Label Id';
                }
                field(displayName; Rec."Text Value")
                {
                    Caption = 'Text Value';
                }
                field(languageCode; Rec."Language Code")
                {
                    Caption = 'Language Code';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    var
        PowerAppsLabelMgt: Codeunit WH_WH_LabelManagement;
        LanguageFilter: Text;
    begin
        LanguageFilter := Rec.GetFilter("Language Code");
        PowerAppsLabelMgt.GetLabelsForUserLanguage(Rec, UserSecurityId());
    end;
}