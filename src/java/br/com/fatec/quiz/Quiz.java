package br.com.fatec.quiz;

import java.util.ArrayList;
import java.util.Collections;

public class Quiz {
    private static ArrayList<Question> test;

    public static ArrayList<Question> getTest(){
                if (test==null){

            test = new ArrayList<>();
            test.add(new Question ("São Paulo","São Paulo",new String[]{"Santos","São Paulo","Campinas"}));
            test.add(new Question ("Rio de Janeiro","Rio de Janeiro",new String[]{"Niteroi","Rio de Janeiro","Parati"}));
            test.add(new Question ("Rio Grande do Sul","Porto Alegre",new String[]{"Caxias","Porto Alegre","Pelotas"}));
            test.add(new Question ("Parana","Curitiba",new String[]{"Curitiba","Parana","Coritiba"}));
            test.add(new Question ("Goias","Goiania",new String[]{"Goiania","Goias","Goiaba"}));
            test.add(new Question ("Santa Catarina","Florianópolis",new String[]{"Florianópolis","Blumenau","Joinvile"}));
            test.add(new Question ("Ceara","Fortaleza",new String[]{"Ceara","Jericoacoara","Fortaleza"}));
            test.add(new Question ("Minas Gerais","Belo Horizonte",new String[]{"Belo Horizonte","Minas Gerais","Ouro Preto"}));
            test.add(new Question ("Espirito Santo","Vitória",new String[]{"Espirito Santo","Capixaba","Vitória"}));
            test.add(new Question ("Bahia","Salvador",new String[]{"Salvador","Porto Seguro","Ilhéus"}));

         // Mistura a lista
            Collections.shuffle(test);
        }
        return test;  }
}
