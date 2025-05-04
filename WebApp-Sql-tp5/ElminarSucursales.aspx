<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="ElminarSucursales.aspx.cs" 
    UnobtrusiveValidationMode="None"
    Inherits="WebApp_Sql_tp5.ElminarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="EliminarSucursales.css" />
</head>
<body>

    <%-- Nav --%>
    <div class="navBar">
        <ul class="navBar__ul">
            <li class="navBar__ul__li">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AgregarSucursales.aspx" CssClass="navBar__link " >
                Sucursales
            </asp:HyperLink>  
        </li>
        
        <li class="navBar__ul__li">
            <asp:HyperLink ID="linkListSuc" runat="server" NavigateUrl="~/ListadoSucursales.aspx" CssClass="navBar__link " >
                Listado de sucursales
            </asp:HyperLink>
        </li>

        <li class="navBar__ul__li">          
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ElminarSucursales.aspx" CssClass="navBar__link  active">
                 Eliminar Sucursal
            </asp:HyperLink>
        </li>
    </ul>
    </div>
    <%-- TItulo: --%>
    <h1 class="title">Listado de sucursales</h1>
    <%-- FORMULARIO --%>
    <form id="form1" runat="server">
        
        <div class="eliminar-formulario">
            <label class="eliminar-formulario__label">ID Sucursal:</label>
            <asp:DropDownList runat="server" ID="ddlSucursales" CssClass="eliminar-formulario__dropdown" OnSelectedIndexChanged="ddlSucursales_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="0" Enabled="True">-- Seleccionar --</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator 
                runat="server" ID="requiredSelectSuc"
                CssClass="validaciones" Text="Seleccione una Surcursal" ControlToValidate="ddlSucursales" InitialValue="0"></asp:RequiredFieldValidator>
            <asp:Button runat="server" Text="Eliminar" ID="btnSend" CssClass="aspNet-Button" OnClick="btnSend_Click" />
        </div>
        <span class="contenedor__lblShow">
         <asp:Label runat="server" ID="lblShow"></asp:Label>
        </span>
        <hr />
    </form>
</body>
</html>
