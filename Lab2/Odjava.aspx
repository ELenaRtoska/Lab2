<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Odjava.aspx.cs" Inherits="Lab2.Odjava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <div class="container">
        <div class="row">
         <div class="col-xs-4"></div>
        <div class="col-xs-2">
            Успешно се одјавивте од системот
        </div>
        <div class="col-xs-6"></div>
        </div>

        <div class="row">
         <div class="col-xs-4"></div>
        <div class="col-xs-2">
            <asp:Button ID="btn3" runat="server" Text="Најава" OnClick="btn3_Click" />
        </div>
        <div class="col-xs-6"></div>
        </div>

    </div>
</asp:Content>
