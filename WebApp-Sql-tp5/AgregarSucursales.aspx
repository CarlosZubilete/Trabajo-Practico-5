<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="AgregarSucursales.aspx.cs" 
    UnobtrusiveValidationMode="None"
    Inherits="WebApp_Sql_tp5.AgregarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="AgregarSucursales.css" />

</head>
<body>
    <%-- Nav --%>
    <div class="navBar">
        <ul class="navBar__ul">
            <li class="navBar__ul">Agregar Sucursales</li>
            <li class="navBar__ul">Listado de Sucursales</li>
            <li class="navBar__ul">Eliminar Sucursal</li>
        </ul>
    </div>

    <h2 class="title">Agregar sucursales: </h2>
    <form id="form1" runat="server">
        <%-- Nombre Sucursal --%>
        <div>
            <span>Nombre Sucursal:</span>
            <asp:TextBox runat="server" ID="txtNameSuc"></asp:TextBox>
        </div>
        <%-- Descripcion Sucursal--%>
        <div>
            <span>Descripción: </span>
            <asp:TextBox runat="server" ID="txtDescriptionSuc"></asp:TextBox>
        </div>
        <%-- Provincias Sucursal --%>
        <div>
            <span>Provincia: 
            <asp:DropDownList runat="server" ID="ddlProvinciesSuc">
                <asp:ListItem Value="0" Enabled="True">-- Seleccionar -- </asp:ListItem>
            </asp:DropDownList>
            </span>
        </div>
        <%-- Direccion Sucursal --%>
        <div>
            <span>Dirección:</span>
            <asp:TextBox runat="server" ID="txtAddressSuc"></asp:TextBox>
        </div>
        <%-- Boton Enviar --%>
        <asp:Button runat="server" ID="btnSend" Text="Enviar"/>
    </form>
</body>
</html>
