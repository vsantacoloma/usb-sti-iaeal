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

<script>
    $(document).ready(function() {
        $("#botonPaises").hide();
        $("#periodo1").hide();
        $("#periodo2").hide();
    
        $("#botonPeriodo").click(function(){
      
            $("#ini").val("");
            $("#fin").val("");
      
            $("#botonPaises").show();
            $("#botonPeriodo").hide();
            $("#periodo1").show();
            $("#periodo2").show();
        });
    
        $("#botonPaises").click(function(){
      

            
            $("#periodo1").hide();
            $("#periodo2").hide();
            $("#botonPeriodo").show();
            $("#botonPaises").hide();
        });
    });
</script>

<style>
    .error{font-size: 10px;color: #cc0000; float:left; padding:0}
    .error ul{list-style: none;}
</style>

<div id="body">
    <div id="barraBusqueda">
        <div class="box"> 
            <div class="inbox" id="cajaBusqueda">
                <div class="titulo">Generar estadística de la búsqueda realizada.</div>
                <br> <br> <br>

                <div style="float: right;">
                    <button id="botonPeriodo" style="color:#003333;font-size: 12pt">Con Periodos</button>
                    <button id="botonPaises" style="color:#003333;font-size: 12pt">Solo Paises</button>
                </div>

                <html:form method="POST" action="/BuscarEstadistica">                        
                    <p>           
                        <br> <br> <br>
                        1er Pais &nbsp;
                        <html:select name="ClaseEstadistica" property="codigo1">
                        <option value=\"\">Paises...</option> 
                        <option value=\"Afganistan\">Afganistan</option> 
                        <option value=\"Aland\">Aland</option> 
                        <option value=\"Albania\">Albania</option> 
                        <option value=\"Alemania\">Alemania</option> 
                        <option value=\"Andorra\">Andorra</option> 
                        <option value=\"Angola\">Angola</option> 
                        <option value=\"Anguila\">Anguila</option> 
                        <option value=\"Antigua y Barbuda\">Antigua y Barbuda</option> 
                        <option value=\"Antillas Neerlandesas\">Antillas Neerlandesas</option> 
                        <option value=\"Arabia Saudita\">Arabia Saudita</option> 
                        <option value=\"Argelia\">Argelia</option> 
                        <option value=\"Argentina\">Argentina</option> 
                        <option value=\"Armenia\">Armenia</option> 
                        <option value=\"Aruba\">Aruba</option> 
                        <option value=\"Australia\">Australia</option> 
                        <option value=\"Austria\">Austria</option> 
                        <option value=\"Azerbaiyan\">Azerbaiyan</option> 
                        <option value=\"Bahamas\">Bahamas</option> 
                        <option value=\"Barein\">Barein</option> 
                        <option value=\"Banglades\">Banglades</option> 
                        <option value=\"Barbados\">Barbados</option> 
                        <option value=\"Belgica\">Belgica</option> 
                        <option value=\"Belice\">Belice</option> 
                        <option value=\"Benin\">Benin</option> 
                        <option value=\"Bermudas\">Bermudas</option> 
                        <option value=\"Bielorrusia\">Bielorrusia</option> 
                        <option value=\"Birmania\">Birmania</option> 
                        <option value=\"Bolivia\">Bolivia</option> 
                        <option value=\"Bosnia y Herzegovina\">Bosnia y Herzegovina</option> 
                        <option value=\"Botsuana\">Botsuana</option> 
                        <option value=\"Isla Bouvet\">Isla Bouvet</option> 
                        <option value=\"Brasil\">Brasil</option> 
                        <option value=\"Brunei\">Brunei</option> 
                        <option value=\"Bulgaria\">Bulgaria</option> 
                        <option value=\"Burkina Faso\">Burkina Faso</option> 
                        <option value=\"Burundi\">Burundi</option> 
                        <option value=\"Butan\">Butan</option> 
                        <option value=\"Cabo Verde\">Cabo Verde</option> 
                        <option value=\"Islas Caiman\">Islas Caiman</option> 
                        <option value=\"Camboya\">Camboya</option> 
                        <option value=\"Camerun\">Camerun</option> 
                        <option value=\"Canada\">Canada</option> 
                        <option value=\"Republica Centroafricana\">Republica Centroafricana</option> 
                        <option value=\"Chad\">Chad</option> 
                        <option value=\"Republica Checa\">Republica Checa</option> 
                        <option value=\"Chile\">Chile</option> 
                        <option value=\"China\">China</option> 
                        <option value=\"Chipre\">Chipre</option> 
                        <option value=\"Islas Cocos\">Islas Cocos</option> 
                        <option value=\"Colombia\">Colombia</option> 
                        <option value=\"Comoras\">Comoras</option> 
                        <option value=\"Republica del Congo\">Republica del Congo</option> 
                        <option value=\"Rep. Dem. del Congo\">Rep. Dem. del Congo</option> 
                        <option value=\"Islas Cook\">Islas Cook</option> 
                        <option value=\"Corea del Norte\">Corea del Norte</option> 
                        <option value=\"Corea del Sur\">Corea del Sur</option> 
                        <option value=\"Costa de Marfil\">Costa de Marfil</option> 
                        <option value=\"Costa Rica\">Costa Rica</option> 
                        <option value=\"Croacia\">Croacia</option> 
                        <option value=\"Curazao\">Curazao</option> 
                        <option value=\"Cuba\">Cuba</option> 
                        <option value=\"Dinamarca\">Dinamarca</option> 
                        <option value=\"Dominica\">Dominica</option> 
                        <option value=\"Republica Dominicana\">Republica Dominicana</option> 
                        <option value=\"Ecuador\">Ecuador</option> 
                        <option value=\"Egipto\">Egipto</option> 
                        <option value=\"El Salvador\">El Salvador</option> 
                        <option value=\"Emiratos Árabes Unidos\">Emiratos Árabes Unidos</option> 
                        <option value=\"Eritrea\">Eritrea</option> 
                        <option value=\"Eslovaquia\">Eslovaquia</option> 
                        <option value=\"Eslovenia\">Eslovenia</option> 
                        <option value=\"Espana\">Espana</option> 
                        <option value=\"Estados Unidos\">Estados Unidos</option> 
                        <option value=\"Estonia\">Estonia</option> 
                        <option value=\"Etiopia\">Etiopia</option> 
                        <option value=\"Islas Feroe\">Islas Feroe</option> 
                        <option value=\"Filipinas\">Filipinas</option> 
                        <option value=\"Finlandia\">Finlandia</option> 
                        <option value=\"Fiyi\">Fiyi</option> 
                        <option value=\"Francia\">Francia</option> 
                        <option value=\"Gabon\">Gabon</option> 
                        <option value=\"Gambia\">Gambia</option> 
                        <option value=\"Georgia\">Georgia</option> 
                        <option value=\"Islas Georgias del Sur y Sandwich del Sur\">Islas Georgias del Sur y Sandwich del Sur</option> 
                        <option value=\"Ghana\">Ghana</option> 
                        <option value=\"Gibraltar\">Gibraltar</option> 
                        <option value=\"Granada\">Granada</option> 
                        <option value=\"Grecia\">Grecia</option> 
                        <option value=\"Groenlandia\">Groenlandia</option> 
                        <option value=\"Guadalupe\">Guadalupe</option> 
                        <option value=\"Guam\">Guam</option> 
                        <option value=\"Guatemala\">Guatemala</option> 
                        <option value=\"Guayana Francesa\">Guayana Francesa</option> 
                        <option value=\"Guernsey\">Guernsey</option> 
                        <option value=\"Guinea\">Guinea</option> 
                        <option value=\"Guinea Ecuatorial\">Guinea Ecuatorial</option> 
                        <option value=\"Guinea-Bisau\">Guinea-Bisau</option> 
                        <option value=\"Guyana\">Guyana</option> 
                        <option value=\"Haiti\">Haiti</option> 
                        <option value=\"Islas Heard y McDonald\">Islas Heard y McDonald</option> 
                        <option value=\"Honduras\">Honduras</option> 
                        <option value=\"Hong Kong\">Hong Kong</option> 
                        <option value=\"Hungria\">Hungria</option> 
                        <option value=\"India\">India</option> 
                        <option value=\"Indonesia\">Indonesia</option> 
                        <option value=\"Iran\">Iran</option> 
                        <option value=\"Irak\">Irak</option> 
                        <option value=\"Irlanda\">Irlanda</option> 
                        <option value=\"Islandia\">Islandia</option> 
                        <option value=\"Israel\">Israel</option> 
                        <option value=\"Italia\">Italia</option> 
                        <option value=\"Jamaica\">Jamaica</option> 
                        <option value=\"Japon\">Japon</option> 
                        <option value=\"Jersey\">Jersey</option> 
                        <option value=\"Jordania\">Jordania</option> 
                        <option value=\"Kazajistan\">Kazajistan</option> 
                        <option value=\"Kenia\">Kenia</option> 
                        <option value=\"Kirguistan\">Kirguistan</option> 
                        <option value=\"Kiribati\">Kiribati</option> 
                        <option value=\"Kuwait\">Kuwait</option> 
                        <option value=\"Laos\">Laos</option> 
                        <option value=\"Lesoto\">Lesoto</option> 
                        <option value=\"Letonia\">Letonia</option> 
                        <option value=\"Libano\">Libano</option> 
                        <option value=\"Liberia\">Liberia</option> 
                        <option value=\"Libia\">Libia</option> 
                        <option value=\"Liechtenstein\">Liechtenstein</option> 
                        <option value=\"Lituania\">Lituania</option> 
                        <option value=\"Luxemburgo\">Luxemburgo</option> 
                        <option value=\"Macao\">Macao</option> 
                        <option value=\"Republica de Macedonia\">Republica de Macedonia</option> 
                        <option value=\"Madagascar\">Madagascar</option> 
                        <option value=\"Malasia\">Malasia</option> 
                        <option value=\"Malaui\">Malaui</option> 
                        <option value=\"Maldivas\">Maldivas</option> 
                        <option value=\"Mali\">Mali</option> 
                        <option value=\"Malta\">Malta</option> 
                        <option value=\"Islas Malvinas\">Islas Malvinas</option> 
                        <option value=\"Isla de Man\">Isla de Man</option> 
                        <option value=\"Islas Marianas del Norte\">Islas Marianas del Norte</option> 
                        <option value=\"Marruecos\">Marruecos</option> 
                        <option value=\"Islas Marshall\">Islas Marshall</option> 
                        <option value=\"Martinica\">Martinica</option> 
                        <option value=\"Mauricio\">Mauricio</option> 
                        <option value=\"Mauritania\">Mauritania</option> 
                        <option value=\"Mayotte\">Mayotte</option> 
                        <option value=\"Mexico\">Mexico</option> 
                        <option value=\"Micronesia\">Micronesia</option> 
                        <option value=\"Moldavia\">Moldavia</option> 
                        <option value=\"Monaco\">Monaco</option> 
                        <option value=\"Mongolia\">Mongolia</option> 
                        <option value=\"Montenegro\">Montenegro</option> 
                        <option value=\"Montserrat\">Montserrat</option> 
                        <option value=\"Mozambique\">Mozambique</option> 
                        <option value=\"Namibia\">Namibia</option> 
                        <option value=\"Nauru\">Nauru</option> 
                        <option value=\"Isla de Navidad\">Isla de Navidad</option> 
                        <option value=\"Nepal\">Nepal</option> 
                        <option value=\"Nicaragua\">Nicaragua</option> 
                        <option value=\"Niger\">Niger</option> 
                        <option value=\"Nigeria\">Nigeria</option> 
                        <option value=\"Niue\">Niue</option> 
                        <option value=\"Norfolk\">Norfolk</option> 
                        <option value=\"Noruega\">Noruega</option> 
                        <option value=\"Nueva Caledonia\">Nueva Caledonia</option> 
                        <option value=\"Nueva Zelanda\">Nueva Zelanda</option> 
                        <option value=\"Oman\">Oman</option> 
                        <option value=\"Paises Bajos\">Paises Bajos</option> 
                        <option value=\"Pakistan\">Pakistan</option> 
                        <option value=\"Palaos\">Palaos</option> 
                        <option value=\"Autoridad Nacional Palestina\">Autoridad Nacional Palestina</option> 
                        <option value=\"Panama\">Panama</option> 
                        <option value=\"Papua Nueva Guinea\">Papua Nueva Guinea</option> 
                        <option value=\"Paraguay\">Paraguay</option> 
                        <option value=\"Peru\">Peru</option> 
                        <option value=\"Islas Pitcairn\">Islas Pitcairn</option> 
                        <option value=\"Polinesia Francesa\">Polinesia Francesa</option> 
                        <option value=\"Polonia\">Polonia</option> 
                        <option value=\"Portugal\">Portugal</option> 
                        <option value=\"Puerto Rico\">Puerto Rico</option> 
                        <option value=\"Catar\">Catar</option> 
                        <option value=\"Reino Unido\">Reino Unido</option> 
                        <option value=\"Reunion\">Reunion</option> 
                        <option value=\"Ruanda\">Ruanda</option> 
                        <option value=\"Rumania\">Rumania</option> 
                        <option value=\"Rusia\">Rusia</option> 
                        <option value=\"Republica Arabe Saharaui Democratica\">Republica Arabe Saharaui Democratica</option> 
                        <option value=\"Islas Salomon\">Islas Salomon</option> 
                        <option value=\"Samoa\">Samoa</option> 
                        <option value=\"Samoa Americana\">Samoa Americana</option> 
                        <option value=\"San Bartolome\">San Bartolome</option> 
                        <option value=\"San Cristobal y Nieves\">San Cristobal y Nieves</option> 
                        <option value=\"San Marino\">San Marino</option> 
                        <option value=\"San Martin\">San Martin</option> 
                        <option value=\"San Pedro y Miquelon\">San Pedro y Miquelon</option> 
                        <option value=\"San Vicente y las Granadinas\">San Vicente y las Granadinas</option> 
                        <option value=\"Santa Helena, A. y T.\">Santa Helena, A. y T.</option> 
                        <option value=\"Santa Lucia\">Santa Luca</option> 
                        <option value=\"Santo Tome y Principe\">Santo Tome y Principe</option> 
                        <option value=\"Senegal\">Senegal</option> 
                        <option value=\"Serbia\">Serbia</option> 
                        <option value=\"Seychelles\">Seychelles</option> 
                        <option value=\"Sierra Leona\">Sierra Leona</option> 
                        <option value=\"Singapur\">Singapur</option> 
                        <option value=\"Siria\">Siria</option> 
                        <option value=\"Somalia\">Somalia</option> 
                        <option value=\"Sri Lanka\">Sri Lanka</option> 
                        <option value=\"Suazilandia\">Suazilandia</option> 
                        <option value=\"Sudafrica\">Sudafrica</option> 
                        <option value=\"Sudan\">Sudan</option> 
                        <option value=\"Sudan del Sur\">Sudan del Sur</option> 
                        <option value=\"Suecia\">Suecia</option> 
                        <option value=\"Suiza\">Suiza</option> 
                        <option value=\"Surinam\">Surinam</option> 
                        <option value=\"Svalbard y Jan Mayen\">Svalbard y Jan Mayen</option> 
                        <option value=\"Tailandia\">Tailandia</option> 
                        <option value=\"Taiwan\">Taiwan</option> 
                        <option value=\"Tanzania\">Tanzania</option> 
                        <option value=\"Tayikistan\">Tayikistan</option> 
                        <option value=\"Territorio Britanico del Oceano Indico\">Territorio Britanico del Oceano Indico</option> 
                        <option value=\"Territorios Australes Franceses\">Territorios Australes Franceses</option> 
                        <option value=\"Timor Oriental\">Timor Oriental</option> 
                        <option value=\"Togo\">Togo</option> 
                        <option value=\"Tokelau\">Tokelau</option> 
                        <option value=\"Tonga\">Tonga</option> 
                        <option value=\"Trinidad y Tobago\">Trinidad y Tobago</option> 
                        <option value=\"Tunez\">Tunez</option> 
                        <option value=\"Islas Turcas y Caicos\">Islas Turcas y Caicos</option> 
                        <option value=\"Turkmenistan\">Turkmenistan</option> 
                        <option value=\"Turquia\">Turquia</option> 
                        <option value=\"Tuvalu\">Tuvalu</option> 
                        <option value=\"Ucrania\">Ucrania</option> 
                        <option value=\"Uganda\">Uganda</option> 
                        <option value=\"Uruguay\">Uruguay</option> 
                        <option value=\"Uzbekistan\">Uzbekistan</option> 
                        <option value=\"Vanuatu\">Vanuatu</option> 
                        <option value=\"Ciudad del Vaticano\">Ciudad del Vaticano</option> 
                        <option value=\"Vietnam\">Vietnam</option> 
                        <option value=\"Islas Virgenes Britanicas\">Islas Virgenes Britanicas</option> 
                        <option value=\"Islas Virgenes de los Estados Unidos\">Islas Virgenes de los Estados Unidos</option> 
                        <option value=\"Wallis y Futuna\">Wallis y Futuna</option> 
                        <option value=\"Yemen\">Yemen</option> 
                        <option value=\"Yibuti\">Yibuti</option> 
                        <option value=\"Zambia\">Zambia</option> 
                        <option value=\"Zimbabue\">Zimbabue</option>
                    </html:select> 
                    <br> <br> <br>
                    2do Pais &nbsp;
                    <html:select name="ClaseEstadistica" property="codigo2">
                        <option value=\"\">Paises...</option> 
                        <option value=\"Afganistan\">Afganistan</option> 
                        <option value=\"Aland\">Aland</option> 
                        <option value=\"Albania\">Albania</option> 
                        <option value=\"Alemania\">Alemania</option> 
                        <option value=\"Andorra\">Andorra</option> 
                        <option value=\"Angola\">Angola</option> 
                        <option value=\"Anguila\">Anguila</option> 
                        <option value=\"Antigua y Barbuda\">Antigua y Barbuda</option> 
                        <option value=\"Antillas Neerlandesas\">Antillas Neerlandesas</option> 
                        <option value=\"Arabia Saudita\">Arabia Saudita</option> 
                        <option value=\"Argelia\">Argelia</option> 
                        <option value=\"Argentina\">Argentina</option> 
                        <option value=\"Armenia\">Armenia</option> 
                        <option value=\"Aruba\">Aruba</option> 
                        <option value=\"Australia\">Australia</option> 
                        <option value=\"Austria\">Austria</option> 
                        <option value=\"Azerbaiyan\">Azerbaiyan</option> 
                        <option value=\"Bahamas\">Bahamas</option> 
                        <option value=\"Barein\">Barein</option> 
                        <option value=\"Banglades\">Banglades</option> 
                        <option value=\"Barbados\">Barbados</option> 
                        <option value=\"Belgica\">Belgica</option> 
                        <option value=\"Belice\">Belice</option> 
                        <option value=\"Benin\">Benin</option> 
                        <option value=\"Bermudas\">Bermudas</option> 
                        <option value=\"Bielorrusia\">Bielorrusia</option> 
                        <option value=\"Birmania\">Birmania</option> 
                        <option value=\"Bolivia\">Bolivia</option> 
                        <option value=\"Bosnia y Herzegovina\">Bosnia y Herzegovina</option> 
                        <option value=\"Botsuana\">Botsuana</option> 
                        <option value=\"Isla Bouvet\">Isla Bouvet</option> 
                        <option value=\"Brasil\">Brasil</option> 
                        <option value=\"Brunei\">Brunei</option> 
                        <option value=\"Bulgaria\">Bulgaria</option> 
                        <option value=\"Burkina Faso\">Burkina Faso</option> 
                        <option value=\"Burundi\">Burundi</option> 
                        <option value=\"Butan\">Butan</option> 
                        <option value=\"Cabo Verde\">Cabo Verde</option> 
                        <option value=\"Islas Caiman\">Islas Caiman</option> 
                        <option value=\"Camboya\">Camboya</option> 
                        <option value=\"Camerun\">Camerun</option> 
                        <option value=\"Canada\">Canada</option> 
                        <option value=\"Republica Centroafricana\">Republica Centroafricana</option> 
                        <option value=\"Chad\">Chad</option> 
                        <option value=\"Republica Checa\">Republica Checa</option> 
                        <option value=\"Chile\">Chile</option> 
                        <option value=\"China\">China</option> 
                        <option value=\"Chipre\">Chipre</option> 
                        <option value=\"Islas Cocos\">Islas Cocos</option> 
                        <option value=\"Colombia\">Colombia</option> 
                        <option value=\"Comoras\">Comoras</option> 
                        <option value=\"Republica del Congo\">Republica del Congo</option> 
                        <option value=\"Rep. Dem. del Congo\">Rep. Dem. del Congo</option> 
                        <option value=\"Islas Cook\">Islas Cook</option> 
                        <option value=\"Corea del Norte\">Corea del Norte</option> 
                        <option value=\"Corea del Sur\">Corea del Sur</option> 
                        <option value=\"Costa de Marfil\">Costa de Marfil</option> 
                        <option value=\"Costa Rica\">Costa Rica</option> 
                        <option value=\"Croacia\">Croacia</option> 
                        <option value=\"Curazao\">Curazao</option> 
                        <option value=\"Cuba\">Cuba</option> 
                        <option value=\"Dinamarca\">Dinamarca</option> 
                        <option value=\"Dominica\">Dominica</option> 
                        <option value=\"Republica Dominicana\">Republica Dominicana</option> 
                        <option value=\"Ecuador\">Ecuador</option> 
                        <option value=\"Egipto\">Egipto</option> 
                        <option value=\"El Salvador\">El Salvador</option> 
                        <option value=\"Emiratos Árabes Unidos\">Emiratos Árabes Unidos</option> 
                        <option value=\"Eritrea\">Eritrea</option> 
                        <option value=\"Eslovaquia\">Eslovaquia</option> 
                        <option value=\"Eslovenia\">Eslovenia</option> 
                        <option value=\"Espana\">Espana</option> 
                        <option value=\"Estados Unidos\">Estados Unidos</option> 
                        <option value=\"Estonia\">Estonia</option> 
                        <option value=\"Etiopia\">Etiopia</option> 
                        <option value=\"Islas Feroe\">Islas Feroe</option> 
                        <option value=\"Filipinas\">Filipinas</option> 
                        <option value=\"Finlandia\">Finlandia</option> 
                        <option value=\"Fiyi\">Fiyi</option> 
                        <option value=\"Francia\">Francia</option> 
                        <option value=\"Gabon\">Gabon</option> 
                        <option value=\"Gambia\">Gambia</option> 
                        <option value=\"Georgia\">Georgia</option> 
                        <option value=\"Islas Georgias del Sur y Sandwich del Sur\">Islas Georgias del Sur y Sandwich del Sur</option> 
                        <option value=\"Ghana\">Ghana</option> 
                        <option value=\"Gibraltar\">Gibraltar</option> 
                        <option value=\"Granada\">Granada</option> 
                        <option value=\"Grecia\">Grecia</option> 
                        <option value=\"Groenlandia\">Groenlandia</option> 
                        <option value=\"Guadalupe\">Guadalupe</option> 
                        <option value=\"Guam\">Guam</option> 
                        <option value=\"Guatemala\">Guatemala</option> 
                        <option value=\"Guayana Francesa\">Guayana Francesa</option> 
                        <option value=\"Guernsey\">Guernsey</option> 
                        <option value=\"Guinea\">Guinea</option> 
                        <option value=\"Guinea Ecuatorial\">Guinea Ecuatorial</option> 
                        <option value=\"Guinea-Bisau\">Guinea-Bisau</option> 
                        <option value=\"Guyana\">Guyana</option> 
                        <option value=\"Haiti\">Haiti</option> 
                        <option value=\"Islas Heard y McDonald\">Islas Heard y McDonald</option> 
                        <option value=\"Honduras\">Honduras</option> 
                        <option value=\"Hong Kong\">Hong Kong</option> 
                        <option value=\"Hungria\">Hungria</option> 
                        <option value=\"India\">India</option> 
                        <option value=\"Indonesia\">Indonesia</option> 
                        <option value=\"Iran\">Iran</option> 
                        <option value=\"Irak\">Irak</option> 
                        <option value=\"Irlanda\">Irlanda</option> 
                        <option value=\"Islandia\">Islandia</option> 
                        <option value=\"Israel\">Israel</option> 
                        <option value=\"Italia\">Italia</option> 
                        <option value=\"Jamaica\">Jamaica</option> 
                        <option value=\"Japon\">Japon</option> 
                        <option value=\"Jersey\">Jersey</option> 
                        <option value=\"Jordania\">Jordania</option> 
                        <option value=\"Kazajistan\">Kazajistan</option> 
                        <option value=\"Kenia\">Kenia</option> 
                        <option value=\"Kirguistan\">Kirguistan</option> 
                        <option value=\"Kiribati\">Kiribati</option> 
                        <option value=\"Kuwait\">Kuwait</option> 
                        <option value=\"Laos\">Laos</option> 
                        <option value=\"Lesoto\">Lesoto</option> 
                        <option value=\"Letonia\">Letonia</option> 
                        <option value=\"Libano\">Libano</option> 
                        <option value=\"Liberia\">Liberia</option> 
                        <option value=\"Libia\">Libia</option> 
                        <option value=\"Liechtenstein\">Liechtenstein</option> 
                        <option value=\"Lituania\">Lituania</option> 
                        <option value=\"Luxemburgo\">Luxemburgo</option> 
                        <option value=\"Macao\">Macao</option> 
                        <option value=\"Republica de Macedonia\">Republica de Macedonia</option> 
                        <option value=\"Madagascar\">Madagascar</option> 
                        <option value=\"Malasia\">Malasia</option> 
                        <option value=\"Malaui\">Malaui</option> 
                        <option value=\"Maldivas\">Maldivas</option> 
                        <option value=\"Mali\">Mali</option> 
                        <option value=\"Malta\">Malta</option> 
                        <option value=\"Islas Malvinas\">Islas Malvinas</option> 
                        <option value=\"Isla de Man\">Isla de Man</option> 
                        <option value=\"Islas Marianas del Norte\">Islas Marianas del Norte</option> 
                        <option value=\"Marruecos\">Marruecos</option> 
                        <option value=\"Islas Marshall\">Islas Marshall</option> 
                        <option value=\"Martinica\">Martinica</option> 
                        <option value=\"Mauricio\">Mauricio</option> 
                        <option value=\"Mauritania\">Mauritania</option> 
                        <option value=\"Mayotte\">Mayotte</option> 
                        <option value=\"Mexico\">Mexico</option> 
                        <option value=\"Micronesia\">Micronesia</option> 
                        <option value=\"Moldavia\">Moldavia</option> 
                        <option value=\"Monaco\">Monaco</option> 
                        <option value=\"Mongolia\">Mongolia</option> 
                        <option value=\"Montenegro\">Montenegro</option> 
                        <option value=\"Montserrat\">Montserrat</option> 
                        <option value=\"Mozambique\">Mozambique</option> 
                        <option value=\"Namibia\">Namibia</option> 
                        <option value=\"Nauru\">Nauru</option> 
                        <option value=\"Isla de Navidad\">Isla de Navidad</option> 
                        <option value=\"Nepal\">Nepal</option> 
                        <option value=\"Nicaragua\">Nicaragua</option> 
                        <option value=\"Niger\">Niger</option> 
                        <option value=\"Nigeria\">Nigeria</option> 
                        <option value=\"Niue\">Niue</option> 
                        <option value=\"Norfolk\">Norfolk</option> 
                        <option value=\"Noruega\">Noruega</option> 
                        <option value=\"Nueva Caledonia\">Nueva Caledonia</option> 
                        <option value=\"Nueva Zelanda\">Nueva Zelanda</option> 
                        <option value=\"Oman\">Oman</option> 
                        <option value=\"Paises Bajos\">Paises Bajos</option> 
                        <option value=\"Pakistan\">Pakistan</option> 
                        <option value=\"Palaos\">Palaos</option> 
                        <option value=\"Autoridad Nacional Palestina\">Autoridad Nacional Palestina</option> 
                        <option value=\"Panama\">Panama</option> 
                        <option value=\"Papua Nueva Guinea\">Papua Nueva Guinea</option> 
                        <option value=\"Paraguay\">Paraguay</option> 
                        <option value=\"Peru\">Peru</option> 
                        <option value=\"Islas Pitcairn\">Islas Pitcairn</option> 
                        <option value=\"Polinesia Francesa\">Polinesia Francesa</option> 
                        <option value=\"Polonia\">Polonia</option> 
                        <option value=\"Portugal\">Portugal</option> 
                        <option value=\"Puerto Rico\">Puerto Rico</option> 
                        <option value=\"Catar\">Catar</option> 
                        <option value=\"Reino Unido\">Reino Unido</option> 
                        <option value=\"Reunion\">Reunion</option> 
                        <option value=\"Ruanda\">Ruanda</option> 
                        <option value=\"Rumania\">Rumania</option> 
                        <option value=\"Rusia\">Rusia</option> 
                        <option value=\"Republica Arabe Saharaui Democratica\">Republica Arabe Saharaui Democratica</option> 
                        <option value=\"Islas Salomon\">Islas Salomon</option> 
                        <option value=\"Samoa\">Samoa</option> 
                        <option value=\"Samoa Americana\">Samoa Americana</option> 
                        <option value=\"San Bartolome\">San Bartolome</option> 
                        <option value=\"San Cristobal y Nieves\">San Cristobal y Nieves</option> 
                        <option value=\"San Marino\">San Marino</option> 
                        <option value=\"San Martin\">San Martin</option> 
                        <option value=\"San Pedro y Miquelon\">San Pedro y Miquelon</option> 
                        <option value=\"San Vicente y las Granadinas\">San Vicente y las Granadinas</option> 
                        <option value=\"Santa Helena, A. y T.\">Santa Helena, A. y T.</option> 
                        <option value=\"Santa Lucia\">Santa Luca</option> 
                        <option value=\"Santo Tome y Principe\">Santo Tome y Principe</option> 
                        <option value=\"Senegal\">Senegal</option> 
                        <option value=\"Serbia\">Serbia</option> 
                        <option value=\"Seychelles\">Seychelles</option> 
                        <option value=\"Sierra Leona\">Sierra Leona</option> 
                        <option value=\"Singapur\">Singapur</option> 
                        <option value=\"Siria\">Siria</option> 
                        <option value=\"Somalia\">Somalia</option> 
                        <option value=\"Sri Lanka\">Sri Lanka</option> 
                        <option value=\"Suazilandia\">Suazilandia</option> 
                        <option value=\"Sudafrica\">Sudafrica</option> 
                        <option value=\"Sudan\">Sudan</option> 
                        <option value=\"Sudan del Sur\">Sudan del Sur</option> 
                        <option value=\"Suecia\">Suecia</option> 
                        <option value=\"Suiza\">Suiza</option> 
                        <option value=\"Surinam\">Surinam</option> 
                        <option value=\"Svalbard y Jan Mayen\">Svalbard y Jan Mayen</option> 
                        <option value=\"Tailandia\">Tailandia</option> 
                        <option value=\"Taiwan\">Taiwan</option> 
                        <option value=\"Tanzania\">Tanzania</option> 
                        <option value=\"Tayikistan\">Tayikistan</option> 
                        <option value=\"Territorio Britanico del Oceano Indico\">Territorio Britanico del Oceano Indico</option> 
                        <option value=\"Territorios Australes Franceses\">Territorios Australes Franceses</option> 
                        <option value=\"Timor Oriental\">Timor Oriental</option> 
                        <option value=\"Togo\">Togo</option> 
                        <option value=\"Tokelau\">Tokelau</option> 
                        <option value=\"Tonga\">Tonga</option> 
                        <option value=\"Trinidad y Tobago\">Trinidad y Tobago</option> 
                        <option value=\"Tunez\">Tunez</option> 
                        <option value=\"Islas Turcas y Caicos\">Islas Turcas y Caicos</option> 
                        <option value=\"Turkmenistan\">Turkmenistan</option> 
                        <option value=\"Turquia\">Turquia</option> 
                        <option value=\"Tuvalu\">Tuvalu</option> 
                        <option value=\"Ucrania\">Ucrania</option> 
                        <option value=\"Uganda\">Uganda</option> 
                        <option value=\"Uruguay\">Uruguay</option> 
                        <option value=\"Uzbekistan\">Uzbekistan</option> 
                        <option value=\"Vanuatu\">Vanuatu</option> 
                        <option value=\"Ciudad del Vaticano\">Ciudad del Vaticano</option> 
                        <option value=\"Vietnam\">Vietnam</option> 
                        <option value=\"Islas Virgenes Britanicas\">Islas Virgenes Britanicas</option> 
                        <option value=\"Islas Virgenes de los Estados Unidos\">Islas Virgenes de los Estados Unidos</option> 
                        <option value=\"Wallis y Futuna\">Wallis y Futuna</option> 
                        <option value=\"Yemen\">Yemen</option> 
                        <option value=\"Yibuti\">Yibuti</option> 
                        <option value=\"Zambia\">Zambia</option> 
                        <option value=\"Zimbabue\">Zimbabue</option>
                    </html:select> 
                    <br> <br> <br>
                    3er Pais &nbsp;
                    <html:select name="ClaseEstadistica" property="codigo3">
                        <option value=\"\">Paises...</option> 
                        <option value=\"Afganistan\">Afganistan</option> 
                        <option value=\"Aland\">Aland</option> 
                        <option value=\"Albania\">Albania</option> 
                        <option value=\"Alemania\">Alemania</option> 
                        <option value=\"Andorra\">Andorra</option> 
                        <option value=\"Angola\">Angola</option> 
                        <option value=\"Anguila\">Anguila</option> 
                        <option value=\"Antigua y Barbuda\">Antigua y Barbuda</option> 
                        <option value=\"Antillas Neerlandesas\">Antillas Neerlandesas</option> 
                        <option value=\"Arabia Saudita\">Arabia Saudita</option> 
                        <option value=\"Argelia\">Argelia</option> 
                        <option value=\"Argentina\">Argentina</option> 
                        <option value=\"Armenia\">Armenia</option> 
                        <option value=\"Aruba\">Aruba</option> 
                        <option value=\"Australia\">Australia</option> 
                        <option value=\"Austria\">Austria</option> 
                        <option value=\"Azerbaiyan\">Azerbaiyan</option> 
                        <option value=\"Bahamas\">Bahamas</option> 
                        <option value=\"Barein\">Barein</option> 
                        <option value=\"Banglades\">Banglades</option> 
                        <option value=\"Barbados\">Barbados</option> 
                        <option value=\"Belgica\">Belgica</option> 
                        <option value=\"Belice\">Belice</option> 
                        <option value=\"Benin\">Benin</option> 
                        <option value=\"Bermudas\">Bermudas</option> 
                        <option value=\"Bielorrusia\">Bielorrusia</option> 
                        <option value=\"Birmania\">Birmania</option> 
                        <option value=\"Bolivia\">Bolivia</option> 
                        <option value=\"Bosnia y Herzegovina\">Bosnia y Herzegovina</option> 
                        <option value=\"Botsuana\">Botsuana</option> 
                        <option value=\"Isla Bouvet\">Isla Bouvet</option> 
                        <option value=\"Brasil\">Brasil</option> 
                        <option value=\"Brunei\">Brunei</option> 
                        <option value=\"Bulgaria\">Bulgaria</option> 
                        <option value=\"Burkina Faso\">Burkina Faso</option> 
                        <option value=\"Burundi\">Burundi</option> 
                        <option value=\"Butan\">Butan</option> 
                        <option value=\"Cabo Verde\">Cabo Verde</option> 
                        <option value=\"Islas Caiman\">Islas Caiman</option> 
                        <option value=\"Camboya\">Camboya</option> 
                        <option value=\"Camerun\">Camerun</option> 
                        <option value=\"Canada\">Canada</option> 
                        <option value=\"Republica Centroafricana\">Republica Centroafricana</option> 
                        <option value=\"Chad\">Chad</option> 
                        <option value=\"Republica Checa\">Republica Checa</option> 
                        <option value=\"Chile\">Chile</option> 
                        <option value=\"China\">China</option> 
                        <option value=\"Chipre\">Chipre</option> 
                        <option value=\"Islas Cocos\">Islas Cocos</option> 
                        <option value=\"Colombia\">Colombia</option> 
                        <option value=\"Comoras\">Comoras</option> 
                        <option value=\"Republica del Congo\">Republica del Congo</option> 
                        <option value=\"Rep. Dem. del Congo\">Rep. Dem. del Congo</option> 
                        <option value=\"Islas Cook\">Islas Cook</option> 
                        <option value=\"Corea del Norte\">Corea del Norte</option> 
                        <option value=\"Corea del Sur\">Corea del Sur</option> 
                        <option value=\"Costa de Marfil\">Costa de Marfil</option> 
                        <option value=\"Costa Rica\">Costa Rica</option> 
                        <option value=\"Croacia\">Croacia</option> 
                        <option value=\"Curazao\">Curazao</option> 
                        <option value=\"Cuba\">Cuba</option> 
                        <option value=\"Dinamarca\">Dinamarca</option> 
                        <option value=\"Dominica\">Dominica</option> 
                        <option value=\"Republica Dominicana\">Republica Dominicana</option> 
                        <option value=\"Ecuador\">Ecuador</option> 
                        <option value=\"Egipto\">Egipto</option> 
                        <option value=\"El Salvador\">El Salvador</option> 
                        <option value=\"Emiratos Árabes Unidos\">Emiratos Árabes Unidos</option> 
                        <option value=\"Eritrea\">Eritrea</option> 
                        <option value=\"Eslovaquia\">Eslovaquia</option> 
                        <option value=\"Eslovenia\">Eslovenia</option> 
                        <option value=\"Espana\">Espana</option> 
                        <option value=\"Estados Unidos\">Estados Unidos</option> 
                        <option value=\"Estonia\">Estonia</option> 
                        <option value=\"Etiopia\">Etiopia</option> 
                        <option value=\"Islas Feroe\">Islas Feroe</option> 
                        <option value=\"Filipinas\">Filipinas</option> 
                        <option value=\"Finlandia\">Finlandia</option> 
                        <option value=\"Fiyi\">Fiyi</option> 
                        <option value=\"Francia\">Francia</option> 
                        <option value=\"Gabon\">Gabon</option> 
                        <option value=\"Gambia\">Gambia</option> 
                        <option value=\"Georgia\">Georgia</option> 
                        <option value=\"Islas Georgias del Sur y Sandwich del Sur\">Islas Georgias del Sur y Sandwich del Sur</option> 
                        <option value=\"Ghana\">Ghana</option> 
                        <option value=\"Gibraltar\">Gibraltar</option> 
                        <option value=\"Granada\">Granada</option> 
                        <option value=\"Grecia\">Grecia</option> 
                        <option value=\"Groenlandia\">Groenlandia</option> 
                        <option value=\"Guadalupe\">Guadalupe</option> 
                        <option value=\"Guam\">Guam</option> 
                        <option value=\"Guatemala\">Guatemala</option> 
                        <option value=\"Guayana Francesa\">Guayana Francesa</option> 
                        <option value=\"Guernsey\">Guernsey</option> 
                        <option value=\"Guinea\">Guinea</option> 
                        <option value=\"Guinea Ecuatorial\">Guinea Ecuatorial</option> 
                        <option value=\"Guinea-Bisau\">Guinea-Bisau</option> 
                        <option value=\"Guyana\">Guyana</option> 
                        <option value=\"Haiti\">Haiti</option> 
                        <option value=\"Islas Heard y McDonald\">Islas Heard y McDonald</option> 
                        <option value=\"Honduras\">Honduras</option> 
                        <option value=\"Hong Kong\">Hong Kong</option> 
                        <option value=\"Hungria\">Hungria</option> 
                        <option value=\"India\">India</option> 
                        <option value=\"Indonesia\">Indonesia</option> 
                        <option value=\"Iran\">Iran</option> 
                        <option value=\"Irak\">Irak</option> 
                        <option value=\"Irlanda\">Irlanda</option> 
                        <option value=\"Islandia\">Islandia</option> 
                        <option value=\"Israel\">Israel</option> 
                        <option value=\"Italia\">Italia</option> 
                        <option value=\"Jamaica\">Jamaica</option> 
                        <option value=\"Japon\">Japon</option> 
                        <option value=\"Jersey\">Jersey</option> 
                        <option value=\"Jordania\">Jordania</option> 
                        <option value=\"Kazajistan\">Kazajistan</option> 
                        <option value=\"Kenia\">Kenia</option> 
                        <option value=\"Kirguistan\">Kirguistan</option> 
                        <option value=\"Kiribati\">Kiribati</option> 
                        <option value=\"Kuwait\">Kuwait</option> 
                        <option value=\"Laos\">Laos</option> 
                        <option value=\"Lesoto\">Lesoto</option> 
                        <option value=\"Letonia\">Letonia</option> 
                        <option value=\"Libano\">Libano</option> 
                        <option value=\"Liberia\">Liberia</option> 
                        <option value=\"Libia\">Libia</option> 
                        <option value=\"Liechtenstein\">Liechtenstein</option> 
                        <option value=\"Lituania\">Lituania</option> 
                        <option value=\"Luxemburgo\">Luxemburgo</option> 
                        <option value=\"Macao\">Macao</option> 
                        <option value=\"Republica de Macedonia\">Republica de Macedonia</option> 
                        <option value=\"Madagascar\">Madagascar</option> 
                        <option value=\"Malasia\">Malasia</option> 
                        <option value=\"Malaui\">Malaui</option> 
                        <option value=\"Maldivas\">Maldivas</option> 
                        <option value=\"Mali\">Mali</option> 
                        <option value=\"Malta\">Malta</option> 
                        <option value=\"Islas Malvinas\">Islas Malvinas</option> 
                        <option value=\"Isla de Man\">Isla de Man</option> 
                        <option value=\"Islas Marianas del Norte\">Islas Marianas del Norte</option> 
                        <option value=\"Marruecos\">Marruecos</option> 
                        <option value=\"Islas Marshall\">Islas Marshall</option> 
                        <option value=\"Martinica\">Martinica</option> 
                        <option value=\"Mauricio\">Mauricio</option> 
                        <option value=\"Mauritania\">Mauritania</option> 
                        <option value=\"Mayotte\">Mayotte</option> 
                        <option value=\"Mexico\">Mexico</option> 
                        <option value=\"Micronesia\">Micronesia</option> 
                        <option value=\"Moldavia\">Moldavia</option> 
                        <option value=\"Monaco\">Monaco</option> 
                        <option value=\"Mongolia\">Mongolia</option> 
                        <option value=\"Montenegro\">Montenegro</option> 
                        <option value=\"Montserrat\">Montserrat</option> 
                        <option value=\"Mozambique\">Mozambique</option> 
                        <option value=\"Namibia\">Namibia</option> 
                        <option value=\"Nauru\">Nauru</option> 
                        <option value=\"Isla de Navidad\">Isla de Navidad</option> 
                        <option value=\"Nepal\">Nepal</option> 
                        <option value=\"Nicaragua\">Nicaragua</option> 
                        <option value=\"Niger\">Niger</option> 
                        <option value=\"Nigeria\">Nigeria</option> 
                        <option value=\"Niue\">Niue</option> 
                        <option value=\"Norfolk\">Norfolk</option> 
                        <option value=\"Noruega\">Noruega</option> 
                        <option value=\"Nueva Caledonia\">Nueva Caledonia</option> 
                        <option value=\"Nueva Zelanda\">Nueva Zelanda</option> 
                        <option value=\"Oman\">Oman</option> 
                        <option value=\"Paises Bajos\">Paises Bajos</option> 
                        <option value=\"Pakistan\">Pakistan</option> 
                        <option value=\"Palaos\">Palaos</option> 
                        <option value=\"Autoridad Nacional Palestina\">Autoridad Nacional Palestina</option> 
                        <option value=\"Panama\">Panama</option> 
                        <option value=\"Papua Nueva Guinea\">Papua Nueva Guinea</option> 
                        <option value=\"Paraguay\">Paraguay</option> 
                        <option value=\"Peru\">Peru</option> 
                        <option value=\"Islas Pitcairn\">Islas Pitcairn</option> 
                        <option value=\"Polinesia Francesa\">Polinesia Francesa</option> 
                        <option value=\"Polonia\">Polonia</option> 
                        <option value=\"Portugal\">Portugal</option> 
                        <option value=\"Puerto Rico\">Puerto Rico</option> 
                        <option value=\"Catar\">Catar</option> 
                        <option value=\"Reino Unido\">Reino Unido</option> 
                        <option value=\"Reunion\">Reunion</option> 
                        <option value=\"Ruanda\">Ruanda</option> 
                        <option value=\"Rumania\">Rumania</option> 
                        <option value=\"Rusia\">Rusia</option> 
                        <option value=\"Republica Arabe Saharaui Democratica\">Republica Arabe Saharaui Democratica</option> 
                        <option value=\"Islas Salomon\">Islas Salomon</option> 
                        <option value=\"Samoa\">Samoa</option> 
                        <option value=\"Samoa Americana\">Samoa Americana</option> 
                        <option value=\"San Bartolome\">San Bartolome</option> 
                        <option value=\"San Cristobal y Nieves\">San Cristobal y Nieves</option> 
                        <option value=\"San Marino\">San Marino</option> 
                        <option value=\"San Martin\">San Martin</option> 
                        <option value=\"San Pedro y Miquelon\">San Pedro y Miquelon</option> 
                        <option value=\"San Vicente y las Granadinas\">San Vicente y las Granadinas</option> 
                        <option value=\"Santa Helena, A. y T.\">Santa Helena, A. y T.</option> 
                        <option value=\"Santa Lucia\">Santa Luca</option> 
                        <option value=\"Santo Tome y Principe\">Santo Tome y Principe</option> 
                        <option value=\"Senegal\">Senegal</option> 
                        <option value=\"Serbia\">Serbia</option> 
                        <option value=\"Seychelles\">Seychelles</option> 
                        <option value=\"Sierra Leona\">Sierra Leona</option> 
                        <option value=\"Singapur\">Singapur</option> 
                        <option value=\"Siria\">Siria</option> 
                        <option value=\"Somalia\">Somalia</option> 
                        <option value=\"Sri Lanka\">Sri Lanka</option> 
                        <option value=\"Suazilandia\">Suazilandia</option> 
                        <option value=\"Sudafrica\">Sudafrica</option> 
                        <option value=\"Sudan\">Sudan</option> 
                        <option value=\"Sudan del Sur\">Sudan del Sur</option> 
                        <option value=\"Suecia\">Suecia</option> 
                        <option value=\"Suiza\">Suiza</option> 
                        <option value=\"Surinam\">Surinam</option> 
                        <option value=\"Svalbard y Jan Mayen\">Svalbard y Jan Mayen</option> 
                        <option value=\"Tailandia\">Tailandia</option> 
                        <option value=\"Taiwan\">Taiwan</option> 
                        <option value=\"Tanzania\">Tanzania</option> 
                        <option value=\"Tayikistan\">Tayikistan</option> 
                        <option value=\"Territorio Britanico del Oceano Indico\">Territorio Britanico del Oceano Indico</option> 
                        <option value=\"Territorios Australes Franceses\">Territorios Australes Franceses</option> 
                        <option value=\"Timor Oriental\">Timor Oriental</option> 
                        <option value=\"Togo\">Togo</option> 
                        <option value=\"Tokelau\">Tokelau</option> 
                        <option value=\"Tonga\">Tonga</option> 
                        <option value=\"Trinidad y Tobago\">Trinidad y Tobago</option> 
                        <option value=\"Tunez\">Tunez</option> 
                        <option value=\"Islas Turcas y Caicos\">Islas Turcas y Caicos</option> 
                        <option value=\"Turkmenistan\">Turkmenistan</option> 
                        <option value=\"Turquia\">Turquia</option> 
                        <option value=\"Tuvalu\">Tuvalu</option> 
                        <option value=\"Ucrania\">Ucrania</option> 
                        <option value=\"Uganda\">Uganda</option> 
                        <option value=\"Uruguay\">Uruguay</option> 
                        <option value=\"Uzbekistan\">Uzbekistan</option> 
                        <option value=\"Vanuatu\">Vanuatu</option> 
                        <option value=\"Ciudad del Vaticano\">Ciudad del Vaticano</option> 
                        <option value=\"Vietnam\">Vietnam</option> 
                        <option value=\"Islas Virgenes Britanicas\">Islas Virgenes Britanicas</option> 
                        <option value=\"Islas Virgenes de los Estados Unidos\">Islas Virgenes de los Estados Unidos</option> 
                        <option value=\"Wallis y Futuna\">Wallis y Futuna</option> 
                        <option value=\"Yemen\">Yemen</option> 
                        <option value=\"Yibuti\">Yibuti</option> 
                        <option value=\"Zambia\">Zambia</option> 
                        <option value=\"Zimbabue\">Zimbabue</option>
                    </html:select>
                    <br> <br> <br>

                    <div id="periodo1">
                        <fieldset style="border:none;">
                            <legend>Inicio de período</legend>                  
                            <input type ="text" class="anioBusqueda" name="fechaini" id="ini"/>
                            <div class="error">
                                <html:errors property="fechaini"/>
                            </div>  
                        </fieldset>
                    </div>
                    <div id="periodo2">
                        <fieldset style="border:none;">
                            <legend>Finalización de período</legend>
                            <input type ="text" class="anioBusqueda" name="fechafin" id="fin"/>
                            <div class="error">
                                <html:errors property="fechafin"/>
                            </div>
                        </fieldset>
                    </div>

                    <div id="Generar" style="float: center;">
                        <html:submit> Generar </html:submit>
                    </div>

                    <br><br>
                </html:form> 
            </div>
        </div>
    </div>	
</div> 