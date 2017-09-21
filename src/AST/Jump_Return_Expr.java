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
public class Jump_Return_Expr extends Jump_Statement {
    Expression e;

    public Jump_Return_Expr(Expression e) {
        this.e = e;
    }
    
    
}
