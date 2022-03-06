<%-- 
    Document   : Cargos_mantener
    Created on : 19/09/2017, 10:24:52 AM
    Author     : Antonio
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Facturas ::.</title>
    </head>

    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#bbb;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#594F4F;background-color:#E0FFEB;border-top-width:1px;border-bottom-width:1px;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#493F3F;background-color:#9DE0AD;border-top-width:1px;border-bottom-width:1px;}
        .tg .tg-3zgm{background-color:#343434;color:#ffffff}
        .tg .tg-1vft{background-color:#efefef;color:#343434}
    </style>
    <script type="text/javascript">
        function mensaje() {
            return confirm('Desea eliminar el registro?');
        }
    </script>
    
    <%
        conexion con = new conexion();
        SimpleDateFormat fec=new SimpleDateFormat("dd/MM/yyyy");
        DecimalFormat formato = new DecimalFormat("#,##0");
    %>
    <body background="imagenes/fondo.jpg">
    <center>
        <h1 style="background:#343434;color:#f9faff;width:1214px">.:: Facturas ::.</h1>
        <table border="1" width="90%" class="tg">
            <tr>
                
                <td class="tg-1vft">
                    <a href="MenuPrincipal.jsp">
                        Volver al menu
                        <input type="image" src="imagenes/anterior.png">
                    </a>
                </td>
            </tr>
        </table>
        <table border="1" width="90%" class="tg">
            <tr>
                <th class="tg-3zgm">Codigo</th>
                <th class="tg-3zgm">Fecha</th>
                <th class="tg-3zgm">Numero Factura</th>
                <th class="tg-3zgm">Total</th>
                <th class="tg-3zgm">Imprimir</th>
            </tr>
            <%
                try {
                    con.traeQuery("SELECT f.id, f.fecha , f.tipo_factura, f.nro_factura, f.precio "
                                    +" FROM factura f");
                    while (con.resultado.next()) {
                        out.println("<tr>");

                        out.println("<td class='tg-1vft'>");
                        out.println(con.resultado.getString("f.id"));
                        out.println("</td>");

                        out.println("<td class='tg-1vft'>");
                        out.println(fec.format(con.resultado.getDate("f.fecha")));
                        out.println("</td>");

                        out.println("<td class='tg-1vft'>");
                        out.println(con.resultado.getString("f.nro_factura"));
                        out.println("</td>");
                        
                        out.println("<td class='tg-1vft'>");
                        out.println(formato.format(con.resultado.getInt("precio")));
                        out.println("</td>");

                        out.println("<th class='tg-1vft'>");
                        out.println("<a href='Imprimir.jsp?condicion=factura&nombre_reporte=factura_hotel&desde=" + con.resultado.getString("f.id") + "'> <input type='image' src='imagenes/printer.png'> </a>");
                        out.println("</th>");

                        out.println("</tr>");
                    }
                } catch (Exception e) {
                    out.println("Error al cargar tabla " + e);
                }
            %>
        </table>
    </center>
</body>
</html>
