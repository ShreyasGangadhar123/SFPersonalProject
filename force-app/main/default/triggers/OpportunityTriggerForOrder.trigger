trigger OpportunityTriggerForOrder on Opportunity (after insert, after update) {
    Set<Id> oppIdSet = new Set<Id>();
    List<Order> ordList = new List<Order>();
    
    for(Opportunity opp: Trigger.new) {
        if(opp.StageName == 'Closed Won' && (Trigger.isInsert || opp.StageName != Trigger.oldMap.get(opp.Id).StageName)){
            if(opp.AccountId != null) {
                oppIdSet.add(opp.Id);
                Order ord = new Order();
                ord.OpportunityId = opp.Id;
                ord.AccountId = opp.AccountId;
                ord.EffectiveDate = opp.CloseDate;
                ord.Status= 'Draft';
                ord.Pricebook2Id = opp.Pricebook2Id;
                ordList.add(ord);
            }
        }
    }
    
    if(!ordList.isEmpty()) {
        insert ordList;
        Map<Id, Order> ordMap = new Map<Id, Order>();
        List<OrderItem> oiList = new List<OrderItem>();
        for(Order ord: ordList) {
            ordMap.put(ord.OpportunityId, ord);
        }
        
        for(Opportunity opp: [Select Id, AccountId, CloseDate, (select Id, Name, ProductCode, Quantity, PricebookEntryId, UnitPrice, OpportunityId from OpportunityLineItems) from Opportunity where Id IN: oppIdSet]) {
            for(OpportunityLineItem oli: opp.OpportunityLineItems) {
                OrderItem oi = new OrderItem();
                oi.OrderId = ordMap.get(opp.Id).Id;
                oi.Quantity = oli.Quantity;
                oi.PricebookEntryId = oli.PricebookEntryId;
                oi.UnitPrice = oli.UnitPrice;
                oiList.add(oi);
            }
        }
        
        if(!oiList.isEmpty()) {
            insert oiList;
        }
    }
}