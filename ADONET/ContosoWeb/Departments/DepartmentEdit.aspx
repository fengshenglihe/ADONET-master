<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentEdit.aspx.cs" Inherits="ContosoWeb.Departments.DepartmentEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="margin-top:70px">
    <div class="col-md-4">
       

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
             </div>
                    <div class="form-group"style="margin-left: 10px;">
                <label>Start Date </label>
                <asp:TextBox runat="server" ID="txtStartDate" CssClass="form-control"></asp:TextBox>
            </div>
            <%-- <label>Row Version: </label><asp:TextBox runat="server" id="txtRowVersion"></asp:TextBox>
            --%>
            <div class="form-group"style="margin-left: 10px;">
                <asp:Button runat="server" CssClass="btn btn-default" ID="btnSave" OnClick="btnSave_OnClick" Text="Save" />

            
    
       
    </div>
</div>
</asp:Content>
