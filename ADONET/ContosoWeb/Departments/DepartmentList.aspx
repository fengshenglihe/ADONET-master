<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentList.aspx.cs" Inherits="ContosoWeb.Departments.DepartmentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Repeater runat="server" ID ="RptDeptList" OnItemCommand="RptDeptList_ItemCommand">
        <HeaderTemplate>
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Budget</th>
                    <th>Start Date</th>
                    <th>Details</th>
                </tr>
           
        </HeaderTemplate>
        <ItemTemplate>  
            <tr>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="labelID1"/>

                </td>
                <td>
                    <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="labelName"/>
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Budget") %>' runat="server" ID="labelBudget"/>
                </td>
                <td>
                    <asp:Label Text='<%# Eval("StartDate") %>' runat="server" ID="labelStartDate"/>
                </td>
                 <td>
                     <asp:LinkButton Text="Details" runat="server" CommandName="Details" CommandArgument='<%# Eval("Id") %>' ID ="BtnDetails" />
                </td>
                <td>
                     <asp:LinkButton Text="Edit" runat="server" CommandName="Edit" CommandArgument='<%# Eval("Id") %>' ID ="BtnEdit" />
                </td>

            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
