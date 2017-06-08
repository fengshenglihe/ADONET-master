using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Contoso.Models;
using Contoso.Repository;

namespace ContosoService
{
    public class Departmentervice
    {
        private DepartmentRepository _departmentRepository = new DepartmentRepository();
        public void SaveDepartment(Department department)
        {
            int id = _departmentRepository.Create(department);
        }
        public List<Department> GetAllDepartment() {
            var departments = _departmentRepository.GetAll();
            return departments;
        }
        public Department GetDepartmentById(int Id)
        {
            var department = _departmentRepository.Get(Id);
            return department;
        }
        public void UpdateDepartment(Department dept)
        {
            _departmentRepository.Update(dept);
        }
    }
}
