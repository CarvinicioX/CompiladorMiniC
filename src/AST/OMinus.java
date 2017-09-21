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
public class OMinus extends ExpressionP{
    Term t;
    ExpressionP e;
    public OMinus(Term t, ExpressionP e){
        this.t = t;
        this.e = e;
    }
}
