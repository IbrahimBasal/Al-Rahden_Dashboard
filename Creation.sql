create database Alrahden
use Alrahden;

CREATE TABLE Sales(
SaleID int PRIMARY KEY Identity(1,1),
[رقم المستند] int,
SalesAmount float,
[إجمالى المستند] float,
[تاريخ الترحيل] date,
[اسم العميل/المورد] nvarchar(200),
[أجمالى المبلغ المدفوع] float,
SlpName nvarchar(200),
[إجمالي الضريبة] float,
[رمز العميل/المورِّد] varchar(50),	
Quantity int,
ItemName nvarchar(255),
UomCode nvarchar(50),
PriceBefDi float,
Price float,
ItemCode int,
LineTotal float,
TYPE varchar(25)
)


CREATE TABLE Customers(
[رمز العميل/المورِّد] varchar(50) PRIMARY KEY,	
[BP Name] nvarchar(255),
[إقليم] nvarchar(50),
[تصنيف العميل] nvarchar(50)

)


alter table sales
add constraint fk_cust foreign key ([رمز العميل/المورِّد]) references Customers([رمز العميل/المورِّد])



alter table sales
add  [إجمالي الضريبة] float