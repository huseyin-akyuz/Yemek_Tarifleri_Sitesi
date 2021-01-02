<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style3 {
            background-color: #CCCCCC;
        }
        .auto-style12 {
            width: 30px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style13 {
            width: 40px;
        }
        .auto-style15 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td>ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/proposal.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3" style="margin-top:15px">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style13"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>ONAYLI TARİF LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/proposal.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
</asp:Content>

