/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AST;

/**
 *
 * @author Agile-PC
 */
public class Expression_Increment_Special_Variable extends Expression_Increment {
    Increment_Special I;
    Variable v;
    
    public Expression_Increment_Special_Variable(Variable v,Increment_Special I){
        this.I= I;
        this.v=v;
    }
    
}
