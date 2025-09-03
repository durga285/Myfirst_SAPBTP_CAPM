namespace capm.db.commons;

type gender:String(1) enum{
    male='M';
    Female='F';
} ;//enum-has fixed set of values
//@-Annotation
type Amount:Decimal(10,2) @(
Semantics.amount.currencycode   : 'CURRENCY_CODE',sap.unit :'CURRENCY_CODE'
);
//when we put amount in SAp -it refers to currency 
//when  we put quanity-it refer to GM,KG

type Guid :String(32);
