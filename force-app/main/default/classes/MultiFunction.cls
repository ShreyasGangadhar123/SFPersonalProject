public class MultiFunction {
   public static List<Account> insertAccounts(List<Account> accountToInsert)
   {
       insert accountToInsert;
       return accountToInsert;
   }
    public static Account insertAccounts(Account accountToInsert)
   {
       insert accountToInsert;
       return accountToInsert;
   }
    public static List<Account> getAllAccount()
    {
        List<Account> acc= [Select Name,Phone From Account];
        return acc;    
    }
    public static void printAllAccount()
    {
        List<Account> accounts= getAllAccount();
        for(Account acc: accounts)
        {
            System.debug('Record: '+accounts);
        }
    }
}