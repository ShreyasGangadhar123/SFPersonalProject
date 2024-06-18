public class EmailClass {
    public static void senSingleEmail()
    {
        Messaging.SingleEmailMessage semail= new Messaging.SingleEmailMessage();
        List<String> sendto= new List<String> {'gangadharshreyas7@gmail.com'};
            semail.setToAddresses(sendto);
            semail.setSubject('Test Mail');
            semail.setPlainTextBody('this is the body');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {semail});
    }

}