public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");

  //remaking "lines" to just be a string of text  
  for (int i = 0; i<lines.length; i++) {
    String S = new String();
    String newS = new String();
    String finalS = new String();
    for (int u =0; u<lines[i].length(); u++) {
      if (Character.isLetter(lines[i].charAt(u))==true) {
        public void setlines[u](char lines[i].charAt(u)){
          
        }  
      }
    }
    for (int o=0; o<lines[i].length(); i++) {
        if (lines[i].charAt(o)!=' ') {
          //set lines to new text
        }
    } 
    //set lines to final text lowercase
}

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
//palindrome function
public boolean palindrome(String finalS)
{
  String checker = reverse(finalS);
  if (checker.equals(finalS)) {
    return true;
  } else {
    return false;
  }
}

//reverse function
public String reverse(String finalS)
{
  String sNew = new String();
  for (int i=finalS.length()-1; i>=0; i--) {
    sNew = sNew + finalS.substring(i, i+1);
  }
  return sNew;
}
