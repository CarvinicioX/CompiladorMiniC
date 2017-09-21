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
public class Assignment_Statement extends Statement {
    Assignment_Expression a;

    public Assignment_Statement(Assignment_Expression a) {
        this.a = a;
    }
    
    
          
}
