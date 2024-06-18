public class Palindrome
{
public Boolean isPalindrome(){
//code here
String str='Madam';
Integer len= str.length();
String str1= str.toLowerCase();
String pal= str1.reverse();
System.debug('pal='+pal);
if(str1==pal)
{
    return true;
}
    else
    {
        return false;
    }
}}