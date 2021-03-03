<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="ViewAllProjects.aspx.cs" Inherits="ReleaseManagementAssignment.ViewAllProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ProId" HeaderText="ProId" ReadOnly="True" SortExpression="ProId" />
        <asp:BoundField DataField="ProName" HeaderText="ProName" SortExpression="ProName" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString6 %>" SelectCommand="SELECT [ProId], [ProName] FROM [Project]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
</asp:Content>
