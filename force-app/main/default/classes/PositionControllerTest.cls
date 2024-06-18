//modify2
//modify3456
@isTest 
public with sharing class PositionControllerTest {  
@isTest  public static void testgetAllPositions()
{  
Position__c p1 = new Position__c(Name='Position1', Department__c='IT');  
insert p1;  Position__c p2 = new Position__c(Name='Position2', Department__c='Engineering');  
insert p2;  p1.Name = 'Position1';  update p1;  p2.Name = 'Position2';  update p2;  
List<Position__c> positions = PositionController.getAllPositions();  
System.assertEquals(2, positions.size());  
} }