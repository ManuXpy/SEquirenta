/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Genericos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import java.io.InputStream;
import java.util.Properties;

/**
 *
 * @author !mX ***Made on Earth by Humans***
 */
public class Conexion {

    // Instancia estática y privada (Corazón del Singleton)
    private static Conexion instance = null;
    private Connection conexion = null;
    public boolean conectado = false;

    // Ruta del archivo de propiedades
    // Ver porque no puedo poner en una direccion diferente
    private static final String CONFIG_FILE ="Genericos/config.properties";

    // Constructor PRIVADO (Restringe la creación de instancias)
    private Conexion() {
        Properties props = new Properties();
        String url;
        String driver;
        String user;
        String pass;

        try (InputStream input = getClass().getClassLoader().getResourceAsStream(CONFIG_FILE)) {

            if (input == null) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, "No se pudo encontrar el archivo " + CONFIG_FILE);
                throw new Exception("Archivo de configuración no encontrado.");
            }

            // Cargar las propiedades
            props.load(input);

            // Asignar los valores leídos
            driver = props.getProperty("db.driver");
            url = props.getProperty("db.url.base") + props.getProperty("db.name");
            user = props.getProperty("db.user");
            pass = props.getProperty("db.password");

            // 2. Proceso de Conexión
            Class.forName(driver);
            conexion = DriverManager.getConnection(url, user, pass);
            conectado = true;
            conexion.setAutoCommit(false);

        } catch (ClassNotFoundException e) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, "Driver de BD no encontrado.", e);
            JOptionPane.showMessageDialog(null, "Conexion Fallida: Driver", "AVISO", JOptionPane.ERROR_MESSAGE);
            conectado = false;
        } catch (SQLException e) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, "Error de SQL al conectar.", e);
            JOptionPane.showMessageDialog(null, "Conexion Fallida: SQL", "AVISO", JOptionPane.ERROR_MESSAGE);
            conectado = false;
        } catch (Exception e) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, "Error de IO/Archivo: " + e.getMessage());
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
