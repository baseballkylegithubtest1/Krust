public virtual class Customer_Ticket{
    public String status ;

    public virtual void close(){
        status = 'close';
        system.debug('status: '+status);
    }
    //other code
}