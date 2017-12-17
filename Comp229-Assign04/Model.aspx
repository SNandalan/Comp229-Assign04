<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    <asp:DetailsView ID="mainDetails" runat="server" AutoGenerateRows="false" Width="350px" >
        <Fields>
            <asp:BoundField DataField="charName" HeaderText="Name" />
            <asp:BoundField DataField="faction" HeaderText="Faction" />
            <asp:BoundField DataField="rank" HeaderText="Rank" />
            <asp:BoundField DataField="_base" HeaderText="Base" />
            <asp:BoundField DataField="size" HeaderText="Size" />
            <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" />
            <asp:BoundField DataField="traits" HeaderText="Traits" />
            <asp:BoundField DataField="types" HeaderText="Types" />
            <asp:BoundField DataField="defenseChart" HeaderText="Defense Chart" />
            <asp:BoundField DataField="mobility" HeaderText="Mobility" />
            <asp:BoundField DataField="willpower" HeaderText="Will Power" />
            <asp:BoundField DataField="resiliance" HeaderText="Resiliance" />
            <asp:BoundField DataField="wounds" HeaderText="Wounds" />
            <asp:ImageField DataImageUrlField="imageUrl" DataAlternateTextField="imageUrl" DataAlternateTextFormatString="imageUrl" HeaderText="Image" />
        </Fields>

    </asp:DetailsView>
    <asp:DetailsView ID="actionDetails" runat="server" AutoGenerateRows="false" Width="350px">
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Actions" />
            <asp:BoundField DataField="type" HeaderText="Type" />
            <asp:BoundField DataField="rating" HeaderText="Rating" />
            <asp:BoundField DataField="range" HeaderText="Range" />
        </Fields>
    </asp:DetailsView>
    <asp:DetailsView ID="specialAbilityDetails" runat="server" AutoGenerateRows="false" Width="350px">
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Special Abilities" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            
        </Fields>
    </asp:DetailsView>
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="updateBtn_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" />

</asp:Content>
