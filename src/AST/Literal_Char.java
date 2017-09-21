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
public class Literal_Char extends Constant{
        char c;

    public Literal_Char(String c) {
        this.c = c.charAt(0);
    }
    
}
