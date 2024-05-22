package uno.dos.tres.service.cookies;

import java.util.Random;

public class WordEncryptionImpl implements uno.dos.tres.service.WordEncryption {

    private String reverse(String str) {
        StringBuilder reversed = new StringBuilder(str);
        return reversed.reverse().toString();
    }

    public String removeFirstSymbolAndReverse(String str) {
        String myString = str.substring(1);
        String reversedString = reverse(myString);
        return reversedString;
    }

    public String addRandomCharacterAndReverse(String str) {
        Random random = new Random();
        char randomChar = (char) ('a' + random.nextInt(26));
        String updateWord = str + randomChar;
        String reversedWord = reverse(updateWord);
        return reversedWord;
    }

}
