﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AssignProjectTeamLeads.aspx.cs" Inherits="ReleaseManagementAssignment.AssignProjectTeamLeads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        @import url("https://fonts.googleapis.com/css?family=Montserrat:400,800");

        * {
            box-sizing: border-box;
        }

        body {
            background: #f3e0e2;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            font-family: "Montserrat", sans-serif;
            height: 100vh;
            margin: -20px 0 50px;
        }

        h1 {
            font-weight: bold;
            margin: 0;
        }

        p {
            font-size: 14px;
            font-weight: 100;
            line-height: 20px;
            letter-spacing: 0.5px;
            margin: 20px 0 30px;
        }

        span {
            font-size: 12px;
        }

        a {
            color: #333;
            font-size: 14px;
            text-decoration: none;
            margin: 15px 0;
        }

        button {
            border-radius: 20px;
            border: 1px solid #ff4b2b;
            background-color: #ff4b2b;
            color: #ffffff;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
        }

        form {
            background-color: #ffffff;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 50px;
            height: 100%;
            text-align: center;
        }

        input {
            background-color: #eee;
            border: none;
            padding: 12px 15px;
            margin: 8px 0;
            width: 100%;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
            position: relative;
            overflow: hidden;
            width: 768px;
            height: 30%;
        }

        .form-container {
            position: absolute;
            top: 0;
            height: 100%;
        }

        .log-in-container {
            left: 0;
            width: 50%;
            z-index: 2;
        }

        .overlay-container {
            position: absolute;
            top: 0;
            left: 50%;
            width: 50%;
            height: 100%;
        }

        .overlay {
            background: #ff416c;
            background: -webkit-linear-gradient(to right, #ff4b2b, #ff416c);
            background: linear-gradient(to right, #ff4b2b, #ff416c);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 0 0;
            color: #ffffff;
            position: relative;
            left: -100%;
            height: 100%;
            width: 200%;
        }

        .overlay-panel {
            position: absolute;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 40px;
            text-align: center;
            top: 0;
            height: 100%;
            width: 50%;
        }

        .overlay-right {
            right: 0;
        }

        .social-container {
            margin: 50px 0;
        }

            .social-container a {
                border: 1px solid #dddddd;
                border-radius: 50%;
                display: inline-flex;
                justify-content: center;
                align-items: center;
                margin: 0 5px;
                height: 40px;
                width: 40px;
            }

        .drop {
            width: 100%;
            padding: 16px 20px;
            border: none;
            border-radius: 4px;
            background-color: #9e9998;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="container">
        <div class="form-container log-in-container">
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>Assign Projects to TeamLeads</h1>
                </div>
            </div>
        </div>
    </div>
    <div style="text-align:center">
        <table style=" margin: 0 auto"><br /><br /><br />
            <tr>
                <td>
                    <asp:Label ID="pl" runat="server" Text="Project Id"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList CssClass="drop" ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="ProId" DataValueField="ProId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString4 %>" SelectCommand="SELECT [ProId] FROM [Project]"></asp:SqlDataSource>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Project Name:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList CssClass="drop" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProName" DataValueField="ProName" Width="195px" Height="58px">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Team Lead ID:"></asp:Label>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString2 %>" SelectCommand="SELECT [ProId], [ProName] FROM [Project]"></asp:SqlDataSource>
                    <asp:DropDownList CssClass="drop" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TeamLeadId" DataValueField="TeamLeadId" Width="161px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString %>" SelectCommand="SELECT DISTINCT [EmpId] as TeamLeadId FROM [AddEmployee] WHERE ([EmpRole] = 'Team Lead')"></asp:SqlDataSource>
                    <br />
                    <br />
                </td>
            </tr>



        </table>
    </div>

    <asp:Button CssClass="drop" ID="AssignButton" runat="server" Text="Submit" OnClick="AssignButton_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>

