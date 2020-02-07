public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  
  //what actually runs  
  for (int i=0; i < lines.length; i++) {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    } else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

//palindrome function- OK
public boolean palindrome(String str)
{
  String checker = reverse(str);
  String word1 = onlyLetters(str);
  String word2 = noSpaces(word1);
  String word3 = noCapitals(word2);
  if (checker.equals(word3)) {
    return true;
  } else {
    return false;
  }
}

//reverse function-OK
public String reverse(String word)
{
  String word1 = onlyLetters(word);
  String word2 = noSpaces(word1);
  String word3 = noCapitals(word2);
  String sNew = new String();
  for (int i=word3.length()-1; i>=0; i--) {
    sNew = sNew + word3.substring(i,i+1);
  }
  return sNew;
}



public String onlyLetters(String sString){
  String s = new String();
  for(int i= 0; i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))==true){
      s = s+sString.charAt(i);
    }
  }return s;
}


public String noSpaces(String sWord){
  String noSpace = new String();
  for (int i=0; i<sWord.length(); i++) {
    if (sWord.charAt(i)!=' '){
      noSpace = noSpace + sWord.charAt(i);
    }
  }return noSpace;
}


public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
