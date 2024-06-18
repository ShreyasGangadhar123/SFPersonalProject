public class InnerClass {
        public string companyName;
        public string ceo;
        public integer employee;
        public long revenue;
      List<Client> customers = new List<Client>();
  
    public void addNewCustomer(String clientName, String website ,String email,Long phone)
    {
        Client customer = new Client(clientName,website ,email,phone);
        customers.add(customer);
    }
    public void getAllCustomer()
    {
        for(Client customer:customers)
        {
            System.debug('Client name:'+customer.clientName+' Website:'+customer.website+' Email:'+customer.email+' Phone:'+customer.phone);
        }
    }
    public class Client
    {
        public string clientName;
        public string website;
        public string email;
        public long phone;
        
        public Client(String clientName, String website ,String email,Long phone)
        {
            this.clientName=clientName;
            this.website=website;
            this.email=email;
            this.phone=phone;            
        }
    }
}