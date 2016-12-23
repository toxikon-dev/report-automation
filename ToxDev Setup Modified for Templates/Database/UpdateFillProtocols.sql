INSERT INTO [Toxikon_ra].[dbo].[tblProtocols] ([txtProtocolName],[txtProtocolType],[txtReportQuery],[booQAReview], [txtWebForm]) VALUES ('12-ISO-MEM-Elution-G','G','SELECT tblSamples.*, tblProjects.*, tblMemElution.*, d.*, s.txtFullName as txtStudySupervisor, tblOrdinal.* FROM ((tblSamples INNER JOIN tblProjects ON tblSamples.txtSampleNumber = tblProjects.txtSampleNumber) INNER JOIN tblMemElution ON tblProjects.txtStudyNumber = tblMemElution.txtStudyNumber) INNER JOIN tblUsers d ON tblProjects.intStudyDirector = d.intUserID inner join tblUsers s on tblprojects.intStudySupervisor = s.intuserID, tblOrdinal  ',1,'memelution.aspx')
GO
INSERT INTO [Toxikon_ra].[dbo].[tblProtocols] ([txtProtocolName],[txtProtocolType],[txtReportQuery],[booQAReview],[txtWebForm]) VALUES ('12-ISO-Kligman-N','N','SELECT tblSamples.*, tblProjects.*, tblKligman.intReaction, d.*, s.txtFullName as txtStudySupervisor, tblOrdinal.* FROM ((tblSamples INNER JOIN tblProjects ON tblSamples.txtSampleNumber = tblProjects.txtSampleNumber) INNER JOIN tblKligman on tblProjects.txtStudyNumber = tblKligman.txtStudyNumber) INNER JOIN tblUsers d ON tblProjects.intStudyDirector = d.intUserID inner join tblUsers s on tblProjects.intStudySupervisor = s.intUserID, tblOrdinal  ',0,'kligman.aspx')
GO
INSERT INTO [Toxikon_ra].[dbo].[tblProtocols] ([txtProtocolName],[txtProtocolType],[txtReportQuery],[booQAReview],[txtWebForm]) VALUES ('12-ISO-Ames-N','N','SELECT tblSamples.*, tblProjects.*, tblAmes.*, d.*, s.txtFullName as txtStudySupervisor, tblOrdinal.* FROM ((tblSamples INNER JOIN tblProjects ON tblSamples.txtSampleNumber = tblProjects.txtSampleNumber) INNER JOIN tblAmes ON tblProjects.txtStudyNumber = tblAmes.txtStudyNumber) INNER JOIN tblUsers d ON tblProjects.intStudyDirector = d.intUserID inner join tblUsers s on tblprojects.intStudySupervisor = s.intuserID, tblOrdinal',0,'amestestresultsform.aspx')
GO
INSERT INTO [Toxikon_ra].[dbo].[tblProtocols] ([txtProtocolName],[txtProtocolType],[txtReportQuery],[booQAReview],[txtWebForm]) VALUES ('12-ISO-Agar-Diffusion-G','G','SELECT tblSamples.*, tblProjects.*, tblAgarDiffusion.*, d.*, s.txtFullName as txtStudySupervisor, tblOrdinal.* FROM ((tblSamples INNER JOIN tblProjects ON tblSamples.txtSampleNumber = tblProjects.txtSampleNumber) INNER JOIN tblAgarDiffusion ON tblProjects.txtStudyNumber = tblAgarDiffusion.txtStudyNumber) INNER JOIN tblUsers d ON tblProjects.intStudyDirector = d.intUserID inner join tblUsers s on tblprojects.intStudySupervisor = s.intuserID, tblOrdinal',1,'agardiffusion.aspx')
GO
