<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="447px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td style="margin-left: 40px; background-color: #FFFF99"><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                        <asp:Label ID="Label3" runat="server"
                          style="font-weight: 700; font-size: x-large; color: #CC0066;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' style="color: #FFFFFF"></asp:Label>
                        &nbsp;- <strong><em>Puan:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' style="color: #FFFFFF"></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>

