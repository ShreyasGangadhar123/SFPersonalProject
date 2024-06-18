public class SingleEmailClass {
  Public static void sendSingleEmailMethod(){

 Messaging.reserveSingleEmailCapacity(2);
 Messaging.SingleEmailMessage mymail = new Messaging.SingleEmailMessage();
 String[] toaddresses = new String[] {'shreyasrajugangadhar@gmail.com'}; 
 String[] ccaddresses = new String[] {'gangadharshreyas7@gmail.com'};
 String[] bccaddresses = new String[] {'gangadharshreyas309@gmail.com'};

 mymail.setToAddresses(toAddresses);
 mymail.setCcAddresses(ccAddresses);
 mymail.setBccAddresses(bccAddresses);
 mymail.setReplyTo('Support@ShreyasIndustries.com');
 mymail.setSenderDisplayName('Salesforce Support-Shreyas Industries');
 mymail.setSubject('An email from Shreyas Industries Customer Support');
 mymail.setPlainTextBody('This email has been sent through Apex');
 mymail.setHtmlBody('<p> This email has been sent through Apex checking</p>');

 
      Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mymail });
      System.debug(mymail);
      System.debug(results);
  }
}