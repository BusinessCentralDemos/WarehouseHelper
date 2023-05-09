page 69014 WH_LanguageResources
{
    PageType = API;
    Caption = 'Warehouse Helper Language Resources';
    EntityName = 'WHLanguageResource';
    EntitySetName = 'WHLanguageResources';
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
                field(DisplayName; Rec."Text Value")
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

    trigger OnOpenPage()
    var
        LabelManagement: Codeunit WH_LabelManagement;
        LanguageFilter: Text;
    begin
        LanguageFilter := Rec.GetFilter("Language Code");
        LabelManagement.GetLabelsForLanguage(Rec, LanguageFilter);
    end;
}