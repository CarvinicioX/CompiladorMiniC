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
public class Assignment_Expression_Increment extends Assignment_Expression{
    Expression_Increment e;
    Assignment_ExpressionP a;

    public Assignment_Expression_Increment(Expression_Increment e, Assignment_ExpressionP a) {
        this.e = e;
        this.a = a;
    }
    
    
    
}
