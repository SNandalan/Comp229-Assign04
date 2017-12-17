<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">

    <table>

        <tr>
            <td style="width: 300px">Name:</td><td style="width: 305px">
            <asp:TextBox ID="txtModelName" runat="server" Width="150px" Enabled="false"/>
            <asp:RequiredFieldValidator ID="validateName" ControlToValidate="txtModelName" runat="server" Display="Static" SetFocusOnError="true" ErrorMessage="Name is required" />
            </td>
        </tr>

        <tr>
        <td style="width: 300px">Faction:</td><td style="width: 305px">
        <asp:DropDownList ID="ddlFaction" runat="server" Width="155px">
                        <asp:ListItem Text="Please choose one" Value="" />
                        <asp:ListItem Text="Teknes" Value="Teknes" />
                        <asp:ListItem Text="Goritsi" Value="Goritsi" />
                        <asp:ListItem Text="Shael Han" Value="Shael Han" />
                        <asp:ListItem Text="Hadross" Value="Hadross" />
                        <asp:ListItem Text="Nasier" Value="Nasier" />
                    </asp:DropDownList>
        </td></tr>

        <tr><td style="width: 300px">Rank:</td><td style="width: 305px">
        <asp:RadioButtonList runat="server" ID="radRank" RepeatDirection="Horizontal" Width="300px">
                        <asp:ListItem Text=" One" Value="1" />
                        <asp:ListItem Text=" Two" Value="2" />
                    </asp:RadioButtonList>
        </td></tr>

        <tr><td style="width: 300px">Base:</td><td style="width: 305px">
        <asp:TextBox ID="txtBase" runat="server" Width="150px" Enabled="false"/></td></tr>

        <tr><td style="width: 300px">Size:</td><td style="width: 305px">
        <asp:TextBox ID="txtSize" runat="server" Width="150px" Enabled="false"/></td></tr>

        <tr><td style="width: 300px">Deployment Zone:</td><td style="width: 305px">
        <asp:DropDownList ID="ddlDeploymentZone" runat="server" Width="157px">
                        <asp:ListItem Text="Please choose one" Value="" />
                        <asp:ListItem Text="One" Value="1" />
                        <asp:ListItem Text="Two" Value="2" />
                    </asp:DropDownList>
        </td></tr>

        <tr><td style="width: 300px">Mobility:</td><td style="width: 305px">
        <asp:TextBox ID="txtMobility" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td style="width: 300px">Will Power:</td><td style="width: 305px">
        <asp:TextBox ID="txtWillpower" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td style="width: 300px">Resiliance:</td><td style="width: 305px">
        <asp:TextBox ID="txtResiliance" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>

        <tr><td style="width: 300px">Wounds:</td><td style="width: 305px">
        <asp:TextBox ID="txtWounds" runat="server" CssClass="table" Width="150px" Enabled="false"/></td></tr>
        </table>
        
        <table>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Label ID="updateLabel" runat="server"></asp:Label>
        </table>
</asp:Content>
