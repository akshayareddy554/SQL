-- ORDER BY
-- find the sum of total bill,average of total for gender
select size,gender,round(avg(total_bill),2)as average_bill from tips
group by size,gender
order by gender;

-- find the sum of total bill, average of total combination size and gender
select size,gender,round(avg(total_bill), 2) as Avergae_bill from tips
group by size, gender
order by size;

-- find the total records for size and gender
select size,gender,count(*)  as total_records from tips
group by size,gender
order by size ASC,total_records desc;

-- find the total records of size in(2,3,4)with respect to gender
 select gender,count(*)  as total_records from tips
 where size in (2,3,4)
group by gender
order by total_records desc;

select size,gender,count(*)  as total_records_of_2_3_4 from tips
 where size in (2,3,4)
group by size,gender
having count(*)>30
order by size ASC,total_records_of_2_3_4 desc;

-- find min total bill,max total bill of day wise for size 2 
select size,day,min(total_bill),max(total_bill) from tips
where size=2
group by day;

