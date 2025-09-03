//namespace defines a unique ID of the project 
//we can differeniate name of companies 
using {  cuid} from '@sap/cds/common';



namespace capm.db;
//context represnts usauge of the entity grouping
//we have context for master data and transaction data 
context dataModel {
    entity businessPatner  
    {
    key node_key :String(32)   ;
     bpRole:String(2);
     PhoneNumber:String(30);
     FAX_Number:String(40);
    Web_Address:String(40);
    EMail_Address:String(40);
    BP_ID:String(20);
    CompanyName:String(40);
    }
    entity employees:cuid{
       //  key empId: UUID;
       // key empId:String(32);
nameFirst:String (40);
nameMiddle:String (40);
nameLast:String (40);
sex:String(1);
language:String(1);
phoneNumber:String(20);
currency:String(4);
Salary:Decimal(10,2);
accNumber:String(16);
bankId:String(8);
bankName:String(64);
    }
}
