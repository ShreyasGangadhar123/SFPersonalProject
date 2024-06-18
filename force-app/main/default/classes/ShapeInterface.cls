public class ShapeInterface
{
    private Integer a,b,c;
    private String s;
    private Double area,perimeter;
    public ShapeInterface()
    {  a=0;
        b=0;
        c=0;
        area=0;
        perimeter=0;
    }
    public void setValue(Integer l,Integer br,Integer h)
    {
        a=l;
        b=br;
        c=h;
    }
    public void setShape(String s)
    {
        if(s=='Circle')
        {
            area= 3.14*a*a;
            perimeter= 2*3.14*a;
        }
        else if(s=='Rectangle')
        {
                area=b*a ;
                perimeter= (2*(a+b)) ;
        }
        else if(s=='Triangle')
        {
            area= 0.5*b*c;
            perimeter= a+b+c;
        }
    }
    Public Double getArea()
    {
        return area;
    }
    public Double getPerimeter()
    {
        return perimeter;
    }
}