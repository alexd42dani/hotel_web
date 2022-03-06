

<%@page import="conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Listado de Cargos ::.</title>
    </head>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#999;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#999;color:#444;background-color:#F7FDFA;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#999;color:#fff;background-color:#26ADE4;}
        .tg .tg-rigd{background-color:#2b95ce}
        .tg .tg-68ys{background-color:#d3e6ff;color:#000000;vertical-align:top}
        .tg .tg-id7e{background-color:#2b95ce;vertical-align:top}
        .myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #bee2f9;
	-webkit-box-shadow:inset 0px 1px 0px 0px #bee2f9;
	box-shadow:inset 0px 1px 0px 0px #bee2f9;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #63b8ee), color-stop(1, #468ccf));
	background:-moz-linear-gradient(top, #63b8ee 5%, #468ccf 100%);
	background:-webkit-linear-gradient(top, #63b8ee 5%, #468ccf 100%);
	background:-o-linear-gradient(top, #63b8ee 5%, #468ccf 100%);
	background:-ms-linear-gradient(top, #63b8ee 5%, #468ccf 100%);
	background:linear-gradient(to bottom, #63b8ee 5%, #468ccf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#63b8ee', endColorstr='#468ccf',GradientType=0);
	background-color:#63b8ee;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #3866a3;
	display:inline-block;
	cursor:pointer;
	color:#fff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #7cacde;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #468ccf), color-stop(1, #63b8ee));
	background:-moz-linear-gradient(top, #468ccf 5%, #63b8ee 100%);
	background:-webkit-linear-gradient(top, #468ccf 5%, #63b8ee 100%);
	background:-o-linear-gradient(top, #468ccf 5%, #63b8ee 100%);
	background:-ms-linear-gradient(top, #468ccf 5%, #63b8ee 100%);
	background:linear-gradient(to bottom, #468ccf 5%, #63b8ee 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#468ccf', endColorstr='#63b8ee',GradientType=0);
	background-color:#468ccf;
}
.myButton:active {
	position:relative;
	top:1px;
}
    </style>
    <%
        conexion con = new conexion();

    %>
    <body background="">
    <center>
        <h1 style="background:#2b95ce;color:#fff;" >.:: Listado de Cargos ::.</h1>
        <br>
        <br>
        <table border="1" width="50%" class="tg">
                <tr>
                    <td class="tg-68ys">
                        <a href="">
                            Volver
                            <input type="image" src="">
                        </a>
                    </td>
                </tr>
            </table>
        <form name="frm_lis_cargo" action="Imprimir.jsp" method="post">
            <table border="1" width="50%" class="tg">
                <tr>
                    <th class="tg-rigd">Desde:</th>
                    <th class="tg-68ys">
                        <input type="hidden" name="condicion" value="entidad">
                        <input type="hidden" name="nombre_reporte" value="cargos">
                        <%  
                            String vdesde = con.cargar_Lista_reporte("desde", "entidad", "id", "Tipo");
                            //out.println(con.BuscaCol("select descripcion from cargos"));
                           out.println(vdesde);
                        %>
                    </th>
                </tr>
                <tr>
                    <th class="tg-rigd">Hasta:</th>
                    <th class="tg-68ys">
                        <%
                            String vhasta = con.cargar_Lista_reporte("hasta", "entidad", "id", "Tipo");
                            out.println(vhasta);
                        %>
                    </th>
                </tr>
                <tr>
                    <th class="tg-rigd"></th>
                    <th class="tg-68ys"><input type="submit" value="imprimir" class="myButton"></th>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
