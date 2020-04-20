page 90001 "EIE Course List"
{
    Caption = 'Course List';
    PageType = List;
    Editable = false;
    CardPageId = "EIE Course Card";
    UsageCategory = Documents;
    SourceTable = ABCourse;
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(Code; Code) { ApplicationArea = All; }
                field(Name; Name) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
            }
        }
    }
}