<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="ListadoSucursales.aspx.cs" 
    UnobtrusiveValidationMode="None"
    Inherits="WebApp_Sql_tp5.ListadoSucursales" %>

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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ElminarSucursales.aspx" CssClass="navBar__link">
                 Eliminar Sucursal
            </asp:HyperLink>
        </li>
    </ul>
    </div>
    <%-- TItulo: --%>
    <h1 class="title">Listado de sucursales</h1>

    <form id="form1" runat="server">
        <%-- Busqueda de Sucursales --%>
       <div class="busqueda">   
            <span class="busqueda__span" id="rageFiltro">Ingrese ID sucursal: 
            <asp:TextBox runat="server" ID="txtFind" ValidationGroup="Filter"></asp:TextBox>
           <%-- Required Field Validator --%>
            <asp:RequiredFieldValidator runat="server" 
                ControlToValidate="txtFind" 
                ID="requiredTxtFind" CssClass="validaciones" Text="Ingrese un ID" ValidationGroup="Filter"></asp:RequiredFieldValidator>
            <%-- Range Validator --%>
            <asp:RangeValidator runat="server" 
                ID="rageFiltros" Text="ID Invalido" 
                ControlToValidate="txtFind" 
                Type="Integer" CssClass="validaciones" 
                ValidationGroup="Filter"
                MinimumValue="1" >
                <%--MaximumValue="15" , Setemos los valores desde appx.cs--%> 
            </asp:RangeValidator>
            <%-- Boton Filtrar --%>
            <asp:Button runat="server" ID="btnFilter" text="Filtrar" OnClick="btnFilter_Click" ValidationGroup="Filter" CssClass="aspNet-Button"/>
            <%-- Boton Mostrar Todos --%>
            <asp:Button runat="server" ID="btnShowAll" text="Mostrar Todos" OnClick="btnShowAll_Click" CssClass="aspNet-Button"/>
            </span>
            <asp:Label runat="server" ID="lblShow"></asp:Label>
        </div>

       <%--Grid con los resultados: --%>
        <div class="gridFiltros">
            <asp:GridView runat="server" ID="gridFiltros" CssClass="gridFiltros"></asp:GridView>
        </div>              
    </form>
</body>
</html>


