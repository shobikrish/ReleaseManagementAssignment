<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="ReleaseManagementAssignment.AddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> ADD a Projects</h1>
    <table>
                   <tr>
                    <td>
                        <asp:Label ID="ProjectIdLabel" runat="server" Text="Project Id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ProIDBox" runat="server" OnTextChanged="ProIDBox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="ProjectNameLabel" runat="server" Text="Project Name" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ProjNameBox" runat="server"></asp:TextBox>

                    </td>
                </tr>
    </table>
   <br />
    <asp:Button ID="AddButton" runat="server" Text="Add Projects" OnClick="AddButton_Click1" />
    <br />
    <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="HomeButton" runat="server" Text="Home" OnClick="HomeButton_Click" />
</asp:Content>
