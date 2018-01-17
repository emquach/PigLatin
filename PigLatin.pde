public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	//return -1;
  int dex = -1;
  for(int i = 0; i< sWord.length(); i++)
  if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u' )
    return i;
    return dex;
}



public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
  //words that begin with vowels will be + "way"
    return sWord + "way";
  }
  else if(sWord.substring(0,2).equals("qu"))
  {
  //words that begin with "qu" will be moved to the end + "ay"
    return sWord.substring(2) + "quay";
  }
  
   else if(findFirstVowel(sWord) > 0)
  {
  //words that begin with consonants will be moved to the end + "ay"
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}