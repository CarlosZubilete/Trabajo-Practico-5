using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// 
using System.Data.SqlClient;

namespace WebApp_Sql_tp5
{
  public partial class ListadoSucursales : System.Web.UI.Page
  {
    private const string connectiongString = @"Data Source=DESKTOP-LFTFVP5\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";
    private string queryAll = "SELECT S.Id_Sucursal, S.NombreSucursal, S.DescripcionSucursal AS 'Descripcion', P.DescripcionProvincia AS 'Provincias',S.DireccionSucursal AS 'Direccion' FROM Sucursal S JOIN Provincia P ON S.Id_ProvinciaSucursal = P.Id_Provincia"; 
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        //SqlConnection connection = new SqlConnection(connectiongString);
        //connection.Open();

        //SqlCommand command = new SqlCommand(query,connection);
        //SqlDataReader dataReader = command.ExecuteReader();
        //gridFiltros.DataSource = dataReader;
        //gridFiltros.DataBind();
        //connection.Close();
        this.load_GridView(gridFiltros, queryAll);
      }
    }
    public void load_GridView(GridView gv, string query)
    {
      using(SqlConnection connection = new SqlConnection(connectiongString))
      {
        connection.Open();
        using (SqlCommand command = new SqlCommand(query, connection))
        {
          SqlDataReader dataReader = command.ExecuteReader();
          gridFiltros.DataSource = dataReader;
          gridFiltros.DataBind();
        }
      }
    }
    protected void btnFilter_Click(object sender, EventArgs e)
    {
      string queryFiltro = queryAll;  
      // WHERE S.Id_Sucursal = 10
      // string filtro = " WHERE S.Id_Sucursal = " + Convert.ToInt32(txtFind.Text);

      queryFiltro += " WHERE S.Id_Sucursal = " + Convert.ToInt32(txtFind.Text);
      this.load_GridView(gridFiltros, queryFiltro);
    }
  }
}