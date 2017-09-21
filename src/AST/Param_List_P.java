/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AST;

import java.util.ArrayList;

/**
 *
 * @author C5220696
 */
public class Param_List_P extends Param_List {
    ArrayList<Param_Type_List> list = new ArrayList();
    
    
    public Param_List_P(){
        
    }
    
    public void add(Param_Type_List p){
        list.add(p);
    }
    
    
}
