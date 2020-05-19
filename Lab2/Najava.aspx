<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Lab2.Zad3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-xs-4 text-right">
                Корисничко име:
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="korisnickoImeVal" 
                    ControlToValidate="txtKorisnik"
                    runat="server" 
                    ErrorMessage="Внесете корисничко име!">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-4 text-right">
                Лозинка:
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="txtLozinka" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="txtLozinkaVal" 
                    ControlToValidate="txtLozinka"
                    runat="server" 
                    ErrorMessage="Внесете лозинка!">
                </asp:RequiredFieldValidator>
                
            </div>
        </div>


        <div class="row">
            <div class="col-xs-4">
            </div>
            <div class="col-xs-2">
                <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click"  />
            </div>
            <div class="col-xs-6">
            </div>
        </div>


        <div class="row">
            <div class="col-xs-4">
                
            </div>
            <div class="col-xs-2">
                <asp:Label ID="lblObidi" runat="server" EnableViewState="False"></asp:Label>
            </div>
            <div class="col-xs-6"></div>
        </div>


    </div>
</asp:Content>
