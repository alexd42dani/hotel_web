<%-- 
    Document   : Listado_cargos
    Created on : 06/10/2017, 10:18:35 AM
    Author     : Antonio
--%>

<%@page import="conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Listado de Cobros ::.</title>
    </head>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#bbb;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#594F4F;background-color:#E0FFEB;border-top-width:1px;border-bottom-width:1px;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#493F3F;background-color:#9DE0AD;border-top-width:1px;border-bottom-width:1px;}
        .tg .tg-3zgm{background-color:#343434;color:#ffffff}
        .tg .tg-1vft{background-color:#efefef;color:#343434}
        .myButton {
            -moz-box-shadow:inset 0px 1px 0px 0px #343434;
            -webkit-box-shadow:inset 0px 1px 0px 0px #343434;
            box-shadow:inset 0px 1px 0px 0px #343434;
            background-color:transparent;
            -moz-border-radius:6px;
            -webkit-border-radius:6px;
            border-radius:6px;
            border:1px solid #343434;
            display:inline-block;
            cursor:pointer;
            color:#666666;
            font-family:Arial;
            font-size:15px;
            font-weight:bold;
            padding:4px 20px;
            text-decoration:none;
            text-shadow:0px 1px 0px #ffffff;
        }
        .myButton:hover {
            background-color:transparent;
        }
        .myButton:active {
            position:relative;
            top:1px;
        }
    </style>
    <%
        conexion con = new conexion();

    %>
    <body background="imagenes/fondo.jpg">
    <center>
        <h1 style="background:#343434;color:#f9faff;width:675px">.:: Listado de Cobros ::.</h1>
        <br>
        <br>
        <table border="1" width="50%" class="tg">
            <tr>
                <td class="tg-1vft">
                    <a href="">
                    <a href="MenuPrincipal.jsp">
                        Volver
                        <input type="image" src="imagenes/anterior.png">
                    </a>
                </td>
            </tr>
        </table>
        <form name="frm_lis_factura" action="Imprimir.jsp" method="post">
            <table border="1" width="50%" class="tg">
                <tr>
                    <th class="tg-3zgm">Desde:</th>
                    <th class="tg-1vft">
                        <input type="hidden" name="condicion" value="cobros">
                        <input type="hidden" name="nombre_reporte" value="cobros">
                        <input name="desde" type="date" value="2018-10-01" required="">
                    </th>
                </tr>
                <tr>
                    <th class="tg-3zgm">Hasta:</th>
                    <th class="tg-1vft">
                        <input name="hasta" type="date" value="2018-12-25" required="">
                    </th>
                </tr>
                <tr>
                    <th class="tg-3zgm"></th>
                    <th class="tg-1vft"><input type="submit" value="Imprimir" class="myButton"></th>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
