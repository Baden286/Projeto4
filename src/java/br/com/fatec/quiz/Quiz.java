package br.com.fatec.quiz;

import java.util.ArrayList;
import java.util.Collections;
public class Quiz {
    private static ArrayList<Question> test;

    public static ArrayList<Question> getTest(){
        
        if (test==null){
        
            test = new ArrayList<>();
            test.add(new Question ("Sao Paulo", "Sao Paulo", new String[]{"santos","Sao Paulo","campinas"}));
            test.add(new Question ("Rio de Janeiro", "Rio de Janeiro", new String[]{"Niteroi","Rio de Janeiro","Parati"}));
            test.add(new Question("Rio Grande do Sul","Porto Alegre", new String[]{"Caxias","Porto Alegre","Pelotas"}));
            test.add(new Question ("Parana","Curitiba", new String[]{"Pamana","curitiba","Corinthias"}));
            test.add(new Question ("Goias","Goiania", new String[]{"Goiania","Santos","Vila Bela"}));
            test.add(new Question ("Alemanha","Berlin",new String[]{"Asmara","Berlin","Mônaco"}));
            test.add(new Question ("Angola","Luanda",new String[]{"Luanda","Manila","Malabo"}));
            test.add(new Question ("Austrália","Camberra",new String[]{"Camberra","Otava","Jamena"}));
            test.add(new Question ("Chile","Santiago",new String[]{"Pequin","Santiago","Seul"}));
        
        //Misturar a lista    
        Collections.shuffle(test);
        
       }
        return test;
    }
}
