using ContosoService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContosoWeb.Departments
{
    public partial class DepartmentDetails : System.Web.UI.Page
    {
        private Departmentervice service = new Departmentervice();
        protected void Page_Load(object sender, EventArgs e)
        {

            var DepartmentId = Request.QueryString["DepartmentId"];
            int id = Convert.ToInt32(DepartmentId);
            var department = service.GetDepartmentById(id);
            LabelId.Text = department.Id.ToString();
            LabelName.Text = department.Name;
            LabelBudget.Text = department.Budget.ToString();
            LabelStartDate.Text = department.StartDate.ToString();
            LabelInstructorId.Text = department.InstructorId.ToString();
        }
    }
}