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
public class If_Statement extends Statement{
    Boolean_Expression b;
    Statement_Inside_If s;

    public If_Statement(Boolean_Expression b, Statement_Inside_If s) {
        this.b = b;
        this.s = s;
    }
    
    
}
