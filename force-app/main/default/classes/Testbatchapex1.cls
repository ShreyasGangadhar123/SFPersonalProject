public class Testbatchapex1 {
   batchapex1 myfirstbatch = new batchapex1();
    
    ID Testjob= Database.executeBatch(myfirstbatch,200);
}