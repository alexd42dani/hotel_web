<%-- 
    Document   : Pedidos_mantener
    Created on : 17/08/2017, 10:23:59 AM
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
        <title>.:: Mantener Ventas ::.</title>
    </head>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#999;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#999;color:#444;background-color:#F7FDFA;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#999;color:#fff;background-color:#26ADE4;}
        .tg .tg-rigd{background-color:#2b95ce}
        .tg .tg-68ys{background-color:#d3e6ff;color:#000000;vertical-align:top}
        .tg .tg-id7e{background-color:#2b95ce;vertical-align:top}
    </style>
    <script type="text/javascript">
        function mensaje() {
            return confirm('Desea eliminar el registro');
        }
    </script>
    <%
        conexion con = new conexion();
        SimpleDateFormat fec = new SimpleDateFormat("dd/MM/yyyy");
        DecimalFormat formato = new DecimalFormat("#,##0");
    %>
    <body background="imagenes/fondo1.jpg">
    <center>
        <h1>.:: Mantener Ventas::.</h1>
        <table border="1" width="90%" class="tg" class="tg">
            <tr>
                <td class="tg-68ys">
                    <a href="" >
                        Nuevo
                        <input type="image" src="imagenes/Nuevo.png">
                    </a>
                </td>
                <td class="tg-68ys">
                    <a href="" >
                        Volver al menu
                        <input type="image" src="imagenes/anterior.png">
                    </a>
                </td>
            </tr>
        </table>

        <table border="1" width="90%" class="tg">
            <tr>
                <th class="tg-rigd">Codigo</th>
                <th class="tg-rigd">Fecha</th>
                <th class="tg-rigd">Cliente</th>
                <th class="tg-rigd">Tipo Documento</th>
                <th class="tg-rigd">Numero Factura</th>
                <th class="tg-rigd">Total</th>
                <th class="tg-rigd">Editar</th>
                <th class="tg-rigd">Agregar Item</th>
                <th class="tg-rigd">Eliminar</th>
                <th class="tg-rigd">Imprimir</th>

            </tr>
            <%
                try {
                    con.traeQuery("SELECT f.id, f.fecha , f.tipo_factura, f.nro_factura, f.precio "
                                    +" FROM factura f");
                    while (con.resultado.next()) {
                        out.println("<tr>");

                        out.println("<td class='tg-68ys'>");
                        out.println(con.resultado.getString("f.id"));
                        out.println("</td>");

                        out.println("<td class='tg-68ys'>");
                        out.println(fec.format(con.resultado.getDate("f.fecha")));
                        out.println("</td>");

                        out.println("<td class='tg-68ys'>");
                        out.println(con.resultado.getString("f.nro_factura"));
                        out.println("</td>");

                        out.println("<td class='tg-68ys'>");
                        out.println(formato.format(con.resultado.getInt("precio")));
                        out.println("</td>");

                        
                        
                        out.println("<th class='tg-68ys'>");
                        out.println("<a href='Imprimir.jsp?condicion=factura&nombre_reporte=factura_hotel1&desde=" + con.resultado.getString("f.id") + "'> <input type='image' src='imagenes/printer.png'> </a>");
                        out.println("</th>");
                        
                        out.println("</tr>");

                    }
                } catch (Exception e) {
                    out.println("Error al cargar la tabla " + e);
                }
            %>

        </table>

    </center>
</body>
</html>
