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
          
    } 

    keys
    {
        key(GLEntryReconcileKey;Reconciled,"Reconcile-ID")
        {
        }
    }
}