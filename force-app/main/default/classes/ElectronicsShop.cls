public class ElectronicsShop {

    public static void applyDiscount(list<Electronic__c> ELNList)
    {
        for(Electronic__c e: ELNList)
        {
            if(e.Type__c=='TV')
            {
                e.Price__c= e.Price__c-50;
            }
            else if(e.Type__c=='LED')
            {
                e.Price__c= e.Price__c-20;
            }
            else if(e.Type__c=='LCD')
            {
                e.Price__c= e.Price__c-30;
            }
        }
    }
}