ALTER TABLE [Toxikon_ra].[dbo].[tblProjects] ADD txtUnforeseenConsequences ntext
GO
ALTER TABLE [Toxikon_ra].[dbo].[tblProjects] ADD txtProtocolAmendments ntext
GO
ALTER TABLE [Toxikon_ra].[dbo].[tblProjects] ADD txtpHChange ntext
GO
--UPDATE [Toxikon_ra].[dbo].[tblProjects] SET txtUnforeseenConsequences='Any unforeseen circumstances were documented in the raw data.  However, no unforeseen circumstances that affected the integrity of the study were noted. ', txtProtocolAmendments='There were no protocol amendments or deviations.  No changes to the protocol were required. ', txtpHChange=' unchanged by the extraction procedure. The extract was clear and free from particulates and did not change color which indicates an absence of pH shift.' WHERE txtStudyNumber='11-2503-G1'
--GO
--UPDATE [Toxikon_ra].[dbo].[tblProjects] SET txtUnforeseenConsequences='Any unforeseen circumstances were documented in the raw data.  However, no unforeseen circumstances that affected the integrity of the study were noted. ', txtProtocolAmendments='There were no protocol amendments or deviations.  No changes to the protocol were required. ' WHERE txtStudyNumber='11-2736-N2'
--GO
--UPDATE [Toxikon_ra].[dbo].[tblProjects] SET txtUnforeseenConsequences='Any unforeseen circumstances were documented in the raw data.  However, no unforeseen circumstances that affected the integrity of the study were noted. ', txtProtocolAmendments='There were no protocol amendments or deviations.  No changes to the protocol were required. ' WHERE txtStudyNumber='11-3361-G1'
--GO
