
TRUNCATE TABLE [dbo].[ACTIVITY];
TRUNCATE TABLE [dbo].[ISSUES];
TRUNCATE TABLE [dbo].[PORTFOLIO];
TRUNCATE TABLE [dbo].[PROGRAM];
TRUNCATE TABLE [dbo].[PROJECT];
TRUNCATE TABLE [dbo].[RISKS];
TRUNCATE TABLE [dbo].[STRATEGY];
TRUNCATE TABLE [dbo].[VENDOR];
TRUNCATE TABLE [dbo].[PROJECT_CATALOG];
TRUNCATE TABLE [dbo].[PROJECT_CATALOG_PLUS];


TRUNCATE TABLE [dbo].[ACTIVITY_DIMENSION];
TRUNCATE TABLE [dbo].[ISSUES_DIMENSION];
TRUNCATE TABLE [dbo].[PORTFOLIO_DIMENSION];
TRUNCATE TABLE [dbo].[PROGRAM_DIMENSION];
TRUNCATE TABLE [dbo].[PROJECT_DIMENSION];
TRUNCATE TABLE [dbo].[RISKS_DIMENSION];
TRUNCATE TABLE [dbo].[STRATEGY_DIMENSION];
TRUNCATE TABLE [dbo].[VENDOR_DIMENSION];
TRUNCATE TABLE [dbo].[PROJECT_CATALOG_FACT];


select * from  [dbo].[ACTIVITY_DIMENSION];
select * from  [dbo].[ISSUES_DIMENSION];
select * from  [dbo].[PORTFOLIO_DIMENSION];
select * from  [dbo].[PROGRAM_DIMENSION];
select * from  [dbo].[PROJECT_DIMENSION];
select * from  [dbo].[RISKS_DIMENSION];
select * from  [dbo].[STRATEGY_DIMENSION];
select * from  [dbo].[VENDOR_DIMENSION];
select * from  [dbo].[PROJECT_CATALOG_FACT];

select * from  [dbo].[RISKS];

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
select 'STRATEGY_DIMENSION' table_name,count(*) row_Count from  [dbo].[STRATEGY_DIMENSION]
union
select 'VENDOR_DIMENSION' table_name,count(*) row_Count from  [dbo].[VENDOR_DIMENSION]
union
select 'PROJECT_CATALOG_FACT' table_name,count(*) row_Count from  [dbo].[PROJECT_CATALOG_FACT];

insert into strategy_dimension VALUES
(
'PR2',	0.25,	0.25	,0.00	,0.50,	0.25,	0.00,	0.75,	CURRENT_TIMESTAMP	,NULL,	9999)



UPDATE RISKS_DIMENSION SET CALCULATED_SEVERITY = PROBABILITY*IMPACT  where BATCH_ID = (select MAX(BATCH_ID) from [dbo].[RISKS]);