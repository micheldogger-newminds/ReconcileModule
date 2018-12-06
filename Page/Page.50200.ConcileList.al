page 50200 "Consile List"
{
    PageType = List;
    SourceTable = "G/L Entry";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date";"Posting Date")
                {
                    
                }
                field("Document Type";"Document Type")
                {
                    
                }
                field("Document No.";"Document No.")
                {
                    
                }
                field("Reconcile-ID";"Reconcile-ID")
                {
                    
                }
                field(Description;Description)
                {
                    
                }
                field(Amount;Amount)
                {
                    
                }
                field("Debit Amount";"Debit Amount")
                {
                    
                }       
                field("Credit Amount";"Credit Amount")
                {
                    
                }    
                field("External Document No.";"External Document No.")
                {
                    
                }      
            }                  
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(SetAppliesToID)
            {
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }

    var
        gCduConsileMgt : Codeunit ConsileMgt;    
}