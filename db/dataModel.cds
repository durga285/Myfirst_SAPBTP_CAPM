//namespace defines a unique ID of the project 
//we can differeniate name of companies 
using {  cuid} from '@sap/cds/common';

using {capm.db.commons as alias} from './commons';
//instead of using long name we can use alias by using with 'as'
namespace capm.db;
//context represnts usauge of the entity grouping
//we have context for master data and transaction data 
context dataModel {
     //this type we can resue where we need to chnage from 32 to 64

    
    entity businessPatner {
        key node_key :alias.Guid;
        BP_Role:String(2);
        Phone_Number:String(10);
        FAX_NUMBER:String(32);
        webAddress:String(32);
        BP_ID:String(32);
        Address_GUID: Association to one Address;
        Company_Name:String(250);
        
    }
    entity Address{
        Key node_key:alias.Guid;
        city:String(32);
        Postal_COde:String(32);
        Street:String(32);
        Building:String(32);
        Address_Type:String(32);
        ValStart_date:Date;
        ValEnd_Date: Date;
        Latitude:Decimal;
        Longitude: Decimal;
        businessPatner : Association to one businessPatner on businessPatner.Address_GUID
=$self;
//backward relation- help us to read the data of businesspatner from address
// refre to current entity primary key-$self
    }
    entity product {
        Key node_key:alias.Guid;
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
