public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  String allLettersLines[] = new String[lines.length];
  String noSpacesLines[] = new String[lines.length];
  String finalLines[] = new String[lines.length];
  println("there are " + lines.length + " lines");

  //making line all letters  
  for (int i = 0; i<lines.length; i++) {
    for (int u =0; u<lines[i].length(); u++) {
      if (Character.isLetter(lines[i].charAt(u))==true) {
        allLettersLines[i] = allLettersLines[i] + lines[i].charAt(u);
      }
    }
  }  

  //removing spaces  
  for (int i = 0; i<lines.length; i++) {  
    for (int o=0; o<allLettersLines[i].length(); i++) {
      if (allLettersLines[i].charAt(o)!=' ') {
        noSpacesLines[i] = noSpacesLines[i] + allLettersLines[i].charAt(o);
      }
    }
  }

  //making everything lowercase
  for (int i=0; i<lines.length; i++) {
    for (int p=0; p<allLettersLines[i].length(); p++) {
      finalLines[i] =  finalLines[i] + allLettersLines[i].toLowerCase();
    }
  }  

  //what actually runs  
  for (int i=0; i < lines.length; i++) {
    if (palindrome(finalLines[i])==true)
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
  if (checker.equals(str)) {
    return true;
  } else {
    return false;
  }
}

//reverse function-OK
public String reverse(String word)
{
  String sNew = new String();
  for (int i=word.length()-1; i>=0; i--) {
    sNew = sNew + word.substring(i, i+1);
  }
  return sNew;
}
