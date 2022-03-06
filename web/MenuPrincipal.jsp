<!doctype html>
<html lang=''>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles.css">
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <script src="script.js"></script>
        <title>Menu Principal</title>
    </head>
    <script type="text/javascript">
        window.history.forward(1);
    </script>
    <body background="imagenes/fondo.jpg">

        <div id='cssmenu'>
            <ul>
                <li><a><span></span></a></li>
                <li><a><span></span></a></li>
                <li><a><span></span></a></li>
                <li><a><span></span></a></li>
                <li><a><span></span></a></li>
                <li><a><span></span></a></li>
                <li><a><span></span></a></li>
                <li><a><span></span></a></li>
                <li><a href='#'><span>Movimientos</span></a>
                    <ul>
                       
                        <li class='has-sub'><a href='Facturas.jsp'><span>Facturas</span></a></li>
                    </ul>
                </li>
                <%
               /* <li><a href='#'><span>Movimientos</span></a>
                    <ul>
                        <li class='has-sub'><a href='AgendaMedica_mantener.jsp'><span>Agenda Medica</span></a></li>
                        <li class='has-sub'><a href='AgendaPaciente_mantener.jsp'><span>Agenda Paciente</span></a></li>
                        <li class='has-sub'><a href='Tratamientos_mantener.jsp'><span>Tratamientos</span></a></li>
                    </ul>
                </li> */
                %>
                <li><a href='#'><span>Reportes</span></a>
                    <ul>
                        <li class='has-sub'><a href='Listado_Servicios.jsp'><span>Listado de Servicios</span></a></li>
                        <li class='has-sub'><a href='Listado_Estadia.jsp'><span>Listado de Estadias</span></a></li>
                        <li class='has-sub'><a href='Listado_Reserva.jsp'><span>Listado de Reserva</span></a></li>
                        <li class='has-sub'><a href='Listado_Facturas.jsp'><span>Listado de Facturas</span></a></li>
                        <li class='has-sub'><a href='Listado_Cobros.jsp'><span>Listado de Cobros</span></a></li>
 
                      
                    </ul>
                </li>
                <li><a href='ayuda.htm' target="_blank">Ayuda</a></li>
            </ul>
        </div>

    </body>
    <html>
