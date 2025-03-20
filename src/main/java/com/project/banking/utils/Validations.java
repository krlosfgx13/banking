package com.project.banking.utils;

public class Validations {

    public static boolean isValidCreditCard(String cardNumber) {
        // Write your code here
        int sum = 0;
        int current = 0;
        String regex = "[^0-9]";
        cardNumber = cardNumber.replaceAll(regex, "");
        cardNumber = cardNumber.replaceAll(" ", "");
        cardNumber = cardNumber.replaceAll("-", "");

        if(cardNumber.length() < 14)
            return false;

        for(int i=cardNumber.length()-1; i>=0; i--){
            current = Character.getNumericValue(cardNumber.charAt(i));
            if(i %2 ==0){
                current = Character.getNumericValue((cardNumber.charAt(i)));
                current *= 2;
                if(current > 9){
                    current -= 9;
                }
            }
            sum += current;
        }
        System.out.println(sum);
        return sum % 10 == 0;
    }

}
