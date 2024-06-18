public class DateType {
    public static void mymethod()
    {
 Date d1;
    d1 = Date.today();
    d1 = Date.newInstance(2022, 01, 11);
    System.debug('D1='+(d1.addDays(7)));
}
}