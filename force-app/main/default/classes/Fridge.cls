public class Fridge 
{
    public Integer modelNumber
    {
        get{ return modelNumber; }
        set{ modelNumber = value; if(modelNumber<0) modelNumber=0;}
    }
}