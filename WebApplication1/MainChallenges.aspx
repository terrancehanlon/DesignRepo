<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutJplConnect.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="jumbotron" style="text-align:center;">
        <h1 style="color:black;">
            Challenges
        </h1>
    </div>

    <div class="float-left w-75">
        <asp:ListView ID="ListView" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div style="margin-left:20px; margin-right: 20px; overflow:auto;">
                    <h3>
                        <asp:Label ID="TitleLabel01" runat="server" Text='<%# Eval("Title") %>' />
                        <span class="label label-default" style="font-size:18px; font-family:'Times New Roman', Times, serif">
                            &emsp; Deadline - "<asp:label ID="DataLabel01" runat="server" Text='<%#Eval("Date")%>' />"
                        </span>
                        <p style="font-size:15px">
                            Posted by: Populate by user &emsp; Contact Information: Populate by user
                        </p>
                    </h3>
                    <div class="float-left w-75" style="background-color: #222; border-radius: 25px">
                        <p style="padding-left: 25px; padding-top: 15px; padding-right: 25px; padding-bottom: 15px;">
                            <asp:label ID="DescriptionLabel01" runat="server" Text='<%# Eval("Description") %>' />
                        </p>
                    </div>
                    <div class="float-right w-25">
                        <p>Image Placeholder</p>
                        <%--<img src=" " alt="Image Placeholder"/>--%>
                    </div>
                </div>
                <br />
            </ItemTemplate>
        </asp:ListView>
    </div>




    <div class="float-right w-25">
        <div class="row">
            <div class="col-lg-12">
                <div class="img-thumbnail">
                    <img class="img-fluid" src="Images/default.png" alt="Picture" />
                    <div class="figure-caption">
                        <h3 style="text-align:center">Success Story</h3>
                        <p>Description</p>
                        <p style="text-align:center"><a href="#" class="btn btn-primary" role="button">Link</a></p>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-lg-12">
                <div class="img-thumbnail">
                    <img class="img-fluid" src="Images/default.png" alt="Picture" />
                    <div class="figure-caption">
                        <h3 style="text-align:center">Success Story #2</h3>
                        <p>Description</p>
                        <p style="text-align:center"><a href="#" class="btn btn-primary" role="button">Link</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </form>
</asp:Content>