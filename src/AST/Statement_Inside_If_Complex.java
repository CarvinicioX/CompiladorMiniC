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
public class Statement_Inside_If_Complex extends Statement_Inside_If {
    Statement_List sl,sl2;

    public Statement_Inside_If_Complex(Statement_List sl,Statement_List sl2) {
        this.sl = sl;
        this.sl2=sl2;
    }
}
