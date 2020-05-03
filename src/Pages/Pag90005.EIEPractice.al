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
            action(Switch)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycodeunit.Switch();
                end;
            }
            action(ForLoop)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycodeunit.ForLoop();
                end;
            }
            action(ForEachLoop)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycodeunit.ForEachLoop();
                end;
            }
            action(WhileDo)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycodeunit.WhileDo();
                end;
            }
            action(BreakStatement)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycodeunit.BreakStatement();
                end;
            }
        }
    }

    var
        Mycodeunit: Codeunit MyCodeunit;

}