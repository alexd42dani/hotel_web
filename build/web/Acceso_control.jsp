<%@page import="Prg.conexion"%>
<%
    conexion bd = new conexion();
    bd.conecta();
    String vdescri = request.getParameter("usuario");
    String vclave = request.getParameter("clave");
    
    try {
        bd.listar_datos("select * from usuarios "
                + "where descripcion = '"+vdescri+"' and clave=md5('"+vclave+"')");
        if(bd.resultado.next()){
            response.sendRedirect("MenuPrincipal.jsp");
        }else{
            response.sendRedirect("Acceso.jsp");
        }
    } catch (Exception e) {
        out.println("Error al listar datos " + e);
    }
%>