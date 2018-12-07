pageextension 50201 GLAccountCardExtension extends "G/L Account Card"
{

    layout
    {
        addafter("Direct Posting")
        {
            field("Reconcile Allowed";"Reconcile Allowed")
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Reconcile Allowed', NLD = 'Afletteren toegestaan';
            }
        }
    }    


    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt : Integer;
}