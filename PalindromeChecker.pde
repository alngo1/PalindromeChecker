public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String normal = noSpaces(onlyLetters(noCapitals(word)));
  String reverse = reverse(noSpaces(onlyLetters(noCapitals(word))));
  if(normal.equals(reverse))
    return true;
  else
    return false;
}
public String reverse(String str)
{
  String sNew = new String();
  sNew = "";
  int last = str.length()-1;
  for(int i = last; i >= 0; i--){
    sNew = sNew + str.substring(i, i+1);
  }
  return sNew;
}

public String noSpaces(String sWord){
  if(sWord.length() == 0)
    return sWord;
  String result = "";
  for(int i = 0; i < sWord.length(); i++)
    if(sWord.charAt(i) != ' ')
      result = result + sWord.substring(i,i+1);
  return result;
}

public String onlyLetters(String sString){
  if(sString.length()==0)
    return sString;
  String result = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.charAt(i);
  }
  return result;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
