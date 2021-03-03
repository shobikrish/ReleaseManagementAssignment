<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ReleaseManagementAssignment.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                   <tr>
                    <td>
                        <asp:Label ID="Usrnme" runat="server" Text="EmployeeID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="UsrTxtbox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="passwrd" runat="server" Text="Password" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Usrpwd" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
