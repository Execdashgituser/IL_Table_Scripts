select * from ISSUES

select * from PROJECT_CATALOG

UPDATE PROGRAM_DIMENSION SET PROGRAM_STATUS_NUM = null

select  'ACTIVITY_DIMENSION' table_name,count(*) row_Count from  [dbo].[ACTIVITY_DIMENSION]
union
select 'ISSUES_DIMENSION' table_name,count(*) row_Count from  [dbo].[ISSUES_DIMENSION]
union
select 'PORTFOLIO_DIMENSION' table_name,count(*) row_Count from  [dbo].[PORTFOLIO_DIMENSION]
union
select 'PROGRAM_DIMENSION' table_name,count(*) row_Count from  [dbo].[PROGRAM_DIMENSION]
union
select 'PROJECT_DIMENSION' table_name,count(*) row_Count from  [dbo].[PROJECT_DIMENSION]
union
select 'RISKS_DIMENSION' table_name,count(*) row_Count from  [dbo].[RISKS_DIMENSION]
union
select 'VENDOR_DIMENSION' table_name,count(*) row_Count from  [dbo].[VENDOR_DIMENSION]
union
select 'PROJECT_CATALOG_FACT' table_name,count(*) row_Count from  [dbo].[PROJECT_CATALOG_FACT];


select * from PROJECT_CATALOG_FACT
;
