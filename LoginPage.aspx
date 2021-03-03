﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ReleaseManagementAssignment.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        header .header {
            background-color: #fff;
            height: 45px;
        }

        header a img {
            width: 134px;
            margin-top: 4px;
        }

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .login-page .form .login {
            margin-top: -31px;
            margin-bottom: 26px;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF; background-color:#c7c2c2;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }

        body {
            background-color: #328f8a;
            background-image: linear-gradient(45deg,#328f8a,#08ac4b);
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>


</head>
<body>
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3>EMPLOYEE LOGIN</h3>
            <p>Please enter your credentials to login.</p>
          </div>
        </div>
        <form  class="login-form" runat="server">
            <asp:TextBox ID="UsrTxtbox" runat="server"></asp:TextBox>
            <asp:TextBox ID="Usrpwd" TextMode="Password" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
        </form>
      </div>
    </div>
</body>

</html>
