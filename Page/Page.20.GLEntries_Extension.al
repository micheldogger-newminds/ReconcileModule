pageextension 50200 GLEntriesExtension extends "General Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addlast("F&unctions") 
        { 
            action("Reconsile Entries") 
            { 
                ApplicationArea = All; 
                Image = "ApplyEntries"; 
                Promoted = true; 
                PromotedCategory = Process; 
                PromotedIsBig = true; 

                trigger OnAction(); 
                var
                  lRecGLENtry: Record "G/L Entry";
                begin 
                    lRecGLENtry.reset;
                    lRecGLENtry.SetCurrentKey("G/L Account No.","Posting Date");
                    lRecGLENtry.SetRange("G/L Account No.",Rec."G/L Account No.");
                    Page.RunModal(50200,lRecGLENtry);
                end; 
            } 
        }         
    }
    
    var
        myInt : Integer;
}