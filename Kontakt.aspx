<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kontakt.aspx.cs" Inherits="Kontakt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" Runat="Server">Kontakt
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderVenstre" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCenter" Runat="Server">
    
    <asp:Label ID="LabelSvar" runat="server" Text=""></asp:Label>
    <br />

    <asp:Label ID="LabelEmne" runat="server" Text="Label" CssClass="Label">Emne</asp:Label>:
    <asp:TextBox ID="TextBoxEmne" runat="server" CssClass="Input"></asp:TextBox>
    <br />
    <asp:Label ID="LabelBesked" runat="server" Text="Label" CssClass="Label">Besked</asp:Label>:
    <asp:TextBox ID="TextBoxBesked" runat="server" CssClass="Input" style="width:260px;height:100px;"></asp:TextBox>
    <br />
    <asp:Label ID="LabelNavn" runat="server" Text="Label" CssClass="Label">Navn</asp:Label>:
    <asp:TextBox ID="TextBoxNavn" runat="server" CssClass="Input"></asp:TextBox>
    <br />
    <asp:Label ID="LabelEmail" runat="server" Text="Label" CssClass="Label">Email</asp:Label>:
    <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="Input"></asp:TextBox>
    <br />
    <asp:Label ID="LabelMobil" runat="server" Text="Label" CssClass="Label">Mobil</asp:Label>:
    <asp:TextBox ID="TextBoxMobil" runat="server" CssClass="Input"></asp:TextBox>
    <br />

    

    <span class="Label"></span>
    <asp:Button ID="Button1" runat="server" Text="Send" CssClass="Input" 
        onclick="Button1_Click" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHøjre" Runat="Server">

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBund" Runat="Server">
</asp:Content>

