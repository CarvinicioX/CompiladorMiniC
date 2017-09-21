/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AST;

/**
 *
 * @author C5220696
 */
public class Main_Function {
    Function_Definition_List fdl;
    Params p;            
    Statement_List s;

    public Main_Function(Function_Definition_List fdl, Params p, Statement_List s) {
        this.fdl = fdl;
        this.p = p;
        this.s = s;

    }
    
            
       
}
