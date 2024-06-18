public class PatternComplex {
  public static void main()
  {
      
      for(integer i=1;i<=5;i++)
      {String s=' ';
          for(integer j=i+1;j<=5;j++)
          {
              if(j==1||j==3||j==5)
                  s=s+'1';
              else
                  s=s+'0';
          }
          System.debug(s);
      }
  }
}