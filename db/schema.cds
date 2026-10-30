using { cuid, managed } from '@sap/cds/common';

namespace company.management;

entity Companies : cuid, managed {
    name        : String(100);
    industry    : String(100);
    website     : String(255);
 
    address     : Association to Addresses;
    departments : Composition of many Departments
                      on departments.company =  $self;
}
 
entity Departments : cuid, managed {
    name        : String(100);
    description : String(255);
 
    company     : Association to Companies;
    employees   : Composition of many Employees
                      on employees.department = $self;
}
 
entity Employees : cuid, managed {
    firstName   : String(100);
    lastName    : String(100);
    email       : String(255);
    jobTitle    : String(100);
    hireDate    : Date;
    salary      : Decimal(12, 2);
 
    department  : Association to Departments;
    address     : Association to Addresses;
    laptops     : Composition of many Laptops
                      on laptops.employee = $self;
}
 
entity Laptops : cuid, managed {
    assetTag    : String(50);
    brand       : String(100);
    model       : String(100);
    serialNumber: String(100);
    purchaseDate: Date;
 
    employee    : Association to Employees;
}
 
entity Addresses : cuid, managed {
    street      : String(255);
    city        : String(100);
    state       : String(100);
    postalCode  : String(20);
    country     : String(100);
}
