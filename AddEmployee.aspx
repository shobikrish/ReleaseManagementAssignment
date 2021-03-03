<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="ReleaseManagementAssignment.AddEmployee1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
                   <tr>
                    <td>
                        <asp:Label ID="EmpIdLabel" runat="server" Text=" Employee ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="EmpIDBox" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="EmpNameLabel" runat="server" Text="Employee Name" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="EmpNameBox" runat="server"></asp:TextBox>

                    </td>
                </tr>
    </table>
    Employee Role:
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Team Lead</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
        <asp:ListItem>Tester</asp:ListItem>
    </asp:DropDownList>
    <br />
   <br />
    <asp:Button ID="AddButton" runat="server" Text="Add Employee" OnClick="AddButton_Click" />
    <br />
    <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
</asp:Content>
