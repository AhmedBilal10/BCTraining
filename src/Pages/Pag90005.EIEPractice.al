page 90005 PracticePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Test Page';



    actions
    {
        area(Processing)
        {
            action(UpdateCustomer)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycodeunit.UpdateCustomer();
                end;
            }
            action(ItemInfo)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycodeunit.ItemInfo();
                end;
            }
        }
    }

    var
        Mycodeunit: Codeunit MyCodeunit;

}