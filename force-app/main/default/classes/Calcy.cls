public class Calcy {
    private static integer VarSum;
    private static integer VarMult;
    
    public static integer Addition(integer numA,integer numB)
    {
        VarSum= numA+numB;
        return VarSum;
    }
    public static void Multiplication(integer numC, integer numD)
    {
        VarMult= numC*numD;
        system.debug('Multiplication:='+VarMult);
    }
}