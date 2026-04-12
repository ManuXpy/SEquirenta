/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOIMPLENT;

import DAO.GetALLDAO;
import DTO.AccesoDTO;
import DTO.GetALLDTO;
import java.lang.System.Logger;
import Genericos.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;

/**
 *
 * @author !mX ***Made on Earth by Humans***
 */
public class AllGetDAOIMPLE implements GetALLDAO {

    private String sintaxiSql;
    private PreparedStatement preparedStatement;
    private ResultSet resultado;
    private int filasAfectadas;

    @Override
    public Integer getActivos() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean insertar(GetALLDTO dto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean modificar(GetALLDTO dto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(Integer idDto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String allSeleccion() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
//        Conexion conexion = Conexion.getInstance(); // ✅ Singleton
//        ResultSet rs;
//        ArrayList<GetALLDTO> allAdm = new ArrayList<>();
//        try {
//            sintaxiSql = "SELECT id_usuario, nombre_usuario, correo, estado FROM public.usuarios order by id_usuario;";
//            preparedStatement = conexion.getConexion().prepareStatement(sintaxiSql);
//            rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                allAdm.add(new GetALLDTO( // ✅ Tipo correcto
//                        rs.getInt("id_usuario"),
//                        rs.getString("nombre_usuario"),
//                        rs.getString("correo"),
//                        rs.getString("estado")));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(AccesoDAOIMPL.class.getName()).log(Level.SEVERE, null, ex); // ✅ Tu clase real
//        }
//        return new Gson().toJson(allAdm);
//    }
//
//    @Override

    public String allFiltroSeleccion(Integer idFiltro) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Integer getUltimoCodigo() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
