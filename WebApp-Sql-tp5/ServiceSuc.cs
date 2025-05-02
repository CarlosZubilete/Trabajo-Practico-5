using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApp_Sql_tp5
{
  public class ServiceSuc
  {
    //Privete
    private const string _connectingString = @"Data Source=DESKTOP-LFTFVP5\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";
    // Metodos publicos
    public void loading_DropDownList(DropDownList ddl, string queryTable, string idTable, string nameTable)
    {
      int counter = 1;
      using (SqlConnection connection = new SqlConnection(_connectingString))
      {
        connection.Open();
        using (SqlCommand command = new SqlCommand(queryTable, connection))
        {
          using (SqlDataReader dataReader = command.ExecuteReader())
          {
            // aqui -> ddlToProvince.Items.Insert(0, new ListItem("-- Seleccionar --", "0"));
            while (dataReader.Read())
            {
              ListItem item = new ListItem();
              item.Text = counter.ToString() + " - " + dataReader[nameTable].ToString();
              item.Value = dataReader[idTable].ToString();
              ddl.Items.Add(item);
              counter++;
            }
          }
        }
      }
    }

    public int executeNonQuery(string query)
    {
      using (SqlConnection connection = new SqlConnection(_connectingString))
      using (SqlCommand command = new SqlCommand(query, connection))
      {
        connection.Open();
        return command.ExecuteNonQuery();
      }
    }
  }
}