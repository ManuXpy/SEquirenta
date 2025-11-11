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

    private String sintaxiSql;
    private PreparedStatement preparedStatement;
    private ResultSet resultado;
    private Conexion conexion;

    @Override
    public boolean verificarUsuario(AccesoDTO AccesoDTO) {
        try {
            sintaxiSql = null;
            conexion = new Conexion();
            //sintaxiSql = "SELECT usuario, pass FROM t_usuarios where usuario =? AND pass =SHA1(?)";
            sintaxiSql = "SELECT nombre_usuario,contrasena FROM public.usuarios where nombre_usuario=? AND contrasena=?";
            preparedStatement = conexion.getConexion().prepareStatement(sintaxiSql);
            preparedStatement.setObject(1, AccesoDTO.getNombre_usuario());
            preparedStatement.setObject(2, AccesoDTO.getContrasena());

            resultado = preparedStatement.executeQuery();
            if (resultado.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccesoDAOIMPLET.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } finally {
            if (conexion != null) {
                conexion.desConectarBD();
            }
        }
        return false;

    }
}
