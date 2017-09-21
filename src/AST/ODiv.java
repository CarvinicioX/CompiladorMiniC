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
public class ODiv extends TermP {
    
    Factor f;
    TermP p;
    public ODiv(Factor f, TermP p){
        this.f = f;
        this.p = p;
    }
}
