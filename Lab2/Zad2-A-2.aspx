<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad2-A-2.aspx.cs" Inherits="Lab2.Zad2_A_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-xs-4 text-right">
                Внесете телефон:
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="telefon" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="telefonVal1" 
                    runat="server" 
                    ControlToValidate="telefon" 
                    ValidationExpression="\+389 7[0125678] [0-9]{3} [0-9]{3}"
                    ErrorMessage="Телефонот мора да има формат +389 75 344 354">
                </asp:RegularExpressionValidator>
                <br />
                <!--OVA E ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="telefonVal2" 
                    runat="server" 
                    ControlToValidate="telefon" 
                    ErrorMessage="Внесете телефон во празното поле">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-2">
                <asp:Button ID="proveri" runat="server" Text="Провери" OnClick="proveri_Click" />
            </div>
            <div class="col-xs-6"></div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-8">
                <asp:Label ID="labela" runat="server" class="text-success"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
