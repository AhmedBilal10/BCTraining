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

    procedure Switch()
    var
        Number: Integer;
    begin
        Number := 2;
        case Number of
            1, 2, 9:
                MESSAGE('1, 2, or 9.');
            10 .. 100:
                MESSAGE('In the range from 10 to 100.');
            else
                MESSAGE('Neither 1, 2, 9, nor in the range from 10 to 100.');
        end;
    end;

    procedure ForLoop()
    var
        I: Integer;
        J: Integer;
        A: array[5, 7] of integer;
    begin
        for I := 1 to 5 do
            for J := 1 to 7 do
                A[I, J] := 23;

        Message('%1', A[2, 4]);
    end;

    procedure ForEachLoop()
    var
        customerName: Text;

        customerNames: List of [Text];
    begin
        customerNames.Add('Ahmed');
        customerNames.Add('Bilal');
        foreach customerName in customerNames do
            message(customerName);
        Message('%1', customerNames.Count());
    end;

    procedure WhileDo()
    var
        I: Integer;
    begin
        while I < 6 do begin
            I := I + 1;
            Message(format(I));
        end;
    end;

    procedure BreakStatement()
    var
        Count: Integer;
    begin
        while Count < 1000 do begin
            Count := Count + 1;
            MESSAGE(FORMAT(Count));
            if Count = 10 then
                break;
        end;
    end;


}