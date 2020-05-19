<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GlavnaStranica.aspx.cs" Inherits="Lab2.GlavnaStranica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">
         <div class="col-xs-4"></div>
        <div class="col-xs-2">
            Главна страница
        </div>
        <div class="col-xs-6"></div>
        </div>

        <div class="row">
         <div class="col-xs-4"></div>
        <div class="col-xs-2">
            <asp:Button ID="btn2" runat="server" Text="Одјава" OnClick="btn2_Click" />
        </div>
        <div class="col-xs-6"></div>
        </div>

    </div>

</asp:Content>
