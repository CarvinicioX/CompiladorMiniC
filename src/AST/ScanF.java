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
public class ScanF extends Statement{
    Flag f;
    Variable v;

    public ScanF(Flag f, Variable v) {
        this.f = f;
        this.v = v;
    }
    
    
}
    