/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AST;

import java.util.ArrayList;

/**
 *
 * @author C5220696
 */
public abstract class Variable_Declaration extends Statement {
    Type t;
    ArrayList<Variable_Init> list = new ArrayList();
    
    public Variable_Declaration(Type t,ArrayList<Variable_Init> list ){
        this.t=t;
        this.list=list;
    }
    
}
