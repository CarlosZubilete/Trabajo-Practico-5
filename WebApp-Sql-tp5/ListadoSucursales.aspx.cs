using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebApp_Sql_tp5
{
  public partial class ListadoSucursales : System.Web.UI.Page
  {
    ServiceListSuc service = new ServiceListSuc(); 

    private string queryAll = "SELECT S.Id_Sucursal, S.NombreSucursal, S.DescripcionSucursal AS 'Descripcion', P.DescripcionProvincia AS 'Provincias',S.DireccionSucursal AS 'Direccion' FROM Sucursal S JOIN Provincia P ON S.Id_ProvinciaSucursal = P.Id_Provincia";

    private string queryCount = "SELECT count(Id_Sucursal) as 'Maximo' From Sucursal";
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        service.load_GridView(gridFiltros, queryAll);
        rageFiltros.MaximumValue = (service.getCountField(queryCount)).ToString();
      }
    }

    protected void btnFilter_Click(object sender, EventArgs e)
    {
      string queryFiltro = queryAll;  
      queryFiltro += " WHERE S.Id_Sucursal = " + Convert.ToInt32(txtFind.Text);

      try
      {
        service.load_GridView(gridFiltros, queryFiltro);
        txtFind.Text = String.Empty;
      }
      catch
      {
        lblShow.Text = "Ocurrio un error";
      }
    }
    protected void btnShowAll_Click(object sender, EventArgs e)
    {
      try
      {
        service.load_GridView(gridFiltros, queryAll);
        txtFind.Text = String.Empty;
      }
      catch
      {
        lblShow.Text = "Ocurrio un error";
      }
    }
  }
}