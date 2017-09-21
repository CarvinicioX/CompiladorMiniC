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
public class Statement_List {
    public ArrayList<Statement> sl = new ArrayList();
    
    public Statement_List(){
        sl = new ArrayList();
    }
    
    public void add(Statement s){
        sl.add(s);
    }
    
}
