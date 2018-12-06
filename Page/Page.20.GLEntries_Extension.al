pageextension 50200 GLEntriesExtension extends "General Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addfirst("F&unctions") 
        { 
            action("Reconsile Entries") 
            { 
                ApplicationArea = All; 
                Image = "ApplyEntries"; 
                Promoted = true; 
                PromotedCategory = Process; 
                PromotedIsBig = true; 

                trigger OnAction(); 
                
                begin 
                    Page.RunModal(50200);
                end; 
            } 
        }         
    }
    
    var
        myInt : Integer;
}