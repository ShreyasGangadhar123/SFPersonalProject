trigger OpportunityTrigger on Opportunity (before insert) {
      OpportunityTriggerHandler.handleBeforeInsert(Trigger.New);
}