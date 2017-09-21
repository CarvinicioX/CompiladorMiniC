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
public class Variable_ArrayID extends Variable {
    public String s;
    public Expression e;

    public Variable_ArrayID(String s, Expression e) {
        this.s = s;
        this.e = e;
    }
    
    
    
}
