package br.com.fatec.quiz;

import java.util.ArrayList;

public class Quiz {
    private static ArrayList<Question> test;

    public static ArrayList<Question> getTest(){
        
        if (test==null){
        
            test = new ArrayList<>();
            test.add(new Question ("Sa"))
            test.add(new Question ("Alemanha","Berlin",new String[]{"Asmara","Berlin","Mônaco"}));
            test.add(new Question ("Angola","Luanda",new String[]{"Luanda","Manila","Malabo"}));
            test.add(new Question ("Austrália","Camberra",new String[]{"Camberra","Otava","Jamena"}));
            test.add(new Question ("Chile","Santiago",new String[]{"Pequin","Santiago","Seul"}));
        
        Collections
        
        }
        return test;
    }
}
