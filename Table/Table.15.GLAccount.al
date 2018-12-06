tableextension 50200 T15_GLAccount_Extension extends "G/L Account"
{
    fields
    {
        field(50200;"Reconcile Allowed";Boolean)
        {
        }

        field(50201;"Last Reconcile-ID";Code[20])
        {
        }

        field(50202;"Reconcile Balance";Decimal)
        {
        }
        field(50203;"Last Doc. Reconcile-ID";Code[20])
        {
        }
        
        field(50204;"Doc. Reconcile Balance";Decimal)
        {
        }
        field(50205;"Doc. Reconcile Filter";Code[20])
        {
        }        
    }
    
    var
        myInt : Integer;
}