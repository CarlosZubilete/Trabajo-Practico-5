using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Sql_tp5
{

  public partial class ElminarSucursales : System.Web.UI.Page
  {

    ServiceSuc service = new ServiceSuc();
    protected string querey = "SELECT * FROM Sucursal";
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        // Id_Sucursal - NombreSucursal
        service.loading_DropDownList(ddlSucursales, querey, "Id_Sucursal", "NombreSucursal");
      }
    }

    protected void ddlSucursales_SelectedIndexChanged(object sender, EventArgs e)
    {
      lblShow.Text = String.Empty;
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
      // DELETE FROM Sucursal WHERE Id_Sucursal = 
      string query = "DELETE FROM Sucursal WHERE Id_Sucursal =" + Convert.ToInt32(ddlSucursales.SelectedValue);

      try
      {
        if (service.executeNonQuery(query) == 1)
        {
          lblShow.Text = "Eliminado completado";
          ddlSucursales.SelectedIndex = 0;
        }
      }
      catch
      {
        lblShow.Text = "Ocurrió un error"; 
      }
    }
  }
}