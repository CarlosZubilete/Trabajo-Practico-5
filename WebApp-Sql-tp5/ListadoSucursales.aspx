<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="WebApp_Sql_tp5.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="navBar">
        <ul class="navBar__ul">
            <li class="navBar__ul">Agregar Sucursales
                <asp:HyperLink ID="linkSucursales" runat="server"></asp:HyperLink>
            </li>
            <li class="navBar__ul">Listado de Sucursales</li>
            <li class="navBar__ul">Eliminar Sucursal</li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
