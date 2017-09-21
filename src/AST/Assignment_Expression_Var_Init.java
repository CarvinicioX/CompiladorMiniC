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
public class Assignment_Expression_Var_Init extends Assignment_Expression {
    Variable_Init v;
    Assignment_ExpressionP a;
    
    public Assignment_Expression_Var_Init(Variable_Init v, Assignment_ExpressionP a){
        this.v = v;
        this.a = a;
    }
         
}
