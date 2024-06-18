trigger AccountHandler on Account (before insert,before update,after insert,after update) {
    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {
             AccountTriggerHandler.updateRating(Trigger.New);
        }
        if(Trigger.isAfter)
        {
            AccountTriggerHandler.createRelatedOpp(Trigger.New);
        }
       
    }
    if(Trigger.isUpdate)
    {
        if(Trigger.isBefore)
        {
            AccountTriggerHandler.updatePhoneDescription(Trigger.New , Trigger.oldMap);
        }
        If(Trigger.isAfter)
        {
            AccountTriggerHandler.updateRelatedOppPhone(Trigger.New,Trigger.oldMap);
        }
    }
}