using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApp_Sql_tp5
{
  public class ServiceListSuc
  {
    private const string _connectiongString = @"Data Source=DESKTOP-LFTFVP5\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

    public void load_GridView(GridView gv, string query)
    {
      using (SqlConnection connection = new SqlConnection(_connectiongString))
      {
        connection.Open();
        using (SqlCommand command = new SqlCommand(query, connection))
        {
          SqlDataReader dataReader = command.ExecuteReader();
          gv.DataSource = dataReader;
          gv.DataBind();
        }
      }
    }
    // Funcions que nos retornará la cantidad de columnas, 
    public int getCountField(string query)
    {
      using (SqlConnection connection = new SqlConnection(_connectiongString))
      {
        connection.Open();
        using (SqlCommand command = new SqlCommand(query, connection))
        {
          SqlDataReader dataReader = command.ExecuteReader();
          if (dataReader.Read()) // Solo avanzamos a la primera y una fila 
          {
            return dataReader.GetInt32(0); // Dame la columna en la posición 0 (primera columna) y convertímela a int.
            // reader["Maximo"] // Maximo es el alias que le pusimos en la consulta. 
          }
        }
      }
      return 0; // Si no retorna nada
    }
  }
}