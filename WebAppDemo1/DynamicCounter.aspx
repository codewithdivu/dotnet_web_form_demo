<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicCounter.aspx.cs" Inherits="WebAppDemo1.DynamicCounter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inc/Dcr Counter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
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
             width: 80vw;
             height:50vh;
             margin: 0 auto;
             padding: 20px;
             background-color: #f9f9f9;
             border: 1px solid #ccc;
             border-radius: 5px;
             display:flex;
             flex-direction:column;
             justify-content:center;
             align-items:center;
         }
         h1{
             margin-bottom:20px;
         }
          .form-group {
             margin-bottom: 20px;
             display:flex;
             flex-direction:row;
             justify-content:space-between;
             align-items:center;
             background-color:lightgrey;
             padding:1rem;
             border-radius:10px;
         }
          #CounterLabel{
              font-size:5rem;
              margin-right:4rem;
              margin-left:4rem;
          }
          .fontSize{
              font-size:5rem;
              margin-right:4rem;
              margin-left:4rem;
          }
          .btn{
              width:100%;
              padding: 0.5rem 2rem;
              font-size: 2rem;
          }
          .mainCounter{
              display:flex;
              flex-direction:row-reverse;
              margin-bottom:2rem;
          }
          .button{
            background-color: rebeccapurple;
            color: white;
            border: none;
            padding: 0.5rem 2rem 0.5rem 2rem;
            border-radius: 9px;
          }
    </style>
</head>
<body>
    <div class="container">
    <h1>Counter</h1>
    <form id="form3" runat="server">
        <div class="mainCounter">
            <asp:Button ID="Counters" runat="server" Text="Add" CssClass="button" OnClick="AddCounter" />
        </div>
        <div class="form-group">
            <asp:Button ID="Decrement0" runat="server" Text="-" CssClass="btn btn-info" OnClick="DecrementCounter" />
            <asp:Label ID="CounterLabel" runat="server" Text="0"></asp:Label>
            <asp:Button ID="Increment0" runat="server" Text="+" CssClass="btn btn-primary" OnClick="IncrementCounter" />
        </div>
        <asp:PlaceHolder ID="phControlsContainer" runat="server"></asp:PlaceHolder>
    </form>
</div>
</body>
</html>
