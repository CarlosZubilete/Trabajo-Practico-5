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

    protected string getQuery()
    {
      string fields = "INSERT INTO Sucursal (NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal)";
      // VALUES ( 'Mostaza' , 'Local de comidas rapidas: Mostaza', 5 , 'Ruperto Mazza 785'); 
      string values = " VALUES ( '"+ txtNameSuc.Text + "' "; 
      values += ", '" + txtDescriptionSuc.Text + "'";
      values += " , " + Convert.ToInt32(ddlProvinciesSuc.SelectedValue); 
      values += ", '" + txtAddressSuc.Text + "' )";
      string query = fields + values;
      return query;
    }

    protected void cleanControl()
    {
      txtNameSuc.Text = String.Empty;
      txtDescriptionSuc.Text = String.Empty; 
      txtAddressSuc.Text = String.Empty;
      ddlProvinciesSuc.SelectedIndex = 0;
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
      // lblShow.Text = this.getQuery();
      string query = this.getQuery(); 
      try
      {
        if(serviceSuc.executeNonQuery(query) == 1)
        {
          lblShow.Text = "Los datos se enviaron correctamente";
          this.cleanControl();
          //lblShow.Text = query;
        }
      }
      catch
      {
        lblShow.Text = "Ocurrió un error";
      }
    
    }
  }
}