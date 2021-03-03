<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AssignProjectTeamLeads.aspx.cs" Inherits="ReleaseManagementAssignment.AssignProjectTeamLeads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Assign Projects to TeamLeads</h1>
    Project ID:
    <br />
    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="ProId" DataValueField="ProId">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString4 %>" SelectCommand="SELECT [ProId] FROM [Project]"></asp:SqlDataSource>
    <br />
    Project Name:
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProName" DataValueField="ProName" Width="195px" Height="58px">
    </asp:DropDownList>
    <br />
    <br />
    Team Lead ID:
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString2 %>" SelectCommand="SELECT [ProId], [ProName] FROM [Project]"></asp:SqlDataSource>

    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TeamLeadId" DataValueField="TeamLeadId" Width="161px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString %>" SelectCommand="SELECT DISTINCT [TeamLeadId] FROM [Teams]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="AssignButton" runat="server" Text="Submit" OnClick="AssignButton_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>

