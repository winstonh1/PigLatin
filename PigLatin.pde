public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
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
public int findFirstVowel(String sWord){
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1

  ArrayList <String> vowels;
  vowels = new ArrayList <String>();
  vowels.add("a");
  vowels.add("e");
  vowels.add("i");
  vowels.add("o");
  vowels.add("u");
  for (int i = 0; i < sWord.length(); i ++){
    for(int j =0; j < vowels.size(); j++){
      if(sWord.substring(i, i+1).equals(vowels.get(j))){
        return i;
      }
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(sWord.substring(0,2).equals("qu")){
    return sWord.substring(2) + "quay"; 
  }
  else if(findFirstVowel(sWord) == 0){
    return sWord + "way"; 
  }
  else
  {
  return sWord.substring(findFirstVowel(sWord)) 
          + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
}
