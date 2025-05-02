﻿<%@ Page 
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
            <li class="navBar__ul__li">Sucursales</li>
            
            <li class="navBar__ul__li">
                <asp:HyperLink ID="linkListSuc" runat="server" NavigateUrl="~/ListadoSucursales.aspx" CssClass="navBar__link">
                    Listado de sucursales
                </asp:HyperLink>
            </li>

            <li class="navBar__ul__li">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="" CssClass="navBar__link">
                    Eliminar Sucursal
                </asp:HyperLink>
            </li>
        </ul>
    </div>

    <h2 class="title">Agregar sucursales: </h2>
    <form id="form1" runat="server">
        <%-- Nombre Sucursal --%>
        <div>
            <span>Nombre Sucursal:</span>
            <asp:TextBox runat="server" ID="txtNameSuc" MaxLength="100"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredNameSuc" runat="server" ControlToValidate="txtNameSuc" CssClass="validaciones">Este campo es requerido</asp:RequiredFieldValidator>
        </div>
        <%-- Descripcion Sucursal--%>
        <div>
            <span>Descripción: </span>
            <asp:TextBox runat="server" ID="txtDescriptionSuc" MaxLength="100"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredDescriptionSuc" runat="server" ControlToValidate="txtDescriptionSuc" CssClass="validaciones">Este campo es requerido</asp:RequiredFieldValidator>
        </div>
        <%-- Provincias Sucursal --%>
        <div>
            <span>Provincia: 
            <asp:DropDownList runat="server" ID="ddlProvinciesSuc">
                <asp:ListItem Value="0" Enabled="True">-- Seleccionar -- </asp:ListItem>
            </asp:DropDownList>
            </span>
            
            <asp:RequiredFieldValidator ID="requiredProvinciesSuc" runat="server" ControlToValidate="ddlProvinciesSuc" CssClass="validaciones" InitialValue="0">Debe seleccionar una Provincia</asp:RequiredFieldValidator>
        </div>
        <%-- Direccion Sucursal --%>
        <div>
            <span>Dirección:</span>
            <asp:TextBox runat="server" ID="txtAddressSuc" MaxLength="100"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredAddressSuc" runat="server" ControlToValidate="txtAddressSuc" CssClass="validaciones">Este campo es requerido</asp:RequiredFieldValidator>
        </div>
        <%-- Boton Enviar --%>
        <asp:Button runat="server" ID="btnSend" Text="Enviar" OnClick="btnSend_Click"/>
        <hr />
        <asp:Label ID="lblShow" runat="server"></asp:Label>
    </form>
</body>
</html>
