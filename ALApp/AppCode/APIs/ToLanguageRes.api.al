page 52004 WH_LanguageResources
{
    PageType = API;
    Caption = 'Take Order Language Resources';
    EntityName = 'takeOrderLanguageResource';
    EntitySetName = 'takeOrderLanguageResources';
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
        PowerAppsLabelMgt: Codeunit WH_TO_LabelManagement;
        LanguageFilter: Text;
    begin
        LanguageFilter := Rec.GetFilter("Language Code");
        PowerAppsLabelMgt.GetLabelsForUserLanguage(Rec, UserSecurityId());
    end;
}