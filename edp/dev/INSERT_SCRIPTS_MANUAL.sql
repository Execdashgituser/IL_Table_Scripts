
INSERT INTO PROJECT_CATALOG_FACT
 (PROJECT_ID,PROJECT_TITLE,INTAKE_SUMMARY,PROJECT_ADVANTAGE,TITLE_ABBREVIATION,PROJECT_TYPE,PURPOSE_STATEMENT,PROJECT_SIZE,PROJECT_STATUS,DEPARTMENT,DIVISION,
SPONSOR,PMO,PMO_DIRECTOR,PROJECT_MANAGER,PRIMARY_VENDOR,IV_AND_V_VENDOR,FEDERAL_FUNDING_PARTNER,STAGE_GATE,"START_DATE",DEADLINE_DATE,AGENCY_PRIORITY  
,DIVISION_PRIORITY,DEPENDENCY_ON_PRIMARY_PROJECT,FUND_TYPE,FUND_SPLIT,EST_BUDGET,EST_BUS_RSCS,EST_TECH_RSCS,EST_VEN_RSCS,TOTAL_RSCS,SUPPORT_STAGE_STRATEGIC_GOAL,SUPPORT_AGENCY_STRATEGIC_GOAL
,SUPPORT_DIVISION_STRATEGIC_GOAL,PRIMARY_BUSINESS_BENEFIT,INVESTMENT_TRANSFORMATION_BENEFIT,QUANTITATIVE_BENEFIT,QUALITATIVE_BENEFIT,BENEFIT_OWNER,COMPLEXITY,BENEFIT,MANDATORY_OVERRIDE  
 ,SCHEDULE,SCOPE,FINANCE,HUMAN_RESOURCES,"CONTRACT",IV_AND_V,SPONSOR_TITLE,ID_OF_STAFF,FTE,PERCENTAGE_COMPLETE,PERCENTAGE_SPENT  
 ,APD_NUMBER,STATUS_SUMMARY,STATUS_GATE)

VALUES
('PR1','MES - Project Management Office','','','PMO','K - Other','To provide PMO Services for the MES Program.','Medium','','AMA - Alabama Medicaid Agency','IT',
'Mason Tanaka','MES','TJ Nola','David Skillman','','','If the project is in part funded by a federal partner,  name the entity here','2-In Process','2020-04-01','2024-03-30','',
'','','','',9500000,8,8,14,30,'','','','','','','','',5,5,''
,'Green','Green','Yellow','Yellow','N/A','N/A','Chief Information Officer',30,15,0.25,0.25,'APD # here','PMO-Just getting started, from the DataSet-Catalog+','2-In Process'),

('PR2','MES - Organizational Change Management','','','OCM','K - Other','To provide OCM Services for the MES Program.','Medium','','AMA - Alabama Medicaid Agency','IT','Mason Tanaka','MES',
'TJ Nola','David Skillman','','','If the project is in part funded by a federal partner,  name the entity here','2-In Process','2020-04-01','2024-03-30','','','','','',3000000,3,0,0,3,'',
'','','','','','','',3,4,'',
'Green','Green','Yellow','Green','N/A','N/A','Chief Information Officer',3,3,0.1,0.08,'APD # here','OCM-Just getting started, from the DataSet-Catalog+','2-In Process');



select * from PROJECT_CATALOG_FACT;



(PORTFOLIO_ID,PORTFOLIO_DESCRIPTION,PORTFOLIO_NOTES,LEADERSHIP,STATUS_SUMMARY)


TRUNCATE TABLE [dbo].[ACTIVITY_DIMENSION];
TRUNCATE TABLE [dbo].[ISSUES_DIMENSION];
TRUNCATE TABLE [dbo].[PORTFOLIO_DIMENSION];
TRUNCATE TABLE [dbo].[PROGRAM_DIMENSION];
TRUNCATE TABLE [dbo].[PROJECT_DIMENSION];
TRUNCATE TABLE [dbo].[RISKS_DIMENSION];
TRUNCATE TABLE [dbo].[STRATEGY_DIMENSION];
TRUNCATE TABLE [dbo].[VENDOR_DIMENSION];
TRUNCATE TABLE [dbo].[PROJECT_CATALOG_FACT];


insert into PORTFOLIO_DIMENSION (PORTFOLIO_ID,PORTFOLIO_DESCRIPTION,PORTFOLIO_NOTES,LEADERSHIP,STATUS_SUMMARY,CREATED_DATE,BATCH_ID)
values
('Pf1','AMA','Alabama Medicaid Agency','Mason Tanaka','AMA is AOK.',GETDATE(),9999);
select * from PORTFOLIO_DIMENSION;

INSERT INTO PROJECT_DIMENSION
(PROJECT_ID,PROJECT_NAME,PROGRAM_ID,"PROGRAM_NAME",PORTFOLIO_ID,PORTFOLIO_NAME,CREATED_DATE,BATCH_ID)
VALUES
('Pr1','MES - Project Management Office','Pg1','MES','Pf1','AMA',GETDATE(),9999),
('Pr2','MES - Organizational Change Management','Pg1','MES','Pf1','AMA',GETDATE(),9999);
SELECT * FROM PROJECT_DIMENSION;

