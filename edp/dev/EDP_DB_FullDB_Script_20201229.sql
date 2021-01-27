/****** Object:  Table [dbo].[ACTIVITY]    Script Date: 1/4/2021 11:47:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ACTIVITY](
	[PROJECT_ID] [varchar](100) NULL,
	[ACTIVITY_ID] [int] NULL,
	[ACTIVITY_NAME] [varchar](100) NULL,
	[START_DATE] [date] NULL,
	[END_DATE] [date] NULL,
	[ACTIVITY_STATUS_NUM] [int] NULL,
	[ACTIVITY_STATUS_COLOR] [varchar](25) NULL,
	[ACT_START_IN_NEXT_6MON] [int] NULL,
	[ACT_END_IN_NEXT_6MON] [int] NULL,
	[BATCH_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ACTIVITY_DIMENSION]    Script Date: 1/4/2021 11:47:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ACTIVITY_DIMENSION](
	[PROJECT_ID] [varchar](100) NULL,
	[ACTIVITY_ID] [int] NOT NULL,
	[ACTIVITY_NAME] [varchar](100) NULL,
	[START_DATE] [date] NULL,
	[END_DATE] [date] NULL,
	[ACTIVITY_STATUS_NUM] [int] NULL,
	[ACTIVITY_STATUS_COLOR] [varchar](25) NULL,
	[ACT_START_IN_NEXT_6MON] [int] NULL,
	[ACT_END_IN_NEXT_6MON] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [ACTIVITY_NAME]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [START_DATE]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [END_DATE]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [ACTIVITY_STATUS_NUM]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [ACT_START_IN_NEXT_6MON]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [ACT_END_IN_NEXT_6MON]
GO

ALTER TABLE [dbo].[ACTIVITY_DIMENSION] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

/****** Object:  Table [dbo].[ISSUES]    Script Date: 1/4/2021 11:48:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ISSUES](
	[PROJECT_ID] [varchar](10) NULL,
	[ISSUE_ID] [varchar](10) NULL,
	[ISSUE_DESCRIPTION] [varchar](500) NULL,
	[CRITICALITY] [varchar](100) NULL,
	[CRITICALITY_NUM] [int] NULL,
	[RESOLUTION] [varchar](500) NULL,
	[RESOLUTION_DUE_DATE] [date] NULL,
	[IS_DUE_NXT_6MON] [int] NULL,
	[BATCH_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ISSUES_DIMENSION]    Script Date: 1/4/2021 11:48:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ISSUES_DIMENSION](
	[PROJECT_ID] [varchar](100) NULL,
	[ISSUE_ID] [varchar](100) NULL,
	[ISSUE_DESCRIPTION] [varchar](500) NULL,
	[CRITICALITY_NUM] [int] NULL,
	[CRITICALITY] [varchar](100) NULL,
	[RESOLUTION] [varchar](500) NULL,
	[RESOLUTION_DUE_DATE] [date] NULL,
	[IS_DUE_NXT_6MON] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [ISSUE_ID]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [ISSUE_DESCRIPTION]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [CRITICALITY_NUM]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [CRITICALITY]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [RESOLUTION]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [RESOLUTION_DUE_DATE]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [IS_DUE_NXT_6MON]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [UPDATED_DATE]
GO

ALTER TABLE [dbo].[ISSUES_DIMENSION] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

/****** Object:  Table [dbo].[PORTFOLIO]    Script Date: 1/4/2021 11:48:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PORTFOLIO](
	[PORTFOLIO_ID] [varchar](100) NULL,
	[PORTFOLIO_DESCRIPTION] [varchar](100) NULL,
	[PORTFOLIO_NOTES] [varchar](100) NULL,
	[LEADERSHIP] [varchar](100) NULL,
	[STATUS_SUMMARY] [varchar](2000) NULL,
	[BATCH_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PORTFOLIO_DIMENSION]    Script Date: 1/4/2021 11:48:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PORTFOLIO_DIMENSION](
	[PORTFOLIO_ID] [varchar](100) NULL,
	[PORTFOLIO_DESCRIPTION] [varchar](100) NULL,
	[PORTFOLIO_NOTES] [varchar](100) NULL,
	[LEADERSHIP] [varchar](100) NULL,
	[STATUS_SUMMARY] [varchar](2000) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [PORTFOLIO_ID]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [PORTFOLIO_DESCRIPTION]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [PORTFOLIO_NOTES]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [LEADERSHIP]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [STATUS_SUMMARY]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [UPDATED_DATE]
GO

ALTER TABLE [dbo].[PORTFOLIO_DIMENSION] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

/****** Object:  Table [dbo].[PROGRAM]    Script Date: 1/4/2021 11:48:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROGRAM](
	[PROGRAM_ID] [varchar](10) NULL,
	[PROGRAM_NAME] [varchar](50) NULL,
	[PROGRAM_NOTES] [varchar](50) NULL,
	[PROGRAM_STATUS_SUMMARY] [varchar](500) NULL,
	[INTAKE_EXECUTIVE_SUMMARY] [varchar](200) NULL,
	[PROJECT_ADVANTAGE] [varchar](50) NULL,
	[TITLE_ABBREVIATION] [varchar](50) NULL,
	[PROJECT_TYPE] [varchar](50) NULL,
	[PURPOSE_STATEMENT] [varchar](200) NULL,
	[PROGRAM_SIZE] [varchar](10) NULL,
	[PROGRAM_STATUS_NUM] [int] NULL,
	[PROGRAM_STATUS] [varchar](10) NULL,
	[DEPARTMENT] [varchar](10) NULL,
	[DIVISION] [varchar](100) NULL,
	[SPONSOR] [varchar](50) NULL,
	[SPONSOR_TITLE] [varchar](50) NULL,
	[PMO] [varchar](50) NULL,
	[PMO_DIRECTOR] [varchar](50) NULL,
	[PRIMARY_VENDOR] [varchar](50) NULL,
	[IV_AND_V_VENDOR] [varchar](50) NULL,
	[FEDERAL_FUNDING_PARTNER] [varchar](50) NULL,
	[SCHEDULE_1] [varchar](100) NULL,
	[SCOPE] [varchar](100) NULL,
	[FINANCE] [varchar](100) NULL,
	[HUMAN_RESOURCES] [varchar](100) NULL,
	[CONTRACT] [varchar](100) NULL,
	[IV_AND_V] [varchar](100) NULL,
	[APD_NUMBER] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PROGRAM_DIMENSION]    Script Date: 1/4/2021 11:48:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROGRAM_DIMENSION](
	[PROGRAM_ID] [varchar](10) NULL,
	[PROGRAM_NAME] [varchar](50) NULL,
	[PROGRAM_NOTES] [varchar](50) NULL,
	[PROGRAM_STATUS_SUMMARY] [varchar](500) NULL,
	[INTAKE_EXECUTIVE_SUMMARY] [varchar](200) NULL,
	[PROJECT_ADVANTAGE] [varchar](50) NULL,
	[TITLE_ABBREVIATION] [varchar](50) NULL,
	[PROJECT_TYPE] [varchar](50) NULL,
	[PURPOSE_STATEMENT] [varchar](200) NULL,
	[PROGRAM_SIZE] [varchar](10) NULL,
	[PROGRAM_STATUS_NUM] [int] NULL,
	[PROGRAM_STATUS] [varchar](10) NULL,
	[DEPARTMENT] [varchar](10) NULL,
	[DIVISION] [varchar](100) NULL,
	[SPONSOR] [varchar](50) NULL,
	[PMO] [varchar](50) NULL,
	[PMO_DIRECTOR] [varchar](50) NULL,
	[PRIMARY_VENDOR] [varchar](50) NULL,
	[IV_AND_V_VENDOR] [varchar](50) NULL,
	[FEDERAL_FUNDING_PARTNER] [varchar](50) NULL,
	[SCHEDULE_1] [varchar](100) NULL,
	[SCOPE] [varchar](100) NULL,
	[FINANCE] [varchar](100) NULL,
	[HUMAN_RESOURCES] [varchar](100) NULL,
	[CONTRACT] [varchar](100) NULL,
	[IV_AND_V] [varchar](100) NULL,
	[SPONSOR_TITLE] [varchar](50) NULL,
	[APD_NUMBER] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_ID]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_NAME]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_NOTES]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_STATUS_SUMMARY]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [INTAKE_EXECUTIVE_SUMMARY]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_ADVANTAGE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [TITLE_ABBREVIATION]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_TYPE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PURPOSE_STATEMENT]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_SIZE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_STATUS_NUM]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_STATUS]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [DEPARTMENT]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [DIVISION]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [SPONSOR]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PMO]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PMO_DIRECTOR]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [PRIMARY_VENDOR]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [IV_AND_V_VENDOR]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [FEDERAL_FUNDING_PARTNER]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [SCHEDULE_1]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [SCOPE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [FINANCE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [HUMAN_RESOURCES]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [CONTRACT]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [IV_AND_V]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [SPONSOR_TITLE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [APD_NUMBER]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [UPDATED_DATE]
GO

ALTER TABLE [dbo].[PROGRAM_DIMENSION] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

/****** Object:  Table [dbo].[PROJECT]    Script Date: 1/4/2021 11:49:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROJECT](
	[PROJECT_ID] [varchar](100) NULL,
	[PROJECT_NAME] [varchar](100) NULL,
	[PROGRAM_ID] [varchar](100) NULL,
	[PROGRAM_NAME] [varchar](100) NULL,
	[PORTFOLIO_ID] [varchar](100) NULL,
	[PORTFOLIO_NAME] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [PROJECT_NAME]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [PROGRAM_ID]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [PROGRAM_NAME]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [PORTFOLIO_ID]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [PORTFOLIO_NAME]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

ALTER TABLE [dbo].[PROJECT] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

/****** Object:  Table [dbo].[PROJECT_CATALOG]    Script Date: 1/4/2021 11:49:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROJECT_CATALOG](
	[PROJECT_ID] [varchar](100) NULL,
	[PROJECT_TITLE] [varchar](100) NULL,
	[INTAKE_SUMMARY] [varchar](100) NULL,
	[PROJECT_ADVANTAGE] [varchar](100) NULL,
	[TITLE_ABBREVIATION] [varchar](200) NULL,
	[PROJECT_TYPE] [varchar](100) NULL,
	[PURPOSE_STATEMENT] [varchar](1000) NULL,
	[PROJECT_SIZE] [varchar](100) NULL,
	[PROJECT_STATUS_NUM] [int] NULL,
	[PROJECT_STATUS] [varchar](100) NULL,
	[DEPARTMENT] [varchar](100) NULL,
	[DIVISION] [varchar](100) NULL,
	[SPONSOR] [varchar](100) NULL,
	[SPONSOR_TITLE] [varchar](100) NULL,
	[PORTFOLIO_TITLE] [varchar](100) NULL,
	[PMO] [varchar](100) NULL,
	[PMO_DIRECTOR] [varchar](100) NULL,
	[PROJECT_MANAGER] [varchar](100) NULL,
	[PRIMARY_VENDOR] [varchar](100) NULL,
	[IV_AND_V_VENDOR] [varchar](100) NULL,
	[GOVERNANCE_STATUS] [varchar](100) NULL,
	[FEDERAL_FUNDING_PARTNER] [varchar](100) NULL,
	[STATUS_GATE] [varchar](100) NULL,
	[START_DATE] [date] NULL,
	[DEADLINE_DATE] [date] NULL,
	[AGENCY_PRIORITY] [int] NULL,
	[DIVISION_PRIORITY] [int] NULL,
	[DEPENDENCY_ON_PRIMARY_PROJECT] [varchar](100) NULL,
	[FUND_TYPE] [varchar](100) NULL,
	[FUND_SPLIT] [varchar](100) NULL,
	[EST_BUDGET] [varchar](100) NULL,
	[EST_BUDGET_SPENT] [int] NULL,
	[EST_BUS_RSCS] [int] NULL,
	[EST_TECH_RSCS] [int] NULL,
	[EST_VEN_RSCS] [int] NULL,
	[TOTAL_RSCS] [int] NULL,
	[FTE] [int] NULL,
	[DURATION] [decimal](10, 2) NULL,
	[DURATION_SPENT] [decimal](10, 2) NULL,
	[PERCENTAGE_COMPLETE] [decimal](10, 2) NULL,
	[PR_START_IN_NEXT_6MON] [int] NULL,
	[PR_END_IN_NEXT_6MON] [int] NULL,
	[PERCENTAGE_SPENT] [decimal](10, 2) NULL,
	[SUPPORT_STAGE_STRATEGIC_GOAL] [varchar](100) NULL,
	[SUPPORT_AGENCY_STRATEGIC_GOAL] [varchar](100) NULL,
	[SUPPORT_DIVISION_STRATEGIC_GOAL] [varchar](100) NULL,
	[PRIMARY_BUSINESS_BENEFIT] [varchar](100) NULL,
	[INVESTMENT_TRANSFORMATION_BENEFIT] [varchar](100) NULL,
	[QUANTITATIVE_BENEFIT] [varchar](100) NULL,
	[QUALITATIVE_BENEFIT] [varchar](100) NULL,
	[BENEFIT_OWNER] [varchar](100) NULL,
	[COMPLEXITY] [int] NULL,
	[BENEFIT] [int] NULL,
	[MANDATORY_OVERRIDE] [varchar](100) NULL,
	[HEALTHCARE] [decimal](11, 2) NULL,
	[KNOWLEDGE_INNOVATION] [decimal](11, 2) NULL,
	[HEALTH_SAFETY_WELLBEING] [decimal](11, 2) NULL,
	[EFFICIENT_TRANSPARENCY_ACCOUNTABILITY] [decimal](11, 2) NULL,
	[RUN_BUSINESS] [decimal](11, 2) NULL,
	[GROW_BUSINESS] [decimal](11, 2) NULL,
	[TRANSFORM_BUSINESS] [decimal](11, 2) NULL,
	[CREATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PROJECT_CATALOG_FACT]    Script Date: 1/4/2021 11:49:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROJECT_CATALOG_FACT](
	[PROJECT_ID] [varchar](100) NULL,
	[PROJECT_TITLE] [varchar](100) NULL,
	[INTAKE_SUMMARY] [varchar](100) NULL,
	[PROJECT_ADVANTAGE] [varchar](100) NULL,
	[TITLE_ABBREVIATION] [varchar](200) NULL,
	[PROJECT_TYPE] [varchar](100) NULL,
	[PURPOSE_STATEMENT] [varchar](300) NULL,
	[PROJECT_SIZE] [varchar](100) NULL,
	[PROJECT_STATUS_NUM] [int] NULL,
	[PROJECT_STATUS] [varchar](100) NULL,
	[DEPARTMENT] [varchar](100) NULL,
	[DIVISION] [varchar](100) NULL,
	[SPONSOR] [varchar](100) NULL,
	[SPONSOR_TITLE] [varchar](100) NULL,
	[PORTFOLIO_TITLE] [varchar](100) NULL,
	[PMO] [varchar](100) NULL,
	[PMO_DIRECTOR] [varchar](100) NULL,
	[PROJECT_MANAGER] [varchar](100) NULL,
	[PRIMARY_VENDOR] [varchar](100) NULL,
	[IV_AND_V_VENDOR] [varchar](100) NULL,
	[FEDERAL_FUNDING_PARTNER] [varchar](100) NULL,
	[STAGE_GATE] [varchar](100) NULL,
	[START_DATE] [date] NULL,
	[DEADLINE_DATE] [date] NULL,
	[AGENCY_PRIORITY] [int] NULL,
	[DIVISION_PRIORITY] [int] NULL,
	[DEPENDENCY_ON_PRIMARY_PROJECT] [varchar](100) NULL,
	[FUND_TYPE] [varchar](100) NULL,
	[FUND_SPLIT] [varchar](100) NULL,
	[EST_BUDGET] [varchar](100) NULL,
	[EST_BUDGET_SPENT] [int] NULL,
	[EST_BUS_RSCS] [int] NULL,
	[EST_TECH_RSCS] [int] NULL,
	[EST_VEN_RSCS] [int] NULL,
	[TOTAL_RSCS] [int] NULL,
	[FTE] [int] NULL,
	[SUPPORT_STAGE_STRATEGIC_GOAL] [varchar](100) NULL,
	[SUPPORT_AGENCY_STRATEGIC_GOAL] [varchar](100) NULL,
	[SUPPORT_DIVISION_STRATEGIC_GOAL] [varchar](100) NULL,
	[PRIMARY_BUSINESS_BENEFIT] [varchar](100) NULL,
	[INVESTMENT_TRANSFORMATION_BENEFIT] [varchar](100) NULL,
	[QUANTITATIVE_BENEFIT] [varchar](100) NULL,
	[QUALITATIVE_BENEFIT] [varchar](100) NULL,
	[BENEFIT_OWNER] [varchar](100) NULL,
	[COMPLEXITY] [int] NULL,
	[BENEFIT] [int] NULL,
	[MANDATORY_OVERRIDE] [varchar](100) NULL,
	[SCHEDULE] [varchar](20) NULL,
	[SCOPE] [varchar](20) NULL,
	[FINANCE] [varchar](20) NULL,
	[HUMAN_RESOURCES] [varchar](20) NULL,
	[CONTRACT] [varchar](20) NULL,
	[IV_AND_V] [varchar](20) NULL,
	[PERCENTAGE_COMPLETE] [decimal](10, 2) NULL,
	[PERCENTAGE_SPENT] [decimal](10, 2) NULL,
	[APD_NUMBER] [varchar](100) NULL,
	[DURATION] [decimal](10, 2) NULL,
	[DURATION_SPENT] [decimal](10, 2) NULL,
	[PERCENTAGE_TIME_SPENT] [int] NULL,
	[PR_START_IN_NEXT_6MON] [int] NULL,
	[PR_END_IN_NEXT_6MON] [int] NULL,
	[STATUS_SUMMARY] [varchar](1500) NULL,
	[STATUS_GATE] [varchar](100) NULL,
	[GOVERNANCE_STATUS] [varchar](100) NULL,
	[HEALTHCARE] [decimal](11, 2) NULL,
	[KNOWLEDGE_INNOVATION] [decimal](11, 2) NULL,
	[HEALTH_SAFETY_WELLBEING] [decimal](11, 2) NULL,
	[EFFICIENT_TRANSPARENCY_ACCOUNTABILITY] [decimal](11, 2) NULL,
	[RUN_BUSINESS] [decimal](11, 2) NULL,
	[GROW_BUSINESS] [decimal](11, 2) NULL,
	[TRANSFORM_BUSINESS] [decimal](11, 2) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PROJECT_CATALOG_PLUS]    Script Date: 1/4/2021 11:49:30 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROJECT_CATALOG_PLUS](
	[PROJECT_ID] [varchar](100) NULL,
	[PROJECT_TITLE] [varchar](100) NULL,
	[SCHEDULE] [varchar](100) NULL,
	[SCOPE] [varchar](100) NULL,
	[FINANCE] [varchar](200) NULL,
	[HUMAN_RESOURCES] [varchar](100) NULL,
	[CONTRACT] [varchar](300) NULL,
	[IV_AND_V] [varchar](100) NULL,
	[PERCENTAGE_COMPLETE] [decimal](3, 2) NULL,
	[PERCENTAGE_SPENT] [decimal](3, 2) NULL,
	[APD_NUMBER] [varchar](100) NULL,
	[STATUS_SUMMARY] [varchar](900) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PROJECT_DIMENSION]    Script Date: 1/4/2021 11:49:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROJECT_DIMENSION](
	[PROJECT_ID] [varchar](100) NULL,
	[PROJECT_NAME] [varchar](100) NULL,
	[PROGRAM_ID] [varchar](100) NULL,
	[PROGRAM_NAME] [varchar](100) NULL,
	[PORTFOLIO_ID] [varchar](100) NULL,
	[PORTFOLIO_NAME] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_NAME]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_ID]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [PROGRAM_NAME]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [PORTFOLIO_ID]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [PORTFOLIO_NAME]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [UPDATED_DATE]
GO

ALTER TABLE [dbo].[PROJECT_DIMENSION] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

/****** Object:  Table [dbo].[RISKS]    Script Date: 1/4/2021 11:49:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RISKS](
	[PROJECT_ID] [varchar](100) NULL,
	[RISK_ID] [varchar](100) NULL,
	[RISK_EVENT] [varchar](100) NULL,
	[RISK_CONSEQUENCE] [varchar](100) NULL,
	[RESPONSE_PLAN] [varchar](100) NULL,
	[PROBABILIY] [int] NULL,
	[SEVERITY_COLOR_INDICATOR] [varchar](100) NULL,
	[IMPACT] [int] NULL,
	[CALCULATED_SEVERITY] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [RISK_ID]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [RISK_EVENT]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [RISK_CONSEQUENCE]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [RESPONSE_PLAN]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [SEVERITY_COLOR_INDICATOR]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [CALCULATED_SEVERITY]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

ALTER TABLE [dbo].[RISKS] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

/****** Object:  Table [dbo].[RISKS_DIMENSION]    Script Date: 1/4/2021 11:49:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RISKS_DIMENSION](
	[PROJECT_ID] [varchar](100) NULL,
	[RISK_ID] [varchar](100) NULL,
	[RISK_EVENT] [varchar](100) NULL,
	[RISK_CONSEQUENCE] [varchar](100) NULL,
	[RESPONSE_PLAN] [varchar](100) NULL,
	[PROBABILITY] [int] NULL,
	[SEVERITY_COLOR_INDICATOR] [varchar](100) NULL,
	[IMPACT] [int] NULL,
	[CALCULATED_SEVERITY] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [RISK_ID]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [RISK_EVENT]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [RISK_CONSEQUENCE]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [RESPONSE_PLAN]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [SEVERITY_COLOR_INDICATOR]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [UPDATED_DATE]
GO

ALTER TABLE [dbo].[RISKS_DIMENSION] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

/****** Object:  Table [dbo].[VENDOR]    Script Date: 1/4/2021 11:50:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VENDOR](
	[PROJECT_ID] [varchar](10) NULL,
	[VENDOR] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VENDOR] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[VENDOR] ADD  DEFAULT (NULL) FOR [VENDOR]
GO

ALTER TABLE [dbo].[VENDOR] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO

ALTER TABLE [dbo].[VENDOR] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

/****** Object:  Table [dbo].[VENDOR_DIMENSION]    Script Date: 1/4/2021 11:50:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VENDOR_DIMENSION](
	[PROJECT_ID] [varchar](100) NULL,
	[VENDOR] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VENDOR_DIMENSION] ADD  DEFAULT (NULL) FOR [PROJECT_ID]
GO

ALTER TABLE [dbo].[VENDOR_DIMENSION] ADD  DEFAULT (NULL) FOR [VENDOR]
GO

ALTER TABLE [dbo].[VENDOR_DIMENSION] ADD  DEFAULT (NULL) FOR [CREATED_DATE]
GO

ALTER TABLE [dbo].[VENDOR_DIMENSION] ADD  DEFAULT (NULL) FOR [UPDATED_DATE]
GO

ALTER TABLE [dbo].[VENDOR_DIMENSION] ADD  DEFAULT (NULL) FOR [BATCH_ID]
GO


/****** Object:  View [dbo].[VW_EDP_CATALOG]    Script Date: 1/4/2021 12:37:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE  VIEW [dbo].[VW_EDP_CATALOG] AS
SELECT PC1.PROJECT_ID AS PROJECT_ID,
       PC1.PROJECT_TITLE AS PROJECT_TITLE,
       AGG.PROGRAM_ID AS PROGRAM_ID,
       AGG.PROGRAM_NAME AS PROGRAM_NAME,
       AGG.PORTFOLIO_ID AS PORTFOLIO_ID,
       AGG.PORTFOLIO_NAME AS PORTFOLIO_NAME,
       PC1.INTAKE_SUMMARY AS INTAKE_SUMMARY,
       PC1.PROJECT_ADVANTAGE AS PROJECT_ADVANTAGE,
       PC1.TITLE_ABBREVIATION AS TITLE_ABBREVIATION,
       PC1.PROJECT_TYPE AS PROJECT_TYPE,
       PC1.PURPOSE_STATEMENT AS PURPOSE_STATEMENT,
       PC1.PROJECT_SIZE AS PROJECT_SIZE,
       PC1.PROJECT_STATUS_NUM AS PROJECT_STATUS_NUM,
       PC1.PROJECT_STATUS AS PROJECT_STATUS,
       PC1.DEPARTMENT AS DEPARTMENT,
       PC1.DIVISION AS DIVISION,
       PC1.SPONSOR AS SPONSOR,
       PC1.PMO AS PMO,
       PC1.PMO_DIRECTOR AS PMO_DIRECTOR,
       PC1.PROJECT_MANAGER AS PROJECT_MANAGER,
       PC1.PRIMARY_VENDOR AS PRIMARY_VENDOR,
       PC1.IV_AND_V_VENDOR AS IV_AND_V_VENDOR,
       PC1.FEDERAL_FUNDING_PARTNER AS FEDERAL_FUNDING_PARTNER,
       PC1.START_DATE AS START_DATE,
       PC1.DEADLINE_DATE AS DEADLINE_DATE,
       PC1.AGENCY_PRIORITY AS AGENCY_PRIORITY,
       PC1.DIVISION_PRIORITY AS DIVISION_PRIORITY,
       PC1.DEPENDENCY_ON_PRIMARY_PROJECT AS DEPENDENCY_ON_PRIMARY_PROJECT,
       PC1.FUND_TYPE AS FUND_TYPE,
       PC1.FUND_SPLIT AS FUND_SPLIT,
       PC1.EST_BUDGET AS EST_BUDGET,
       PC1.EST_BUDGET_SPENT AS EST_BUDGET_SPENT,
       PC1.EST_BUS_RSCS AS EST_BUS_RSCS,
       PC1.EST_TECH_RSCS AS EST_TECH_RSCS,
       PC1.EST_VEN_RSCS AS EST_VEN_RSCS,
       PC1.TOTAL_RSCS AS TOTAL_RSCS,
       PC1.SUPPORT_STAGE_STRATEGIC_GOAL AS SUPPORT_STAGE_STRATEGIC_GOAL,
       PC1.SUPPORT_AGENCY_STRATEGIC_GOAL AS SUPPORT_AGENCY_STRATEGIC_GOAL,
       PC1.SUPPORT_DIVISION_STRATEGIC_GOAL AS SUPPORT_DIVISION_STRATEGIC_GOAL,
       PC1.PRIMARY_BUSINESS_BENEFIT AS PRIMARY_BUSINESS_BENEFIT,
       PC1.INVESTMENT_TRANSFORMATION_BENEFIT AS INVESTMENT_TRANSFORMATION_BENEFIT,
       PC1.QUANTITATIVE_BENEFIT AS QUANTITATIVE_BENEFIT,
       PC1.QUALITATIVE_BENEFIT AS QUALITATIVE_BENEFIT,
       PC1.BENEFIT_OWNER AS BENEFIT_OWNER,
       PC1.COMPLEXITY AS COMPLEXITY,
       PC1.BENEFIT AS BENEFIT,
       PC1.MANDATORY_OVERRIDE AS MANDATORY_OVERRIDE,
       PC1.SCHEDULE AS SCHEDULE,
       PC1.SCOPE AS SCOPE,
       PC1.FINANCE AS FINANCE,
       PC1.HUMAN_RESOURCES AS HUMAN_RESOURCES,
       PC1.CONTRACT AS CONTRACT,
       PC1.IV_AND_V AS IV_AND_V,
       PC1.SPONSOR_TITLE AS SPONSOR_TITLE,
       PC1.TOTAL_RSCS AS ID_OF_STAFF,
       PC1.FTE AS FTE,
       PC1.PERCENTAGE_COMPLETE AS PERCENTAGE_COMPLETE,
       PC1.PERCENTAGE_SPENT AS PERCENTAGE_SPENT,
       PC1.APD_NUMBER AS APD_NUMBER,
       PC1.DURATION AS DURATION,
       PC1.DURATION_SPENT AS DURATION_SPENT,
       PC1.PERCENTAGE_TIME_SPENT AS PERCENTAGE_TIME_SPENT,
       PC1.PR_START_IN_NEXT_6MON AS PR_START_IN_NEXT_6MON,
       PC1.PR_END_IN_NEXT_6MON AS PR_END_IN_NEXT_6MON,
       PC1.STATUS_GATE AS STATUS_GATE,
       PC1.STATUS_SUMMARY AS STATUS_SUMMARY,
	   PC1.HEALTHCARE AS HEALTHCARE,
	   PC1.KNOWLEDGE_INNOVATION,
	   PC1.HEALTH_SAFETY_WELLBEING,
	   PC1.EFFICIENT_TRANSPARENCY_ACCOUNTABILITY,
	   PC1.RUN_BUSINESS,
	   PC1.GROW_BUSINESS,
	   PC1.TRANSFORM_BUSINESS,
       AGG.RISK_COUNT AS RISK_COUNT,
       AGG.ISSUE_COUNT AS ISSUE_COUNT,
       AGG.ACTIVITY_COUNT AS ACTIVITY_COUNT
FROM (EDP_DB.dbo.PROJECT_CATALOG_FACT PC1
      JOIN
        ( SELECT PC.PROJECT_ID AS PROJECT_ID,
                PD.PROGRAM_ID AS PROGRAM_ID,
                PD.PROGRAM_NAME AS PROGRAM_NAME,
                PD.PORTFOLIO_ID AS PORTFOLIO_ID,
                PD.PORTFOLIO_NAME AS PORTFOLIO_NAME,
                count(DISTINCT RD.RISK_ID) AS RISK_COUNT,
                count(DISTINCT ID.ISSUE_ID) AS ISSUE_COUNT,
                count(DISTINCT AD.ACTIVITY_ID) AS ACTIVITY_COUNT
         FROM ((((EDP_DB.dbo.PROJECT_CATALOG_FACT PC
                  JOIN EDP_DB.dbo.PROJECT_DIMENSION PD on((PC.PROJECT_ID = PD.PROJECT_ID)))
                 LEFT JOIN EDP_DB.dbo.RISKS_DIMENSION RD on((PC.PROJECT_ID = RD.PROJECT_ID)))
                LEFT JOIN EDP_DB.dbo.ISSUES_DIMENSION ID on((PC.PROJECT_ID = ID.PROJECT_ID)))
               LEFT JOIN EDP_DB.dbo.ACTIVITY_DIMENSION AD on((PC.PROJECT_ID = AD.PROJECT_ID)))
         --GROUP BY PD.PROJECT_ID,PC.PROJECT_ID
		 GROUP BY PC.PROJECT_ID ,
                PD.PROGRAM_ID ,
                PD.PROGRAM_NAME ,
                PD.PORTFOLIO_ID ,
                PD.PORTFOLIO_NAME ) AGG on((PC1.PROJECT_ID = AGG.PROJECT_ID)));
GO
