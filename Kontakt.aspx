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
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBoxBesked" Display="Dynamic" 
        ErrorMessage="Uden besked, ingen besked" ForeColor="#FF0066" 
        ValidationGroup="Besked"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LabelNavn" runat="server" Text="Label" CssClass="Label">Navn</asp:Label>:
    <asp:TextBox ID="TextBoxNavn" runat="server" CssClass="Input" 
        CausesValidation="True" ValidationGroup="Besked"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBoxNavn" ErrorMessage="Oplys venligst dit navn" 
        ForeColor="#FF0066" ValidationGroup="Besked"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LabelEmail" runat="server" Text="Label" CssClass="Label">Email</asp:Label>:
    <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="Input" 
        CausesValidation="True" ValidationGroup="Besked"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBoxEmail" Display="Dynamic" 
        ErrorMessage="Oplys gyldig email" ForeColor="#FF0066" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ValidationGroup="Besked"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBoxEmail" Display="Dynamic" 
        ErrorMessage="Vi vil meget gerne have din email" ForeColor="#FF0066" 
        SetFocusOnError="True" ValidationGroup="Besked"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LabelMobil" runat="server" Text="Label" CssClass="Label">Mobil</asp:Label>:
    <asp:TextBox ID="TextBoxMobil" runat="server" CssClass="Input"></asp:TextBox>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBoxMobil" Display="Dynamic" 
        ErrorMessage="Oplys gyldigt MobilNummer" ForeColor="#FF0066" 
        ValidationExpression="(\+\s?\d\d\s?)?\d\d\s?\d\d\s?\d\d\s?\d\d" 
        ValidationGroup="Besked"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBoxMobil" Display="Dynamic" 
        ErrorMessage="Vi vil meget gerne have dit mobilnummer" ForeColor="#FF0066" 
        SetFocusOnError="True" ValidationGroup="Besked"></asp:RequiredFieldValidator>
    <br />

    

    <span class="Label"></span>
    <asp:Button ID="Button1" runat="server" Text="Send" CssClass="Input" 
        onclick="Button1_Click" ValidationGroup="Besked" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHøjre" Runat="Server">

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBund" Runat="Server">
</asp:Content>

