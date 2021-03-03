<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerRole.aspx.cs" Inherits="ReleaseManagementAssignment.ManagerRole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> This is Manager Page</h1>
            Manager ID:
            <asp:Label ID="ManagerIdLabel" runat="server" Text=""></asp:Label>
        </div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/AddProject.aspx" Text="Add Project" Value="Add Project"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AssignProjectTeamLeads.aspx" Text="Assign Project to Team Leads" Value="Assign Project to Team Leads"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ViewTeamLeads.aspx" Text="View TeamLeads" Value="View TeamLeads"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ViewAllProjects.aspx" Text="View All Projects" Value="View All Projects"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AddEmployee.aspx" Text="Add Team Lead/Developer/Tester" Value="Add Employee"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>
</body>
</html>
