/*
 * Tohis change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AST;

/**
 *
 * @author Agile-PC
 */
public class Expression_Increment_VarInc extends Expression_Increment{
    Variable v;
    Increment I;
    
    public Expression_Increment_VarInc(Variable v, Increment I){
        this.v = v;
        this.I = I;
    }

  
    
    
}
