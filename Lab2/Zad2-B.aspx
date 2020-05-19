<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad2-B.aspx.cs" Inherits="Lab2.Zad2_B" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />



    <div class="container">

        <asp:Panel ID="korisnickaSmetka" runat="server">


        <div class="row">
            <div class="col-xs-4 text-right">
                Име:
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="ime" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="imeVal" 
                    runat="server" 
                    ControlToValidate="ime"
                    Display="None"
                    ErrorMessage="Внеси име!">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                Презиме:
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="prezime" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="prezimeVal" 
                    runat="server" 
                    ControlToValidate="prezime"
                    Display="None"
                    ErrorMessage="Внеси презиме!">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                ФИНКИ ID
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="finkiID" runat="server"></asp:TextBox>@finki.ukim.mk
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="finkiIDVal1" 
                    runat="server" 
                    ControlToValidate="finkiID"
                    Display="None"
                    ErrorMessage="Внеси ФИНКИ ID!">
                </asp:RequiredFieldValidator>
                <!--ZA DA E VALIDNO-->
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="finkiIDVal2" 
                    runat="server" 
                    ControlToValidate="finkiID" 
                    ValidationExpression="[A-Z0-9]+(_\d{2,}){0,1}"
                    Display="None"
                    ErrorMessage="Неправилен формат на ID">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-8">
                <small>може да ги содржи знаците a-z, 0-9, _ и максимум една точка</small>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                Лозинка
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="lozinka" runat="server" TextMode="Password" EnableViewState="False"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="lozinkaVal1" 
                    runat="server" 
                    ControlToValidate="lozinka"
                    Display="None"
                    ErrorMessage="Внеси лозинка!">
                </asp:RequiredFieldValidator>
                <!--ZA DA E VALIDNO-->
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="lozinkaVal2" 
                    runat="server" 
                    ControlToValidate="lozinka" 
                    ValidationExpression="[a-z0-9_]*\.{0,1}[a-z0-9_]*"
                    Display="None"
                    ErrorMessage="Невалидна лозинка">
                </asp:RegularExpressionValidator>

            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                Потврда
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="potvrda" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="potvrdaVal1" 
                    runat="server" 
                    ControlToValidate="potvrda"
                    Display="None"
                    ErrorMessage="Потврди лозинка!">
                </asp:RequiredFieldValidator>
                <!--ZA DA E VALIDNO-->
                <asp:CompareValidator 
                    class="text-danger"
                    ID="potvrdaVal2" 
                    runat="server" 
                    ControlToValidate="potvrda"
                    ControlToCompare="lozinka"
                    Display="None"
                    ErrorMessage="Различни лозинки">
                </asp:CompareValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                Адреса
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="adresa" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="adresaVal" 
                    runat="server" 
                    ControlToValidate="adresa"
                    Display="None"
                    ErrorMessage="Внеси адреса!">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                Телефон
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="telefon" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="telefonVal1" 
                    runat="server" 
                    ControlToValidate="telefon"
                    Display="None"
                    ErrorMessage="Внеси телефон!">
                </asp:RequiredFieldValidator>
                <!--ZA DA E VALIDNO-->
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="telefonVal2" 
                    runat="server" 
                    ControlToValidate="telefon" 
                    ValidationExpression="\+389 7[0125678] [0-9]{3} [0-9]{3}"
                    Display="None"
                    ErrorMessage="Неправилен формат на телефон">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                Пол
            </div>
            <div class="col-xs-2">
                <asp:RadioButtonList ID="pol" runat="server">
                    <asp:ListItem>М</asp:ListItem>
                    <asp:ListItem>Ж</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="polVal" 
                    runat="server" 
                    ControlToValidate="pol"
                    Display="None"
                    ErrorMessage="Внеси пол!">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">
                Датум на раѓање
            </div>
            <div class="col-xs-2">
                <asp:Calendar ID="datum" runat="server"></asp:Calendar>
            </div>
            <div class="col-xs-6">
                
            </div>
        </div>

        <br />
        <br />



            </asp:Panel>


        <asp:Panel ID="panela" runat="server" Visible="false">
            <div class="row">
            <div class="col-xs-4 text-right">
                Занимање
            </div>
            <div class="col-xs-2">
                <asp:DropDownList ID="zanimanje" runat="server">
                    <asp:ListItem>-занимање-</asp:ListItem>
                    <asp:ListItem>работник</asp:ListItem>
                    <asp:ListItem>директор</asp:ListItem>
                    <asp:ListItem>секретар</asp:ListItem>
                    <asp:ListItem>менаџер</asp:ListItem>
                    <asp:ListItem>професор</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-6">
                <!--ZA DA NE E PRAZNO-->
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="zanimanjeVal" 
                    runat="server" 
                    ControlToValidate="zanimanje"
                    InitialValue="-занимање-"
                    Display="None"
                    ErrorMessage="Избери занимање!">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        


            <div class="row">
                <div class="col-xs-4 text-right">
                    Години на вршење на избраната дејност
                </div>
                <div class="col-xs-2">
                    <asp:TextBox ID="godini" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6">
                    <!--ZA DA NE E PRAZNO-->
                    <asp:RequiredFieldValidator
                        class="text-danger"
                        ID="godiniVal1" 
                        runat="server" 
                        ControlToValidate="godini"
                        Display="None"
                        ErrorMessage="Внеси години!">
                    </asp:RequiredFieldValidator>
                    <!--ZA DA E VALIDNO-->
                    <asp:RegularExpressionValidator 
                        class="text-danger"
                        ID="godiniVal2" 
                        runat="server" 
                        ControlToValidate="godini"
                        ValidationExpression="[0-9]+"
                        Display="None"
                        ErrorMessage="Недозволена вредност за години">
                    </asp:RegularExpressionValidator>          
                </div>
            </div>




        </asp:Panel>

        <br />
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-8">
                <asp:Button ID="podnesi" runat="server" Text="Поднеси" OnClick="podnesi_Click" />
            </div>
        </div>

        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-8">
                <asp:Label ID="labela" runat="server" class="text-success" Text=""></asp:Label>
                <br />
                <asp:ValidationSummary ID="greski" runat="server" ShowMessageBox="True" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-8">
                <asp:Label ID="labela2" runat="server" class="text-success" Text=""></asp:Label>
            </div>
        </div>
        



    </div>
</asp:Content>
