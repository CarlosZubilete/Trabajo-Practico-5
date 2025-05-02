using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApp_Sql_tp5
{
  public partial class AgregarSucursales : System.Web.UI.Page
  {
    
    private string queryProvincias = "Select * from Provincia";
    ServiceSuc serviceSuc = new ServiceSuc();
    protected void Page_Load(object sender, EventArgs e)
    {
      if(!IsPostBack)
      {
        // Table Provincias -> Id_Provincia - DescripcionProvincia
        serviceSuc.loading_DropDownList(ddlProvinciesSuc, queryProvincias, "Id_Provincia", "DescripcionProvincia");
      }
    }

    
  }
}