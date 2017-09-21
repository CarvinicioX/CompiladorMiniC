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
public class Logical_Expression {
    Logical_Operator O;
    Boolean_Expression e;

    public Logical_Expression(Logical_Operator O, Boolean_Expression e) {
        this.O = O;
        this.e = e;
    }
    
    public Logical_Expression(){
        
    };
    
    
}
