/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.awt.event.KeyEvent;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author Antonio
 */
public class conexion {
    public String user = "root";
    public String pass = "";
    public String bd  = "hotel";
    public final String host = "jdbc:mysql://localhost:3306/";
    
    public Connection conexion = null;
    public Statement sentencia;
    public ResultSet resultado;
    public PreparedStatement psPrepararSentencia;
    
    public conexion (){
        try {
            Class.forName("com.mysql.jdbc.Driver"); //Se registra el driver jdbc de mysql
            conexion = DriverManager.getConnection(host+bd+"?useSSL=false",user,pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void actualiza(String sql){
        
        int mensaje = JOptionPane.showConfirmDialog(null, "Desea Actualizar el registro", "Atencion", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
        if (mensaje == 0) {
        
        try {
            
            sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }}
    }
    
    public void actualiza2(String sql){ 
        try {
            
            sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            
        } catch (SQLException ex) {
            //Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
             JOptionPane.showMessageDialog(null, "Error al eliminar, la fila esta siendo utilizada en otra tabla");
        }
    }
    
    public void traeQuery(String sql){
        try {
            sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String BuscaCol(String sql){
        String xx="";
        try {
            ResultSet rs;
            sentencia = conexion.createStatement();
            rs = sentencia.executeQuery(sql);
            if (rs.next()) 
                xx = rs.getString(1);
            
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return xx;
        } 
    
    
    public Date BuscaFecha(String sql){
        Date xx=null;
        try {
            ResultSet rs;
            sentencia = conexion.createStatement();
            rs = sentencia.executeQuery(sql);
            if (rs.next()) 
                xx = rs.getDate(1);
            
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return xx;
        } 
    
    public String fechaymd(Date ddate){
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
        String Fecha = sdf.format(ddate);
        return Fecha;
    }
    
    public String fechadmy(Date ddate){
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/yyyy");
        String Fecha = sdf.format(ddate);
        return Fecha;
    }
    
        public String horahms(Date ddate){
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("hh:mm");
        String Fecha = sdf.format(ddate);
        return Fecha;
    }
        
    public String convertir_fecha(String text) {
        //31/01/2017 al 2017-01-31
        String anho = "", mes = "", dia = "";
        dia = text.substring(0, 2);
        mes = text.substring(3, 5);
        anho = text.substring(6, 10);
        text = anho + "-" + mes + "-" + dia;
        return text;
    }
    
    public boolean validarFecha(String fecha) {
        try {
            java.text.SimpleDateFormat formatoFecha = new java.text.SimpleDateFormat("dd/MM/yyyy");
            formatoFecha.setLenient(false);
            formatoFecha.parse(fecha);
        } catch (java.text.ParseException e) {
            return false;
        }
        return true;
    }
    
    public boolean validarHora(String hora) {
        try {
            java.text.SimpleDateFormat formatohora = new java.text.SimpleDateFormat("HH:mm");
            formatohora.setLenient(false);
            formatohora.parse(hora);
        } catch (java.text.ParseException e) {
            return false;
        }
        return true;
    }
    
    
    
    public String capturavalorcombo(JComboBox combo) {
        int nro = combo.getSelectedItem().toString().trim().indexOf("-");
        String val = combo.getSelectedItem().toString().trim().substring(0, nro);
        return val;
    }
    
    public String capturavalorcampo(JTextField campo) {
        int nro = campo.getText().trim().indexOf("-");
        String val = campo.getText().trim().substring(0, nro);
        return val;
    }
    
        
        
   public void validar_campos(String letras_o_numeros, KeyEvent evt) {
        
        int evento = evt.getKeyChar();
        
       // System.out.println(evento);
        if(evento>00 && evento<=31 || evento==161
           || evento>32 && evento<=38 || evento>=40 && evento<=47
           || evento>=58 && evento<=64 || evento>=91 && evento<=95
           || evento>=123 && evento<=125 || evento>=145 && evento<=146
           || evento>=155 && evento<=159 || evento>=166 && evento<=180
           || evento>=184 && evento<=197 || evento>=200 && evento<=209
           || evento>=217 && evento<=221 || evento==223 
           || evento>=238 && evento<=242 || evento>=244 && evento<=249 
           || evento>=251 && evento<=255 || evento>255){
        
            evt.consume();         
        
        }
        
        
        if(letras_o_numeros.equals("letras")){
            
            if (Character.isDigit(evento) == true) {
            evt.consume();

        }
            
        }else if(letras_o_numeros.equals("numeros")){
            
            if (Character.isDigit(evento) == false) {
            evt.consume();

        }
            
        }
    }
    
    public void validar_campos(String letras_o_numeros, KeyEvent evt, int[] excluir) {
        
        int evento = evt.getKeyChar();
        
        boolean b = false;
        
        //System.out.println(evento);
        if(evento>00 && evento<=31 || evento==161
           || evento>32 && evento<=38 || evento>=40 && evento<=47
           || evento>=58 && evento<=64 || evento>=91 && evento<=95
           || evento>=123 && evento<=125 || evento>=145 && evento<=146
           || evento>=155 && evento<=159 || evento>=166 && evento<=180
           || evento>=184 && evento<=197 || evento>=200 && evento<=209
           || evento>=217 && evento<=221 || evento==223 
           || evento>=238 && evento<=242 || evento>=244 && evento<=249 
           || evento>=251 && evento<=255 || evento>255){
            
            for (int i=0; i<excluir.length;i++){
                if(evento==excluir[i]){
                    b=true;
                }
            }
            
            
            if(b==false){
                evt.consume(); 
            }
        
              
        
        }
        
        
        if(letras_o_numeros.equals("letras")){
            
            if (Character.isDigit(evento) == true && b==false) {
            evt.consume();

        }
            
        }else if(letras_o_numeros.equals("numeros")){
            
            if (Character.isDigit(evento) == false && b==false) {
            evt.consume();

        }
            
        }
    }
    
    public void validar_campos(int[] incluir, String letras_o_numeros, KeyEvent evt) {
        
        int evento = evt.getKeyChar();
        
       // System.out.println(evento);
        
           for (int i=0; i<incluir.length;i++){
                if(evento==incluir[i]){
                   evt.consume();    
                }
            }
        
        if(evento>00 && evento<=31 || evento==161
           || evento>32 && evento<=38 || evento>=40 && evento<=47
           || evento>=58 && evento<=64 || evento>=91 && evento<=95
           || evento>=123 && evento<=125 || evento>=145 && evento<=146
           || evento>=155 && evento<=159 || evento>=166 && evento<=180
           || evento>=184 && evento<=197 || evento>=200 && evento<=209
           || evento>=217 && evento<=221 || evento==223 
           || evento>=238 && evento<=242 || evento>=244 && evento<=249 
           || evento>=251 && evento<=255 || evento>255){
            
                 evt.consume(); 
        
              
        
        }
        
        
        if(letras_o_numeros.equals("letras")){
            
            if (Character.isDigit(evento) == true) {
            evt.consume();

        }
            
        }else if(letras_o_numeros.equals("numeros")){
            
            if (Character.isDigit(evento) == false) {
            evt.consume();

        }
            
        }
    }
    
    
    public void validar_campos(int[] incluir, String letras_o_numeros, KeyEvent evt, int[] excluir) {
        
        int evento = evt.getKeyChar();
       //System.out.println(evento);
        boolean b = false;
        
        
        for (int i=0; i<incluir.length;i++){
                if(evento==incluir[i]){
                   evt.consume();    
                }
            }
        
        //System.out.println(evento);
        if(evento>00 && evento<=31 || evento==161
           || evento>32 && evento<=38 || evento>=40 && evento<=47
           || evento>=58 && evento<=64 || evento>=91 && evento<=95
           || evento>=123 && evento<=125 || evento>=145 && evento<=146
           || evento>=155 && evento<=159 || evento>=166 && evento<=180
           || evento>=184 && evento<=197 || evento>=200 && evento<=209
           || evento>=217 && evento<=221 || evento==223 
           || evento>=238 && evento<=242 || evento>=244 && evento<=249 
           || evento>=251 && evento<=255 || evento>255){
            
            for (int i=0; i<excluir.length;i++){
                if(evento==excluir[i]){
                    b=true;
                }
            }
            
            
            if(b==false){
                evt.consume(); 
            }
        
              
        
        }
        
        
        if(letras_o_numeros.equals("letras")){
            
            if (Character.isDigit(evento) == true && b==false) {
            evt.consume();

        }
            
        }else if(letras_o_numeros.equals("numeros")){
            
            if (Character.isDigit(evento) == false && b==false) {
            evt.consume();

        }
            
        }
    }
    
    
    public String cargar_Lista_reporte(String nombre_select, String tabla, String columna1, String columna2) {
        String s="";
        s= s+"<select name='"+nombre_select+"' style='width: 250px'>";
        try {
            traeQuery("Select "+columna1+","+columna2+" from "+tabla+" order by "+columna1+"");
            while (resultado.next()) {
                s = s + ("<option value ='" + resultado.getString(1) + "'>");
                s = s + (resultado.getString(2));
                s = s + ("</option>");
            }
        } catch (Exception e) {
            out.println("Error al listar  " + e);
        }
        s = s+("</select>");
      //  JOptionPane.showMessageDialog(null, s);
        return s;
    }
    
}
