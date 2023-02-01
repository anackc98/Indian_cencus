SELECT * FROM indian_cencus.`dataset1 .xlsx - data1`;
SELECT * FROM indian_cencus.`dataset2-population - sheet1`;

-- number of rows into our dataset

select count(*) from indian_cencus.`dataset1 .xlsx - data1`;
select count(*) from indian_cencus.`dataset2-population - sheet1`;

-- dataset for jharkhand and bihar

 select  * from `dataset2-population - sheet1` where  state in ('jharkhand','Bihar');
 -- population of India
 select sum(population) as Population from indian_cencus.`dataset2-population - sheet1`;

-- avg growth
select avg(growth)*100 avg_growth from indian_cencus.`dataset1 .xlsx - data1` group by state;

-- avg sex ratio
select state,round(avg(literacy),0) avg_sex_ratio from indian_cencus.`dataset1 .xlsx - data1` group by state order by avg_sex_ratio desc;

-- avg literacy rate
select state,round(avg(literacy),0) avg_literacy_ratio from indian_cencus.`dataset1 .xlsx - data1`group by state having round(avg(literacy),0)>90 order by avg_literacy_ratio desc;

-- top 3 state showing highest growth ratio

select  state,avg(growth)*100 avg_growth from indian_cencus.`dataset1 .xlsx - data1` group by state order by avg_growth desc limit 3;

-- bottom 3 state showing  lowest sex ratio

select  state,round(avg(sex_ratio),0)avg_sex_ratio from  indian_cencus.`dataset1 .xlsx - data1` group by state order by avg_sex_ratio asc;



 