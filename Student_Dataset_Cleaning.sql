
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME
like 'Depression+Student+Dataset'

select * from [dbo].[Depression+Student+Dataset]

--Modifying the gender column and check for null values
select Gender,count(*) from [dbo].[Depression+Student+Dataset]
group by Gender

update [dbo].[Depression+Student+Dataset]
set Gender = 'M' where Gender = 'male'

update [dbo].[Depression+Student+Dataset]
set Gender = 'F' where Gender = 'female'

select * from [dbo].[Depression+Student+Dataset]
where Gender = ''

select * from [dbo].[Depression+Student+Dataset]
where Gender is null

--Adding Age Group Column
alter table [dbo].[Depression+Student+Dataset]
add Age_Group varchar(max)

update [dbo].[Depression+Student+Dataset]
set Age_Group =
case when Age between 18 and 24 then 'A1'
else case when Age between 25 and 30 then 'A2'
else 'A3' end end

select Age_Group,count(*) from [dbo].[Depression+Student+Dataset]
group by Age_Group

--Columns Distributions of Each column
select Academic_Pressure,count(*) from [dbo].[Depression+Student+Dataset]
group by Academic_Pressure

select Study_Satisfaction,count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Satisfaction

select Sleep_Duration,count(*) from [dbo].[Depression+Student+Dataset]
group by Sleep_Duration

select Dietary_Habits,count(*) from [dbo].[Depression+Student+Dataset]
group by Dietary_Habits

select Have_you_ever_had_suicidal_thoughts,count(*) from [dbo].[Depression+Student+Dataset]
group by Have_you_ever_had_suicidal_thoughts

select Study_Hours,count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Hours

select Financial_Stress,count(*) from [dbo].[Depression+Student+Dataset]
group by Financial_Stress

select Family_History_of_Mental_Illness,count(*) from [dbo].[Depression+Student+Dataset]
group by Family_History_of_Mental_Illness

select Depression,count(*) from [dbo].[Depression+Student+Dataset]
group by Depression

--Adding index and updating depression column

alter table [dbo].[Depression+Student+Dataset]
add Index_Column int identity(1,1)

alter table [dbo].[Depression+Student+Dataset]
alter column Depression varchar(max)

update [dbo].[Depression+Student+Dataset]
set Depression = 'No' where Depression = 0

update [dbo].[Depression+Student+Dataset]
set Depression = 'Yes' where Depression = '1'

