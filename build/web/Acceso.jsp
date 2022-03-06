<%-- 
    Document   : Acceso
    Created on : 08/10/2017, 11:23:12 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Acceso ::.</title>
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
    <script type="text/javascript">
        window.history.forward(1);
    </script>
    <body background="imagenes/fondo.jpg">
    <center>
        <h1 style="background:#343434;color:#f9faff;width:675px">.:: Acceso ::.</h1>
        <form name="frm_acceso" action="Acceso_control.jsp" method="post">
            <table border="1" width="50%" class="tg">
                <tr>
                    <th class="tg-3zgm">Usuario:</th>
                    <td class="tg-1vft">
                        <input type="text" maxlength="50" required="" size="30" name="usuario" placeholder="Ingrese Usuario">
                    </td>
                </tr>
                <tr>
                    <th class="tg-3zgm">Clave:</th>
                    <td class="tg-1vft">
                        <input type="password" maxlength="50" required="" size="30" placeholder="Ingrese su clave" name="clave">
                    </td>
                </tr>
                <tr>
                    <td class="tg-3zgm"></td>
                    <td class="tg-1vft">
                        <input type="submit" value="Ingresar" class="myButton">
                        &nbsp;
                        <input type="reset" value="Limpiar Campos" class="myButton">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
