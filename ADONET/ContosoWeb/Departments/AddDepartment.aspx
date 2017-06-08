<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDepartment.aspx.cs" Inherits="ContosoWeb.Department.AddDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
   <title></title>
</head>
<body>
     <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Application name</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Contact</a></li>
                        <li><a runat="server" href="~/Departments/AddDepartment.aspx">Add Department</a></li>
                        <li><a runat="server" href="~/Departments/AddInstructor.aspx">Add Instructor</a></li>
                    </ul>
                </div>
            </div>
        </div>
<div class="row" style="margin-top:70px">
    <div class="col-md-4">
        <form id="form1" runat="server">
       
            <div class="form-group" style="margin-left: 10px;">
                <label for="form1">Name </label>
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group"style="margin-left: 10px;">
                <label>Budget </label>
                <asp:TextBox runat="server" ID="txtBudget" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group"style="margin-left: 10px;">
                <label>Instructor </label>
                <asp:TextBox runat="server" ID="txtInstructorId" CssClass="form-control"></asp:TextBox>
            </div>
            <%-- <label>Row Version: </label><asp:TextBox runat="server" id="txtRowVersion"></asp:TextBox>
            --%>
            <div class="form-group"style="margin-left: 10px;">
                <asp:Button runat="server" CssClass="btn btn-default" ID="btnSave" OnClick="btnSave_OnClick" Text="Save" />

            </div>
    
        </form>
    </div>
</div>
    
</body>
</html>
