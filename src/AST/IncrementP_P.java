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
public class IncrementP_P extends IncrementP{
    
    Expression_Increment e;
    IncrementP i;
    
    public IncrementP_P(Expression_Increment e, IncrementP i){
        this.e = e;
        this.i = i;     
    }
    
}
