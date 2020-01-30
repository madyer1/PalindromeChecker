public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{

    String newWord = onlyLetters(noSpaces(word));
  if(noCapitals(newWord).equals(reverse(noCapitals(newWord)))){
    return true;
  }
    return false;
}
public String reverse(String str)
{
  String rWord = "";
  for(int i=str.length()-1;i>=0;i--){
    rWord += str.substring(i,i+1);
  }
  return rWord;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String newWord = "";
  for(int i=0;i<sWord.length();i++){
    if(sWord.substring(i,i+1).equals(" ")){
    }
    else{
      newWord += sWord.substring(i,i+1);
    }
  }
  return newWord;
}
public String onlyLetters(String sString){
  String result = "";
  for(int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      result += sString.substring(i,i+1);
    }
  }
  return result;
}


