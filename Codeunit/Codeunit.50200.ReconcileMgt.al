codeunit 50200 ConsileMgt
{

    Permissions = tabledata "G/L Entry"=rm;

    trigger OnRun();
    begin
    end;
        
    procedure fConsileApplyID(pvRecGLentry:Record "G/L Entry");
    var
        lRecGLAccount : Record "G/L Account";
    begin
        
        if not pvRecGLentry.FindSet then
          error(TxtErrNothingToProcess);

        // Perform checks
        repeat
          lRecGLAccount.GET(pvRecGLentry."G/L Account No.");
          lRecGLAccount.TestField("Direct Posting",true);
          lRecGLAccount.TestField("Reconcile Allowed");
          pvRecGLentry.TestField(Reconciled,false);
        until pvRecGLentry.next=0;

        // Update the Last Reconcile-ID on the G/L Account
        CASE lRecGLAccount."Last Reconcile-ID" = '' of
          true : lRecGLAccount."Last Reconcile-ID" := '00000001';
          false: lRecGLAccount."Last Reconcile-ID" := IncStr(lRecGLAccount."Last Reconcile-ID");
        end;

        pvRecGLentry.FindSet;
        repeat
          pvRecGLentry."Reconcile-ID" := lRecGLAccount."Last Reconcile-ID";
          pvRecGLentry.Reconciled := true;
          pvRecGLentry.Modify(false);
        until pvRecGLentry.next=0;


        
    end;

    var
        myInt : Integer;
        TxtErrNothingToProcess: TextConst ENU = 'Nothing to process!', NLD = 'Niets te verwerken!';
}