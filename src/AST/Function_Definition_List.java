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
public class Function_Definition_List {
    public ArrayList<Function_Definition> sl;
    
    public Function_Definition_List(){
        sl = new ArrayList();
    }
    
    public void add(Function_Definition s){
        sl.add(s);
    }
}
