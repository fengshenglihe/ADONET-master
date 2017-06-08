using ContosoService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContosoWeb.Departments
{
    public partial class DepartmentEdit : System.Web.UI.Page
    {
        int id;
        private Departmentervice service = new Departmentervice();
        protected void Page_Load(object sender, EventArgs e)
        {
            var DepartmentId = Request.QueryString["DepartmentId"];
             id = Convert.ToInt32(DepartmentId);
            if (!Page.IsPostBack) {
                
                var department = service.GetDepartmentById(id);
                
                txtName.Text = department.Name;
                txtBudget.Text = department.Budget.ToString();
                txtStartDate.Text = department.StartDate.ToString();
                txtInstructorId.Text = department.InstructorId.ToString();
            }
        }
        protected void btnSave_OnClick(object sender, EventArgs e)
        {
            var department = new Contoso.Models.Department()
            {
                Id = id,
                Name = txtName.Text,
                Budget = Convert.ToInt32(txtBudget.Text),
                InstructorId = Convert.ToInt32(txtInstructorId.Text),
                StartDate = DateTime.Now,
                UpdatedBy = 1,
                UpdatedDate = DateTime.Now,
                CreatedBy = 1,
                CreatedDate = DateTime.Now,
                RowVersion = 2
            };
            Departmentervice Departmentervice = new Departmentervice();
            Departmentervice.UpdateDepartment(department);

        }

    }
}