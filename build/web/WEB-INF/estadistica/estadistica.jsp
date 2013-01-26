<%-- 
    Document   : busqueda
    Created on : Nov 27, 2012, 5:05:30 PM
    Author     : betocols
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<!DOCTYPE html>
<style>
  .error{font-size: 10px;color: #cc0000; float:left; padding:0}
  .error ul{list-style: none;}
</style>

<div id="body">
  <div id="barraBusqueda">
    <div class="box"> 
      <div class="inbox" id="cajaBusqueda">
        <div class="titulo">Generar estadística de la búsqueda realizada.</div>
        <html:form action="/generarEstadistica" acceptCharset="ISO-8859-1">
          <table style="width:400px; padding-top: 20px">
          </table>
          <div class="subtitulo" style="margin-left: 40px;">* Eje X</div>
          País<html:radio name="EstadisticaForm" property="ejeX" value="0" />
          Período<html:radio name="EstadisticaForm" property="ejeX" value="1"/>
          <div class="error">
            <html:errors property="ejeX"/>
          </div>
          <table style="width: 400px; padding-top: 20px;">
            <tr>
              <td colspan="2">
                <fieldset style="border:none;">
                  <legend>País (Se deben separar los paises por comas. Ejemplo: Venezuela, Colombia)</legend>
                  <div class="error">
                    <html:errors property="pais"/>
                  </div>
                  <%
                    String paises = (String) request.getSession().getAttribute("paises");
                  %>
                  <html:text name="EstadisticaForm" property="pais" value="<%=paises%>"/>
                </fieldset>
              </td>
            </tr>
            <tr>
              <td>
                <% 
                  String fechaini = (String) request.getSession().getAttribute("fechaini");
                  if (fechaini == null) {
                    fechaini = "";
                  }
                  String fechafin = (String) request.getSession().getAttribute("fechafin");
                  if (fechafin == null) {
                    fechafin = "";
                  }
                %>
                <fieldset style="border:none;">
                  <legend>Inicio de período</legend>
                  <div class="error">
                    <html:errors property="fechaini"/>
                  </div>
                  <html:text styleClass="anioBusqueda" name="EstadisticaForm" property="fechaini" value="<%=fechaini%>"/>
                </fieldset>
              </td>
              <td>
                <fieldset style="border:none;">
                  <legend>Finalización de período</legend>
                  <div class="error">
                    <html:errors property="fechafin"/>
                  </div>
                  <html:text styleClass="anioBusqueda" name="EstadisticaForm" property="fechafin" value="<%=fechafin%>"/>
                </fieldset>
              </td>
            </tr>
          </table>
          </fieldset>
          <fieldset style="border:none; border-top: 2px solid #00627A; width: 550px;">
            <div style="margin-top: 20px">
              <div class="subtitulo" style="margin-left: 18px;">* Tipo de Gráfica:</div>
              De Barras<html:radio name="EstadisticaForm" property="tipoGrafica" value="0"/>
              De Torta<html:radio name="EstadisticaForm" property="tipoGrafica" value="1"/>
              <div class="error">
                <html:errors property="tipoGrafica"/>
              </div>
            </div>
          </fieldset>
          </td>
          <td>
            <div class="botonEstadistica" style="float: right;">
              <html:submit value="Generar"/>
            </div>
          </html:form> 
      </div>
    </div>
  </div>	
</div> 