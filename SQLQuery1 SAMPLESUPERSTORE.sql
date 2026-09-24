create database samplesuperstore;
use samplesuperstore;
select * from dbo.samplesuperstore_final;
 --2
select Order_ID,Order_Date,Customer_Name,Category,Sales,Profit
 from  dbo.samplesuperstore_final;

 --3
 select Order_ID,Order_Date,Customer_Name,Category,Sales,Profit
 from  dbo.samplesuperstore_final
 where sales > 5000;

 --4
 