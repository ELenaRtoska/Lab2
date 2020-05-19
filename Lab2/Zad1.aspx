<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad1.aspx.cs" Inherits="Lab2.Zad1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-xs-6">
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Име:
                    </div>
                    <div class="col-xs-9">
                        <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Презиме:
                    </div>
                    <div class="col-xs-9">
                        <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Од:
                    </div>
                    <div class="col-xs-9">
                        <asp:DropDownList ID="ddlOd" runat="server">
                            <asp:ListItem>Скопје</asp:ListItem>
                            <asp:ListItem>Виена</asp:ListItem>
                            <asp:ListItem>Москва</asp:ListItem>
                            <asp:ListItem>Рим</asp:ListItem>
                            <asp:ListItem>Минхен</asp:ListItem>
                            <asp:ListItem>Софија</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        До:
                    </div>
                    <div class="col-xs-9">
                        <asp:DropDownList ID="ddlDo" runat="server">
                            <asp:ListItem>Виена</asp:ListItem>
                            <asp:ListItem>Скопје</asp:ListItem>
                            <asp:ListItem>Москва</asp:ListItem>
                            <asp:ListItem>Рим</asp:ListItem>
                            <asp:ListItem>Минхен</asp:ListItem>
                            <asp:ListItem>Софија</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Датум на тргање:
                    </div>
                    <div class="col-xs-9">
                        <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="ddlGodina" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Време на тргање:
                    </div>
                    <div class="col-xs-9">
                        <asp:DropDownList ID="ddlVreme" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Превозно средство:
                    </div>
                    <div class="col-xs-9">
                        <asp:ListBox ID="lstSredstvo" runat="server">
                            <asp:ListItem Selected="True">Авион</asp:ListItem>
                            <asp:ListItem>Воз</asp:ListItem>
                        </asp:ListBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Зона:
                    </div>
                    <div class="col-xs-9">
                        <asp:RadioButtonList ID="rblZona" runat="server">
                            <asp:ListItem Selected="True">Пушачи</asp:ListItem>
                            <asp:ListItem>Непушачи</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Класа:
                    </div>
                    <div class="col-xs-9">
                        <asp:RadioButtonList ID="rblKlasa" runat="server">
                            <asp:ListItem Selected="True">Економска</asp:ListItem>
                            <asp:ListItem>Бизнис</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                        Послуга:
                    </div>
                    <div class="col-xs-9">
                        <asp:CheckBoxList ID="cblPosluga" runat="server">
                            <asp:ListItem Selected="True">Пијалок</asp:ListItem>
                            <asp:ListItem>Кафе</asp:ListItem>
                            <asp:ListItem>Оброк</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-3 text-right">
                    </div>
                    <div class="col-xs-9">
                        <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
                    </div>
                </div>
            </div>
            <div class="col-xs-6">
                <asp:Panel ID="pnlPanela1" runat="server" EnableViewState="False">
                    Почитуван патнику
                    <br />
                    <b><asp:Label ID="lblPatnik" runat="server" Text="" class="text-danger"></asp:Label></b>
                    <br />
                    Издадена ви е карта за
                    <br />
                    <b><asp:Label ID="lblSredstvo" runat="server" Text=""></asp:Label></b>
                    <br />
                    со почетна дестинација
                    <br />
                    <b><asp:Label ID="lblOd" runat="server" Text=""></asp:Label></b>
                    <br />
                    и крајна дестинација
                    <br />
                    <b><asp:Label ID="lblDo" runat="server" Text=""></asp:Label></b>
                    <br />
                    Времето на поаѓање е
                    <br />
                    <b><asp:Label ID="lblVreme" runat="server" Text=""></asp:Label></b>
                    <br />
                    <br />
                    Вашето место на седење ќе биде во зоната за 
                    <b><asp:Label ID="lblZona" runat="server" Text=""></asp:Label></b>
                    во 
                    <b><asp:Label ID="lblKlasa" runat="server" Text=""></asp:Label></b>
                    класа и во текот на патувањето ќе бидете послужени со
                    <b><asp:Label ID="lblPosluga" runat="server" Text=""></asp:Label></b>
                    <br />
                    <asp:Image ID="lblSlika" runat="server"/>
                    <br />
                    Ви благодариме на довербата и ви посакуваме среќен пат!
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
