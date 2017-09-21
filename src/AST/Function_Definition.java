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
public class Function_Definition {
    
    Type t;
    Params p;
    Statement_List s;
    
    public Function_Definition(Type t, Params p, Statement_List s){
        this.t=t;
        this.p=p;
        this.s=s;
    }
    
    
}
