public class privatevar {

    private String name;
    private Integer age;
    public void setName(String n)
    {
        name=n;
    }
    public void setAge(Integer a)
    {
        age=a;
    }
    public String getName()
    {
        return name;
    }
    public Integer getAge()
    {
        return age;
    }
     public void bark(String n,Integer a)
         {
             name=n;
             age=a;
             System.debug('Name of my dog '+name+' age is '+ age);
         }

}