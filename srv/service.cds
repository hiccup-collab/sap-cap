using { company.management as db  } from '../db/schema';

service CompanyRecords {
    @odata.draft.enabled
   entity Companies as projection on db.Companies;  
    entity Departments as projection on db.Departments;
    entity Employess as projection on db.Employees;
    entity Laptops as projection on db.Laptops;
    entity Addresses as projection on db.Addresses;
}



