codeunit 90000 MyCodeunit
{
    procedure UpdateCustomer()
    var
        cust: Record Customer;
    begin
        cust.SetFilter("Phone No.", '<>%1', '');
        if cust.FindSet() then begin
            repeat
                cust."Address 2" := 'Customer Updated';
                cust.Modify();

            until cust.Next() = 0;
        end;

    end;

    procedure ItemInfo()
    var
        item: Record Item;
        count: Integer;
    begin
        count := 0;
        if item.Get('1896-S') then begin
            item.Blocked := true;
            item.Modify();
        end;

        Clear(item);
        item.SetRange("Unit Cost", 0);
        if item.FindSet() then begin
            repeat
                count := count + 1;
            until item.Next() = 0;
        end;

        Message('There are total %1 items with unit cost 0', count);

    end;

}