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
public class Assignment_ExpressionP_Var extends Assignment_ExpressionP{
    Variable_Init v;
    Assignment_ExpressionP a;

    public Assignment_ExpressionP_Var(Variable_Init v, Assignment_ExpressionP a) {
        this.v = v;
        this.a = a;
    }
    
    
    
    
}
