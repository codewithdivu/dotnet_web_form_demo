<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppDemo1._Default" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main style="display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); grid-gap: 20px;">
        <div class="box" onclick="location.href='auth/login';" style="border: 2px solid #000; border-radius: 5px; padding: 20px; width: 100%; text-align: center; cursor: pointer; transition: background-color 0.3s;">
            <h2 style="margin-bottom: 1.5rem">User Form</h2>
            <p>Here there is normal user form</p>
        </div>

        <div class="box" onclick="location.href='auth/register';" style="border: 2px solid #000; border-radius: 5px; padding: 20px; width: 100%; text-align: center; cursor: pointer; transition: background-color 0.3s;">
            <h2 style="margin-bottom: 1.5rem">Registration Form</h2>
            <p>Here you can find the Registration Form</p>
        </div>

        <div class="box" onclick="location.href='counter/basic';" style="border: 2px solid #000; border-radius: 5px; padding: 20px; width: 100%; text-align: center; cursor: pointer; transition: background-color 0.3s;">
            <h2 style="margin-bottom: 1.5rem">Basic Counter</h2>
            <p>Here you will going to see the Basic Counter</p>
        </div>

        <div class="box" onclick="location.href='controls';" style="border: 2px solid #000; border-radius: 5px; padding: 20px; width: 100%; text-align: center; cursor: pointer; transition: background-color 0.3s;">
            <h2 style="margin-bottom: 1.5rem">All Server Controllers</h2>
            <p>Here you can find All the Server Contollers of .Net</p>
        </div>

        <div class="box" onclick="location.href='counter/dynamic';" style="border: 2px solid #000; border-radius: 5px; padding: 20px; width: 100%; text-align: center; cursor: pointer; transition: background-color 0.3s;">
            <h2 style="margin-bottom: 1.5rem">Dynamic Counter</h2>
            <p>Here you can find Dynamic Counter </p>
        </div>

    </main>


</asp:Content>
