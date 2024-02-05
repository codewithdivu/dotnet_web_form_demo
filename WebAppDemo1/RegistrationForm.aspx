<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="WebAppDemo1.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body{
           height:100vh;
           width:100vw;
           display:flex;
           flex-direction:row;
           justify-content:center;
           align-items:center;
        }
        .container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .btn-submit {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Registration</h2>
        <form id="form1" runat="server">
            <div class="form-group">
                <span class="form-label">Name:</span>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <span class="form-label">Email:</span>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <span class="form-label">Password:</span>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <span class="form-label">Country:</span>
                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Country" Value="" />
                    <asp:ListItem Text="India" Value="India" />
                    <asp:ListItem Text="Brazil" Value="Brazil" />
                    <asp:ListItem Text="China" Value="China" />
                    <asp:ListItem Text="Russia" Value="Russia" />
                    <asp:ListItem Text="France" Value="France" />
                    <asp:ListItem Text="Japan" Value="Japan" />
                    <asp:ListItem Text="USA" Value="USA" />
                    <asp:ListItem Text="Canada" Value="Canada" />
                    <asp:ListItem Text="UK" Value="UK" />
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <span class="form-label">Gender:</span>
                <asp:RadioButtonList ID="rblGender" runat="server">
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                </asp:RadioButtonList>
            </div>

            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="RegistrationSubmit" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server" Text="" />
            </div>
        </form>
    </div>

</body>
</html>
