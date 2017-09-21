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
public  class While_Statement extends Statement {
    Boolean_Expression be;
    Statement_Inside_While swl;

    public While_Statement(Boolean_Expression be, Statement_Inside_While swl) {
        this.be = be;
        this.swl = swl;
    }
    
    
}
