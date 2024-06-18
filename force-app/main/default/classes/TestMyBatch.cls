public class TestMyBatch
{
 public string cname{get; set;}
 public pageReference show()
 {
  customerBatch mybatch = new customerBatch (cname);

Id id = Database.executeBatch (mybatch, 400);
system.debug ('My Job id' + id);
     return null;
 }
}