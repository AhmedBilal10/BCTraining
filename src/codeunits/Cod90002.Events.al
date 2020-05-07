codeunit 90002 Events
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Conf./Personalization Mgt.", 'OnRoleCenterOpen', '', false, false)]
    procedure OnRoleCenterOpen();
    begin
        Message('Event for opening role center');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CustVendBank-Update", 'OnAfterUpdateCustomer', '', false, false)]
    procedure OnAfterUpdateCustomer(var Customer: Record Customer; Contact: Record Contact);
    begin
        Message('customer updated');
    end;


}