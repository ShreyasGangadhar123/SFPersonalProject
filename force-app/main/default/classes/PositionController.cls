//modify1
//modify2345
public with sharing class PositionController {  public static List<Position__c> getAllPositions(){  return [SELECT Id, Name, Department__c   FROM Position__c];  } }