trigger ElecShopTrigger on Electronic__c (before insert,before update) {
  ElectronicsShop.applyDiscount(Trigger.new);
}