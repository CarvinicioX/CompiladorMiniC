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
public class Relational_Expression {
    Expression a,b;
    Relational_Operator o;

    public Relational_Expression(Expression a, Expression b, Relational_Operator o) {
        this.a = a;
        this.b = b;
        this.o = o;
    }
    
    
    
    
    
}
