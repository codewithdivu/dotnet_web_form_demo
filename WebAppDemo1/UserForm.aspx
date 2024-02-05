<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="WebAppDemo1.UserForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .result {
            margin-top: 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login Form</h2>
        <form id="form1" runat="server">
            <div>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                <br />
            </div>
            <asp:Label ID="lblResult" CssClass="result" runat="server" Text=""></asp:Label>
        </form>
    </div>
</body>
</html>
