
TRUNCATE TABLE dbo.Insights;
TRUNCATE TABLE dbo.InsightItems;
TRUNCATE TABLE dbo.InsightLinks;
TRUNCATE TABLE dbo.ControlledSubstances;
TRUNCATE TABLE dbo.Registries;

INSERT INTO [dbo].[Insights]
           ([PatientId]
            ,[InsightId]
            ,InsightCategory
            , InsightName
	      ,[InsightText]
            ,[DateCreated]
)
     VALUES
           (1,1,
           'Category'
           ,'High risk of opioid abuse'
           , ''
           ,'04-25-2017')
GO

INSERT INTO [dbo].[InsightItems]
           ([PatientId]
            ,[InsightId]
            ,[InsightItemId]
	      ,[ItemName]
	      ,[ItemText]
            ,[DateCreated]
)
     VALUES
           (1,1,1
           ,'Daily Opioid MME Threshold'
            , '50 (^ 28% in past 6 months)'
           ,'04-25-2017')
GO

INSERT INTO [dbo].[InsightItems]
           ([PatientId]
            ,[InsightId]
            ,[InsightItemId]
	      ,[ItemName]
	      ,[ItemText]
            ,[DateCreated]
)
     VALUES
           (1,1,2
           ,'% Days Uses Opioid Over 50 MME' 
            , '25.54% (22,845 days/ 89,446 days)'
           ,'04-25-2017')
GO

INSERT INTO [dbo].[InsightItems]
           ([PatientId]
            ,[InsightId]
            ,[InsightItemId]
	      ,[ItemName]
	      ,[ItemText]
            ,[DateCreated]
)
     VALUES
           (1,1,3
           ,'% Patient Encounter Uses Opioid Over 50 MME' 
            , '21.41% (9,284/43,371)'
           ,'04-25-2017')
GO

INSERT INTO [dbo].[InsightItems]
           ([PatientId]
            ,[InsightId]
            ,[InsightItemId]
	      ,[ItemName]
	      ,[ItemText]
            ,[DateCreated]
)
     VALUES
           (1,1,4
           ,'Risk Factors' 
            , '- Family History of Addiction, - Diagnosed Depression'
           ,'04-25-2017')
GO

INSERT INTO [dbo].[InsightItems]
           ([PatientId]
            ,[InsightId]
            ,[InsightItemId]
	      ,[ItemName]
	      ,[ItemText]
            ,[DateCreated]
)
     VALUES
           (1,1,5
           ,'In Hospice Care?' 
            , 'Started May 1, 2016'
           ,'04-25-2017')
GO

INSERT INTO [dbo].[InsightLinks]
           ([PatientId]
            ,[InsightId]
            ,[InsightLinkId]
	      ,[LinkName]
	      ,[LinkUrl]
            ,[DateCreated]
)
     VALUES
           (1,1,1
           ,'Controlled Substance History' 
           , ''
           ,'04-25-2017')
GO


INSERT INTO [dbo].[Insights]
           ([PatientId]
            ,[InsightId]
            , InsightCategory
            , [InsightName]
	      ,[InsightText]
            ,[DateCreated]
)
     VALUES
           (1,2
           , 'Medication category'
           ,'Used controlled substance in past 90 days'
           , ''
           ,'04-25-2017')
GO

/* add insights for other patients */
INSERT INTO [dbo].[Insights]([PatientId],[InsightId], InsightCategory, [InsightName],[InsightText],[DateCreated])
     VALUES (2,1,'Test Category','Mammogram overdue','text',GETDATE())

INSERT INTO [dbo].[Insights]([PatientId],[InsightId], InsightCategory, [InsightName],[InsightText],[DateCreated])
     VALUES (3,1,'Registry Category','On Diabetes registry','text',GETDATE())

INSERT INTO [dbo].[Insights]([PatientId],[InsightId], InsightCategory, [InsightName],[InsightText],[DateCreated])
     VALUES (3,2, 'Risk Category','Alcoholic', 'text',GETDATE())


--- controlled substances
INSERT INTO dbo.ControlledSubstances(PatientId,ControlledSubstanceId, [MedicationCategory],MedicationName, DatePrescribed, PrescribedByDoctor)
VALUES(1,1,'Opiod','OxyContin', '3/1/2017', 'Dr. Bill Humphry');


INSERT INTO dbo.Registries(PatientId, RegistryName, DateAdded)
VALUES(1, 'Blue Cross Diabetes', '11/5/2016');

INSERT INTO dbo.Registries(PatientId, RegistryName, DateAdded)
VALUES(1, 'Hypertension', '5/13/2016');
