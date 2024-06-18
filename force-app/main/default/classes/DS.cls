public with sharing class DS {
   public static void main()
   {
       List<Integer> lists= new List<Integer>();
       lists.add(1);
       lists.add(200);
       lists.add(2);
       lists.add(78);
       lists.add(5);
       
       System.debug('The list is='+lists);
       lists.sort();
       System.debug('The sorted list is='+ lists);
   }
}