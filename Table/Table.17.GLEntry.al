tableextension 50201 T17_GLEntry_Extension extends "G/L Entry"
{
    fields
    {
        field(50200;Reconciled;Boolean)
        {
        }

        field(50201;"Reconcile-ID";Code[20])
        {
        }    

        field(50202;MyAmount1;Decimal)
        {
        }  

        field(50203;MyAmount2;Decimal)
        {
        }            
    } 

    keys
    {
        key(GLEntryReconcileKey;Reconciled,"Reconcile-ID")
        {
        }
    }
}