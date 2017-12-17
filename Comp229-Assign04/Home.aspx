<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    
    <asp:GridView ID="MainGridView" runat="server"></asp:GridView>
    <a href="Update.aspx" class="btn btn-primary btn-lg">Update List &raquo;</a>
</asp:Content>
