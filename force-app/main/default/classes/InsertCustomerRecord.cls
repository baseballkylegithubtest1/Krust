public class InsertCustomerRecord {

    public string FirstName{get;set;}
    public string LastName{get;set;}
    public string Phone{get;set;}   
    public string EmailId{get;set;}

    public PageReference insertCustomer(){

        Contact c = new Contact();
        c.FirstName = FirstName;
        c.LastName = LastName;
        c.Phone = Phone;
        c.Email = EmailId;
        insert c;
        PageReference pageref = new PageReference('/apex/thankspage');
        return pageref;
    }
    
}