select * from ACTIVITY_DIMENSION;
insert into ACTIVITY_DIMENSION  
(PROJECT_ID,ACTIVITY_ID,ACTIVITY_NAME,"START_DATE",END_DATE,"ACTIVITY_STATUS_COLOR",CREATED_DATE,BATCH_ID)
values
('PR1','1','Gather and Validate Information','2020-07-06','2020-09-24','Green',GETDATE(),9999),
('PR1','2','Educate and Prioritize','2020-09-18','2020-10-05','Green',GETDATE(),9999),
('PR1','3','Produce Strategy','2020-10-06','2020-11-12','Yellow',GETDATE(),9999),
('PR1','4','Approve Strategy','2020-11-13','2020-11-30','Green',GETDATE(),9999),
('PR1','5','Outputs - PPU, Goals & Objectives, Concept of Operations','2020-12-01','2021-03-29','Green',GETDATE(),9999),
('PR2','1','OCM-Gather and Validate Information','2020-09-24','2020-10-05','Green',GETDATE(),9999),
('PR2','2','OCM-Educate and Prioritize','2020-10-05','2020-11-12','Green',GETDATE(),9999),
('PR2','3','OCM-Produce Strategy','2020-11-12','2020-11-30','Yellow',GETDATE(),9999),
('PR2','4','OCM-Approve Strategy','2020-11-30','2021-03-29','Green',GETDATE(),9999),
('PR2','5','OCM-Outputs - PPU, Goals & Objectives, Concept of Operations','2021-03-29','2021-05-29','Green',GETDATE(),9999)


insert into  RISKS_DIMENSION
(PROJECT_ID,RISK_ID,RISK_EVENT,RISK_CONSEQUENCE,RESPONSE_PLAN,PROBABILITY,SEVERITY_COLOR_INDICATOR,IMPACT,CREATED_DATE,BATCH_ID)
VALUES
('Pr1','Pr1-1','If stakeholders dont read and understand project scope','then scope creep could occur.','Schedule a meeting with stakeholders to discuss scope.',4,'Yellow',5,GETDATE(),9999),
('Pr1','Pr1-2','If multiple requests exceed IT PMO resourcing capacity','then the PMO may need to prioritize work load and high priority issues.','Monitor project intake process and continue with IT governance.',2,'Yellow',5,GETDATE(),9999),
('Pr1','Pr1-3','If stakeholders dont agree on requirements','then schedule could lag.','Schedule additional requirements meetings.',3,'Yellow',3,GETDATE(),9999),
('Pr1','Pr1-4','If stakeholders dont agree on requirements','then scope could be expanded.','Schedule additional requirements meetings.',1,'Yellow',1,GETDATE(),9999),
('Pr2','Pr2-1','OCM-If stakeholders dont read and understand project scope','then scope creep could occur.','Schedule a meeting with stakeholders to discuss scope.',4,'Yellow',5,GETDATE(),9999),
('Pr2','Pr2-2','OCM-If multiple requests exceed IT PMO resourcing capacity','then the PMO may need to prioritize work load and high priority issues.','Monitor project intake process and continue with IT governance.',5,'Yellow',4,GETDATE(),9999),
('Pr2','Pr2-3','OCM-If stakeholders dont agree on requirements','then schedule could lag.','Schedule additional requirements meetings.',5,'Yellow',5,GETDATE(),9999),
('Pr2','Pr2-4','OCM-If stakeholders dont agree on requirements','then scope could be expanded.','Schedule additional requirements meetings.',1,'Yellow',1,GETDATE(),9999);

INSERT INTO ISSUES_DIMENSION 
(PROJECT_ID,ISSUE_ID,ISSUE_DESCRIPTION,CRITICALITY,RESOLUTION,RESOLUTION_DUE_DATE,CREATED_DATE,BATCH_ID)
VALUES
('Pr1','Pr1-1','Client condensed time line.  Project is now due on 7/22/2020, which is two weeks earlier than originally planned.','Red','Increase resources assigned to project.','2020-11-21',GETDATE(),9999),
('Pr1','Pr1-2','JIRA testers were re-assigned to a project with higher visibility.','Yellow','On-board testers from a lower priority project. ','2021-01-21',GETDATE(),9999),
('Pr1','Pr1-3','40% of our staff retired.','Red','Expediting hiring and training. Cross-training current staff to ensure mandatory roles and functions remain operational.','2021-04-02',GETDATE(),9999),
('Pr1','Pr1-4','Budget was cut.','Green','Move forward with project until decision is made.  Project may be placed on hold until financing is restored if the budget is cut.','2020-12-01',GETDATE(),9999),
('Pr2','Pr2-1','OCM-Client condensed time line.  Project is now due on 7/22/2020, which is two weeks earlier than originally planned.','Red','Increase resources assigned to project.','2021-05-02',GETDATE(),9999),
('Pr2','Pr2-2','OCM-JIRA testers were re-assigned to a project with higher visibility.','Yellow','On-board testers from a lower priority project. ','2022-02-01',GETDATE(),9999);

INSERT INTO STRATEGY_DIMENSION
(PROJECT_ID,HEALTHCARE,KNOWLEDGE_INNOVATION,HEALTH_SAFETY_WELLBEING,EFFICIENT_TRANSPERENCY_ACCOUNTABILITY,RUN_BUSINESS,GROW_BUSINESS,TRANSFORM_BUSINESS,CREATED_DATE,BATCH_ID)
VALUES
('PR1',0.25,0.5,0,0.25,0.25,0,0.75,GETDATE(),9999),
('PR2',0.25,0.25,0,0.5,0.25,0,0.75,GETDATE(),9999);

INSERT INTO VENDOR_DIMENSION 
(PROJECT_ID,VENDOR,CREATED_DATE,BATCH_ID)
VALUES
('PR1','NTT DATA',GETDATE(),9999),
('PR1','AMA',GETDATE(),9999),
('PR2','NTT DATA',GETDATE(),9999),
('PR2','AMA',GETDATE(),9999);

