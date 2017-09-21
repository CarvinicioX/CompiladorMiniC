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
public class Variable_List {
    ArrayList<Variable_Init> list = new ArrayList();
    
    public Variable_List(Variable_Init v){
        list.add(v);
    }
    
    
    public void add_init(Variable_Init v){
        list.add(v);
    }
    
}
