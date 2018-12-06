tableextension 50200 T15_GLAccount_Extension extends "G/L Account"
{
    fields
    {
        field(50200;"Reconcile Allowed";Boolean)
        {
        }

        field(50201;"Last Reconcile-ID";Code[20])
        {
         Editable = false;
        }
    }
    
    var
        myInt : Integer;
}