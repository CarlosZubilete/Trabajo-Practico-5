<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="WebApp_Sql_tp5.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="ListadoSucursales.css" />
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
                <asp:HyperLink ID="linkListSuc" runat="server" NavigateUrl="~/ListadoSucursales.aspx" CssClass="navBar__link active" >
                    Listado de sucursales
                </asp:HyperLink>
            </li>

            <li class="navBar__ul__li">
                    Eliminar Sucursal
                <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="" CssClass="navBar__link">
                </asp:HyperLink>--%>
            </li>
        </ul>
    </div>
    <%-- TItulo: --%>
    <h1 class="title">Listado de sucursales</h1>
    <form id="form1" runat="server">
        <%-- Busqueda de Sucursales --%>
        <div class="busqueda">
            <span class="busqueda__span">Ingrese ID sucursal: 
            <asp:TextBox runat="server" ID="txtFind"></asp:TextBox>
            <asp:Button runat="server" ID="btnFilter" text="Filtrar"/>
            <asp:Button runat="server" ID="btnShowAll" text="Mostrar Todos"/>
            </span>
        </div>
        <%-- Grid con los resultados: --%>
        <div>
            <asp:GridView runat="server" ID="gridFiltros"></asp:GridView>
        </div>
    </form>
</body>
</html>
