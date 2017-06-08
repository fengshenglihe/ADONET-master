using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Contoso.Models;
using ContosoService;
namespace ContosoWeb.Departments
{
    public partial class DepartmentList : System.Web.UI.Page
    {
        private Departmentervice service = new Departmentervice();
        protected void Page_Load(object sender, EventArgs e)
        {
            var departments = service.GetAllDepartment();
            RptDeptList.DataSource = departments;
            RptDeptList.DataBind();
        }

        protected void RptDeptList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Details") {
                var DepartmentId = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("DepartmentDetails.aspx?DepartmentId=" + DepartmentId.ToString());
            }
            if (e.CommandName == "Edit")
            {
                var DepartmentId = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("DepartmentEdit.aspx?DepartmentId=" + DepartmentId.ToString());
            }


        }
    }
}