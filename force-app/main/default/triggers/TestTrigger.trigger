trigger TestTrigger on Account (before delete,before insert,after insert,before update,after update,after undelete,after delete) {
       if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate )) {  //To check if the record is Before Insert.
           if(!Trigger.new.isEmpty())  //  to check record is not empty
           {
               AccountTriggerHandler1.handleBeforeInsert(Trigger.new);
           }
       }
      if(Trigger.isAfter && Trigger.isUpdate)
       {
           if(!Trigger.new.isEmpty())  //  to check record is not empty
           {
               AccountTriggerHandler1.handleAfterInsert(Trigger.new);
           }
       }
    if(Trigger.isBefore && Trigger.isDelete) //To check if the record is Before Insert.
       {
           if(!Trigger.old.isEmpty())  //  to check record is not empty
           {
               AccountTriggerHandler1.handleBeforeDelete(Trigger.old);
           }
       }
}