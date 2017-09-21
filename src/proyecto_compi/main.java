/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto_compi;

import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java_cup.runtime.Symbol;

/**
 *
 * @author santunez
 */
public class main {

    /* Start the parser */

    static public void main(String argv[]){
        buildLexer();
        buildParser();
        runFile("ejemplo1.cpp");
    }

    private static void buildParser() {
        String params[] = new String[5];

        params[0] = "-destdir";
        params[1] = "src/proyecto_compi/";
        params[2] = "-parser";
        params[3] = "parser";
        params[4] = "src/proyecto_compi/parser.cup";
        try {
            java_cup.Main.main(params);
        } catch (IOException ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void buildLexer() {
        jflex.Main.generate(new File("src/proyecto_compi/lexer.flex"));
    }

    private static void runFile(String file) {
        try {
            parser parser = new parser(new lexer(new FileReader(file)));
            parser.parse();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }
}
