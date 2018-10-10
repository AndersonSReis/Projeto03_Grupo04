/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg;

import java.util.ArrayList;

/**
 *
 * @author MARIA
 */
public class Bd_pessoas {
    private static final ArrayList<Cadastro> CADASTROS = new ArrayList<>();
    public static ArrayList<Cadastro> getCadastros(){
        if (CADASTROS.size()==0){
        Cadastro c1 = new Cadastro();
        c1.setDado("Anderson","32862888867","andersonsr@yahoo.com","13982247001");
        CADASTROS.add(c1);
         Cadastro c2 = new Cadastro();
        c2.setDado("Paola","328628999867","paolagc@yahoo.com","13982247011");
        CADASTROS.add(c2);
         Cadastro c3 = new Cadastro();
        c3.setDado("Wandes","32862877767","josewande@yahoo.com","13982247111");
        CADASTROS.add(c3);
        
        }
        return CADASTROS;
        
    }
    
}

