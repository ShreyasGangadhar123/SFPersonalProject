trigger PenClassTrigger on Parker_Pen__c (before insert, before update) {
    PenClassDemonstration.appDiscountPen(Trigger.new);
}