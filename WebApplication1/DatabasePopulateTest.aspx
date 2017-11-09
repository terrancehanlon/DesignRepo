<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatabasePopulateTest.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1">
    <h1 style="padding-left: 40%;">Display Data from database</h1>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">

            <ItemTemplate>
                <h1>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </h1>

                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />

                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                <br />
<br /></span>
            </ItemTemplate>
        </asp:ListView>
        <h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </h1>

</form>

</asp:Content>