

<%@page import="conexion.conexion"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="javax.swing.JOptionPane"%>
<<%@ page language="java" import="java.sql.*" %>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.engine.JRException"%>
<%@page import="net.sf.jasperreports.engine.util.JRLoader"%>
<%@page import="net.sf.jasperreports.engine.util.*"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="net.sf.jasperreports.engine.JRRuntimeException"%>


<%

    String v_condicion = request.getParameter("condicion");

    String v_nombre_reporte = request.getParameter("nombre_reporte");

    String vdesde = request.getParameter("desde");

    String vhasta = request.getParameter("hasta");
    //JOptionPane.showMessageDialog(null, v_nombre_reporte);
    ResultSet resultado = null;

    conexion bd = new conexion(); // instancia conexion


%>

<%    File reporte = new File(application.getRealPath("/reportes/" + v_nombre_reporte + ".jasper"));
    if (!reporte.exists()) {
        throw new JRRuntimeException("No se encuentra el archivo reporte.");
    } else {
        JasperReport masterReport = null;
        try {
            masterReport = (JasperReport) JRLoader.loadObject(reporte);
        } catch (JRException e) {
            System.out.println("Error cargando el reporte maestro: " + e.getMessage());
            e.printStackTrace();
            System.exit(3);
        }
    }
    try {

        Statement st = bd.conexion.createStatement();
        // condiciones if con sql y where
        //if (v_condicion.equals("cargos")){
        //    resultado = st.executeQuery("select * from cargos where idcargo between "+vdesde+" and "+vhasta+" ");
        //}
        
        
        if(v_condicion.equals("cargos")){
                resultado = st.executeQuery("select idcargo, descripcion from cargos where idcargo between " + vdesde + " and " + vhasta + " ");
            
        }else if(v_condicion.equals("entidad")){
                resultado = st.executeQuery("select id, Descripcion, Tipo from entidad where id between " + vdesde + " and " + vhasta + " ");
            
        }else if(v_condicion.equals("factura")){
 resultado = st.executeQuery("SELECT f.id AS factura_id, f.fecha, f.tipo_factura,CONCAT(p.nombre,' ',p.apellido) AS huesped,\n" +
                                        "f.ruc, f.nro_factura, f.precio AS precio_factura, s.id AS servicios_id, sn.nombre AS servicio, s.precio AS servicio_precio, i.descripcion AS iva,\n" +
                                        "t.id AS idtarifa,tn.descripcion AS tarifa, tem.descripcion AS temporadas, han.nombre AS habitaciones, t.precio AS tarifa_precio,\n" +
                                        "CONCAT ('-Tarifa:  ',tn.descripcion,'  -Temporada:  ',tem.descripcion,'  -Habitacion:  ',han.nombre) AS desripcion_tarifa,\n" +
                                        "ee.precio AS precio_estadia, tim.nro AS timbrado\n" +
                                        "FROM factura f\n" +
                                        "LEFT JOIN huespedes h ON h.id = f.huesped_id\n" +
                                        "LEFT JOIN persona p ON h.persona_id = p.id\n" +
                                        "LEFT JOIN factura_servicios fs ON fs.factura_id = f.id\n" +
                                        "LEFT JOIN estadia_servicios es ON es.id = fs.estadia_servicios_id\n" +
                                        "LEFT JOIN servicios s ON s.id = es.servicios_id\n" +
                                        "LEFT JOIN servicios_nombres sn ON sn.id = s.nombre_id\n" +
                                        "LEFT JOIN iva i ON i.id = fs.iva_id\n" +
                                        "LEFT JOIN factura_tarifas ft ON ft.factura_id = f.id\n" +
                                        "LEFT JOIN tarifas t ON t.id = ft.tarifa_id\n" +
                                        "LEFT JOIN tarifas_nombres tn ON tn.id = t.id\n" +
                                        "LEFT JOIN temporadas tem ON tem.id = t.temporada_id\n" +
                                        "LEFT JOIN habitaciones ha ON ha.id = t.habitacion_id\n" +
                                        "LEFT JOIN habitacion_nombres han ON han.id = ha.nombre_id\n" +
                                        "LEFT JOIN estadia ee ON ee.id = es.estadia_id\n " +
                                        "LEFT JOIN nro_documento nro ON f.numero_id = nro.id\n " +
                                        "LEFT JOIN timbrado tim ON tim.id = nro.timbrado_id\n " 
                                        +"WHERE f.id =" + vdesde + "");         
        }else if(v_condicion.equals("factura1")){
 resultado = st.executeQuery("SELECT f.id AS factura_id, f.fecha, f.tipo_factura,CONCAT(p.nombre,' ',p.apellido) AS huesped,\n" +
                                        "f.ruc, f.nro_factura, f.precio AS precio_factura, s.id AS servicios_id, sn.nombre AS servicio, s.precio AS servicio_precio, i.descripcion AS iva,\n" +
                                        "t.id AS idtarifa,tn.descripcion AS tarifa, tem.descripcion AS temporadas, han.nombre AS habitaciones, t.precio AS tarifa_precio,\n" +
                                        "CONCAT ('-Tarifa:  ',tn.descripcion,'  -Temporada:  ',tem.descripcion,'  -Habitacion:  ',han.nombre) AS desripcion_tarifa,\n" +
                                        "ee.precio AS precio_estadia, tim.nro AS timbrado\n" +
                                        "FROM factura f\n" +
                                        "LEFT JOIN huespedes h ON h.id = f.huesped_id\n" +
                                        "LEFT JOIN persona p ON h.persona_id = p.id\n" +
                                        "LEFT JOIN factura_servicios fs ON fs.factura_id = f.id\n" +
                                        "LEFT JOIN estadia_servicios es ON es.id = fs.estadia_servicios_id\n" +
                                        "LEFT JOIN servicios s ON s.id = es.servicios_id\n" +
                                        "LEFT JOIN servicios_nombres sn ON sn.id = s.nombre_id\n" +
                                        "LEFT JOIN iva i ON i.id = fs.iva_id\n" +
                                        "LEFT JOIN factura_tarifas ft ON ft.factura_id = f.id\n" +
                                        "LEFT JOIN tarifas t ON t.id = ft.tarifa_id\n" +
                                        "LEFT JOIN tarifas_nombres tn ON tn.id = t.id\n" +
                                        "LEFT JOIN temporadas tem ON tem.id = t.temporada_id\n" +
                                        "LEFT JOIN habitaciones ha ON ha.id = t.habitacion_id\n" +
                                        "LEFT JOIN habitacion_nombres han ON han.id = ha.nombre_id\n" +
                                        "LEFT JOIN estadia ee ON ee.id = es.estadia_id\n " +
                                        "LEFT JOIN nro_documento nro ON f.numero_id = nro.id\n " +
                                        "LEFT JOIN timbrado tim ON tim.id = nro.timbrado_id\n " 
                                        +"WHERE f.fecha BETWEEN '" + vdesde + "' AND '" + vhasta + "' ORDER BY f.fecha ");            
        }else if(v_condicion.equals("cobros")){
resultado = st.executeQuery("SELECT c.id, c.fecha, cac.monto AS total, CONCAT(p.nombre,' ',p.apellido) AS empleado,\n" +
                                        "ce.monto AS cobro_efectivo,\n" +
                                        " COALESCE((SELECT SUM(ct.monto) FROM cobro_tarjeta ct WHERE ct.cobrosid = c.id),0) AS monto_tarjeta1,\n" +
                                        " COALESCE((SELECT SUM(cc.monto) FROM cobro_cheque cc WHERE cc.cobrosid = c.id),0) AS monto_cheque1\n" +
                                        "FROM cobros c\n" +
                                        "LEFT JOIN cuentas_a_cobrar cac ON cac.id = c.cuentas_a_cobrar_id\n" +
                                        "LEFT JOIN apertura_cierre ac ON ac.id = c.apertura_cierre_id\n" +
                                        "LEFT JOIN usuarios u ON u.id = ac.usuario_id\n" +
                                        "LEFT JOIN empleado e ON e.id = u.empleado_id\n" +
                                        "LEFT JOIN persona p ON p.id = e.persona_id\n" +
                                        "LEFT JOIN cobro_efectivo ce ON ce.cobrosid = c.id\n" +
                                        "WHERE c.fecha BETWEEN '" + vdesde + "' AND '" + vhasta + "' ORDER BY c.id ");          
        }else if(v_condicion.equals("estadia")){
resultado = st.executeQuery("SELECT e.id, o.descripcion AS operador, e.comentarios, e.precio,\n" +
                                        "t.descripcion AS tipo_cliente, te.descripcion AS tipo_estadia, e.fecha,\n" +
                                        "eh.entrada, eh.salida, h.descripcion AS habitacion,\n" +
                                        "hh.id AS id_huesped, CONCAT(p.nombre,' ',p.apellido) AS huespedes\n" +
                                        "FROM estadia e\n" +
                                        "LEFT JOIN operador_turistico o ON o.id = e.id_operador\n" +
                                        "LEFT JOIN tipo_cliente t ON t.id = e.tipo_cliente_id\n" +
                                        "LEFT JOIN tipo_estadia te ON te.id = e.tipo_estadia_id\n" +
                                        "LEFT JOIN estadia_habitaciones eh ON eh.id_estadia = e.id\n" +
                                        "LEFT JOIN habitaciones h ON h.id = eh.id_habitacion\n" +
                                        "LEFT JOIN estadia_huespedes ehh ON ehh.id_estadia = e.id\n" +
                                        "LEFT JOIN huespedes hh ON hh.id = ehh.huespedes_id\n" +
                                        "LEFT JOIN persona p ON p.id = hh.persona_id\n" +
                                        "WHERE e.fecha BETWEEN '" + vdesde + "' AND '" + vhasta + "' ORDER BY e.id ");            
        }else if(v_condicion.equals("reserva")){
resultado = st.executeQuery("SELECT e.id, o.descripcion AS operador, e.comentarios, e.precio,\n" +
                                        "t.descripcion AS tipo_cliente, te.descripcion AS tipo_reserva, e.fecha,\n" +
                                        "eh.entrada, eh.salida, h.descripcion AS habitacion\n" +
                                        ", CONCAT(p.nombre,' ',p.apellido) AS personas, p.id AS idpersona\n" +
                                        "FROM reservas e\n" +
                                        "LEFT JOIN operador_turistico o ON o.id = e.id_operador\n" +
                                        "LEFT JOIN tipo_cliente t ON t.id = e.tipo_cliente_id\n" +
                                        "LEFT JOIN tipo_reserva te ON te.id = e.tipo_reserva_id\n" +
                                        "LEFT JOIN reserva_habitaciones eh ON eh.id_reserva = e.id\n" +
                                        "LEFT JOIN habitaciones h ON h.id = eh.id_habitaciones\n" +
                                        "LEFT JOIN reserva_personas ehh ON ehh.reservas_id = e.id\n" +
                                        "LEFT JOIN persona p ON p.id = ehh.persona_id\n" +
                                        "WHERE e.fecha BETWEEN '" + vdesde + "' AND '" + vhasta + "' ORDER BY e.id ");            
        }else if(v_condicion.equals("servicios")){
resultado = st.executeQuery("SELECT s.id, sn.nombre, s.descripcion AS descri_servicio,\n" +
                                        "s.fecha, s.realizado, s.precio, sd.huesped_id , CONCAT(p.nombre,' ',p.apellido) AS huesped\n" +
                                        "FROM servicios s\n" +
                                        "LEFT JOIN servicios_nombres sn ON sn.id = s.nombre_id\n" +
                                        "LEFT JOIN servicios_detalle sd ON sd.id_servicios = s.id\n" +
                                        "LEFT JOIN huespedes h ON h.id = sd.huesped_id\n" +
                                        "LEFT JOIN persona p ON p.id = h.persona_id\n" +
                                        "WHERE s.fecha BETWEEN '" + vdesde + "' AND '" + vhasta + "' ORDER BY s.id ");            
        }
        
        
      
        

    } catch (Exception e) {
        JOptionPane.showMessageDialog(null, "error de conexion" + e);
    }
    JRResultSetDataSource jrRS = new JRResultSetDataSource(resultado);
    Map masterParams = new HashMap();
    //Aqui se envia los parametros al jasper
    //masterParams.put("anho", ano);
    byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), masterParams, jrRS);

    response.setContentType(
            "application/pdf");
    response.setContentLength(bytes.length);
    ServletOutputStream ouputStream = response.getOutputStream();

    ouputStream.write(bytes,
            0, bytes.length);
    ouputStream.flush();

    ouputStream.close();
    //  }
%>


