using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
      lblShow.Text = "Eliminado Exitoso";
      // !TODO MANDAR LA QUUERY A ELIMINAR
      // !TODO , Cada vez que agregamos un registro , aumenta el rage de nuestra validación!
    }
  }
}