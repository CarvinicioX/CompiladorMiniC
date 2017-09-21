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
public class PrintFExpr extends PrintF{
    
    Expression e;
    String s;

    public PrintFExpr(Expression e, String s) {
        this.e = e;
        this.s = s;
    }
    
    
    
}
