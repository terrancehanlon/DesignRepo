<%@ Page Title="" Language="C#" MasterPageFile="Jpl.Master" AutoEventWireup="true" CodeBehind="AppendToChallengesDatabaseTest.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <form id="appendChallengesForm" runat="server">
        <h1 style="text-align:center">
            Test Adding Data to Database
        </h1>


        
        <div style="text-align:center">
            <br />
            <span>Enter Title</span>
            <asp:TextBox ID="titleInput" runat="server"></asp:TextBox>
            <br />
            <br />
            <span>Enter Short Description</span>
            <asp:TextBox ID="descriptionInput" runat="server"></asp:TextBox>
            <br />
            <br />
            <span>Enter Date</span>
            <asp:TextBox type="date" ID="dateInput1" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</asp:Content>
