codeunit 90001 BuiltinFunctions
{
    procedure setRangeMin()
    var
        CustomerRec: Record Customer;
        val: Code[20];
    begin
        CustomerRec.SETFILTER("No.", '100..200');
        Val := CustomerRec.GETRANGEMIN("No.");
        MESSAGE('Lowest value is %1', Val);
    end;

    procedure setRangeMax()
    var
        CustomerRec: Record Customer;
        val: Code[20];
    begin
        CustomerRec.SETFILTER("No.", '100..200');
        Val := CustomerRec.GetRangeMax("No.");
        MESSAGE('Lowest value is %1', Val);
    end;

    procedure strmenu()
    var
        Selection: Integer;
    begin
        Selection := Dialog.STRMENU('Save,Close,Cancel', 3);
    end;

    procedure DialogOpen()
    var
        MyDialog: Dialog;
        MyNext: Integer;
        Text000: Label 'Counting to 4 #1:';
    begin
        MyNext := 0;
        MyDialog.OPEN(Text000, MyNext);
        repeat

            SLEEP(1000);
            MyNext := MyNext + 1;
            MyDialog.UPDATE();
        until MyNext = 4;
        SLEEP(1000);
        MyDialog.CLOSE();
    end;

    procedure IndexOf()
    var
        index: Integer;
        HelloWorld: text;
    begin
        Index := HelloWorld.IndexOf('He', 1);
    end;

    procedure MyIncstr()
    var
        data: Text[60];
    begin
        data := '10';
        Message('Before IncStr value is %1', data);
        Message('After Incstr value is %1', INCSTR(data));
    end;

    procedure RandomNo()
    var
        x: Integer;
    begin
        RANDOMIZE();
        x := RANDOM(5);
        MESSAGE('X=%1', x);
    end;

    procedure Absolute()
    var
        x: Integer;
        y: Integer;
    begin
        x := -10.235; // x is assigned a negative value  
        y := ABS(x); // y is assigned the value of x without sign  
        MESSAGE('value of x= %1 and y= %2', x, y);
    end;


}