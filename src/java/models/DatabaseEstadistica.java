/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import javabeans.Buscable;
import javabeans.EstadisticaForm;
import javabeans.Tratado;

/**
 *
 * @author betocols
 */
public class DatabaseEstadistica {

  private Database database;

  public DatabaseEstadistica(String driver, String databaseUrl) {
    this.database = Database.getInstance(driver, databaseUrl);
  }

  public boolean get(EstadisticaForm e, ArrayList<Buscable> result, ArrayList<Tratado> tratados) throws SQLException {

    boolean got = false;
    boolean and = false, or = false, where = false;

    String clave, pais, fechaini, fechafin, sqlqueryEstadistica, /*sqlqueryTratados, sqlqueryPaises,*/ from;
    String varPais[];
    Scanner s, s1;
    int idTratado;
    int ejeX = Integer.parseInt(e.getEjeX());
    boolean noHayTratados, tablaPais = false, tablaTratado = false;


/*    //Obtengo el total de tratados
    sqlqueryTratados = "SELECT count(id) as total from \"STI\".tratado";
    //Obtengo el total de paises
    sqlqueryPaises = "SELECT count(DISTINCT pais) as total from \"STI\".pais";
*/
    sqlqueryEstadistica = "SELECT ";

    //Seleccion dependiendo del atributo tomado como Eje X
    if (ejeX == 0) {
      //Hara count sobre los paises
      sqlqueryEstadistica += "pais";
    } else if (ejeX == 1) {
      //Hara count sobre las fechas
      sqlqueryEstadistica += "firmaFecha";
    }

    sqlqueryEstadistica += ", count(*) as cont ";

    //Tablas en las que se realizara la busqueda
    from = "FROM ";
    //Para determinar si se se rellenaron estos campos en EstadisticaForm

    noHayTratados = tratados.isEmpty();
    pais = e.getPais();
    fechaini = e.getFechaini();
    fechafin = e.getFechafin();
    //Seleccion dependiendo del atributo tomado como Eje X
    if (ejeX == 0) {
      from += "\"STI\".pais";
      tablaPais = true;
      //Si no esta vacia la lista de tratados o hay fecha de inicio o fin, hace la relacion de tratados con paises
      if (!noHayTratados || !(fechaini.isEmpty()) || !(fechafin.isEmpty())) {
        from += ", \"STI\".tratado ";
        from += "WHERE (\"STI\".pais.idtp = \"STI\".tratado.id) ";
        tablaTratado = true;
        and = true;
        where = true;
      }
    } else if (ejeX == 1) {
      //Al buscar por fecha necesito la tabla de tratados
      from += "\"STI\".tratado";
      tablaTratado = true;
      //Si el form de paises no esta vacio necesito la tabla de paises
      if (!pais.isEmpty()) {
        from += ", \"STI\".pais ";
        from += "WHERE (\"STI\".pais.idtp = \"STI\".tratado.id) ";
        tablaPais = true;
        and = true;
        where = true;
      }
    }

    //Agrego el FROM a la busqueda
    sqlqueryEstadistica += from;

    //Si hay tratados resultantes de la busqueda previa
    if (!tratados.isEmpty()) {
      if (!where) {
        sqlqueryEstadistica += " WHERE ";
        where = true;
      }

      //Si no es la primera condicion 
      if (and) {
        sqlqueryEstadistica += "AND ";
      }
      sqlqueryEstadistica += "(";

      //Para todos los tratados obtenidos en la busqueda
      for (int i = 0; i < tratados.size(); i++) {
        //Si no es el primer tratado
        if (or) {
          sqlqueryEstadistica += " OR ";
        }

        idTratado = tratados.get(i).getId();

        //Si tengo que relacionar las dos tablas
        if (tablaPais) {
          sqlqueryEstadistica += "(\"STI\".pais.idtp = " + idTratado + ")";
        } else { //Si solo tengo la tabla de tratados
          sqlqueryEstadistica += "(\"STI\".tratado.id = " + idTratado + ")";
        }
        or = true;
      }

      sqlqueryEstadistica += ") ";
      and = true;
    }
    or = false;
    //Si hay paises en el EstadisticaForm
    if (!pais.isEmpty()) {
      if (!where) {
        sqlqueryEstadistica += " WHERE ";
        where = true;
      }

      //Si no es el primer elemento luego del WHERE
      if (and) {
        sqlqueryEstadistica += "AND ";
      }

      sqlqueryEstadistica += "(";

      //Obtengo la lista de paises del EstadisticaForm
      varPais = pais.split(",");
      for (int i = 0; i < varPais.length; i++) {
        varPais[i] = varPais[i].trim();

        //Si no es el primer pais
        if (or) {
          sqlqueryEstadistica += " OR ";
        }

        sqlqueryEstadistica += "(\"STI\".pais.pais ILIKE ('" + varPais[i] + "'))";
        or = true;
      }
      sqlqueryEstadistica += ") ";
      and = true;
    }

    //Si hay fecha de inicio en el EstadisticaForm
    if (!fechaini.isEmpty()) {
      if (!where) {
        sqlqueryEstadistica += " WHERE ";
        where = true;
      }
      //Si no es el primer elemento luego del WHERE
      if (and) {
        sqlqueryEstadistica += "AND ";
      }
      sqlqueryEstadistica += "(extract(year from firmaFecha) >= " + fechaini + ") ";

      and = true;
    }

    //Si hay fecha de fin en el EstadisticaForm
    if (!fechafin.isEmpty()) {
      if (!where) {
        sqlqueryEstadistica += " WHERE ";
        where = true;
      }
      //Si no es el primer elemento luego del WHERE
      if (and) {
        sqlqueryEstadistica += "AND ";
      }

      sqlqueryEstadistica += "(extract(year from firmaFecha) <= " + fechafin + ") ";
      and = true;
    }

    //Seleccion dependiendo del atributo tomado como Eje X
    if (ejeX == 0) {
      //Hara count sobre los paises
      sqlqueryEstadistica += "GROUP BY pais ORDER BY pais;";
    } else if (ejeX == 1) {
      //Hara count sobre las fechas
      sqlqueryEstadistica += "GROUP BY firmaFecha ORDER BY firmaFecha;";
    }

    System.out.println("");
    System.out.println("");
    System.out.println("\n");
    System.out.println(sqlqueryEstadistica);
    System.out.println("");
    System.out.println("");
    System.out.println("");
    System.out.println("");

    try {
      Statement st = database.getConnection().createStatement();
      ResultSet rs;

/*      //Obtengo el total de tratados
      rs = st.executeQuery(sqlqueryTratados);
      if (rs.next()) {
        totales[0] = rs.getInt("total");
        System.out.println("Total tratados" + totales[0]);
      }
      //Obtengo el total de paises      
      rs = st.executeQuery(sqlqueryPaises);
      if (rs.next()) {
        totales[1] = rs.getInt("total");
        System.out.println("Total paises" + totales[1]);
      }
*/      
      rs = st.executeQuery(sqlqueryEstadistica);
      got = rs.next();
      int id;
      if (got) {

        Buscable b = new Buscable();
        System.out.println("ejex == " + ejeX);

        //Obtiene el primer resultado
        if (ejeX == 0) {
          b.setDato(rs.getString("pais"));
        } else {
          b.setDato(fromChinesetoYear(rs.getDate("firmaFecha").toString()));
        }
        b.setCont(rs.getInt("cont"));

        //Imprime por consola
        if (ejeX == 0) {
          System.out.println("dato= " + rs.getString("pais"));
        } else {
          System.out.println("dato= " + fromChinesetoYear(rs.getDate("firmaFecha").toString()));
        }
        System.out.println("cont= " + rs.getString("cont"));

        result.add(b);

        //Itera sobre el result set para obtener los resultados
        while (rs.next()) {


          b = new Buscable();

          //Imprime por consola
          if (ejeX == 0) {
            System.out.println("dato= " + rs.getString("pais"));
          } else {
            System.out.println("dato= " + fromChinesetoYear(rs.getDate("firmaFecha").toString()));
          }
          System.out.println("cont= " + rs.getString("cont"));

          //Obtiene el siguiente resultado
          if (ejeX == 0) {
            b.setDato(rs.getString("pais"));
          } else {
            b.setDato(fromChinesetoYear(rs.getDate("firmaFecha").toString()));
          }
          b.setCont(rs.getInt("cont"));

          result.add(b);
        }
      }
    } catch (SQLException ex) {
      ex.printStackTrace();
    }
    got = got && (!result.isEmpty());

    return got;
  }

  static private String fromChinesetoYear(String date) {
    String items[];

    items = date.split("-");

    if (items.length != 3) {
      return null;
    }

    return items[0];
  }
}
