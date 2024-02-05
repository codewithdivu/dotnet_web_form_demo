<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllServerControllers.aspx.cs" Inherits="WebAppDemo1.AllServerControllers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Server Controllers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .serverContainer {
            width: 100vw;
            height: 100vh;
        }

        .serverForm {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            flex-wrap:wrap;
            padding: 2rem;
        }

        .box-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 2rem;
            background-color: azure;
            padding: 2rem;
        }
        .box-group h3 {
            margin-bottom: 0.5rem;
        }
        .generalDiv{
            padding-left:5rem;
            display:flex;
            flex-direction:column;
        }
            
    </style>
</head>
<body>
    <div class="serverContainer">
        <form id="form1" runat="server">
            <div class="serverForm">
                <div class="box-group">
                    <h3>1. Label</h3>
                    <asp:Label ID="labelControl" runat="server" Text="This is Label"></asp:Label>
                </div>
                <div class="box-group">
                    <h3>2. TextBox</h3>
                    <asp:TextBox ID="textBoxControl" runat="server" OnTextChanged="OnInputValueChange" AutoPostBack="true"></asp:TextBox>
                </div>
                <div class="box-group">
                    <h3>3. Button</h3>
                    <asp:Button ID="buttonControl" runat="server" CssClass="btn btn-primary" Text="Click Here" OnClick="HandleButtonClick" />
                </div>
                <div class="box-group">
                    <h3>4. HyperLink</h3>
                    <asp:HyperLink ID="hyperLinkControl" runat="server" Text="click here for naivgate" NavigateUrl="~/IncrementDecrement.aspx"></asp:HyperLink>
                </div>
                <div class="box-group">
                    <h3>5. Radio Button</h3>
                    <div>
                        <asp:RadioButton ID="radioButtonControl1" runat="server" Text=" Male" GroupName="Gender" />
                    </div>
                    <div>
                        <asp:RadioButton ID="radioButtonControl2" runat="server" Text=" Female" GroupName="Gender" />
                    </div>
                </div>
                <div class="box-group">
                    <h3>6. Check Box</h3>
                    <div>
                        <asp:CheckBox ID="checkboxControl" runat="server" Text="Agree the privacy Policy" />
                    </div>
                </div>
                <div class="box-group">
                    <h3>7. Link Button</h3>
                    <asp:LinkButton ID="linkButtonControl" runat="server" Text="Click Here" OnClick="HandleClickLinkButton"></asp:LinkButton>
                </div>
                <div class="box-group">
                    <h3>8. File Upload</h3>
                    <p>Upload File Here</p>
                    <asp:FileUpload ID="fileUploadControl" runat="server" />
                </div>
                <div class="box-group">
                    <h3>9. Download File</h3>
                    <asp:Button ID="downloadFile" runat="server" OnClick="HandleDownloadFile" Text="Download" />  
                </div>
                <div class="box-group">
                    <h3>10. DropDownList</h3>
                    <p>Please select your city</p>
                    <div>
                        <asp:DropDownList ID="dropDownListControl" runat="server">
                            <asp:ListItem Value="">-- Please Select --</asp:ListItem>
                            <asp:ListItem >Ahmedabad</asp:ListItem>
                            <asp:ListItem >Surat</asp:ListItem>
                            <asp:ListItem >Rajkot</asp:ListItem>
                            <asp:ListItem >Porbandar</asp:ListItem>
                            <asp:ListItem >Amreli</asp:ListItem>
                            <asp:ListItem >Gandhinagar</asp:ListItem>
                            <asp:ListItem >Bhavanagar</asp:ListItem>
                            <asp:ListItem >Junagadh</asp:ListItem>
                            <asp:ListItem >Jamnagar</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="box-group">
                    <h3>11. Data Grid</h3>
                    <asp:DataGrid ID="dataGridControl" runat="server"></asp:DataGrid>
                </div>
                <div class="box-group">
                    <h3>12. Calendar</h3>
                    <asp:Calendar ID="calendarControl" runat="server" OnSelectionChanged="HandleDateSelection"></asp:Calendar>
                </div>



            </div>
            <div class="generalDiv">
                <asp:Label ID="generalLabel" Font-Size="40px" runat="server"></asp:Label>
                <div>
                    <asp:Button ID="submitButton" runat="server" CssClass="btn btn-secondary" Text="Submit" OnClick="HandleSubmit" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
