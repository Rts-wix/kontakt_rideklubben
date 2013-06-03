<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="visKontaktBeskeder.aspx.cs" Inherits="Admin_visKontaktBeskeder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderVenstre" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderCenter" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ID" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
            SortExpression="ID" />
        <asp:BoundField DataField="Emne" HeaderText="Emne" SortExpression="Emne" />
        <asp:BoundField DataField="Besked" HeaderText="Besked" 
            SortExpression="Besked" />
        <asp:BoundField DataField="Navn" HeaderText="Navn" SortExpression="Navn" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Mobil" HeaderText="Mobil" SortExpression="Mobil" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
    DeleteCommand="DELETE FROM [Kontakt] WHERE [ID] = @ID" 
    InsertCommand="INSERT INTO [Kontakt] ([Emne], [Besked], [Navn], [Email], [Mobil]) VALUES (@Emne, @Besked, @Navn, @Email, @Mobil)" 
    ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [ID], [Emne], [Besked], [Navn], [Email], [Mobil] FROM [Kontakt]" 
    UpdateCommand="UPDATE [Kontakt] SET [Emne] = @Emne, [Besked] = @Besked, [Navn] = @Navn, [Email] = @Email, [Mobil] = @Mobil WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Emne" Type="String" />
        <asp:Parameter Name="Besked" Type="String" />
        <asp:Parameter Name="Navn" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Mobil" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Emne" Type="String" />
        <asp:Parameter Name="Besked" Type="String" />
        <asp:Parameter Name="Navn" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Mobil" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHøjre" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBund" Runat="Server">
</asp:Content>

