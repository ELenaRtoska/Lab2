<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad2-A-1.aspx.cs" Inherits="Lab2.Zad2_A_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-xs-4 text-right">
                Внесете стринг:
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="tekst" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="tekstVal1" 
                    runat="server" 
                    ControlToValidate="tekst" 
                    ValidationExpression="[A-Z0-9]+(_\d{2,}){0,1}"
                    ErrorMessage="Стрингот мора да содржи големи букви, цифри и евентуално една _ по која би следеле 2 или повеќе цифри">
                </asp:RegularExpressionValidator>
                <!--OVA E ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="tekstVal2" 
                    runat="server" 
                    ControlToValidate="tekst" 
                    ErrorMessage="Внесете стринг во празното поле">
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
                <asp:Label ID="labela" runat="server" class="text-success" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
