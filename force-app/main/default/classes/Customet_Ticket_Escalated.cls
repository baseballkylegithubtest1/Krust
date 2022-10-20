public class Customet_Ticket_Escalated extends Customer_Ticket{
    public virtual class BaseException extends Exception {}
    public class OtherException extends BaseException {}

    public override void close(){
        throw new OtherException('As this is escalated case therefore cannot be closed by normal process');
    }
    //other code
}