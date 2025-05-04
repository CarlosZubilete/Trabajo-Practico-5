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
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
