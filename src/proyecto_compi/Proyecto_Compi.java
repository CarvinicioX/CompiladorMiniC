/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto_compi;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author car_v
 */
public class Proyecto_Compi {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        buildLexer();
        buildParser();
        try {
            parser parser = new parser(new lexer(new FileReader(new File("src/binario/decimal/bin.txt"))));
            parser.parse();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void buildLexer() {
        jflex.Main.generate(new File("src/proyecto_compi/lexer.flex"));
    }

    public static void buildParser() {
        String params[] = new String[5];
        params[0] = "-destdir";
        params[1] = "src/proyecto_compi/";
        params[2] = "-parser";
        params[3] = "parser";
        params[4] = "src/proyecto_compi/parser.cup";
        try {
            java_cup.Main.main(params);
        } catch (IOException ex) {
            Logger.getLogger(Proyecto_Compi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(Proyecto_Compi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
