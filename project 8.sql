create table Drug (Condition varchar , Drug varchar ,indication varchar , Type varchar ,Reviews varchar ,Effective float ,
EaseOfUse float ,Satisfaction float );

copy Drug from 'E:\Drug.csv.csv'delimiter ',' csv header null '';
				   
select * from Drug;
select drug from Drug where type = 'RX' ;
select drug from Drug where easeofuse = 3.01 ;
select effective , easeofuse , satisfaction from Drug order by indication;

create procedure Drug As
Begin 
select drug from Drug order by easeofuse
End;

select max(easeofuse),min(effective), sum(satisfaction) from Drug;

select reviews from Drug;
select  lower (indication) from Drug;

select CHARINDEX (Levofloxacin) position ;

begin 
select drug from Drug where easeofuse> 3;
if @@Rowcount =0
print 'no'
end;

Declare @counter int =1;
while @counter <=5
begin 
print @counter ;
set @counter = @counter +1;
end
select drug from Drug order by easeofuse desc;
select  Top 6 drug from Drug order by easeofuse desc;
select * from Drug where condition like 'A%' ;
select * from Drug where drug like '%M' ;
select * from Drug where type = 'OTC' or type ='RX';





































)