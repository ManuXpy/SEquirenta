/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOIMPLENT;

import DAO.AccesoDAO;
import DTO.AccesoDTO;
import Genericos.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author !mX ***Made on Earth by Humans***
 */
public class AccesoDAOIMPLET implements AccesoDAO {

    @Override
    public boolean verificarUsuario(AccesoDTO AccesoDTO) {

        boolean usuarioValido = false;

        // 1. Obtener la conexión Singleton
        Conexion conexionSingleton = Conexion.getInstance();

        // Define la sintaxis SQL localmente
        String sintaxiSql = "SELECT nombre_usuario, contrasena FROM public.usuarios where nombre_usuario=? AND contrasena=?";

        // Usar try-with-resources para PreparedStatement
        // Esto asegura que el PreparedStatement se cierre automáticamente.
        try (PreparedStatement preparedStatement = conexionSingleton.getConexion().prepareStatement(sintaxiSql)) {

            preparedStatement.setObject(1, AccesoDTO.getNombre_usuario());
            preparedStatement.setObject(2, AccesoDTO.getContrasena());

            // Usar try-with-resources para ResultSet
            // Esto asegura que el ResultSet se cierre automáticamente.
            try (ResultSet resultado = preparedStatement.executeQuery()) {

                if (resultado.next()) {
                    usuarioValido = true;
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccesoDAOIMPLET.class.getName()).log(Level.SEVERE, "Error de SQL al verificar usuario.", ex);
            usuarioValido = false;
        }
        // El Singleton de conexión debe permanecer abierto.
        return usuarioValido;
    }
}
