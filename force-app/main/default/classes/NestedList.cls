public class NestedList {
 public static void main()
 {
 
     List<List<integer>> ListMaster= new List<List<integer>>();
     List<integer> L1= new List<integer>{10,29,25};
     List<integer> L2= new List<integer>{23,17,15};
     List<integer> L3= new List<integer>{65,78,29};
     ListMaster.add(L1);
     ListMaster.add(L2);
     ListMaster.add(L3);
     System.debug('Output='+ListMaster);
 }
}