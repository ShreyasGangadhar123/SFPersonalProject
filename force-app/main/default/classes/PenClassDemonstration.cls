public class PenClassDemonstration {
    public static void appDiscountPen(list<Parker_Pen__c> PenListNew)
    {
        for(Parker_Pen__c p:PenListNew)
        {
            if(p.Price__c>=100)
            {
                p.Price__c= p.Price__c-20;
            }
            else if(p.Price__c<100 && p.Price__c>=70)
            {
                p.Price__c= p.Price__c-10;
            }
            else if(p.Price__c<70 && p.Price__c>=50)
            {
                p.Price__c= p.Price__c-10;
            }
            else if(p.Price__c<50 && p.Price__c>=20)
            {
                p.Price__c= p.Price__c-5;
            }
        }
    }
}