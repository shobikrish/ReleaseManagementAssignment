<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="ViewTeamLeads.aspx.cs" Inherits="ReleaseManagementAssignment.ViewTeamLeads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:BoundField DataField="LeadName" HeaderText="LeadName" SortExpression="LeadName" />
        <asp:BoundField DataField="TeamLeadId" HeaderText="TeamLeadId" SortExpression="TeamLeadId" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString5 %>" SelectCommand="SELECT DISTINCT [LeadName], [TeamLeadId] FROM [Teams]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>
