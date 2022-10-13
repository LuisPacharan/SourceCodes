Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,0) as [MMM DD YYYY HH:MM (AM/PM)]
--MMM DD YYYY HH:MM (AM/PM)
--Oct 13 2022 12:23PM

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,1) as [MM/DD/YY]
--MM/DD/YY
--10/13/22

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,2) as [YY.MM.DD]
--YY.MM.DD
--22.10.13

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,3) as [DD/MM/YY]
--DD/MM/YY
--13/10/22

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,4) as [DD.MM.YY]
--DD.MM.YY
--13.10.22

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,5) as [DD-MM-YY]
--DD-MM-YY
--13-10-22

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,6) as [DD MMM YY]
--DD MMM YY
--13 Oct 22

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,7) as [MMM DD,YY]
--MMM DD,YY
--Oct 13, 22

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,8) as [HH:MM:SS]
--HH:MM:SS
--11:29:48

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,9) as [MMM DD YYYY HH:MM:SS:MMM(AM/PM)]
--MMM DD YYYY HH:MM:SS:MMM(AM/PM)
--Oct 13 2022 11:31:17:233AM

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,10) as [MM-DD-YY]
--MM-DD-YY
--10-13-22

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,11) as [YY/MM/DD]
--YY/MM/DD
--22/10/13

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,12) as [YYMMDD]
--YYMMDD
--221013

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,13) as [DD MMM YYYY HH:MM:SS:MMM]
--DD MMM YYYY HH:MM:SS:MMM
--13 Oct 2022 12:10:34:403

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,14) as [HH:MM:SS:MMM]
--HH:MM:SS:MMM
--12:11:02:893

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,20) as [YYYY-MM-DD HH:MM:SS]
--YYYY-MM-DD HH:MM:SS
--2022-10-13 12:11:24

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,21) as [YYYY-MM-DD HH:MM:SS.mmm]
--YYYY-MM-DD HH:MM:SS.mmm
--2022-10-13 12:11:55.587

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,22) as [MM/DD/YY HH:MM:SS (AM/PM)]
--MM/DD/YY HH:MM:SS (AM/PM)
--10/13/22 12:13:21 PM

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,23) as [YYY-MM-DD]
--YYY-MM-DD
--2022-10-13

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,24) as [HH:MM:SS]
--HH:MM:SS
--12:14:35

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,25) as [YYYY-MM-DD HH:MM:SS.mmm]
--YYYY-MM-DD HH:MM:SS.mmm
--2022-10-13 12:20:33.097

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,100) as [MMM DD YYYY HH:SS (AM/PM)]
--MMM DD YYYY HH:SS (AM/PM)
--Oct 13 2022  1:12PM

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,101) as [MM/DD/YYYY]
--MM/DD/YYYY
--10/13/2022

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,102) as [YYYY.MM.DD]
--YYYY.MM.DD
--2022.10.13

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,103) as [DD/MM/YYYY]
--DD/MM/YYYY
--13/10/2022

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,104) as [DD/MM/YYYY]
--DD/MM/YYYY
--13.10.2022

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,105) as [DD/MM/YYYY]
--DD/MM/YYYY
--13-10-2022

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,106) as [DD MMM YYYY]
--DD MMM YYYY
--13 Oct 2022

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,107) as [MMM DD,YYYY]
--MMM DD,YYYY
--Oct 13, 2022

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,108) as [HH:MM:SS]
--HH:MM:SS
--13:28:00

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,109) as [MMM DD YYYY HH:MM:SS:MMM(AM/PM)]
--MMM DD YYYY HH:MM:SS:MMM(AM/PM)
--Oct 13 2022  1:28:21:793PM

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,110) as [MM-DD-YYYY]
--MM-DD-YYYY
--10-13-2022

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,111) as [YYYY/MM/DD]
--YYYY/MM/DD
--2022/10/13

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,112) as [YYYYMMDD]
--YYYYMMDD
--20221013

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,113) as [DD MMM YYYY HH:MM:SS:MMM]
--DD MMM YYYY HH:MM:SS:MMM
--13 Oct 2022 13:52:22:753

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,114) as [DD MMM YYYY HH:MM:SS:MMM]
--DD MMM YYYY HH:MM:SS:MMM
--13:52:41:260

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,120) as [YYYY-MM-DD HH:MM:SS]
--YYYY-MM-DD HH:MM:SS
--2022-10-13 13:53:02

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,121) as [YYYY-MM-DD HH:MM:SS.mmm]
--YYYY-MM-DD HH:MM:SS.mmm
--2022-10-13 13:53:20.733

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,126) as [YYYY-MM-DDTHH:MM:SS.mmm]
--YYYY-MM-DDTHH:MM:SS.mmm
--2022-10-13T13:54:20.330

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,127) as [YYYY-MM-DDTHH:MM:SS.mmm]
--YYYY-MM-DDTHH:MM:SS.mmm
--2022-10-13T14:08:40.643

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,130) as [DD ???? ????? YYYY  H:MM:SS:MM]
--DD ???? ????? YYYY  H:MM:SS:MM
--18 ???? ????? 1444  2:11:08:61

Declare @Fecha Datetime
Set @Fecha=GETDATE()
Select CONVERT(varchar,@Fecha,131) as [DD/MM/YYYY  H:MM:SS:MMM(AM/PM)]
--DD/MM/YYYY  H:MM:SS:MMM(AM/PM)
--18/03/1444  2:14:37:823PM

--Fuente //www.sqlshack.com/es/funciones-y-formatos-de-sql-convert-date/