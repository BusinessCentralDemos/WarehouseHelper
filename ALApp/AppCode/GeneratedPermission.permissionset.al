permissionset 52000 WH_Permissions
{
    Assignable = true;
    Permissions = tabledata WH_Labels = RIMD,
        table WH_Labels = X,
        codeunit WH_TO_LabelManagement = X,
        codeunit WH_WH_LabelManagement = X,
        codeunit WH_SampleDataGenerator = X,
        codeunit WH_ItemImages = X,
        page WH_CustomersWithImage = X,
        page WH_ItemWithImage = X,
        page WH_LanguageResources = X,
        page WH_SamplePage = X,
        page WH_CustomerListPart = X,
        page WH_ItemListPart = X;
}