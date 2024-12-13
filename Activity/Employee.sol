// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract EmployeeDetails {
    struct Employee{
        string name;
        string department;
        string designation;
        uint256 salary;
    }

    Employee public emp1;

  function readDetails() public view returns(string memory name, string memory department, string memory designation, uint256 salary){
        return  (emp1.name, emp1.department, emp1.designation, emp1.salary);
    }
    
    function setValue(string memory _name,string memory _department,string memory _designation) public {
        emp1.name = _name;
        emp1.department = _department;
        emp1.designation = _designation;
    }

    function setSalary(uint256 _salary) public {
        emp1.salary = _salary;
    }
    
  


}