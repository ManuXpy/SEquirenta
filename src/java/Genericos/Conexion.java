/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Genericos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author !mX ***Made on Earth by Humans***
 */
public class Conexion {

    // 1. Instancia estática y privada (Corazón del Singleton)
    private static Conexion instance = null;

    // Nomenclatura corregida a minúscula para la convención de variables de Java
    private Connection conexion = null;

    // PostgresSQL
    private final String ControladorBD = "org.postgresql.Driver";
    private final String baseDatos = "SEquirenta";
    private final String usuario = "postgres";
    private final String password = "tortilla";

    // Recomendación: Eliminar, ya que ResultSet debe ser local en el DAO.
    // private ResultSet ResultSet; 
    public boolean conectado = false;

    // 2. Constructor PRIVADO (Restringe la creación de instancias)
    private Conexion() {
        String url = "jdbc:postgresql://localhost:5432/" + baseDatos;
        try {
            Class.forName(ControladorBD);
            conexion = DriverManager.getConnection(url, usuario, password);
            conectado = true;
            conexion.setAutoCommit(false);
            //...
        } catch (ClassNotFoundException e) {
            System.out.println(Arrays.toString(e.getStackTrace()));
            JOptionPane.showMessageDialog(null, "Conexion Fallida", "AVISO", JOptionPane.INFORMATION_MESSAGE);
            conectado = false;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Conexion Fallida", "AVISO", JOptionPane.INFORMATION_MESSAGE);
            conectado = false;
        }
    }

    // 3. Método Estático y Público para Obtener la Instancia
    public static Conexion getInstance() {
        if (instance == null) {
            // Instancia "Lazy": solo se crea si es la primera vez que se llama
            instance = new Conexion();
        }
        return instance;
    }

    public Connection getConexion() {
        return conexion;
    }

    public void desConectarBD() {
        try {
            // Usa la variable con la convención corregida
            if (conexion != null && !conexion.isClosed()) {
                conexion.close();
            }

        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void comit() {
        try {
            if (conexion != null) {
                conexion.commit();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void rollback() {
        try {
            if (conexion != null) {
                conexion.rollback();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
