USE [master]
GO
/****** Object:  Database [AutoImport]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE DATABASE [AutoImportTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AutoImport', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AutoImportTest.mdf' , SIZE = 18432KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AutoImport_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AutoImportTest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AutoImport] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AutoImport].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AutoImport] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AutoImport] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AutoImport] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AutoImport] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AutoImport] SET ARITHABORT OFF 
GO
ALTER DATABASE [AutoImport] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AutoImport] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AutoImport] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AutoImport] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AutoImport] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AutoImport] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AutoImport] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AutoImport] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AutoImport] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AutoImport] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AutoImport] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AutoImport] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AutoImport] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AutoImport] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AutoImport] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AutoImport] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AutoImport] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AutoImport] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AutoImport] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AutoImport] SET  MULTI_USER 
GO
ALTER DATABASE [AutoImport] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [AutoImport] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AutoImport] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AutoImport] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [AutoImport]
GO
/****** Object:  User [KPI]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE USER [KPI] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Horizon]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE USER [Horizon] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [exilesoft\opo]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE USER [exilesoft\opo] FOR LOGIN [EXILESOFT\opo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BUILTIN\Administrators]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE USER [BUILTIN\Administrators] FOR LOGIN [BUILTIN\Administrators]
GO
ALTER ROLE [db_datareader] ADD MEMBER [KPI]
GO
ALTER ROLE [db_owner] ADD MEMBER [Horizon]
GO
ALTER ROLE [db_owner] ADD MEMBER [exilesoft\opo]
GO
/****** Object:  Schema [BEX\bethanydodgshun]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SCHEMA [BEX\bethanydodgshun]
GO
/****** Object:  Schema [BEX\nathanyounger]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SCHEMA [BEX\nathanyounger]
GO
/****** Object:  Schema [BUILTIN\Administrators]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SCHEMA [BUILTIN\Administrators]
GO
/****** Object:  Schema [clsadmin]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SCHEMA [clsadmin]
GO
/****** Object:  Schema [DDL]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SCHEMA [DDL]
GO
/****** Object:  Schema [IndexMaint]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SCHEMA [IndexMaint]
GO
/****** Object:  Schema [TS2000]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SCHEMA [TS2000]
GO
/****** Object:  Synonym [dbo].[synTranSuite_spEmailPopulateTemplate]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTranSuite_spEmailPopulateTemplate] FOR [TS2000].[spEmailPopulateTemplate]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_Cheques_Paid]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_Cheques_Paid] FOR [TS2000].[Cheques Paid]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_Configuration]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_Configuration] FOR [TS2000].[Configuration]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_fncDoesConNoteNumExist]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_fncDoesConNoteNumExist] FOR [TS2000].[fncDoesConNoteNumExist]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_fncFormatCase]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_fncFormatCase] FOR [TS2000].[fncFormatCase]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_fncGetDateFromDateTime]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_fncGetDateFromDateTime] FOR [TS2000].[fncGetDateFromDateTime]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_fncGetDefaultDepot]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_fncGetDefaultDepot] FOR [TS2000].[fncGetDefaultDepot]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_fncRoundUp]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_fncRoundUp] FOR [TS2000].[fncRoundUp]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_fnProperCase]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_fnProperCase] FOR [TS2000].[fnProperCase]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_Invoices]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_Invoices] FOR [TS2000].[Invoices]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_INVOICES_ALL]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_INVOICES_ALL] FOR [TS2000].[INVOICES_ALL]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_InvoicesSub]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_InvoicesSub] FOR [TS2000].[InvoicesSub]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_Owners]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_Owners] FOR [TS2000].[Owners]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_Pricing]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_Pricing] FOR [TS2000].[Pricing]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_SendersReceivers]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_SendersReceivers] FOR [TS2000].[SendersReceivers]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_Sending_Centres]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_Sending_Centres] FOR [TS2000].[Sending Centres]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spAllocateTradeItemWeight]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spAllocateTradeItemWeight] FOR [TS2000].[spAllocateTradeItemWeight]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spCalcCubic]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spCalcCubic] FOR [TS2000].[spCalcCubic]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spCalculateETD]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spCalculateETD] FOR [TS2000].[spCalculateETADate]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spChargeUnitVerify]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spChargeUnitVerify] FOR [TS2000].[spChargeUnitVerify]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spConNoteBookmark]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spConNoteBookmark] FOR [TS2000].[spConNoteBookmark]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spConNoteCheckForEarlyScans]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spConNoteCheckForEarlyScans] FOR [TS2000].[spConNoteCheckForEarlyScans]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spConNoteDeleteImported]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spConNoteDeleteImported] FOR [TS2000].[spConNoteDeleteImported]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spCreateSingleULUFromConsignment]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spCreateSingleULUFromConsignment] FOR [TS2000].[spCreateSingleULUFromConsignment]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spDeleteInvoice]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spDeleteInvoice] FOR [TS2000].[spDeleteInvoice]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spExportTableDataAsSQL]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spExportTableDataAsSQL] FOR [TS2000].[spExportTableDataAsSQL]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spFormLogInvoiceEvent]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spFormLogInvoiceEvent] FOR [TS2000].[spFormLogInvoiceEvent]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spGatewayTransferCon]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spGatewayTransferCon] FOR [TS2000].[spGatewayTransferCon]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spGetActiveUnitFromBarcode]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spGetActiveUnitFromBarcode] FOR [TS2000].[spGetActiveUnitFromBarcode]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spGetElementFromDB]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spGetElementFromDB] FOR [TS2000].[spGetElementFromDB]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_sprBuildLegs]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_sprBuildLegs] FOR [TS2000].[sprBuildLegs]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_sprBuildLegsNoInvoice]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_sprBuildLegsNoInvoice] FOR [TS2000].[sprBuildLegsNoInvoice]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_sprPriceConsignmentExternal]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_sprPriceConsignmentExternal] FOR [TS2000].[sprPriceConsignmentExternal]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spSetETAdate]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spSetETAdate] FOR [TS2000].[spSetETAdate]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spTransferLogisticUnits]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spTransferLogisticUnits] FOR [TS2000].[spTransferLogisticUnits]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_spUpdateDepotMovementRecord]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_spUpdateDepotMovementRecord] FOR [TS2000].[spUpdateDepotMovementRecord]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_Suburbs]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_Suburbs] FOR [TS2000].[Suburbs]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_SystemUsers]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_SystemUsers] FOR [TS2000].[SystemUsers]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblAutoExportCheckpoints]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblAutoExportCheckpoints] FOR [TS2000].[tblAutoExportCheckpoints]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblAutoExportLog]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblAutoExportLog] FOR [TS2000].[tblAutoExportLog]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblChargeUnitXRef]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblChargeUnitXRef] FOR [TS2000].[tblChargeUnitXRef]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblConnoteDelivery]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblConnoteDelivery] FOR [TS2000].[tblConnoteDelivery]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblConNoteRejectReasons]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblConNoteRejectReasons] FOR [TS2000].[tblConNoteRejectReasons]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblConNoteTradeItem]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblConNoteTradeItem] FOR [TS2000].[tblConNoteTradeItem]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblCustCatalogue]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblCustCatalogue] FOR [TS2000].[tblCustCatalogue]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblDangerousGoods]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblDangerousGoods] FOR [TS2000].[tblDangerousGoods]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblFormLogChange]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblFormLogChange] FOR [TS2000].[tblFormLogChange]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblFormLogControl]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblFormLogControl] FOR [TS2000].[tblFormLogControl]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblImportBatchHeader]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblImportBatchHeader] FOR [TS2000].[tblImportBatchHeader]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblImportDuplicateOption]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblImportDuplicateOption] FOR [TS2000].[tblImportDuplicateOption]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblImportTemplates]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblImportTemplates] FOR [TS2000].[tblImportTemplates]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblInvoice]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblInvoice] FOR [TS2000].[tblInvoice]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblLogisticUnit]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblLogisticUnit] FOR [TS2000].[tblLogisticUnit]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_tblTimeSlot]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_tblTimeSlot] FOR [TS2000].[tblTimeSlot]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_UnitMeasures]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_UnitMeasures] FOR [TS2000].[Unit Measures]
GO
/****** Object:  Synonym [dbo].[synTS2000_dbo_vwMode]    Script Date: 2015-02-18 6:14:57 PM ******/
CREATE SYNONYM [dbo].[synTS2000_dbo_vwMode] FOR [TS2000].[vwModesActive]
GO
/****** Object:  UserDefinedFunction [dbo].[fncCombine]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncCombine] (@intBatchID	int, @nvarcharFieldID nvarchar(10),@intConCount	int, @intLoadCount int, @intDirection int, @intCombineMethod int, @nvarcharDelimiter nvarchar(20))
RETURNS nvarchar(max)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2009
*
* Date Created:	13-Aug-2009
* Created By  : Nathan Younger
* Document    : SR:15570
* Purpose     :	This function combines all values for the specified field for the specified
*				con note number for the specified load item.  Three combine methods are available:-
*
*				Append	- All values will be treated as text and appended in order set by @intDirection
*				Add		- All values will be treated as decimal(6,3) and added together
*				Multiply- All values will be treated as decimal(6,3) and multiplied together
*
*				For numeric operations, if any value cannot be converted to a
*				number then the function will abort and return a null value.
*	
* Parameters
* ==========
* @intBatchID		- The import batch number
* @nvarcharFieldID	- The import field name
* @intConCount		- The con note record number
* @intLoadCount		- The load item record number
* @intDirection		- 1 = Ascending, 2 = Descending
* @intCombineMethod	- 1 = Append, 2 = Add, 3 = Multiply
* @nvarcharDelimiter- When @intDirection = 1, all values will be separated by this value.
* 
* Returns 
* =======
*	NVARCHAR(MAX)
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
* Copyright (c) Border Express Pty Ltd 2008
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		====		=====
* 1.0.0		13-08-09	NY		SR:15570	Initial creation
* 1.0.1		02-09-09	NY		SC:763		Added alternate combine methods
*
* Copyright (c) Border Express Pty Ltd 2008
*******************************************************************************/
BEGIN
	--***********Remove after testing***************
--	DECLARE @intBatchID			int
--	DECLARE @nvarcharFieldID	nvarchar(10)
--	DECLARE @intConCount		int
--	DECLARE @intLoadCount		int
--	DECLARE @intDirection		int
--	DECLARE @intCombineMethod	int
--	DECLARE @nvarcharDelimiter	nvarchar(20)
--	
--	SET		@intBatchID		 = 141743
--	SET		@nvarcharFieldID = 'VAR10'
--	SET		@intConCount	 = 1
--	SET		@intLoadCount	 = 3
--	SET		@intDirection	 = 1
--	SET		@intCombineMethod = 3
--	SET		@nvarcharDelimiter = '. '
	--*********************************************
	
	--Declare and intialise variables
	DECLARE @nvarcharValue		nvarchar(max)
	DECLARE @nvarcharResult		nvarchar(max)
	DECLARE @decValue			decimal(8,4)
	DECLARE @decResult			decimal(8,4)
	DECLARE @intCount			int
	DECLARE @intRecNum			int
	DECLARE	@tblValues table (id int identity(1,1), fldValue nvarchar(max) null)

	SET		@nvarcharValue	= NULL
	SET		@nvarcharResult = NULL
	SET		@decValue		= 0
	SET		@intCount		= 0
	SET		@intRecNum		= 0
	SET		@decResult		= (CASE WHEN @intCombineMethod = 3 THEN 1 ELSE 0 END)

	SET		@intConCount		= ISNULL(@intConCount,0)
	SET		@intLoadCount		= ISNULL(@intLoadCount,0)
	SET		@intDirection		= ISNULL(@intDirection,2)
	SET		@intCombineMethod	= ISNULL(@intCombineMethod,1)
	SET		@nvarcharDelimiter	= ISNULL(@nvarcharDelimiter,'')

	-- Load the records into a temp table and count how many there are
	INSERT INTO @tblValues(fldValue)
	SELECT	ElementValue
	FROM	ImportScratchpad
	WHERE	ImportBatchID	 = @intBatchID	AND
			ConsignmentCount = @intConCount AND
			LoadCount		 = @intLoadCount AND
			FieldID			 = @nvarcharFieldID
	ORDER BY id

	SELECT	@intCount = Count(*)
	FROM	@tblValues

	-- If there are records	
	IF @intCount >0
	BEGIN

		-- Loop through the records
		WHILE @intRecNum < @intCount
		BEGIN
			
			-- Increment Record Number pointer
			SET @intRecNum = @intRecNum + 1

			-- Get value
			IF @intDirection = 1
				SELECT @nvarcharValue = fldValue FROM @tblValues WHERE ID = @intRecNum
			ELSE
				SELECT @nvarcharValue = fldValue FROM @tblValues WHERE ID = @intCount - @intRecNum + 1

--print 'Value: ' + @nvarcharValue
			
			-- Combine value to variable
			IF @intCombineMethod = 1		-- Append
				SET @nvarcharResult = ISNULL(@nvarcharResult + @nvarcharDelimiter,'') + ISNULL(@nvarcharValue,'')
			ELSE IF @intCombineMethod = 2	-- Add
				SET @decResult = @decResult + (CASE WHEN ISNUMERIC(@nvarcharValue) = 1 THEN CONVERT(decimal(8,4), @nvarcharValue) ELSE NULL END)
			ELSE IF @intCombineMethod = 3	-- Multiply
				SET @decResult = @decResult * (CASE WHEN ISNUMERIC(@nvarcharValue) = 1 THEN CONVERT(decimal(8,4), @nvarcharValue) ELSE NULL END)
			

		-- End Loop
		END

	END

	-- Exit
	IF @intCombineMethod <> 1
		SET @nvarcharResult = CONVERT(nvarchar(max), Convert(float,@decResult))

	RETURN(@nvarcharResult)
--print @nvarcharResult

END



GO
/****** Object:  UserDefinedFunction [dbo].[fncConvStrToDateTime]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncConvStrToDateTime]
	(    @vchValue	VARCHAR(30)
		,@vchFormat	VARCHAR(30)   )
RETURNS DATETIME
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Format dates without so much mucking about - you just tell it the format
*				you are using and this function will figure out how to convert it
*	
* Parameters
* ==========
*	@vchValue	- Type of fields they are interested in (eg 'Con Note')
*	@vchFormat	- Format. Accepted values
*					DD - Day
					MM - 2 digit month (eg March = 03)
					Mon - three character Month (eg March = Mar or MAR). Not case sensitive
					YY - 2 digit year (eg 2012 = 12)
					YYYY - 4 digit year (eg 2012 = 2012)
					YY?? - 2 or 4 digit year (eg 2012 = 2012 or 12)

* 
* Returns 
* =======
*	DATETIME - the formated version of the string 
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		27/03/2012	VF					+ Initial creation
* 1.0.1		06/06/2012	VF					* Added YY?? format option
* 1.0.2		24/09/2013	VF					* Added new format
*
*******************************************************************************/
 
/*Testing
SELECT fldValue, fldFormat, dbo.fncConvStrToDateTime(fldValue, fldFormat) fldResult
FROM (
	SELECT '01-JAN-2012' fldValue, 'DD-MON-YYYY' fldFormat
	UNION 
	SELECT '01 JAN 2012' fldValue, 'DD MON YYYY' fldFormat
	UNION 
	SELECT '01/01/2012' fldValue, 'DD/MM/YYYY' fldFormat
	) x
*/
BEGIN
/*	TESTING
	DECLARE @vchValue	VARCHAR(30)
	DECLARE @vchFormat	VARCHAR(30)

	SET @vchValue = '01-JAN-2012'
	SET @vchFormat = 'DD-MON-YYYY'
*/
	-- return null if no value supplied
	IF LTRIM(ISNULL(@vchValue, '')) = '' RETURN NULL
	
	
	-- get rid of any space before AM/PM (as no formats like that space)
	SET @vchValue = REPLACE(REPLACE(UPPER(@vchValue), ' AM', 'AM'), ' PM', 'PM')
	SET @vchFormat = REPLACE(REPLACE(UPPER(@vchFormat), ' AM', 'AM'), ' PM', 'PM')
	
	-- if variable year format used, check which one value actually is
	IF CHARINDEX('YY??', @vchFormat) > 0 BEGIN
		IF LEN(@vchValue) = LEN(@vchFormat) BEGIN
			SET @vchFormat = REPLACE(@vchFormat, 'YY??', 'YYYY')
		END ELSE BEGIN
			SET @vchFormat = REPLACE(@vchFormat, 'YY??', 'YY')
		END
	END
	
	--Declare variables
	DECLARE @intFormatCode		INTEGER
	DECLARE @vchFormatStripped	VARCHAR(30)
	DECLARE @vchFormatTest		VARCHAR(30)
	DECLARE @vchValueStripped	VARCHAR(30)
	DECLARE @vchValueTest		VARCHAR(30)
	DECLARE @dtReturn			DATETIME

	DECLARE @vchFormatDate	VARCHAR(30)
	DECLARE @vchFormatTime	VARCHAR(30)
	DECLARE @vchValueDate	VARCHAR(30)
	DECLARE @vchValueTime	VARCHAR(30)
	
	-- if format exists use format code
	SELECT @intFormatCode 
		= CASE @vchFormat 
			WHEN 'Mon DD YYYY HH:MIAM' THEN 100
			WHEN 'Mon DD YYYY HH:MIPM' THEN 100
			WHEN 'MM/DD/YY' THEN 1
			WHEN 'MM/DD/YYYY' THEN 101
			WHEN 'YY.MM.DD' THEN 2
			WHEN 'YYYY.MM.DD' THEN 102
			WHEN 'DD/MM/YY' THEN 3
			WHEN 'DD/MM/YYYY' THEN 103
			WHEN 'DD.MM.YY' THEN 4
			WHEN 'DD.MM.YYYY' THEN 104
			WHEN 'DD-MM-YY' THEN 5
			WHEN 'DD-MM-YYYY' THEN 105
			WHEN 'DD Mon YY' THEN 6
			WHEN 'DD Mon YYYY' THEN 106
			WHEN 'Mon DD, YY' THEN 7
			WHEN 'Mon DD, YYYY' THEN 107
			WHEN 'HH:MM:SS' THEN 108
			WHEN 'Mon DD YYYY HH:MI:SS:MMMAM' THEN 109
			WHEN 'Mon DD YYYY HH:MI:SS:MMMPM' THEN 109
			WHEN 'MM-DD-YY' THEN 10
			WHEN 'MM-DD-YYYY' THEN 110
			WHEN 'YY/MM/DD' THEN 11
			WHEN 'YYYY/MM/DD' THEN 111
			WHEN 'YYMMDD' THEN 12
			WHEN 'YYYYMMDD' THEN 112
			WHEN 'DD Mon YYYY HH:MM:SS:MMM' THEN 113
			WHEN 'HH:MI:SS:MMM' THEN 114
			WHEN 'YYYY-MM-DD HH:MI:SS' THEN 120
			WHEN 'YYYY-MM-DD HH:MI:SS.MMM' THEN 121
			WHEN 'YYYY-MM-DDTHH:MM:SS:MMM' THEN 126
			WHEN 'DD Mon YYYY HH:MI:SS:MMMAM' THEN 130
			WHEN 'DD/MM/YYYY HH:MI:SS:MMMAM' THEN 131
			ELSE -1
		END	

	IF @intFormatCode = -1 BEGIN
		-- remove any dots n dashes
		SELECT @vchFormatStripped = replace(replace(replace(@vchFormat, '-', ' '), '.', ' '),'/', ' ')
		SELECT @vchValueStripped = replace(replace(replace(@vchValue, '-', ' '), '.', ' '),'/', ' ')
		--PRINT '@vchFormatStripped:' + ISNULL(@vchFormatStripped,'')
		--PRINT '@vchValueStripped:' + ISNULL(@vchValueStripped,'')

		-- check if any space formats match
		SELECT @intFormatCode 
			= CASE @vchFormatStripped 
				WHEN 'Mon DD YYYY HH:MIAM' THEN 100
				WHEN 'Mon DD YYYY HH:MIPM' THEN 100
				WHEN 'DD Mon YY' THEN 6
				WHEN 'DD Mon YYYY' THEN 106
				WHEN 'Mon DD, YY' THEN 7
				WHEN 'Mon DD, YYYY' THEN 107
				WHEN 'Mon DD YYYY HH:MI:SS:MMMAM' THEN 109
				WHEN 'Mon DD YYYY HH:MI:SS:MMMPM' THEN 109
				WHEN 'DD Mon YYYY HH:MM:SS:MMM' THEN 113
				WHEN 'DD Mon YYYY HH:MI:SS:MMMAM' THEN 130
				ELSE -1
			END			
			
		IF @intFormatCode = -1 BEGIN
			-- repalce spaces with slash
			SELECT @vchFormatTest = replace(@vchFormatStripped, ' ', '/')
			SELECT @vchValueTest = replace(@vchValueStripped, ' ', '/')
			--PRINT '@vchFormatTest:' + ISNULL(@vchFormatTest,'')
			--PRINT '@vchValueTest:' + ISNULL(@vchValueTest,'')
			
			-- don't bother checking if back to original format
			IF @vchFormatTest <> @vchFormat BEGIN
				-- check if any space formats match
				SELECT @intFormatCode 
					= CASE @vchFormatTest 
						WHEN 'MM/DD/YY' THEN 1
						WHEN 'MM/DD/YYYY' THEN 101
						WHEN 'DD/MM/YY' THEN 3
						WHEN 'DD/MM/YYYY' THEN 103
						WHEN 'YY/MM/DD' THEN 11
						WHEN 'YYYY/MM/DD' THEN 111
						WHEN 'DD/MM/YYYY HH:MI:SS:MMMAM' THEN 131
						ELSE -1
					END			
				IF @intFormatCode > 0 SET @vchValue = @vchValueTest
			END
			
			IF @intFormatCode = -1 BEGIN
				-- repalce spaces with '-'
				SELECT @vchFormatTest = replace(@vchFormatStripped, ' ', '-')
				SELECT @vchValueTest = replace(@vchValueStripped, ' ', '-')
				--PRINT '@vchFormatTest:' + ISNULL(@vchFormatTest,'')
				--PRINT '@vchValueTest:' + ISNULL(@vchValueTest,'')

				-- don't bother checking if back to original format
				IF @vchFormatTest <> @vchFormat BEGIN
					-- check if any space formats match
					SELECT @intFormatCode 
						= CASE @vchFormatTest 
							WHEN 'YYYY-MM-DD HH:MI:SS' THEN 120
							WHEN 'YYYY-MM-DD HH:MI:SS.MMM' THEN 121
							WHEN 'YYYY-MM-DDTHH:MM:SS:MMM' THEN 126
							ELSE -1
						END			
					IF @intFormatCode > 0 SET @vchValue = @vchValueTest
				END
			END
			
			IF @intFormatCode = -1 BEGIN
				IF @vchFormat = 'DDMMYY' OR @vchFormat =  'DDMMYYYY' BEGIN
					SET @vchValue= LEFT(@vchValue, 2) + '/' + SUBSTRING(@vchValue,3,2) + '/' + SUBSTRING(@vchValue,5,4)
					IF LEN(@vchFormat) = 6 SET @intFormatCode = 3 ELSE SET @intFormatCode = 103 
				END
			END 
			
			IF @intFormatCode = -1 BEGIN
				-- custom formats
				IF @vchFormat = 'MM/DD/YYYY HH:MI:SSAM' BEGIN
					SELECT @vchValueDate = LTRIM(RTRIM(SUBSTRING(@vchValue,1, CHARINDEX(' ', @vchValue) -1 )))
						,@vchValueTime = REPLACE(REPLACE(LTRIM(RTRIM(SUBSTRING(@vchValue, CHARINDEX(':', @vchValue) -2, 20))), 'AM', ':000AM'), 'PM', ':000PM')
						,@vchFormatDate = LTRIM(RTRIM(SUBSTRING(@vchFormat,1, CHARINDEX(' ', @vchFormat) -1 )))
						,@vchFormatTime = REPLACE(REPLACE(LTRIM(RTRIM(SUBSTRING(@vchFormat, CHARINDEX(':', @vchFormat) -2, 20))), 'AM', ':MMMAM'), 'PM', ':MMMPM')
					SET @dtReturn = CONVERT(DATETIME, REPLACE(CONVERT(VARCHAR,[dbo].[fncConvStrToDateTime](@vchValueDate, @vchFormatDate), 107),',', '') + ' ' + @vchValueTime, 109)				
				END 
			END 
		END
	END
	
	
	IF @intFormatCode > 0 SET @dtReturn = CONVERT(DATETIME, @vchValue, @intFormatCode) 

	RETURN @dtReturn
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncConvStrToDateTimeStr]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncConvStrToDateTimeStr]
	(    @vchValue	VARCHAR(30)
		,@vchFormat	VARCHAR(30)   )
RETURNS VARCHAR(10)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Format dates without so much mucking about - you just tell it the format
*				you are using and this function will figure out how to convert it
*	
* Parameters
* ==========
*	@vchValue	- Type of fields they are interested in (eg 'Con Note')
*	@vchFormat	- Format. Accepted values
*					DD - Day
					MM - 2 digit month (eg March = 03)
					Mon - three character Month (eg March = Mar or MAR). Not case sensitive
					YY - 2 digit year (eg 2012 = 12)
					YYYY - 4 digit year (eg 2012 = 2012)
					YY?? - 2 or 4 digit year (eg 2012 = 2012 or 12)

* 
* Returns 
* =======
*	DATETIME - the formated version of the string 
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		27/03/2012	VF					+ Initial creation
* 1.0.1		06/06/2012	VF					* Added YY?? format option
*
*******************************************************************************/
 
/*Testing
SELECT fldValue, fldFormat, dbo.fncConvStrToDateTimeStr(fldValue, fldFormat) fldResult
FROM (
	SELECT '01-JUN-2012' fldValue, 'DD-MON-YYYY' fldFormat
	UNION 
	SELECT '01 JUN 2012' fldValue, 'DD MON YYYY' fldFormat
	UNION 
	SELECT '01/06/2012' fldValue, 'DD/MM/YYYY' fldFormat
	) x
*/
BEGIN
	-- return null if no value supplied
	IF LTRIM(ISNULL(@vchValue, '')) = '' RETURN NULL

	RETURN REPLACE(CONVERT(VARCHAR(10), dbo.fncConvStrToDateTime(@vchValue, @vchFormat), 102),'.', '-')
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncDoesItContain]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncDoesItContain]
(
	 @vchString		VARCHAR(MAX)
	,@vchLookFor	VARCHAR(50)
) RETURNS BIT AS
/*******************************************************************************
*					Copyright (c) Border Express Pty Ltd 2014
*
* Purpose:		Checks to see if one or more characters from a string are inside another
*				(eg looks for invalid characters in a string)
*				
*		
* Parameters
* ==========
* @vchString - the string you are going to examine
* @vchLookFor - the characters you are looking for
*
* Notes
* =====
*	+ Addition
*	- deletion
*	* modification
*
*					Copyright (c) Border Express Pty Ltd 2011
********************************************************************************
* Version	Date	 Case	 By  Notes
* =======	====	======	 ==	 =====
* 1.0.0		14/7/14	SR:75719 VF	 + Initial creation
* 
*
*					Copyright (c) Border Express Pty Ltd 2011
*******************************************************************************/
BEGIN
	DECLARE @intCurrentLoop INTEGER
	DECLARE @intLoopsReqd INTEGER
	DECLARE @blnFound BIT

	-- look for them
	SET @blnFound = 0
	SET @intCurrentLoop = 1
	SET @intLoopsReqd= LEN(@vchLookFor)
	WHILE @intCurrentLoop <= @intLoopsReqd AND @blnFound = 0 BEGIN
		IF CHARINDEX(SUBSTRING(@vchLookFor, @intCurrentLoop, 1), @vchString) > 0 SET @blnFound = 1

		SET @intCurrentLoop = @intCurrentLoop + 1
	END

	RETURN @blnFound
END 



GO
/****** Object:  UserDefinedFunction [dbo].[fncGenerateSeqBarcodes]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGenerateSeqBarcodes]
	(    @intBatchId			INTEGER
		,@vchConNoteNum			VARCHAR(50)
		,@intSeqStart			INTEGER
		,@intNumReqd			INTEGER
		,@intLabelLen			INTEGER  )
RETURNS VARCHAR(MAX)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Generate Sequencial barcodes for a con note
*	
* Returns 
* =======
*	DECIMAL
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		03/05/2012	VF					+ Initial creation (for use in template)
*
*******************************************************************************/
BEGIN
/*
DECLARE @intBatchId			INTEGER
DECLARE @intConnoteSeq		INTEGER
DECLARE @intLen				INTEGER  

SET @intBatchId			= 467138
SET @intConnoteSeq		= 1
SET @intLen				= 15
*/

	DECLARE @intRow					INT
	DECLARE @vchDelim		VARCHAR(5)
	DECLARE @vchBarcodes	VARCHAR(MAX)

	SET @vchBarcodes = ''

	IF @intNumReqd > 0 BEGIN
		SELECT @vchDelim = fldBarcodeDelimiter
		FROM synTS2000_dbo_tblImportBatchHeader hdr
			INNER JOIN synTS2000_dbo_tblImportTemplates tmp ON hdr.fldTemplateId = tmp.fldID
		WHERE BatchID = @intBatchId
		SET @vchDelim = ';'

		IF ISNULL(@vchDelim,'') = '' BEGIN
			SET @vchBarcodes = 'Template requires a barcode delimiter'
		END ELSE BEGIN 
			SET @intRow = @intSeqStart
			WHILE @intRow <= @intNumReqd BEGIN
				SET @vchBarcodes = @vchBarcodes + @vchConNoteNum + RIGHT(REPLICATE('0', @intLabelLen) + CONVERT(VARCHAR,@intRow),@intLabelLen - LEN(@vchConNoteNum)) + @vchDelim
				SET @intRow = @intRow + 1
			END
		END
	END

	RETURN @vchBarcodes
END




GO
/****** Object:  UserDefinedFunction [dbo].[fncGetBatchResultsHTML]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetBatchResultsHTML]
	(    
		 @intBatchID			INTEGER
		,@bitInclFailed			BIT 
		,@bitInclPassed			BIT 
	)
RETURNS VARCHAR(MAX)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Builds a list of consignment load items 
*	
* Parameters
* ==========
*	@intBatchID - ID for con note 
*	@bitInclFailed - include failed items
*	@bitInclPassed - include passed items
* 
* Returns 
* =======
*	HTML table with load item details
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		04-10-13	VF		SC:3525		+ Initial creation
*
*******************************************************************************/
 
/*Testing
PRINT dbo.fncGetBatchResultsHTML(8169770,1,1)
*/

BEGIN
	DECLARE  @vchHTML				VARCHAR(MAX)
	
	SET @vchHTML = ''
	SELECT @vchHTML = @vchHTML +
		'<tr valign="top">'
		+ '	<td>' + ISNULL(x.fldConNoteNum, '')+ '</td>'
		+ '	<td>' + ISNULL(x.fldConNoteDate, '')+ '</td>'
		+ '	<td>' + ISNULL(x.fldSenderName, '')+ '</td>'
		+ '	<td>' + ISNULL(x.fldSenderSuburb, '')+ '</td>'
		+ '	<td>' + ISNULL(x.fldRecvrName, '')+ '</td>'
		+ '	<td>' + ISNULL(x.fldReceiverSuburb, '')+ '</td>'
		+ '	<td>' + ISNULL(x.fldStatus, '')+ '</td>'
		+ '	<td>' + ISNULL(x.fldRejectReasons, '')+ '</td>'
		+ '</tr>' + char(13) + char(10)
	FROM ( SELECT inv.[invoice number]	fldConNoteNum
			,inv.[invoice date]			fldConNoteDate
			,inv.[CONSOR NAME]			fldSenderName
			,case when dbo.fncIsInteger(inv.[CONSIGNOR SUBURB])  = 1
				then (SELECT sndSub.Suburb + ' ' + sndSub.State + ' ' + sndSub.Postcode 
					  FROM synTS2000_dbo_Suburbs sndSub 
					  WHERE inv.[CONSIGNOR SUBURB] = sndSub.ID) 
				else inv.[CONSIGNOR SUBURB] + ' ' + inv.[CONSIGNOR STATE] + ' ' + inv.[CONSIGNOR POSTCODE]
			  end fldSenderSuburb
			,inv.[CONSEE NAME]			fldRecvrName
			,case when dbo.fncIsInteger(inv.[RECEIVER SUBURB])  = 1
				then (SELECT recSub.Suburb + ' ' + recSub.State + ' ' + recSub.Postcode 
					  FROM synTS2000_dbo_Suburbs recSub 
					  WHERE inv.[RECEIVER SUBURB] = recSub.ID) 
				else inv.[RECEIVER SUBURB] + ' ' + inv.[RECEIVER STATE] + ' ' + inv.[RECEIVER POSTCODE]
			  end fldReceiverSuburb
			,(SELECT fldReasons FROM dbo.[fncRejectReasonsCustFriendlyHTML](inv.[invoice id])) fldRejectReasons	
			,case 
				when Validated = 1 then 'Passed'
				when Rejected = 1 then 'Rejected'
				when Converted = 1 then 'Parsed'
				else 'Not processed'
			  end fldStatus
		FROM ImportTransferInterface inv WITH (NOLOCK)
		WHERE inv.BatchId = @intBatchID
		  AND ((Validated = 1 AND @bitInclPassed = 1)
			OR (ISNULL(Validated,0) = 0 AND @bitInclFailed = 1)) 
	)x

	IF @vchHTML = '' BEGIN
		SET @vchHTML = '<p>No consignments found<p>'
	END ELSE BEGIN
		SELECT @vchHTML = '
			<table class="BatchResultList">
				<tr>
					<td colspan="8" class="Heading1 rowHeader">Consignments</td>
				</tr>
				<tr valign="top">
					<td width="100" class="Heading1 rowHeader">Number</td>
					<td width="100" class="Heading1 rowHeader">Date</td>
					<td width="100" class="Heading1 rowHeader">Sender</td>
					<td width="100" class="Heading1 rowHeader">Sender&nbsp;Suburb</td>
					<td width="100" class="Heading1 rowHeader">Receiver</td>
					<td width="100" class="Heading1 rowHeader">Receiver&nbsp;Suburb</td>
					<td width="100" class="Heading1 rowHeader">Status</td>
					<td width="50%" class="Heading1 rowHeader">Messages</td>
				</tr>'
			+ @vchHTML 
			+ '</table>'
	END

	RETURN @vchHTML
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetConfiguration]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetConfiguration]
(
	 @vchConfigItem AS VARCHAR(50)
	,@vchDefault AS VARCHAR(MAX) = ''
)
RETURNS NVARCHAR(MAX)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2008
*
* Date Created:	22-February-2008
* Created By:	Wade Altmeier
* Purpose:		Returns the seting from the Config table for the given config item.
*
* Parameters
* ==========
* @ConfigItem - The config item to retrieve the setting for.
* @Default    - The default value to use if no setting is found.
*
* Returns
* =======
* @Setting - The setting for the given config item.
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2008
********************************************************************************
* Version	Date		By		Case	Notes
* =======	====		==		====	=====
* 1.0.0		22-02-08	WA		5492	+ Initial Creation
* 1.0.1		17-06-11	VF		SC:2714	Modified for Auto Import
*
* Copyright (c) Border Express Pty Ltd 2008
*******************************************************************************/

BEGIN
--	--Declare variables for testing
--	DECLARE @ConfigItem AS NVARCHAR(50),
--	DECLARE @Default AS NVARCHAR(MAX)
--	SET @ConfigItem = 'HorizonMode'
--	SET @Default = '0'
	
	--Declare Variables
	DECLARE @vchSetting AS VARCHAR(MAX)
	
	--Set the default value
	SET @vchSetting = @vchDefault
	
	--Get the config item from the config table
	SELECT	@vchSetting = fldSetting
	FROM	dbo.tblConfiguration
	WHERE	fldOptionName = @vchConfigItem
	
	--Return the configuration setting
	RETURN @vchSetting
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetDepotFromState]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetDepotFromState]
	(    @vchState	VARCHAR(MAX)   )
RETURNS VARCHAR(50)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Take a guess at the Sending Depot, based on State
*				(I say guess 'cos some assumptions are made when more than one depot per state)
*	
* Parameters
* ==========
*	@vchState	- Value of the State
* 
* Returns 
* =======
*	VARCHAR(10)- Returns the date in format required by auto import (YYYY-MM-DD)
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		14/06/2012	VF					+ Initial creation
* 1.0.1		05-02-2012	VF					* Added fully expanded states (not just abbrev) to make it more useful
*
*******************************************************************************/
BEGIN
	DECLARE @vchDepot VARCHAR(50)
	

	SELECT @vchDepot = CASE LTRIM(RTRIM(@vchState))
	  WHEN 'ACT' THEN 'Canberra'
	  WHEN 'Australian Capital Territory' THEN 'Canberra'
	  WHEN 'NSW' THEN 'Sydney'
	  WHEN 'New South Wales' THEN 'Sydney'
	  WHEN 'NT' THEN 'Darwin'
	  WHEN 'Northern Territory' THEN 'Darwin'
	  WHEN 'QLD' THEN 'Brisbane'
	  WHEN 'Queensland' THEN 'Brisbane'
	  WHEN 'SA' THEN 'Adelaide'
	  WHEN 'South Australia' THEN 'Adelaide'
	  WHEN 'Sth Australia' THEN 'Adelaide'
	  WHEN 'TAS' THEN 'Devonport'
	  WHEN 'Tasmania' THEN 'Devonport'
	  WHEN 'VIC' THEN 'Clayton'
	  WHEN 'Victoria' THEN 'Clayton'
	  WHEN 'WA' THEN 'Perth'
	  WHEN 'Western Australia' THEN 'Perth'
	  ELSE NULL
	END
	
	RETURN @vchDepot
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetErrMsg]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetErrMsg]
		 (   @vchCode		VARCHAR(50)
			,@vchParm0		VARCHAR(200)
			,@vchParm1		VARCHAR(200)
			,@vchParm2		VARCHAR(200))
RETURNS VARCHAR(1000)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2011
*
* Purpose     :	Function for retrieving error messages 
*				Also performs a subsitute where required (eg if message contains {0} then thats the first parm)
*	
* Parameters
* ==========
*	vchCode - code of the error message
*	vchParm0 - 1st Parameter (optional)
*	vchParm1 - 2nd Parameter (optional)
*	vchParm2 - 3rd Parameter (optional)
* 
* Returns 
* =======
*	Error Message
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		dd-mm-yy	VF		SC:4168		+ Initial creation
*
*******************************************************************************/
 
/*Testing
PRINT dbo.fncGetErrMsg('DT_INVALID', '12/31/13', null, null)
*/

BEGIN	
	--Declare variables
	DECLARE	@vchMsg VARCHAR(1000)	
	SET @vchMsg = NULL
	
	SELECT @vchMsg = REPLACE(REPLACE(REPLACE(fldMessage, '{0}', ISNULL(@vchParm0,'')), '{1}', ISNULL(@vchParm1,'')), '{2}', ISNULL(@vchParm2,''))
	FROM tblErrorMsg
	WHERE pkCode = @vchCode
	
	RETURN ISNULL(@vchMsg, '** Unable to locate error message **')
END 



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetFieldLevel]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetFieldLevel]
	(    @vchFieldType	VARCHAR(20)   )
RETURNS INTEGER
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Created so Field Level IDs can be more easily altered.
*				If there is a change again then just this function (or the view it 
*				depends on) needs to be altered, not all the code that uses the Field Level Ids.
*	
* Parameters
* ==========
*	@vchFieldType - Type of fields they are interested in (eg 'Con Note')
* 
* Returns 
* =======
*	INTEGER - the fieldValue for the component they've asked for (eg Con Note = 2)
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		dd-mm-yy	VF		SC:939		+ Initial creation
*
*******************************************************************************/
 
/*Testing
PRINT dbo.fncGetFieldLevel('Con Note')
*/
BEGIN

	--Declare variables
	DECLARE @intReturn		INTEGER

	-- Intialise variables
	SET @intReturn = -1

	/****************************************************************************/

	--Only continue if no errors have been encountered
	SELECT @intReturn = fldFieldLevel 
	FROM vwImportFieldsXREFLevel 
	WHERE fldLevelDesc = @vchFieldType
	
	RETURN @intReturn

END



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetFields]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetFields]
(
	@String varchar(MAX),
	@Delimiter char(1)
)
RETURNS @tblFields TABLE
(
	fldFieldPos int IDENTITY(1, 1) NOT NULL,
	fldField varchar(MAX) NOT NULL
)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2007
*
* Date Created: 24-May-2007
* Created by: Wade Altmeier
* Purpose: Splits up a passed delimited string into a table of values, which
*          is then returned to the calling code.
*
* Parameters
* ==========
* @String    - A delimited string of values.
* @Delimiter - The character being used as the delimiter.
*
* Returns
* =======
* @tblFields - A table-value containing the values from the string as records.
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
* Version   Date       By   Notes
* =======   ====       ==   =====
* 1.0.0     24-05-07   WA   + Initial Creation
*
* Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/

BEGIN
	--Declare our variables
	DECLARE @Index int
	DECLARE @SubString varchar(MAX)
	
	--Initialise the index
	SET @Index = 1 
	
	--Keep looping until no more Delimiters are found
	WHILE @Index > 0
	BEGIN
		--Find the first instance of the Delimiter
		SET @Index = ISNULL(CHARINDEX(@Delimiter, @String), 0)
		
		--Check if the Delimiter was found
		IF @Index  > 0
			--It was, so grab the text up to this Delimiter
			SET @SubString = LEFT(@String, @Index - 1)
		ELSE
			--It wasn't, so grab the entire string
			SET @SubString = @String
		
		--Insert the field into the table
		INSERT @tblFields(fldField) VALUES(ISNULL(@SubString,''))
		
		--Delete the field and delimiter from the string
		SET @String = RIGHT(@String, LEN(@String) - @Index)
		
		--If there is no more String, then exit the loop
		IF LEN(@String) = 0
			SET @Index = 0
	END
	
	--Return the resulting table
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetShellAccount]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetShellAccount]
	(    @intBatchID INTEGER, 
		@intFileRow INTEGER)
RETURNS VARCHAR(50)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Determine the Shell account code
*	
* Parameters
* ==========
*	@vchState	- Value of the State
* 
* Returns 
* =======
*	VARCHAR(10)- Returns the date in format required by auto import (YYYY-MM-DD)
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		14/06/2012	VF					+ Initial creation
* 1.0.1		05-02-2012	VF					* Added fully expanded states (not just abbrev) to make it more useful
*
*******************************************************************************/
BEGIN
	DECLARE @vchSenderState VARCHAR(50)
	DECLARE @vchSenderSuburb VARCHAR(200)
	DECLARE @vchRcvrState VARCHAR(50)
	DECLARE @vchAccCode VARCHAR(50)
	
	-- get required values
	SELECT @vchSenderState = ISNULL(max(case when fldFieldNameTS = 'SenderState' then fldValue else '' end ),'')
		,@vchSenderSuburb = ISNULL(max(case when fldFieldNameTS = 'SenderSuburb' then fldValue else '' end ),'')
		,@vchRcvrState = ISNULL(max(case when fldFieldNameTS = 'ReceiverState' then fldValue else '' end ),'')
	FROM dbo.ImportParsed
	WHERE fkBatchID = @intBatchID
	  AND fldFileRow = @intFileRow


	SELECT @vchAccCode
		= case @vchSenderState 
			when '' then '' 
			when 'VIC' then
				--then 'EX-VIC'
				case @vchSenderSuburb
					when 'Newport' then 
						case @vchRcvrState
							when 'SA' then 'NewPort-SA'
							when 'NSW' then 'NewPort-NSW'
							when 'VIC' then 'NewPort-VIC'
							when 'WA' then 'NewPort-WA'
							when 'QLD' then 'NewPort-QLD'
							else 'EX-VIC'
						end
					else 'EX-VIC' 
				end 
			when 'NSW' then
				--then 'EX-NSW'
				case @vchSenderSuburb
					when 'Parramatta' then 'EX-NSW'
					when 'Cameron Park' then  'EX-CAMPRK'
					else 'EX-NSW' 
				end 
		    else 'EX-' + @vchSenderState
		  end
	
	RETURN @vchAccCode
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetToday]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetToday]()
RETURNS DATETIME
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Get today's date
*	
* Returns 
* =======
*	DATETIME - Today's date (without the time component)
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		14/06/2012	VF					+ Initial creation
*
*******************************************************************************/
BEGIN
	RETURN dbo.synTS2000_dbo_fncGetDateFromDateTime(getdate(),2)
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncGetValidConNoteDate]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncGetValidConNoteDate]
	(@vchDateString		VARCHAR(30)
	 ,@vchFormat		VARCHAR(30)
	 ,@dtDefault		DATETIME)
RETURNS VARCHAR(10)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Will convert the given string into a date (based on supplied format)
*				and check if the date is in the past or not
*	
* Returns 
* =======
*	DATETIME - Today's date (without the time component)
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		14/06/2012	VF					+ Initial creation
*
*******************************************************************************/
BEGIN
	DECLARE @dtDate DATETIME
	SELECT   @dtDate = dbo.fncReformatDateStr(@vchDateString, @vchFormat)

	IF @dtDate > dbo.fncGetToday() BEGIN
		SET @dtDate = @dtDate
	END ELSE BEGIN
		SET @dtDate = @dtDefault
	END
	
	RETURN REPLACE(CONVERT(VARCHAR(10),@dtDate,102), '.', '-')			-- in the past or null
END


GO
/****** Object:  UserDefinedFunction [dbo].[fncIsInteger]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncIsInteger]
(
	@vchString AS VARCHAR(1000)
)
RETURNS BIT
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2009
*
* Date Created:	04-June-2009
* Created by:	Wade Altmeier
* Purpose:		Returns true if the given string can be evaluated as an integer,
*				false if not.
*
* Parameters
* ==========
*	@vchString - The string to evaluate.
*
* Returns
* =======
*	BIT - true if integer, false if not
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
* Copyright (c) Border Express Pty Ltd 2009
********************************************************************************
* Version	Date		By	Case	Notes
* =======	====		==	====	=====
* 1.0.0		05-06-09	WA	xxxx	+ Initial Creation
*
* Copyright (c) Border Express Pty Ltd 2009
*******************************************************************************/

/*
--Testing
DECLARE @vchString AS VARCHAR(1000)
SET @vchString = '.'

SELECT dbo.fncIsInteger(@vchString)
*/

BEGIN
	--Declare variables
	DECLARE @bitReturn AS BIT
	
	--Assume success
	SET @bitReturn = 1
	
	--Evaluate the given string
	IF @vchString LIKE '%[^0-9]%'
	BEGIN
		--Not a valid integer
		SET @bitReturn = 0
	END
	
	--Return the result
	RETURN @bitReturn
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncIsSupplied]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncIsSupplied]
(
	@vchValue AS VARCHAR(1000)
)
RETURNS BIT
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2009
*
* Purpose:		Returns 1 if value is supplied
*
* Parameters
* ==========
*	@vchValue - The string to evaluate.
*
* Returns
* =======
*	BIT - 1 if true, 0 if false 
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
* Copyright (c) Border Express Pty Ltd 2009
********************************************************************************
* Version	Date		By	Case	Notes
* =======	====		==	====	=====
* 1.0.0		26/03/13	VF	xxxx	+ Initial Creation
*
* Copyright (c) Border Express Pty Ltd 2009
*******************************************************************************/

/*
--Testing
DECLARE @vchValue AS VARCHAR(1000)
SET @vchValue = '.'

SELECT dbo.fncIsInteger(@vchValue)
*/

BEGIN
	--Declare variables
	DECLARE @bitReturn AS BIT
	
	SET @vchValue = LTRIM(RTRIM(ISNULL(@vchValue,'')))
	
	--Assume false
	IF @vchValue = '' SET @bitReturn = 0 ELSE SET @bitReturn = 1

	--Return the result
	RETURN @bitReturn
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncIsTrue]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncIsTrue]
(
	@vchValue AS VARCHAR(1000)
)
RETURNS BIT
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2009
*
* Purpose:		Returns 1 if any off the following are supplied 
*					- Yes, Y, 1, True	
*
* Parameters
* ==========
*	@vchValue - The string to evaluate.
*
* Returns
* =======
*	BIT - 1 if true, 0 if false 
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
* Copyright (c) Border Express Pty Ltd 2009
********************************************************************************
* Version	Date		By	Case	Notes
* =======	====		==	====	=====
* 1.0.0		26/03/13	VF	xxxx	+ Initial Creation
*
* Copyright (c) Border Express Pty Ltd 2009
*******************************************************************************/

/*
--Testing
DECLARE @vchValue AS VARCHAR(1000)
SET @vchValue = '.'

SELECT dbo.fncIsInteger(@vchValue)
*/

BEGIN
	--Declare variables
	DECLARE @bitReturn AS BIT
	
	SET @vchValue = UPPER(LTRIM(RTRIM(@vchValue)))
	
	--Assume false
	SET @bitReturn = 0
	
	--Evaluate the given string
	IF @vchValue = '1'
		OR @vchValue = 'Y'
		OR @vchValue = 'YES' 
		OR @vchValue = 'TRUE'
	BEGIN
		SET @bitReturn = 1
	END
	
	--Return the result
	RETURN @bitReturn
END



GO
/****** Object:  UserDefinedFunction [dbo].[fnCleanInvoiceNumber]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnCleanInvoiceNumber]
	(
		 @InvNo as NVARCHAR(50)
	)
	RETURNS NVARCHAR(50)
	AS

/*******************************************************************************
*			Copyright (c) Border Express Pty Ltd 2008
*
* Date Created:	24-Jul-2008
* Created by:	Nathan Younger
* Document:		
* Purpose:		To remove invalid characters from the Invoice Number (Con Note Number)
*				based on the configurtation item "ConNoteFilter" in the 
*				Transport Suite database.
*	
* Parameters 
* ==========
* @InvNo	- Invoice Number to be cleaned.
*
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
*			Copyright (c) Border Express Pty Ltd 2008
********************************************************************************
* Version	Date	 By	Case	Notes
* =======	====	 ==	====	=====
* 1.0.0		24-07-08 NY	XXXX	+ Initial creation
*
*
*			Copyright (c) Border Express Pty Ltd 2008
*******************************************************************************/

Begin
	-- Remove after testing
--	Declare @InvNo nvarchar(100)
--	Set		@InvNo = './123--'

	-- Declare variables
	Declare @InvChar nvarchar(50)
	Declare @InvCharLen int
	Declare @CharCount int

	Select @InvChar = CONVERT(nvarchar(100),Setting),
		@InvCharLen = ISNULL(LEN(CONVERT(nvarchar(100),Setting)),0) 
	From synTS2000_dbo_Configuration 
	Where OptionName = 'ConNoteFilter'

	Set @CharCount = 0
	While @CharCount < @InvCharLen 
	Begin
		Set @CharCount = @CharCount + 1
		Set @InvNo = Replace(@InvNo, SUBSTRING(@InvChar ,@CharCount ,1), '')
	End

	Return @InvNo

End




GO
/****** Object:  UserDefinedFunction [dbo].[fncPalletType]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fncPalletType]
(
	@PalletCounts nvarchar(MAX)
)
RETURNS @tblPalletType TABLE
(
	fldPickupChep	bit,
	fldPickupLoscam	bit,
	fldDeliveryChep	bit,
	fldDeliveryLoscam bit,
	fldPalletsNA	bit,
	fldPalletType	int
)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2009
*
* Date Created: 12-Oct-2009
* Created by:	Nathan Younger
* Purpose:		Takes a string of comma seperated pallet counts and determines
*				the pallet type and NA flag.
*
* Parameters
* ==========
* @PalletCounts    - A delimited string of values.
*
* Field Order to be used in the input paramter
*	 #   Field						Type
*	===  =========================  ============
*	 1	 SenderDispatched			Pickup
*	 2	 SenderReceived				Pickup
*	 3	 TFRChep					Pickup/Delivery
*	 4	 ChepOut					Pickup
*	 5	 SenderDispatchedLoscam		Pickup
*	 6	 SenderReceivedLoscam		Pickup
*	 7	 TFRLoscam					Pickup/Delivery
*	 8	 LoscamOut					Pickup
*	 9	 ReceiverDispatched			Delivery
*	10	 ReceiverReceived			Delivery
*	11	 ChepOut					Delivery
*	12	 ReceiverDispatchedLoscam	Delivery
*	13	 ReceiverReceivedLoscam		Delivery
*	14	 Loscam						Delivery
*
* Returns
* =======
* @tblFields - A table-value containing the values from the string as records.
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2009
********************************************************************************
* Version   Date       Case   By   Notes
* =======   ====       =====  ==   =====
* 1.0.0     12-10-09   SC:905 NY   + Initial Creation
*
* Copyright (c) Border Express Pty Ltd 2009
*******************************************************************************/
BEGIN
	DECLARE	@SenderReceived			int
	DECLARE	@SenderDispatched		int
	DECLARE	@SenderReceivedLoscam	int
	DECLARE	@SenderDispatchedLoscam int
	DECLARE @TFRChep				int
	DECLARE @ChepOut				int
	DECLARE @TFRLoscam				int
	DECLARE @LoscamOut				int
	DECLARE	@ReceiverReceived		int
	DECLARE	@ReceiverDispatched		int
	DECLARE	@ReceiverReceivedLoscam	int
	DECLARE	@ReceiverDispatchedLoscam int
	DECLARE @Chep					int
	DECLARE @Loscam					int
	DECLARE	@PalletsNA				bit
	DECLARE @PickupChep				bit
	DECLARE @PickupLoscam			bit
	DECLARE @DeliveryChep			bit
	DECLARE @DeliveryLoscam			bit
	DECLARE @PalletType				int

	DECLARE @Elements				int
	SET		@Elements = 14

	DECLARE @Pallets				TABLE (id int primary key, fldPalletCount int)

	-- Remove after testing
--	DECLARE @PalletCounts			nvarchar(max)
--	SET		@PalletCounts			= '0,0,0,0,0,0,0,0,0,0,0,0,0,0'

	;

	-- Break out pallet counts into the table variable
	WITH ctePallets as
	(
	SELECT	1 as ID,
			CAST(CHARINDEX(',',@PalletCounts,1) as INT) as CharacterNum,
			SUBSTRING(@PalletCounts,1,CHARINDEX(',',@PalletCounts,1)-1) as PalletCount
	UNION ALL
	SELECT	ID + 1 as ID,
			CAST((CHARINDEX(',',@PalletCounts,CharacterNum+1)) AS INT) as CharacterNum,
			SUBSTRING(@PalletCounts,CharacterNum + 1,(CASE WHEN ID < 13 THEN CHARINDEX(',',@PalletCounts,CharacterNum+1)-1 ELSE LEN(@PalletCounts) END)-CharacterNum) as PalletCount
	FROM	ctePallets
	WHERE	ID < @Elements
	)
	INSERT INTO @Pallets(id,fldPalletCount)
	SELECT	id,
			(CASE WHEN ISNUMERIC(PalletCount)=1 THEN CAST(PalletCount as INT) ELSE CAST(0 as INT) END)
	FROM	ctePallets

	-- Set the pallet flags
	SET @PickupChep		= CASE WHEN (SELECT SUM(fldPalletCount) FROM @Pallets WHERE ID in (1,2,3,4)) > 0 THEN 1 ELSE 0 END
	SET @PickupLoscam	= CASE WHEN (SELECT SUM(fldPalletCount) FROM @Pallets WHERE ID in (5,6,7,8)) > 0 THEN 1 ELSE 0 END
	SET @DeliveryChep	= CASE WHEN (SELECT SUM(fldPalletCount) FROM @Pallets WHERE ID in (3,9,10,11)) > 0 THEN 1 ELSE 0 END
	SET @DeliveryLoscam = CASE WHEN (SELECT SUM(fldPalletCount) FROM @Pallets WHERE ID in (7,12,13,14)) > 0 THEN 1 ELSE 0 END

	SET @PalletType = 0

	-- Determine the pallet type
	SET @PalletType = CASE WHEN @PickupChep		= 1 OR @DeliveryChep	= 1 THEN 1				 ELSE 0				END
	SET @PalletType = CASE WHEN @PickupLoscam	= 1 OR @DeliveryLoscam  = 1 THEN @PalletType + 2 ELSE @PalletType	END
	SET @PalletType = CASE WHEN @PalletType		= 0							THEN 4				 ELSE @PalletType	END

	-- Determine the NA flag
	SET @PalletsNA	= CASE WHEN @PalletType = 4 THEN 1 ELSE 0 END

	-- Store results
	INSERT INTO @tblPalletType
		(fldPickupChep,
		fldPickupLoscam,
		fldDeliveryChep,
		fldDeliveryLoscam,
		fldPalletsNA,
		fldPalletType)
	VALUES
		(@PickupChep,
		@PickupLoscam,
		@DeliveryChep,
		@DeliveryLoscam,
		@PalletsNA,
		@PalletType)

	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncReformatDateStr]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncReformatDateStr]
	(    @vchValue	VARCHAR(30)
		,@vchFormat	VARCHAR(30)   )
RETURNS VARCHAR(10)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Format dates without so much mucking about - you just tell it the format
*				you are using and this function will figure out how to convert it
*	
* Parameters
* ==========
*	@vchValue	- Type of fields they are interested in (eg 'Con Note')
*	@vchFormat	- Format. Accepted values
*					DD - Day
					MM - 2 digit month (eg March = 03)
					Mon - three character Month (eg March = Mar or MAR). Not case sensitive
					YY - 2 digit year (eg 2012 = 12)
					YYYY - 4 digit year (eg 2012 = 2012)

* 
* Returns 
* =======
*	VARCHAR(10)- Returns the date in format required by auto import (YYYY-MM-DD)
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		27/03/2012	VF					+ Initial creation
*
*******************************************************************************/
BEGIN
/*	TESTING
	SELECT dbo.fncReformatDateStr('01-JAN-2012','DD-MON-YYYY')
	SELECT dbo.fncReformatDateStr(null,'DD-MON-YYYY')
	SELECT dbo.fncReformatDateStr('','DD-MON-YYYY')
*/

	-- return null if no value supplied
	IF LTRIM(ISNULL(@vchValue, '')) = '' RETURN NULL
	
	RETURN REPLACE(CONVERT(VARCHAR(10),dbo.fncConvStrToDateTime(@vchValue, @vchFormat) , 102), '.', '-')
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncRejectReasons]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncRejectReasons] (@intConNoteId	INTEGER)
RETURNS @tbl TABLE (fldReasons VARCHAR(MAX) NULL)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2007
*
* Purpose: Combine all reject reasons into one summary comment (removing duplicates)
*			NOTE: Table function used rather than scalar becasue apparently SQL caches 
*				  execution plan so more efficient			
*
* Parameters
* ==========
* @intConNoteId		- ID for con note that was imported
*
* Returns
* =======
* @tbl - A table-value containing the reject reason 
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
 Version   Date       By   Notes
 =======   ====       ==   =====
 1.0.0		31/07/13	VF	+ SC:3597: Initial version

 Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
/*
--TESTING
SELECT (SELECT fldReasons FROM dbo.fncRejectReasons(iti.[invoice id])) fldRejectReasons
,iti.*
FROM ImportTransferInterface iti
*/
BEGIN
	DECLARE @vchMsg VARCHAR(MAX)
	SET @vchMsg = ''
	SELECT @vchMsg = @vchMsg + ' ' + fldProblem
	FROM (SELECT DISTINCT fldProblem
		  FROM ImportTransferInterfaceReject
		  WHERE fkConNoteId = @intConNoteId) x

	INSERT INTO @tbl SELECT SUBSTRING(@vchMsg, 2, LEN(@vchMsg)) 
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncRejectReasonsCustFriendlyHTML]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncRejectReasonsCustFriendlyHTML] (@intConNoteId	INTEGER)
RETURNS @tbl TABLE (fldReasons VARCHAR(MAX) NULL)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2007
*
* Purpose: Combine all reject reasons into one summary comment (removing duplicates)
*			Remove codes and replace with Customer friendly msg
*				
*			NOTE: Table function used rather than scalar becasue apparently SQL caches 
*				  execution plan so more efficient			
*
* Parameters
* ==========
* @intConNoteId		- ID for con note that was imported
*
* Returns
* =======
* @tbl - A table-value containing the reject reason 
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
 Version   Date       By   Notes
 =======   ====       ==   =====
 1.0.0		31/07/13	VF	+ SC:3597: Initial version

 Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
/*
--TESTING
SELECT (SELECT fldReasons FROM dbo.[fncRejectReasonsCustFriendlyHTML](iti.[invoice id])) fldRejectReasons
,iti.*
FROM ImportTransferInterface iti
*/
BEGIN
	DECLARE @vchMsg VARCHAR(MAX)
	SET @vchMsg = ''
	SELECT @vchMsg = @vchMsg + ' ' 
		+ case when fldDescription is not null then fldDescription + ': ' else '' end
		+ LTRIM(replace(fldProblem, 'Stop Credit', '')) + '<br/>'  -- don't ever email anything about Stop Credit !
	FROM (SELECT DISTINCT replace(replace(fldProblem, '[' + ISNULL(fld.fldAltRef,'') + ']', ''), '[' + ISNULL(fld.FieldId,'') + ']', '') fldProblem, fldDescription
		  FROM ImportTransferInterfaceReject r
			LEFT JOIN ImportFieldsXREF fld ON r.fkFieldId = fld.id
			LEFT JOIN synTS2000_dbo_tblFormLogControl ctrl ON fld.fkFormLogControl = ctrl.idxFormLogControl
		  WHERE fkConNoteId = @intConNoteId) x

	INSERT INTO @tbl SELECT SUBSTRING(@vchMsg, 2, LEN(@vchMsg)) 
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncRejectStatsReasons]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fncRejectStatsReasons] (@intConNoteId	INTEGER)
RETURNS @tbl TABLE (fldReasons VARCHAR(MAX) NULL)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2007
*
* Purpose: Combine all reject reasons into one summary comment (removing duplicates)
*			NOTE: Table function used rather than scalar becasue apparently SQL caches 
*				  execution plan so more efficient			
*
* Parameters
* ==========
* @intConNoteId		- ID for con note that was imported
*
* Returns
* =======
* @tbl - A table-value containing the reject reason 
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
 Version   Date       By   Notes
 =======   ====       ==   =====
 1.0.0		31/07/13	VF	+ SC:3597: Initial version

 Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
/*
--TESTING
SELECT (SELECT fldReasons FROM dbo.fncRejectReasons(iti.[invoice id])) fldRejectReasons
,iti.*
FROM ImportTransferInterface iti
*/
BEGIN
	DECLARE @vchMsg VARCHAR(MAX)
	SET @vchMsg = ''
	SELECT @vchMsg = @vchMsg + ' ' + fldProblem
	FROM (SELECT DISTINCT fldProblem
		  FROM tblRejectStats
		  WHERE fkConNoteId = @intConNoteId) x

	INSERT INTO @tbl SELECT SUBSTRING(@vchMsg, 2, LEN(@vchMsg)) 
	RETURN
END




GO
/****** Object:  UserDefinedFunction [dbo].[fncRoundUp]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncRoundUp]
	(    @vchValue		VARCHAR(MAX)
		,@intPrecision	INTEGER  )
RETURNS FLOAT
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Round up
*	
* Returns 
* =======
*	DECIMAL
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		03/05/2012	VF					+ Initial creation (for use in template)
*
*******************************************************************************/
BEGIN
	RETURN dbo.synTS2000_dbo_fncRoundUp(convert(float, @vchValue), @intPrecision)
END



GO
/****** Object:  UserDefinedFunction [dbo].[fncTrim]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fncTrim]
	(    @vchValue		VARCHAR(MAX) )
RETURNS VARCHAR(MAX)
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Trim a value (left and right). Creating a function just makes template easier to read
*	
* Returns 
* =======
*	DECIMAL
*
* Return Values
* =============
*  -1 = Failure	- ...
*	0 = Success	- Procedure was successful
*	x = Error	- System generated error
*
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0		17/12/2012	VF					+ Initial creation (for use in template)
*
*******************************************************************************/
BEGIN
	RETURN LTRIM(RTRIM(@vchValue))
END



GO
/****** Object:  UserDefinedFunction [IndexMaint].[CamelCase]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [IndexMaint].[CamelCase](@Str varchar(8000))
RETURNS varchar(8000) As
Begin
	Declare @Result varchar(2000)
	SET @Str = LOWER(@Str) + ' '
	SET @Result = ''

	While 1=1
	Begin
	        IF PATINDEX('% %',@Str) = 0 BREAK
		SET @Result = @Result+UPPER(Left(@Str,1))+SubString(@Str,2,CharIndex(' ',@Str)-1)
		SET @Str = SubString(@Str,CharIndex(' ',@Str)+1,Len(@Str))
	End
	SET @Result = Left(@Result,Len(@Result))
	Return @Result
End



GO
/****** Object:  Table [dbo].[ImportBatchHeader]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportBatchHeader](
	[BatchID] [int] IDENTITY(1,1) NOT NULL,
	[fldDepot] [int] NULL,
	[fldCustCode] [int] NULL,
	[fldDate] [datetime] NULL,
	[fldImporter] [nvarchar](100) NULL,
	[fldConsImported] [int] NULL,
	[fldConsRejected] [int] NULL,
	[fldConsAddedFromRejects] [int] NULL,
	[fldConsDeletedFromReject] [int] NULL,
	[fldTemplate] [nvarchar](100) NULL,
	[fldImportType] [nvarchar](20) NULL,
	[fldImportFileName] [nvarchar](510) NULL,
	[fldCustname] [nvarchar](1000) NULL,
	[fldOverrideChargeUnit] [nvarchar](100) NULL,
	[fldOverrideDepot] [nvarchar](100) NULL,
	[fldPickupFlag] [smallint] NULL,
	[fldNoCrossRef] [smallint] NULL,
	[fldManifestingOnly] [smallint] NULL,
	[fld8LineItemAscii] [smallint] NULL,
	[fldSendToPDA] [smallint] NULL,
	[fldConsPrinted] [smallint] NULL,
	[fldLastAction] [nvarchar](100) NULL,
	[fldTemplateID] [int] NULL,
	[fldImportCompleted] [bit] NULL,
	[fldImportAborted] [bit] NULL,
	[fldComment] [nvarchar](500) NULL,
 CONSTRAINT [PK_ImportBatchHeader] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportFieldsXREF]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportFieldsXREF](
	[FieldNameTS] [nvarchar](100) NOT NULL,
	[FieldNameDB] [nvarchar](100) NOT NULL,
	[FieldLevel] [int] NULL,
	[EndTag] [bit] NULL,
	[FieldID] [nvarchar](50) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldMaxSize] [smallint] NULL,
	[fldType] [varchar](10) NULL,
	[fldSortOrder] [int] NOT NULL,
	[fldContainerTag] [bit] NOT NULL,
	[fkFormLogControl] [int] NULL,
	[fldAltRef] [varchar](10) NULL,
	[fkTSTable] [int] NULL,
	[fldConvRule] [varchar](500) NULL,
 CONSTRAINT [PK_ImportFieldsXREF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportLog]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportLog](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchID] [int] NULL,
	[TemplateID] [int] NULL,
	[Code] [nvarchar](4) NULL,
	[Comment] [nvarchar](500) NULL,
	[Logged] [datetime] NULL,
 CONSTRAINT [PK_ImportLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportLog_history]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportLog_history](
	[id] [int] NOT NULL,
	[BatchID] [int] NULL,
	[TemplateID] [int] NULL,
	[Code] [nvarchar](4) NULL,
	[Comment] [nvarchar](500) NULL,
	[Logged] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportNSAautopayBatchDetail]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportNSAautopayBatchDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldBatchID] [int] NULL,
	[fldLineNum] [int] NULL,
	[fldAutopayGenerated] [datetime] NULL,
	[fldPickupNoEarlierThan] [datetime] NULL,
	[fldPickupNoLaterThan] [datetime] NULL,
	[fldFreightCo] [nvarchar](50) NULL,
	[fldConNoteNum] [nvarchar](30) NULL,
	[fldVehicleType] [nvarchar](10) NULL,
	[fldVehicleNum] [nvarchar](15) NULL,
	[fldAutopayTotalWeight] [int] NULL,
	[fldAutopayTotalUnits] [int] NULL,
	[ReceiverCode] [nvarchar](25) NULL,
	[fldRouteCode] [nvarchar](20) NULL,
	[fldPickupActual] [datetime] NULL,
	[fldCurrency] [nvarchar](3) NULL,
	[fldAutopayCost] [float] NULL,
	[fldReceiverName] [nvarchar](100) NULL,
	[fldReceiverAddress1] [nvarchar](100) NULL,
	[fldReceiverAddress2] [nvarchar](100) NULL,
	[fldReceiverAddress3] [nvarchar](100) NULL,
	[fldReceiverSuburb] [nvarchar](50) NULL,
	[fldReceiverState] [nvarchar](20) NULL,
	[fldReceiverPostcode] [nvarchar](10) NULL,
	[fldMill] [nvarchar](50) NULL,
	[fldTSCost] [float] NULL,
	[fldTSLeg] [nvarchar](15) NULL,
	[fldTSTotalWeight] [int] NULL,
	[fldTSReceiverPostCode] [nvarchar](50) NULL,
	[fldVariation] [float] NULL,
	[fldCredit] [bit] NULL,
	[fldDebit] [bit] NULL,
	[fldProcessed] [bit] NULL,
 CONSTRAINT [PK_ImportNSAautopayBatchDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportNSAautopayBatchHeader]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportNSAautopayBatchHeader](
	[fldBatchID] [int] IDENTITY(1,1) NOT NULL,
	[fldFileName] [nvarchar](500) NULL,
	[fldAutopayTotal] [float] NULL,
	[fldDateLogged] [datetime] NULL,
	[fldNumberCons] [datetime] NULL,
	[fldLastAction] [int] NULL,
	[fldComment] [nvarchar](1024) NULL,
 CONSTRAINT [PK_ImportNSAautopayBatchHeader] PRIMARY KEY CLUSTERED 
(
	[fldBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportNSAroutes]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportNSAroutes](
	[Route_Key] [nvarchar](50) NOT NULL,
	[col2] [nvarchar](50) NOT NULL,
	[col3] [nvarchar](50) NULL,
	[Sequence] [nvarchar](50) NOT NULL,
	[col5] [nvarchar](50) NOT NULL,
	[Leg_Key] [nvarchar](50) NOT NULL,
	[col7] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[col9] [nvarchar](50) NOT NULL,
	[Site_DST] [nvarchar](50) NOT NULL,
	[col11] [nvarchar](50) NOT NULL,
	[Desc1] [nvarchar](100) NOT NULL,
	[col13] [nvarchar](50) NOT NULL,
	[col14] [nvarchar](50) NOT NULL,
	[Desc2] [nvarchar](100) NOT NULL,
	[col16] [nvarchar](50) NOT NULL,
	[col17] [nvarchar](50) NOT NULL,
	[col18] [nvarchar](50) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ImportNSAroutes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportParsed]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportParsed](
	[pkID] [int] IDENTITY(1,1) NOT NULL,
	[fkBatchID] [int] NULL,
	[fldFileRow] [int] NULL,
	[fldFieldLevel] [int] NULL,
	[fldFieldID] [varchar](20) NULL,
	[fldFieldNum] [int] NULL,
	[fldFieldNameTS] [varchar](100) NULL,
	[fldRecordType] [int] NULL,
	[fldValue] [varchar](1000) NULL,
 CONSTRAINT [pkImportParsed] PRIMARY KEY CLUSTERED 
(
	[pkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportScratchpad]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportScratchpad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ImportBatchID] [int] NULL,
	[ConsignmentCount] [int] NULL,
	[FieldLevel] [int] NULL,
	[LoadCount] [int] NULL,
	[FieldID] [nvarchar](20) NULL,
	[FieldName] [nvarchar](100) NULL,
	[ElementValue] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ImportScratchpad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportSendRecXREF]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportSendRecXREF](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [int] NULL,
	[CustSendRecCode] [nvarchar](50) NULL,
	[BEXSendRecCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_ImportSendRecXREF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportSendRecXREFBackup_20130325]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportSendRecXREFBackup_20130325](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [int] NULL,
	[CustSendRecCode] [nvarchar](50) NULL,
	[BEXSendRecCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_ImportSendRecXREFBackup_20130325] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportTemplateFields]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportTemplateFields](
	[TemplateID] [int] NOT NULL,
	[FieldID] [nvarchar](50) NOT NULL,
	[FieldNameTS] [nvarchar](100) NOT NULL,
	[FieldNameImport] [nvarchar](100) NULL,
	[ConIndicator] [bit] NULL,
	[LIIndicator] [bit] NULL,
	[FieldLevel] [int] NULL,
	[RecordType] [int] NOT NULL,
	[FieldIDImport] [int] NOT NULL,
	[Include] [bit] NULL,
	[PrefixLength] [int] NULL,
	[SuffixLength] [int] NULL,
	[TextQualifier] [nvarchar](5) NULL,
	[DefaultValue] [nvarchar](max) NULL,
	[MatchingValue] [nvarchar](100) NULL,
	[EndTag] [bit] NULL,
	[Expression] [nvarchar](500) NULL,
	[Combine] [bit] NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldStart] [int] NULL,
	[fldEnd] [int] NULL,
 CONSTRAINT [PK_ImportTemplateFields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportTemplateFieldsBackup_20130325]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportTemplateFieldsBackup_20130325](
	[TemplateID] [int] NOT NULL,
	[FieldID] [nvarchar](50) NOT NULL,
	[FieldNameTS] [nvarchar](100) NOT NULL,
	[FieldNameImport] [nvarchar](100) NULL,
	[ConIndicator] [bit] NULL,
	[LIIndicator] [bit] NULL,
	[FieldLevel] [int] NULL,
	[RecordType] [int] NOT NULL,
	[FieldIDImport] [int] NOT NULL,
	[Include] [bit] NULL,
	[PrefixLength] [int] NULL,
	[SuffixLength] [int] NULL,
	[TextQualifier] [nvarchar](5) NULL,
	[DefaultValue] [nvarchar](max) NULL,
	[MatchingValue] [nvarchar](100) NULL,
	[EndTag] [bit] NULL,
	[Expression] [nvarchar](500) NULL,
	[Combine] [bit] NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldStart] [int] NULL,
	[fldEnd] [int] NULL,
 CONSTRAINT [PK_ImportTemplateFieldsBackup_20130325] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportTemplateHeader]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportTemplateHeader](
	[fldTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[fldTemplateName] [nvarchar](200) NULL,
	[fldImportFileType] [nvarchar](100) NULL,
	[fldDelimiter] [nvarchar](50) NULL,
	[fldImportFileName] [nvarchar](400) NULL,
	[fldLocalFileName] [nvarchar](400) NULL,
	[fldCustomerCode] [int] NULL,
	[fldChargeUnit] [nvarchar](100) NULL,
	[fldSendingDepot] [int] NULL,
	[fldPickup] [bit] NULL,
	[fldConvCustCodes] [bit] NULL,
	[fldManifestOnly] [bit] NULL,
	[fld8Lines] [bit] NULL,
	[fldCreatedBy] [nvarchar](100) NULL,
	[fldDateCreated] [datetime] NULL,
	[fldIncomingEmail] [nvarchar](400) NULL,
	[fldIncomingEmailPassword] [nvarchar](40) NULL,
	[fldExchangeServer] [nvarchar](200) NULL,
	[fldSPname] [nvarchar](200) NULL,
	[fldStatus] [int] NULL,
	[fldSenderEmail] [nvarchar](400) NULL,
	[fldNotifyEmail] [nvarchar](400) NULL,
 CONSTRAINT [PK_ImportTemplateHeader] PRIMARY KEY CLUSTERED 
(
	[fldTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportTransferInterface]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportTransferInterface](
	[INVOICE NUMBER] [nvarchar](50) NULL,
	[INVOICE DATE] [nvarchar](30) NULL,
	[CONSIGNOR CODE] [nvarchar](10) NULL,
	[CONSIGNOR NAME] [nvarchar](50) NULL,
	[CONSIGNOR ADDRESS] [nvarchar](150) NULL,
	[CONSIGNOR PHONE] [nvarchar](15) NULL,
	[CONSIGNOR CONTACT] [nvarchar](30) NULL,
	[CONSIGNOR REFERENCE] [nvarchar](50) NULL,
	[RECEIVER CODE] [nvarchar](10) NULL,
	[RECEIVER NAME] [nvarchar](50) NULL,
	[RECEIVER ADDRESS] [nvarchar](150) NULL,
	[RECEIVER PHONE] [nvarchar](15) NULL,
	[RECEIVER CONTACT] [nvarchar](30) NULL,
	[ETA DATE] [nvarchar](30) NULL,
	[NUMBER ITEMS] [nvarchar](5) NULL,
	[WEIGHT] [nvarchar](10) NULL,
	[CUBIC] [nvarchar](10) NULL,
	[SENDER PAYS] [nvarchar](10) NULL,
	[RECEIVER PAYS] [nvarchar](10) NULL,
	[FREIGHT PAYABLE BY] [nvarchar](100) NULL,
	[COST TO DEBTORS] [nvarchar](10) NULL,
	[CONSOR NAME] [nvarchar](50) NULL,
	[CONSEE NAME] [nvarchar](50) NULL,
	[DEBTOR] [nvarchar](70) NULL,
	[TOTAL COST] [nvarchar](10) NULL,
	[HOLD] [nvarchar](10) NULL,
	[SALES] [nvarchar](15) NULL,
	[PALLETS TRANSFERRED DIRECT] [nvarchar](5) NULL,
	[CHEP] [nvarchar](5) NULL,
	[LOSCAM] [nvarchar](5) NULL,
	[ACCOUNT] [nvarchar](70) NULL,
	[CONSIGNOR SUBURB] [nvarchar](100) NULL,
	[CONSIGNOR STATE] [nvarchar](50) NULL,
	[CONSIGNOR POSTCODE] [nvarchar](50) NULL,
	[RECEIVER SUBURB] [nvarchar](100) NULL,
	[RECEIVER STATE] [nvarchar](50) NULL,
	[RECEIVER POSTCODE] [nvarchar](50) NULL,
	[PAID] [nvarchar](5) NULL,
	[AMOUNT PAID] [nvarchar](10) NULL,
	[FBY CODE] [nvarchar](10) NULL,
	[SCS] [nvarchar](50) NULL,
	[RCS] [nvarchar](50) NULL,
	[STATEMENT NUMBER] [nvarchar](10) NULL,
	[MODE] [nvarchar](5) NULL,
	[ConsAC] [nvarchar](50) NULL,
	[ConseeAC] [nvarchar](50) NULL,
	[PalletsNA] [nvarchar](5) NULL,
	[PreGSTCharge] [nvarchar](10) NULL,
	[GSTCharge] [nvarchar](10) NULL,
	[TotalUnits] [nvarchar](10) NULL,
	[TotalWeight] [nvarchar](10) NULL,
	[TotalCubic] [nvarchar](20) NULL,
	[FBYCode] [nvarchar](50) NULL,
	[FBYPay] [nvarchar](5) NULL,
	[Insurance] [nvarchar](5) NULL,
	[DangerousGoods] [nvarchar](5) NULL,
	[UNno] [nvarchar](100) NULL,
	[ClassEmergCode] [nvarchar](100) NULL,
	[Pickup] [nvarchar](5) NULL,
	[Delivery] [nvarchar](5) NULL,
	[Priced] [nvarchar](5) NULL,
	[ValueOfGoods] [nvarchar](10) NULL,
	[ChepOut] [nvarchar](5) NULL,
	[LoscamOut] [nvarchar](5) NULL,
	[LocalDeliveryOnly] [nvarchar](5) NULL,
	[Printed] [nvarchar](5) NULL,
	[invoice id] [int] IDENTITY(1,1) NOT NULL,
	[CreditLink] [nvarchar](10) NULL,
	[SenderAddress1] [nvarchar](150) NULL,
	[ReceiverAddress1] [nvarchar](150) NULL,
	[PickupNumber] [nvarchar](50) NULL,
	[StatementDate] [nvarchar](30) NULL,
	[TransferLink] [nvarchar](10) NULL,
	[Surcharge] [nvarchar](10) NULL,
	[UserName] [nvarchar](50) NULL,
	[QuoteOnly] [nvarchar](5) NULL,
	[FldDateEntered] [nvarchar](30) NULL,
	[fldLastModified] [nvarchar](30) NULL,
	[fldModifiedBy] [nvarchar](50) NULL,
	[fldReceiverReference] [nvarchar](50) NULL,
	[fldPaymentComments] [text] NULL,
	[ExpectedCost] [nvarchar](10) NULL,
	[RemoveFromUncosted] [nvarchar](5) NULL,
	[fldPalletType] [nvarchar](5) NULL,
	[fldSenderReceived] [nvarchar](5) NULL,
	[fldSenderDispatched] [nvarchar](5) NULL,
	[fldRecevierReceived] [nvarchar](5) NULL,
	[fldReceiverDispatched] [nvarchar](5) NULL,
	[fldCMD] [nvarchar](50) NULL,
	[FldSenderReceivedLoscam] [nvarchar](5) NULL,
	[FldSenderDispatchedLoscam] [nvarchar](5) NULL,
	[FldReceiverReceivedLoscam] [nvarchar](5) NULL,
	[FldReceiverDispatchedLoscam] [nvarchar](5) NULL,
	[FldChep] [nvarchar](5) NULL,
	[FldLoscam] [nvarchar](5) NULL,
	[FldTransfer] [nvarchar](5) NULL,
	[fldOwner] [nvarchar](50) NULL,
	[fldImportID] [nvarchar](7) NULL,
	[fldETDDate] [nvarchar](30) NULL,
	[COMMENTS] [text] NULL,
	[fldHasAdjustments] [nvarchar](5) NULL,
	[fldDispatchEmail] [nvarchar](5) NULL,
	[StatementRunID] [nvarchar](10) NULL,
	[fldStore] [nvarchar](5) NULL,
	[fldMovement] [nvarchar](10) NULL,
	[fldBalance] [nvarchar](10) NULL,
	[fldMonthNumETADate] [nvarchar](10) NULL,
	[fldMonthNumInvDate] [nvarchar](10) NULL,
	[fldDispatchAccount] [nvarchar](5) NULL,
	[rowguid] [uniqueidentifier] NULL,
	[fldTFRChep] [nvarchar](5) NULL,
	[fldTFRLoscam] [nvarchar](5) NULL,
	[fldCopiedFromQuote] [nvarchar](50) NULL,
	[fldOriginalConNote] [nvarchar](50) NULL,
	[fldCopied] [nvarchar](5) NULL,
	[fldChargeableUnits] [nvarchar](10) NULL,
	[fldFoodstuffs] [nvarchar](5) NULL,
	[fldCWC] [nvarchar](5) NULL,
	[fldPickupCreated] [nvarchar](50) NULL,
	[InvoiceStatus] [nvarchar](5) NULL,
	[InvoiceGuid] [nvarchar](50) NULL,
	[PickupID] [nvarchar](10) NULL,
	[BatchID] [int] NOT NULL,
	[Converted] [bit] NULL,
	[Validated] [bit] NULL,
	[Rejected] [bit] NULL,
	[DuplicateConNote] [bit] NULL,
	[InvalidDate] [bit] NULL,
	[InsufficientSenderDetail] [bit] NULL,
	[InsufficientReceiverDetail] [bit] NULL,
	[LoadItemMismatch] [bit] NULL,
	[TotalsMismatch] [bit] NULL,
	[Other] [bit] NULL,
	[Transferred] [bit] NULL,
	[fldBookmarkedReason] [nvarchar](200) NULL,
	[fldBookmarkedBy] [nvarchar](100) NULL,
	[fldDateBookmarked] [datetime] NULL,
	[fldChepPickupDocketNumber] [varchar](100) NULL,
	[fldLoscamPickupDocketNumber] [varchar](100) NULL,
	[fldLoscamDocketNumber] [varchar](50) NULL,
	[fldExcludeCN] [bit] NULL,
	[fldPending] [bit] NULL,
	[fldFinaliseCN] [bit] NULL,
 CONSTRAINT [PK_ImportTransferInterface] PRIMARY KEY CLUSTERED 
(
	[invoice id] ASC,
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportTransferInterfaceDG]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportTransferInterfaceDG](
	[fldID] [int] IDENTITY(1,1) NOT NULL,
	[fldShippingName] [nvarchar](50) NULL,
	[fldClass] [nvarchar](50) NULL,
	[fldSubRisk] [nvarchar](50) NULL,
	[fldUnNo] [nvarchar](50) NULL,
	[fldPackagingGroup] [nvarchar](50) NULL,
	[fldTypeOfPackage] [nvarchar](50) NULL,
	[fldNumberOfPackages] [nvarchar](10) NULL,
	[fldAggergateQty] [nvarchar](10) NULL,
	[fldContactName] [nvarchar](50) NULL,
	[fldContactPhone] [nvarchar](50) NULL,
	[fldConNoteID] [int] NULL,
	[fldCustCode] [nvarchar](50) NULL,
	[BatchID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportTransferInterfaceLU]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportTransferInterfaceLU](
	[pkTrfIntLUId] [int] IDENTITY(1,1) NOT NULL,
	[fkBatchID] [int] NULL,
	[fkConNoteID] [int] NULL,
	[fldBarcode] [varchar](max) NULL,
	[fldValid] [bit] NOT NULL,
 CONSTRAINT [pkImportTransferInterfaceLU] PRIMARY KEY CLUSTERED 
(
	[pkTrfIntLUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportTransferInterfaceReject]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportTransferInterfaceReject](
	[pkID] [int] IDENTITY(1,1) NOT NULL,
	[fkBatchId] [int] NULL,
	[fkConNoteId] [int] NULL,
	[fkFieldId] [int] NULL,
	[fldProblem] [varchar](max) NULL,
	[fkErrCode] [varchar](50) NULL,
 CONSTRAINT [pkImportTransferInterfaceReject] PRIMARY KEY CLUSTERED 
(
	[pkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportTransferInterfaceSub]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportTransferInterfaceSub](
	[Amount] [nvarchar](10) NULL,
	[Description] [nvarchar](50) NULL,
	[Weight] [nvarchar](10) NULL,
	[Cubic] [nvarchar](20) NULL,
	[CubedActual] [nvarchar](50) NULL,
	[ConNoteID] [int] NULL,
	[ChargeUnit] [nvarchar](50) NULL,
	[CustRef] [varchar](500) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cub1] [nvarchar](10) NULL,
	[cub2] [nvarchar](10) NULL,
	[cub3] [nvarchar](10) NULL,
	[TotalCubed] [nvarchar](10) NULL,
	[fldCubicUnits] [nvarchar](10) NULL,
	[fldDateCreated] [nvarchar](30) NULL,
	[rowguid] [uniqueidentifier] NULL,
	[BatchID] [int] NULL,
	[fldExclude] [bit] NULL,
 CONSTRAINT [PK_ImportTransferInterfaceSub] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportTransferInterfaceTimeSlot]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportTransferInterfaceTimeSlot](
	[PKID] [int] IDENTITY(1,1) NOT NULL,
	[BatchID] [int] NOT NULL,
	[FKConNoteID] [int] NOT NULL,
	[fldTime] [nvarchar](60) NULL,
	[fldReference] [nvarchar](100) NULL,
	[fldTimeEnd] [varchar](50) NULL,
	[fldDate2] [varchar](50) NULL,
 CONSTRAINT [PK_ImportTransferInterfaceTimeSlot] PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportTransferInterfaceTradeItem]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportTransferInterfaceTradeItem](
	[pkTradeItmID] [int] IDENTITY(1,1) NOT NULL,
	[fkBatchID] [int] NULL,
	[fkConNoteID] [int] NULL,
	[fldCustRef1] [varchar](500) NULL,
	[fldCustRef2] [varchar](500) NULL,
	[fldCustRef3] [varchar](500) NULL,
	[fldQty] [varchar](10) NULL,
	[fldDesc] [varchar](50) NULL,
	[fldWeight] [varchar](10) NULL,
	[fldLength] [varchar](10) NULL,
	[fldWidth] [varchar](10) NULL,
	[fldHeight] [varchar](10) NULL,
 CONSTRAINT [pk_ImportTransferInterfaceTradeItem] PRIMARY KEY CLUSTERED 
(
	[pkTradeItmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAttachments]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAttachments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldEncoded] [varchar](max) NULL,
	[fldDecoded] [varchar](max) NULL,
 CONSTRAINT [PK_tblAttachments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAuditDisplay]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAuditDisplay](
	[pkAuditDisplayID] [int] IDENTITY(1,1) NOT NULL,
	[fldTableName] [varchar](128) NULL,
	[fldColumnName] [varchar](128) NULL,
	[fldUserFriendly] [varchar](100) NOT NULL,
	[fldActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblAuditDisplay] PRIMARY KEY CLUSTERED 
(
	[pkAuditDisplayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAuditLog]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAuditLog](
	[pkAuditID] [int] IDENTITY(1,1) NOT NULL,
	[fldDateTime] [datetime] NOT NULL,
	[fkTemplateID] [int] NULL,
	[fldEventCode] [char](1) NOT NULL,
	[fldTableName] [varchar](128) NULL,
	[fldTablePK] [varchar](max) NULL,
	[fldComment] [varchar](max) NULL,
	[fldUser] [varchar](100) NULL,
	[fldColumnName] [varchar](128) NULL,
	[fldOldValue] [varchar](max) NULL,
	[fldNewValue] [varchar](max) NULL,
 CONSTRAINT [PK_tblAuditLog] PRIMARY KEY CLUSTERED 
(
	[pkAuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCheckpoints]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCheckpoints](
	[fldStage] [nvarchar](50) NULL,
	[fldOperation] [nvarchar](50) NULL,
	[fldStep] [nvarchar](50) NULL,
	[fldResult] [nvarchar](50) NULL,
	[fldAction] [nvarchar](50) NULL,
	[fldCode] [nvarchar](4) NULL,
	[fldMessage] [nvarchar](500) NULL,
	[fldEnable] [bit] NULL,
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_tblCheckpoints_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblConfigMenu]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfigMenu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldFormName] [nvarchar](100) NULL,
	[fldTopLevel] [int] NULL,
	[fldItem] [int] NULL,
	[fldName] [nvarchar](50) NULL,
	[fldVisible] [bit] NULL,
 CONSTRAINT [PK_frmConfigMenu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblConfiguration]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfiguration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldOptionName] [nvarchar](100) NULL,
	[fldSetting] [nvarchar](300) NULL,
	[fldVersion] [nvarchar](50) NULL,
	[fldDescription] [nvarchar](1000) NULL,
	[fldLastUpd] [datetime] NULL,
 CONSTRAINT [PK_tblConfiguration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustCatalogue]    Script Date: 2015-02-18 6:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustCatalogue](
	[fldCatID] [int] IDENTITY(1,1) NOT NULL,
	[fldTemplateID] [int] NULL,
	[fldCustRef1] [nvarchar](50) NULL,
	[fldCustRef2] [nvarchar](50) NULL,
	[fldDescription] [nvarchar](max) NULL,
	[fldWeight] [nvarchar](10) NULL,
	[fldLength] [nvarchar](10) NULL,
	[fldWidth] [nvarchar](10) NULL,
	[fldHeight] [nvarchar](10) NULL,
	[fldChargeUnit] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[fldCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmailInbox]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmailInbox](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldSender] [nvarchar](300) NULL,
	[fldDateRec] [nvarchar](50) NULL,
	[fldAttachments] [int] NULL,
	[fldUIDL] [nvarchar](100) NULL,
	[fldSubject] [nvarchar](300) NULL,
	[fldMessage] [nvarchar](1000) NULL,
	[fldTemplateID] [int] NULL,
	[fldSelect] [bit] NULL,
 CONSTRAINT [PK_tblEmailInbox] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblErrorMsg]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblErrorMsg](
	[pkCode] [varchar](50) NOT NULL,
	[fldMessage] [varchar](200) NULL,
	[fkBookmark] [int] NULL,
 CONSTRAINT [pk_tblErrorMsg] PRIMARY KEY CLUSTERED 
(
	[pkCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFileList]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFileList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldFileName] [nvarchar](300) NULL,
	[fldDateCreated] [nvarchar](50) NULL,
	[fldSize] [int] NULL,
	[fldType] [nvarchar](100) NULL,
	[fldSelect] [bit] NULL,
 CONSTRAINT [PK_tblFileList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFileTypes]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFileTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldFileTypeExtention] [nvarchar](20) NOT NULL,
	[fldFileTypeDescription] [nvarchar](100) NULL,
	[fldTemplateFileType] [bit] NOT NULL,
 CONSTRAINT [PK_tblFileTypes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblImportFileFields]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImportFileFields](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldTemplateID] [int] NOT NULL,
	[fldImportFieldName] [nvarchar](100) NULL,
	[fldImportFieldNum] [int] NULL,
	[fldRecordType] [int] NULL,
	[fldPrefix] [int] NULL,
	[fldSuffix] [int] NULL,
	[fldQualifier] [nvarchar](5) NULL,
	[fldStart] [int] NULL,
	[fldEnd] [int] NULL,
 CONSTRAINT [PK_tblImportFileFields] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblImportFileFieldsBackup_20130325]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImportFileFieldsBackup_20130325](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldTemplateID] [int] NOT NULL,
	[fldImportFieldName] [nvarchar](100) NULL,
	[fldImportFieldNum] [int] NULL,
	[fldRecordType] [int] NULL,
	[fldPrefix] [int] NULL,
	[fldSuffix] [int] NULL,
	[fldQualifier] [nvarchar](5) NULL,
	[fldStart] [int] NULL,
	[fldEnd] [int] NULL,
 CONSTRAINT [PK_tblImportFileFieldsBackup_20130325] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblImportSchedule]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImportSchedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldTemplateID] [int] NOT NULL,
	[fldStartTime] [datetime] NOT NULL,
	[fldEndTime] [datetime] NOT NULL,
	[fldIntervalType] [nvarchar](20) NOT NULL,
	[fldIntervalQty] [int] NOT NULL,
	[fldFileQty] [int] NOT NULL,
	[fldLastCheck] [datetime] NOT NULL,
	[fldNextCheck] [datetime] NOT NULL,
	[fldEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_tblImportSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNonCodedColumns]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNonCodedColumns](
	[PKTSTable] [varchar](128) NOT NULL,
	[PKTSColumn] [varchar](128) NOT NULL,
	[fldDateUpdated] [datetime] NULL,
 CONSTRAINT [PK_tblNonCodedColumns] PRIMARY KEY CLUSTERED 
(
	[PKTSTable] ASC,
	[PKTSColumn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRejectStats]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRejectStats](
	[pkRejStatId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fkBatchId] [int] NULL,
	[fkAccount] [varchar](50) NULL,
	[fkConNoteId] [int] NULL,
	[fkConNoteNum] [varchar](50) NULL,
	[fkFormLogControl] [int] NULL,
	[fldProblem] [varchar](500) NULL,
 CONSTRAINT [pkRejectStats] PRIMARY KEY CLUSTERED 
(
	[pkRejStatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSndMsg]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSndMsg](
	[idxSndMsg] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldProfileName] [nvarchar](128) NOT NULL,
	[fldRecepients] [varchar](max) NULL,
	[fldRecepientsCC] [varchar](max) NULL,
	[fldRecepientsBCC] [varchar](max) NULL,
	[fldSubject] [nvarchar](255) NULL,
	[fldBody] [nvarchar](max) NOT NULL,
	[fldDateInserted] [datetime] NULL,
	[fldBodyFormat] [varchar](20) NULL,
	[fldFrom] [varchar](max) NULL,
 CONSTRAINT [PK_tblSndMsg] PRIMARY KEY CLUSTERED 
(
	[idxSndMsg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTSImportTableXREF]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTSImportTableXREF](
	[PKTSTable] [varchar](128) NOT NULL,
	[fldAutoImportTable] [varchar](128) NULL,
	[fldTSRejectTable] [varchar](200) NULL,
	[fldTableUserDesc] [varchar](100) NULL,
	[fldFieldLevel] [int] NULL,
	[fldDateUpdated] [datetime] NULL,
	[fldImportConNoteID] [varchar](128) NOT NULL,
	[fldLinkedChildID] [varchar](100) NULL,
	[fldBatchIdColName] [varchar](128) NULL,
	[pkID] [int] IDENTITY(1,1) NOT NULL,
	[fldDeleteSort] [tinyint] NULL,
 CONSTRAINT [PK_TSTable] PRIMARY KEY CLUSTERED 
(
	[PKTSTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblValidationRule]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblValidationRule](
	[pktblValidationRule] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fkValidationTypeID] [int] NULL,
	[fldValidateOrder] [int] NULL,
	[fldValidateTable] [varchar](100) NULL,
	[fldValidateIdentity] [varchar](100) NULL,
	[fldSubRecord] [bit] NOT NULL,
	[fldHeaderLink] [varchar](100) NULL,
	[fldValidateField] [varchar](200) NULL,
	[fldValidateRule] [varchar](200) NULL,
	[fldDescription] [varchar](200) NULL,
	[fldContinueOnFail] [bit] NOT NULL,
	[fldEnabled] [bit] NOT NULL,
	[fkErrCode] [varchar](50) NULL,
 CONSTRAINT [PK_tblValidationRule] PRIMARY KEY CLUSTERED 
(
	[pktblValidationRule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblValidationType]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblValidationType](
	[PKTypeID] [int] NOT NULL,
	[fldValidationType] [varchar](50) NULL,
	[fldDescription] [varchar](200) NULL,
 CONSTRAINT [PK_tblValidationType] PRIMARY KEY CLUSTERED 
(
	[PKTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVFBarcodeMismatch]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVFBarcodeMismatch](
	[fldDateEntered] [datetime] NULL,
	[fldPendingConNoteNum] [varchar](50) NULL,
	[fkPendingConNoteId] [int] NULL,
	[fldBarcode] [varchar](200) NULL,
	[fkLogisticUnit] [int] NULL,
	[fkImportedBatch] [int] NULL,
	[fldImportedConNoteNum] [varchar](50) NULL,
	[fkImportedConNoteId] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[id] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmpNSAautopayUpload_0000003]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpNSAautopayUpload_0000003](
	[line] [nvarchar](4000) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmpNSAsendrec]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpNSAsendrec](
	[CustKey] [nvarchar](50) NULL,
	[Custname] [nvarchar](150) NULL,
	[Address] [nvarchar](150) NULL,
	[Suburb] [nvarchar](50) NULL,
	[State] [nvarchar](15) NULL,
	[Postcode] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tmpNSAsendrec] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmpXMLdump_0050072]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpXMLdump_0050072](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldXMLstring] [nvarchar](1024) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmpXMLdump_0405394]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpXMLdump_0405394](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldXMLstring] [nvarchar](1024) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmpXMLdump_0432422]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpXMLdump_0432422](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fldXMLstring] [nvarchar](1024) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[zzzTemp]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zzzTemp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchID] [int] NULL,
	[ConnoteNum] [nvarchar](50) NULL,
	[LoadID] [int] NULL,
	[Weight] [float] NULL,
	[Length] [numeric](18, 3) NULL,
	[Width] [numeric](18, 2) NULL,
	[Height] [numeric](18, 3) NULL,
	[Cubic] [float] NULL,
	[Description] [nvarchar](50) NULL,
	[Amount] [float] NULL,
	[ChargeUnit] [nvarchar](50) NULL,
 CONSTRAINT [PK_zzzTemp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DDL].[tblAuditLog]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DDL].[tblAuditLog](
	[PK_AuditLog] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldEventTime] [varchar](100) NOT NULL,
	[fldEventType] [varchar](100) NOT NULL,
	[fldServerName] [varchar](100) NOT NULL,
	[fldDatabaseName] [varchar](100) NOT NULL,
	[fldCommandText] [varchar](max) NOT NULL,
	[fldLoginName] [varchar](100) NOT NULL,
	[fldUserName] [varchar](100) NOT NULL,
	[fldObjectType] [varchar](100) NULL,
	[fldObjectName] [varchar](100) NULL,
	[fldEventData] [xml] NOT NULL,
	[fldApplicationName] [nvarchar](200) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [DDL].[tblProctedObjects]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DDL].[tblProctedObjects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fld_object_id] [int] NOT NULL,
	[fldObjectName] [varchar](100) NOT NULL,
	[fldObjectType] [varchar](50) NOT NULL,
	[fldActiveStatus] [bit] NOT NULL,
	[fldComment] [varchar](max) NULL,
 CONSTRAINT [PK_tblProctedObjectsfldObjectNamefldObjectType] PRIMARY KEY CLUSTERED 
(
	[fldObjectName] ASC,
	[fldObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [IndexMaint].[tblRenamedIndexes]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [IndexMaint].[tblRenamedIndexes](
	[fldSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[fldDate] [smalldatetime] NULL,
	[fldTableName] [varchar](max) NULL,
	[fldTableID] [int] NULL,
	[fldIndexID] [int] NULL,
	[fldIndexNameOld] [varchar](max) NULL,
	[fldIndexNameNew] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[Cheques Paid]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[Cheques Paid](
	[Invoice Number] [nvarchar](50) NULL,
	[Date] [smalldatetime] NULL,
	[Cheque Number] [nvarchar](50) NULL,
	[Amount Paid] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[EFT] [bit] NULL,
	[ACCode] [nvarchar](50) NULL,
	[ACName] [nvarchar](255) NULL,
	[ACBank] [nvarchar](50) NULL,
	[ACBranch] [nvarchar](50) NULL,
	[Cash] [bit] NULL,
	[CreditCard] [bit] NULL,
	[CardName] [nvarchar](50) NULL,
	[CardType] [nvarchar](50) NULL,
	[CardNumber] [nvarchar](50) NULL,
	[ExpiryDate] [nvarchar](50) NULL,
	[FldHold] [bit] NULL,
	[fldDepot] [nvarchar](50) NULL,
	[fldUser] [char](50) NULL,
	[fldDateProcessed] [datetime] NULL,
	[CreditCardElect] [bit] NULL,
 CONSTRAINT [PK_ChequesPaid__K5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[Configuration]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[Configuration](
	[OptionName] [nvarchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Setting] [nvarchar](max) NULL,
	[fldVersion] [nvarchar](50) NULL,
	[fldDescription] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[InvoicesSub]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[InvoicesSub](
	[Amount] [float] NULL,
	[Description] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[Cubic] [float] NULL,
	[CubedActual] [nvarchar](50) NULL,
	[ConNoteID] [int] NULL,
	[ChargeUnit] [nvarchar](50) NULL,
	[CustRef] [varchar](500) NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cub1] [numeric](18, 3) NULL,
	[cub2] [numeric](18, 3) NULL,
	[cub3] [numeric](18, 3) NULL,
	[TotalCubed] [float] NULL,
	[fldCubicUnits] [float] NULL,
	[fldDateCreated] [datetime] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[fldAddCharge] [smallint] NULL,
	[fldFoodStuff] [tinyint] NOT NULL,
	[fldLabelCount] [smallint] NOT NULL,
	[fldDG] [tinyint] NOT NULL,
	[fldIsManualCubic] [bit] NOT NULL,
	[fkUserEntered] [int] NULL,
	[fkImportId] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[Owners]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[Owners](
	[Owner] [nvarchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Address] [nvarchar](50) NULL,
	[Suburb] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Postcode] [nvarchar](50) NULL,
	[Facsimile] [nvarchar](16) NULL,
	[MAddress] [nvarchar](50) NULL,
	[MSuburb] [nvarchar](50) NULL,
	[MState] [nvarchar](50) NULL,
	[MPostcode] [nvarchar](50) NULL,
	[MTelephone] [nvarchar](50) NULL,
	[MFax] [nvarchar](50) NULL,
	[Logo] [image] NULL,
	[fldLocal] [bit] NOT NULL,
	[fldLinehaul] [bit] NOT NULL,
	[fldOnforward] [bit] NOT NULL,
	[MAddress1] [nvarchar](50) NULL,
	[MSuburb1] [nvarchar](50) NULL,
	[MPostcode1] [nvarchar](50) NULL,
	[MState1] [nvarchar](50) NULL,
	[fldSubbieList] [smallint] NOT NULL,
	[Telephone] [nvarchar](max) NULL,
	[FKDivision] [int] NULL,
	[fldDefaultManifest] [bit] NULL,
	[fldMultiConNoteOwner] [int] NULL,
	[fldSalesRevenue] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[Pricing]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[Pricing](
	[ChargeUnit] [nvarchar](50) NULL,
	[From] [numeric](18, 0) NULL,
	[To] [numeric](18, 0) NULL,
	[Charge] [float] NULL,
	[GST] [float] NULL,
	[InclGST] [float] NULL,
	[ConNoteID] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ChargeUnits] [float] NULL,
	[ChargeRate] [float] NULL,
	[fldOnforward] [bit] NULL,
	[fldManualPrice] [bit] NULL,
	[Schedule] [nvarchar](50) NULL,
	[fldLegCubic] [numeric](18, 0) NULL,
	[fldShowSurcharge] [tinyint] NULL,
	[fldManPriceComments] [nvarchar](200) NULL,
 CONSTRAINT [PK_Pricing__ps_Pricing] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[SendersReceivers]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[SendersReceivers](
	[CODE] [nvarchar](50) NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[ADDRESS] [nvarchar](70) NULL,
	[SUBURB] [int] NULL,
	[STATE] [nvarchar](50) NULL,
	[POSTCODE] [nvarchar](50) NULL,
	[PHONE] [nvarchar](15) NULL,
	[FAX] [nvarchar](20) NULL,
	[CONTACT] [nvarchar](30) NULL,
	[COST CENTRE] [nvarchar](50) NULL,
	[Owner] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[ABN] [nvarchar](50) NULL,
	[Sender] [bit] NOT NULL,
	[Receiver] [bit] NOT NULL,
	[3rdParty] [bit] NOT NULL,
	[RatesSchedule] [nvarchar](50) NULL,
	[AccountTerms] [nvarchar](50) NULL,
	[MailingAddress] [nvarchar](50) NULL,
	[MailingSuburb] [int] NULL,
	[MailingState] [nvarchar](50) NULL,
	[MailingPostcode] [nvarchar](50) NULL,
	[AsAbove] [bit] NOT NULL,
	[FPBCode] [nvarchar](50) NULL,
	[FPBName] [nvarchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SmentType] [int] NULL,
	[MailingAddress1] [nvarchar](50) NULL,
	[MailingAddress2] [nvarchar](50) NULL,
	[PermRef] [nvarchar](50) NULL,
	[AccountContact] [nvarchar](50) NULL,
	[AcountPhone] [nvarchar](50) NULL,
	[UseDefault] [bit] NOT NULL,
	[AccountName] [nvarchar](50) NULL,
	[Bank] [nvarchar](100) NULL,
	[Branch] [nvarchar](100) NULL,
	[FldCategory] [int] NULL,
	[FldCloseTime] [datetime] NULL,
	[FldStopCredit] [bit] NULL,
	[FldLastUpdateBy] [nvarchar](100) NULL,
	[FldLastUpdateDate] [nvarchar](50) NULL,
	[FldStatementFormat] [nvarchar](50) NULL,
	[FldEmailStatement] [bit] NULL,
	[fldOpenTime] [datetime] NULL,
	[fldMobile] [nvarchar](50) NULL,
	[fldCardType] [nvarchar](50) NULL,
	[fldCardNumber] [nvarchar](50) NULL,
	[fldExpiryDate] [nvarchar](50) NULL,
	[fldCardName] [nvarchar](50) NULL,
	[fldOneInvoicePerPage] [bit] NOT NULL,
	[PrintOrderByInv] [int] NOT NULL,
	[fldReceiverCode] [nvarchar](50) NULL,
	[fldDateLastUsedOld] [nvarchar](12) NULL,
	[fldLastPaymentDate] [datetime] NULL,
	[fldLastPaymentAmount] [float] NULL,
	[fldOSPhone] [bit] NOT NULL,
	[fldCSVStatement] [bit] NOT NULL,
	[fldCreditLimit] [money] NULL,
	[fldDateLastUsed] [datetime] NULL,
	[fldPrintAsWell] [bit] NOT NULL,
	[fldDateStarted] [datetime] NULL,
	[fldUpdatedBy] [nvarchar](100) NULL,
	[fldExcludeManifestLabels] [smallint] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[fldAutoBookmark] [smallint] NOT NULL,
	[fldLastTradedDate] [datetime] NULL,
	[msrepl_tran_version] [uniqueidentifier] NOT NULL,
	[fldCSVTemplate] [int] NULL,
	[fldActiveAccount] [bit] NOT NULL,
	[fldCreditExceededEmailDate] [datetime] NULL,
	[fldDeliveryInstructions] [varchar](100) NULL,
	[fldPickupInstructions] [varchar](100) NULL,
	[fldPaperworkRequired] [bit] NOT NULL,
	[fldAutoBookmarkedReason] [nvarchar](200) NULL,
	[fldAutoBookmarkedBy] [nvarchar](100) NULL,
	[fldDateAutoBookmarked] [datetime] NULL,
	[fldEstimatedRevenue] [float] NULL,
	[fldWarranty] [bit] NOT NULL,
	[fldWarrantyAmount] [float] NULL,
	[fldWarrantyChangedDate] [datetime] NULL,
	[fldWarrantyChangedUser] [varchar](50) NULL,
	[fldWarrantyEffectiveDate] [datetime] NULL,
	[fldEmailSubjectPrefix] [nvarchar](30) NULL,
	[fldGatewayStatus] [bit] NOT NULL,
	[fldCreditRatingTotal] [int] NULL,
	[fldStopCreditRating] [bit] NULL,
	[fldAutoPrice] [bit] NOT NULL,
	[fldSSCCRequired] [bit] NOT NULL,
	[fldTradeItemOnCN] [bit] NOT NULL,
	[fldTradeItemOnStatement] [bit] NOT NULL,
	[fldLengthDecimal] [int] NULL,
	[fldWidthDecimal] [int] NULL,
	[fldHeightDecimal] [int] NULL,
	[fldUseTraditionalRounding] [int] NULL,
	[fldEstimatedMonthlyRevenue] [float] NULL,
	[fldFirstGM] [float] NULL,
	[fldHoldDelivery] [bit] NOT NULL,
	[fldCubicKiloDecimal] [int] NULL,
	[fldOverridePalletRounding] [int] NOT NULL,
	[fkStatementFormat] [int] NULL,
	[fkPaymentTerm] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[Sending Centres]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[Sending Centres](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldDepotID] [int] NULL,
	[Sending Centre] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Suburb] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Postcode] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Facsimile] [nvarchar](50) NULL,
	[fldExportCode] [nvarchar](50) NULL,
	[fldPickupDefault] [nvarchar](50) NULL,
	[fldPickupNotificationEmail] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[Suburbs]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[Suburbs](
	[Suburb] [nvarchar](50) NOT NULL,
	[RunNo] [nvarchar](50) NULL,
	[Postcode] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Depot1] [nvarchar](50) NULL,
	[Run1] [nvarchar](50) NULL,
	[Depot2] [nvarchar](50) NULL,
	[Run2] [nvarchar](50) NULL,
	[Depot3] [nvarchar](50) NULL,
	[Run3] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[msrepl_tran_version] [uniqueidentifier] NOT NULL,
	[fldChangeOver] [bit] NULL,
	[fldSuburbsChangeOver] [bit] NOT NULL,
	[fldDepotRun] [nvarchar](max) NULL,
	[fldPostalOnly] [bit] NOT NULL,
	[fldLastImported] [datetime] NULL,
	[fldCreatedDate] [datetime] NULL,
	[fldCreatedBy] [varchar](50) NULL,
	[fldIsOverseas] [bit] NOT NULL,
	[fldBExDelivery] [bit] NOT NULL,
	[fkDeliverySuburbID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[SystemUsers]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[SystemUsers](
	[UserName] [nvarchar](50) NULL,
	[UserPassword] [nvarchar](50) NULL,
	[UserGroup] [nvarchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DefaultDepot] [nvarchar](50) NULL,
	[fldCreditLimit] [int] NULL,
	[SalesPerson] [bit] NULL,
	[strEnvUserName] [nvarchar](50) NULL,
	[fldUserDateStart] [datetime] NULL,
	[fldUserDateEnd] [datetime] NULL,
	[fldStatus] [nvarchar](30) NULL,
	[fldGatewayApp] [bit] NOT NULL,
	[fldNewScreen] [bit] NOT NULL,
	[fldEmpNum] [varchar](50) NULL,
	[fldSystemsUseOnly] [bit] NOT NULL,
	[fldRFId] [varchar](50) NULL,
	[fldLastMod] [datetime] NOT NULL,
	[fldSelected] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblAutoExportCheckpoints]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblAutoExportCheckpoints](
	[pkID] [int] IDENTITY(1,1) NOT NULL,
	[fldStage] [nvarchar](50) NULL,
	[fldStep] [nvarchar](50) NULL,
	[fldResult] [nvarchar](50) NULL,
	[fldCode] [int] NULL,
	[fldMessage] [nvarchar](500) NULL,
	[fldEnable] [bit] NULL,
 CONSTRAINT [PK_tblAutoExportCheckpoints] PRIMARY KEY CLUSTERED 
(
	[pkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[tblAutoExportLog]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblAutoExportLog](
	[pkEventID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldLogged] [datetime] NULL,
	[fldEventCode] [int] NULL,
	[fldType] [int] NULL,
	[fldRefNo] [nvarchar](100) NULL,
	[fldUserName] [nvarchar](100) NULL,
	[fldDepot] [nvarchar](100) NULL,
	[fldComment] [nvarchar](510) NULL,
	[fldOccurred] [datetime] NULL,
	[fkChkPntID] [int] NULL,
	[fkRefID] [int] NULL,
 CONSTRAINT [PK_tblAutoExportLog__K1] PRIMARY KEY CLUSTERED 
(
	[pkEventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[tblChargeUnitXRef]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblChargeUnitXRef](
	[pkID] [int] IDENTITY(1,1) NOT NULL,
	[fldUnit] [varchar](50) NULL,
	[fldMatch] [varchar](500) NULL,
 CONSTRAINT [pk_tblChargeUnitXRef] PRIMARY KEY CLUSTERED 
(
	[pkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblConnoteDelivery]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblConnoteDelivery](
	[pkConNoteID] [int] NOT NULL,
	[fldDelWindowStartDate] [datetime] NULL,
	[fldDelWindowEndDate] [datetime] NULL,
	[fldDelWindowStartTime] [datetime] NULL,
	[fldDelWindowEndTime] [datetime] NULL,
 CONSTRAINT [pkConnoteDelivery] PRIMARY KEY CLUSTERED 
(
	[pkConNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[tblConNoteRejectReasons]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblConNoteRejectReasons](
	[pkCNRejID] [int] IDENTITY(1,1) NOT NULL,
	[fkConNoteId] [int] NULL,
	[fkFormLogControl] [int] NULL,
	[fldProblem] [varchar](500) NULL,
	[fkDVRule] [int] NOT NULL,
	[fkControlGroup] [varchar](50) NULL,
 CONSTRAINT [pkConNoteRejectReasons] PRIMARY KEY CLUSTERED 
(
	[pkCNRejID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblConNoteTradeItem]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblConNoteTradeItem](
	[pkTradeItmID] [int] IDENTITY(1,1) NOT NULL,
	[fkConNoteID] [int] NULL,
	[fldCustRef1] [varchar](500) NULL,
	[fldCustRef2] [varchar](500) NULL,
	[fldCustRef3] [varchar](500) NULL,
	[fldQty] [int] NULL,
	[fldDesc] [varchar](50) NULL,
	[fldWeight] [numeric](9, 3) NULL,
	[fldLength] [numeric](9, 3) NULL,
	[fldWidth] [numeric](9, 3) NULL,
	[fldHeight] [numeric](9, 3) NULL,
	[fkLogisticUnitId] [int] NULL,
	[fkImportId] [int] NULL,
 CONSTRAINT [pk_ImportTransferInterfaceTradeItem] PRIMARY KEY CLUSTERED 
(
	[pkTradeItmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblCustCatalogue]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblCustCatalogue](
	[pkCatId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldAccountCode] [nvarchar](50) NULL,
	[fldCustRef1] [nvarchar](50) NULL,
	[fldCustRef2] [nvarchar](50) NULL,
	[fldDescription] [nvarchar](50) NULL,
	[fldWeight] [nvarchar](10) NULL,
	[fldLength] [nvarchar](10) NULL,
	[fldWidth] [nvarchar](10) NULL,
	[fldHeight] [nvarchar](10) NULL,
	[fldChargeUnit] [nvarchar](50) NULL,
	[fldEnteredBy] [nvarchar](50) NULL,
	[fldDateEntered] [datetime] NULL,
	[fldLastModifiedBy] [nvarchar](50) NULL,
	[fldDateLastModified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[pkCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[tblDangerousGoods]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblDangerousGoods](
	[fldID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldShippingName] [nvarchar](500) NULL,
	[fldClass] [nvarchar](50) NULL,
	[fldSubRisk] [nvarchar](50) NULL,
	[fldUnNo] [nvarchar](50) NULL,
	[fldPackagingGroup] [nvarchar](50) NULL,
	[fldTypeOfPackage] [nvarchar](50) NULL,
	[fldNumberOfPackages] [int] NULL,
	[fldAggergateQty] [int] NULL,
	[fldContactName] [nvarchar](50) NULL,
	[fldContactPhone] [nvarchar](50) NULL,
	[fldConNoteID] [int] NULL,
	[fldCustCode] [nvarchar](50) NULL,
	[fkImportId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[tblFormLogChange]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblFormLogChange](
	[idxFormLogChange] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldForm] [nvarchar](100) NOT NULL,
	[fldSubForm] [nvarchar](100) NULL,
	[fldRecordNumber] [nvarchar](100) NOT NULL,
	[fldSubRecordNumber] [nvarchar](100) NULL,
	[fldChangedFLCidx] [int] NULL,
	[fldChangedControl] [nvarchar](100) NULL,
	[fldChangedDate] [datetime] NOT NULL,
	[fldChangedFrom] [nvarchar](200) NULL,
	[fldChangedTo] [nvarchar](200) NULL,
	[fldChangedUserID] [int] NOT NULL,
	[fldChangedInitial] [bit] NOT NULL,
	[fldExternalUserID] [int] NULL,
	[fkAppCode] [char](2) NULL,
	[fldExternalUsername] [varchar](300) NULL,
	[fldExternalFullname] [varchar](200) NULL,
	[fkRecordId] [int] NULL,
 CONSTRAINT [PK_idxFormLogChange__K1] PRIMARY KEY CLUSTERED 
(
	[idxFormLogChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblFormLogControl]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblFormLogControl](
	[idxFormLogControl] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldForm] [nvarchar](100) NOT NULL,
	[fldControl] [nvarchar](100) NULL,
	[fldDescription] [nvarchar](100) NULL,
	[fldComments] [nvarchar](200) NULL,
	[fldActive] [bit] NOT NULL,
	[fldLookupField] [varchar](100) NULL,
	[fldDBColumnName] [varchar](128) NULL,
	[fldDBTableName] [varchar](128) NULL,
	[fldDBIDField] [varchar](128) NULL,
 CONSTRAINT [PK_idxFormLogControl] PRIMARY KEY CLUSTERED 
(
	[idxFormLogControl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblImportBatchHeader]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblImportBatchHeader](
	[BatchID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldDepot] [int] NULL,
	[fldCustCode] [int] NULL,
	[fldDate] [datetime] NULL,
	[fldImporter] [nvarchar](50) NULL,
	[fldConsImported] [int] NULL,
	[fldConsRejected] [int] NULL,
	[fldConsAddedFromRejects] [int] NULL,
	[fldConsDeletedFromReject] [int] NULL,
	[fldTemplate] [nvarchar](50) NULL,
	[fldImportType] [nvarchar](10) NULL,
	[fldImportFileName] [nvarchar](255) NULL,
	[fldCustName] [nvarchar](50) NULL,
	[fldOverrideChargeUnit] [nvarchar](50) NULL,
	[fldOverrideDepot] [nvarchar](50) NULL,
	[fldPickupFlag] [smallint] NULL,
	[fldNoCrossRef] [smallint] NULL,
	[fldManifestingOnly] [smallint] NULL,
	[fld8LineItemAscii] [smallint] NULL,
	[fldSendToPDA] [smallint] NULL,
	[fldConsPrinted] [smallint] NOT NULL,
	[fldLastAction] [nvarchar](50) NULL,
	[fldTemplateID] [int] NULL,
	[fldImportCompleted] [bit] NULL,
	[fldImportAborted] [bit] NULL,
	[fldComment] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[tblImportDuplicateOption]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblImportDuplicateOption](
	[pkImpDupOptId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldName] [varchar](50) NULL,
	[fldDescription] [varchar](500) NULL,
	[fldActive] [bit] NOT NULL,
 CONSTRAINT [pk_ReloadOptions] PRIMARY KEY CLUSTERED 
(
	[pkImpDupOptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblImportTemplates]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblImportTemplates](
	[fldID] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldTemplateName] [nvarchar](50) NULL,
	[fldCreatedBy] [nvarchar](50) NULL,
	[fldDateCreated] [datetime] NULL,
	[fldImportType] [nvarchar](15) NOT NULL,
	[fldCustomerID] [numeric](18, 0) NULL,
	[fldChargeUnit] [nvarchar](50) NULL,
	[fldPickupFlag] [bit] NULL,
	[fldValidateSender] [bit] NULL,
	[fldManifestingOnly] [bit] NULL,
	[fld8Lines] [bit] NULL,
	[fldRCTIIncludeReport] [bit] NULL,
	[fldMultipleFBY] [smallint] NULL,
	[fldDelimiter] [nvarchar](50) NULL,
	[fldImportFileName] [nvarchar](400) NULL,
	[fldLocalFileName] [nvarchar](400) NULL,
	[fldSendingDepot] [int] NULL,
	[fldConvCustCodes] [bit] NULL,
	[fldIncomingEmail] [nvarchar](400) NULL,
	[fldIncomingEmailPassword] [nvarchar](400) NULL,
	[fldExchangeServer] [nvarchar](200) NULL,
	[fldSPName] [nvarchar](200) NULL,
	[fldStatus] [int] NULL,
	[fldSenderEmail] [nvarchar](400) NULL,
	[fldNotifyEmail] [nvarchar](400) NULL,
	[fldHeaderRow] [bit] NULL,
	[fldAutoImport] [bit] NULL,
	[fldMergeLoadItems] [bit] NULL,
	[fldComments] [nvarchar](max) NULL,
	[fldMaxAge] [int] NULL,
	[fldSkipLoadItemValidation] [bit] NOT NULL,
	[fldAllowCustEdit] [bit] NOT NULL,
	[fkImpDupOptId] [int] NOT NULL,
	[fldEmailCustFeedback] [varchar](400) NULL,
	[fldBarcodeDelimiter] [char](1) NULL,
	[fldPostInterfaceSQL] [varchar](max) NULL,
 CONSTRAINT [PK_tblImportTemplates] PRIMARY KEY CLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblInvoice]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblInvoice](
	[INVOICE NUMBER] [nvarchar](50) NOT NULL,
	[INVOICE DATE] [smalldatetime] NULL,
	[CONSIGNOR CODE] [int] NULL,
	[CONSIGNOR NAME] [nvarchar](50) NULL,
	[CONSIGNOR ADDRESS] [nvarchar](150) NULL,
	[CONSIGNOR PHONE] [nvarchar](15) NULL,
	[CONSIGNOR CONTACT] [nvarchar](30) NULL,
	[CONSIGNOR REFERENCE] [nvarchar](50) NULL,
	[RECEIVER CODE] [int] NULL,
	[RECEIVER NAME] [nvarchar](50) NULL,
	[RECEIVER ADDRESS] [nvarchar](150) NULL,
	[RECEIVER PHONE] [nvarchar](15) NULL,
	[RECEIVER CONTACT] [nvarchar](30) NULL,
	[ETA DATE] [datetime] NULL,
	[NUMBER ITEMS] [smallint] NULL,
	[WEIGHT] [float] NULL,
	[CUBIC] [float] NULL,
	[SENDER PAYS] [bit] NOT NULL,
	[RECEIVER PAYS] [bit] NOT NULL,
	[FREIGHT PAYABLE BY] [nvarchar](100) NULL,
	[COST TO DEBTORS] [smallint] NOT NULL,
	[CONSOR NAME] [nvarchar](50) NULL,
	[CONSEE NAME] [nvarchar](50) NULL,
	[DEBTOR] [nvarchar](70) NULL,
	[TOTAL COST] [float] NULL,
	[HOLD] [smallint] NOT NULL,
	[SALES] [float] NULL,
	[PALLETS TRANSFERRED DIRECT] [bit] NOT NULL,
	[CHEP] [float] NOT NULL,
	[LOSCAM] [float] NOT NULL,
	[ACCOUNT] [nvarchar](50) NULL,
	[CONSIGNOR SUBURB] [int] NULL,
	[CONSIGNOR STATE] [nvarchar](50) NULL,
	[CONSIGNOR POSTCODE] [nvarchar](50) NULL,
	[RECEIVER SUBURB] [int] NULL,
	[RECEIVER STATE] [nvarchar](50) NULL,
	[RECEIVER POSTCODE] [nvarchar](50) NULL,
	[PAID] [bit] NOT NULL,
	[AMOUNT PAID] [float] NULL,
	[FBY CODE] [int] NULL,
	[SCS] [nvarchar](50) NULL,
	[RCS] [nvarchar](50) NULL,
	[STATEMENT NUMBER] [int] NULL,
	[MODE] [int] NULL,
	[ConsAC] [nvarchar](50) NULL,
	[ConseeAC] [nvarchar](50) NULL,
	[PalletsNA] [bit] NOT NULL,
	[PreGSTCharge] [float] NULL,
	[GSTCharge] [float] NULL,
	[TotalUnits] [float] NULL,
	[TotalWeight] [float] NULL,
	[TotalCubic] [float] NULL,
	[FBYCode] [nvarchar](50) NULL,
	[FBYPay] [bit] NOT NULL,
	[Insurance] [int] NULL,
	[DangerousGoods] [int] NULL,
	[UNno] [nvarchar](100) NULL,
	[ClassEmergCode] [nvarchar](100) NULL,
	[Pickup] [bit] NOT NULL,
	[Delivery] [bit] NOT NULL,
	[Priced] [smallint] NOT NULL,
	[ValueOfGoods] [float] NULL,
	[ChepOut] [int] NOT NULL,
	[LoscamOut] [int] NOT NULL,
	[LocalDeliveryOnly] [bit] NOT NULL,
	[Printed] [bit] NOT NULL,
	[invoice id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CreditLink] [int] NULL,
	[SenderAddress1] [nvarchar](150) NULL,
	[ReceiverAddress1] [nvarchar](150) NULL,
	[PickupNumber] [nvarchar](50) NULL,
	[StatementDate] [smalldatetime] NULL,
	[TransferLink] [int] NULL,
	[Surcharge] [float] NULL,
	[UserName] [nvarchar](50) NULL,
	[QuoteOnly] [smallint] NOT NULL,
	[FldDateEntered] [datetime] NOT NULL,
	[fldLastModified] [datetime] NULL,
	[fldModifiedBy] [nvarchar](50) NULL,
	[fldReceiverReference] [nvarchar](50) NULL,
	[ExpectedCost] [float] NULL,
	[RemoveFromUncosted] [bit] NULL,
	[fldPalletType] [int] NOT NULL,
	[fldSenderReceived] [int] NOT NULL,
	[fldSenderDispatched] [int] NOT NULL,
	[fldReceiverReceived] [int] NOT NULL,
	[fldReceiverDispatched] [int] NOT NULL,
	[fldCMD] [nvarchar](50) NULL,
	[FldSenderReceivedLoscam] [int] NOT NULL,
	[FldSenderDispatchedLoscam] [int] NOT NULL,
	[FldReceiverReceivedLoscam] [int] NOT NULL,
	[FldReceiverDispatchedLoscam] [int] NOT NULL,
	[FldChep] [bit] NOT NULL,
	[FldLoscam] [bit] NOT NULL,
	[FldTransfer] [bit] NULL,
	[fldOwner] [int] NULL,
	[fldImportID] [int] NULL,
	[fldETDDate] [datetime] NULL,
	[fldHasAdjustments] [smallint] NOT NULL,
	[fldDispatchEmail] [smallint] NULL,
	[StatementRunID] [int] NULL,
	[fldStore] [smallint] NULL,
	[fldMovement] [int] NULL,
	[fldBalance] [money] NOT NULL,
	[fldMonthNumETADate] [int] NULL,
	[fldMonthNumInvDate] [int] NULL,
	[fldDispatchAccount] [smallint] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[fldTFRChep] [int] NOT NULL,
	[fldTFRLoscam] [int] NOT NULL,
	[fldCopiedFromQuote] [nvarchar](50) NULL,
	[fldOriginalConNote] [nvarchar](50) NULL,
	[fldCopied] [smallint] NULL,
	[fldChargeableUnits] [float] NULL,
	[fldFoodstuffs] [smallint] NULL,
	[fldCWC] [smallint] NULL,
	[fldPickupCreated] [nvarchar](50) NULL,
	[InvoiceStatus] [int] NULL,
	[InvoiceGuid] [nvarchar](50) NULL,
	[PickupID] [nvarchar](50) NULL,
	[fldStartZone] [int] NULL,
	[fldEndZone] [int] NULL,
	[fldPaymentComments] [nvarchar](max) NULL,
	[COMMENTS] [nvarchar](max) NULL,
	[fldLoscamDocketNumber] [nvarchar](50) NULL,
	[fldBookmarkedReason] [nvarchar](200) NULL,
	[fldBookmarkedBy] [nvarchar](100) NULL,
	[fldDateBookmarked] [datetime] NULL,
	[fldChargedAccountEmail] [nvarchar](50) NULL,
	[fldChepPickupDocketNumber] [nvarchar](100) NULL,
	[fldLoscamPickupDocketNumber] [nvarchar](100) NULL,
	[fldSplitConsignment] [smallint] NULL,
	[fldSplitFromConsignment] [nvarchar](50) NULL,
	[fkInvoiceStatus] [int] NULL,
	[fldInitialCreation] [bit] NOT NULL,
	[fkSendingBranchId] [int] NULL,
	[fldTimeSensitiveDelivery] [bit] NULL,
	[fkNDCNManifest] [int] NULL,
 CONSTRAINT [PK_tblInvoice__ps_CurrentHistoryByDate] PRIMARY KEY CLUSTERED 
(
	[invoice id] ASC,
	[FldDateEntered] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[tblLogisticUnit]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TS2000].[tblLogisticUnit](
	[pkLogisticUnit] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fkInvoice] [int] NOT NULL,
	[fkLoadItem] [int] NULL,
	[fldReference] [varchar](50) NULL,
	[fldWeight] [float] NULL,
	[fldBarcode] [varchar](50) NULL,
	[fkCurrentLocation] [int] NULL,
	[fkNextLocation] [int] NULL,
	[fldPrintCount] [int] NULL,
	[fkCurrentLocationType] [int] NULL,
	[fkNextLocationType] [int] NULL,
	[fkBarcodeType] [int] NOT NULL,
	[fldDateAssociated] [datetime] NULL,
	[fldLastScanDate] [datetime] NULL,
	[fkImportId] [int] NULL,
	[fkParentLogisticUnit] [int] NULL,
 CONSTRAINT [PK_tblLogisticUnit_pkLogisticUnit] PRIMARY KEY CLUSTERED 
(
	[pkLogisticUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TS2000].[tblTimeSlot]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[tblTimeSlot](
	[Invoice id] [int] NULL,
	[TimeslotID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldTime] [datetime] NULL,
	[fldReference] [nvarchar](100) NULL,
	[fldActualTimeArrived] [datetime] NULL,
	[fldActualSlotStart] [datetime] NULL,
	[fldActualSlotEnd] [datetime] NULL,
	[fldDifference] [int] NULL,
	[fldTimeEnd] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [TS2000].[Unit Measures]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TS2000].[Unit Measures](
	[Unit Description] [nvarchar](50) NOT NULL,
	[ChargeBy] [int] NULL,
	[BasicCharge] [bit] NOT NULL,
	[ApplySurcharge] [bit] NOT NULL,
	[fldNotLoadItem] [bit] NOT NULL,
	[fldNoCharge] [bit] NOT NULL,
	[ConvertedKilos] [float] NULL,
	[fldAdditionalCharge] [bit] NOT NULL,
	[PK_UnitMeasure] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fldWarrantySurcharge] [bit] NOT NULL,
	[fldAdditionalServicePDA] [bit] NULL,
	[fldSpecialSurcharge] [bit] NOT NULL,
	[fldOFVariance] [bit] NOT NULL,
	[fldWarehouseStorage] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[viwChequesPaid]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwChequesPaid]
AS
SELECT     [Invoice Number], Date, [Cheque Number], [Amount Paid], id, EFT, ACCode, ACName, ACBank, ACBranch, Cash, CreditCard, CardName, CardType, 
                      CardNumber, ExpiryDate, FldHold, fldDepot, fldUser, fldDateProcessed
FROM         synTS2000_dbo_Cheques_Paid



GO
/****** Object:  View [dbo].[viwConfiguration]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwConfiguration]
AS
SELECT     OptionName, ID, Setting, fldVersion, fldDescription
FROM         synTS2000_dbo_Configuration




GO
/****** Object:  View [dbo].[viwCurrentUser]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwCurrentUser]
AS
SELECT     RIGHT(SUSER_SNAME(), LEN(SUSER_SNAME()) - CHARINDEX('\', SUSER_SNAME())) AS fldUserName



GO
/****** Object:  View [dbo].[viwDangerousGoods]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwDangerousGoods]
AS
SELECT     fldID, fldShippingName, fldClass, fldSubRisk, fldUnNo, fldPackagingGroup, fldTypeOfPackage, fldNumberOfPackages, fldAggergateQty, fldContactName,
                       fldContactPhone, fldConNoteID, fldCustCode
FROM         synTS2000_dbo_tblDangerousGoods




GO
/****** Object:  View [dbo].[viwFormLogChange]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwFormLogChange]
AS
SELECT     idxFormLogChange, fldForm, fldSubForm, fldRecordNumber, fldSubRecordNumber, fldChangedFLCidx, fldChangedControl, fldChangedDate, 
                      fldChangedFrom, fldChangedTo, fldChangedUserID
FROM         synTS2000_dbo_tblFormLogChange



GO
/****** Object:  View [dbo].[viwFormLogControl]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwFormLogControl]
AS
SELECT     idxFormLogControl, fldForm, fldControl, fldDescription, fldComments
FROM         synTS2000_dbo_tblFormLogControl



GO
/****** Object:  View [dbo].[viwImportBatchHeader]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwImportBatchHeader]
AS
SELECT     BatchID, fldDepot, fldCustCode, fldDate, fldImporter, fldConsImported, fldConsRejected, fldConsAddedFromRejects, fldConsDeletedFromReject, 
                      fldTemplate, fldImportType, fldImportFileName, fldCustName, fldOverrideChargeUnit, fldOverrideDepot, fldPickupFlag, fldNoCrossRef, 
                      fldManifestingOnly, fld8LineItemAscii, fldSendToPDA, fldConsPrinted, fldLastAction, fldTemplateID, fldImportCompleted, fldImportAborted, 
                      fldComment
FROM         synTS2000_dbo_tblImportBatchHeader




GO
/****** Object:  View [dbo].[viwImportTemplates]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwImportTemplates]
AS
/*******************************************************************************
*					Copyright (c) Border Express Pty Ltd 2010
*
* Purpose:	This view shows a view of the synTS2000_dbo_tblImportTemplates
*			
* Notes
* =====
*	+ Addition
*	- deletion
*	* modification
*
*					Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
* Version	Date		By	Notes
* =======	====		==	=====
* 1.0.0		??-??-??	??	+ Initial Creation
* 1.0.1		01-12-10	VF	* SC: 2056 - Removed AutoPrice flag 
* 1.0.2		21-08-13	VF	* SC: 4520 - Add new flags
* 1.0.3		24-09-13	VF	* SC: 3525 - Add new flags
* 1.0.3		24-09-13	VF	* SR:76369 - Add new field
*
*					Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
SELECT	fldID AS fldTemplateID
	   ,fldTemplateName
	   ,fldCreatedBy
	   ,fldDateCreated
	   ,fldImportType AS fldImportFileType
	   ,fldCustomerID AS fldCustomerCode
	   ,fldChargeUnit
	   ,fldPickupFlag AS fldPickup
	   ,fldValidateSender
	   ,fldManifestingOnly AS fldManifestOnly
	   ,fld8Lines
	   ,fldRCTIIncludeReport
	   ,fldMultipleFBY
	   ,fldDelimiter
	   ,fldImportFileName
	   ,fldLocalFileName
	   ,fldSendingDepot
	   ,fldConvCustCodes
	   ,fldIncomingEmail
	   ,fldIncomingEmailPassword
	   ,fldExchangeServer
	   ,fldSPName
	   ,fldStatus
	   ,fldSenderEmail
	   ,fldNotifyEmail
	   ,fldHeaderRow
	   ,fldAutoImport
	   ,fldMergeLoadItems
	   ,fldComments
	   ,fldMaxAge --[SC:929]
	   ,fldSkipLoadItemValidation		--SC:4250
	   ,fldAllowCustEdit				--SC:3525
	   ,fkImpDupOptId					--SC:3525
	   ,fldEmailCustFeedback			--SC:3525
	   ,fldBarcodeDelimiter				--SR:76369
FROM	synTS2000_dbo_tblImportTemplates



GO
/****** Object:  View [dbo].[viwINVOICES]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwINVOICES]
AS
-- SC:4511 VF 24/9/13 - Use the table so no rows are filtered out
SELECT	[INVOICE NUMBER], 
		[INVOICE DATE], 
		[CONSIGNOR CODE], 
		[CONSIGNOR NAME], 
		[CONSIGNOR ADDRESS], 
		[CONSIGNOR PHONE], 
		[CONSIGNOR CONTACT], 
		[CONSIGNOR REFERENCE], 
		[RECEIVER CODE], 
		[RECEIVER NAME], 
		[RECEIVER ADDRESS], 
		[RECEIVER PHONE], 
		[RECEIVER CONTACT], 
		[ETA DATE], 
		[NUMBER ITEMS], 
		WEIGHT, 
		CUBIC, 
		[SENDER PAYS], 
		[RECEIVER PAYS], 
		[FREIGHT PAYABLE BY], 
		[COST TO DEBTORS], 
		[CONSOR NAME], 
		[CONSEE NAME], 
		DEBTOR, 
		[TOTAL COST], 
		HOLD, 
		SALES, 
		[PALLETS TRANSFERRED DIRECT], 
		CHEP, 
		LOSCAM, 
		ACCOUNT, 
		[CONSIGNOR SUBURB], 
		[CONSIGNOR STATE], 
		[CONSIGNOR POSTCODE], 
		[RECEIVER SUBURB], 
		[RECEIVER STATE], 
		[RECEIVER POSTCODE], 
		PAID, 
		[AMOUNT PAID], 
		[FBY CODE], 
		SCS, 
		RCS, 
		[STATEMENT NUMBER], 
		MODE, 
		ConsAC, 
		ConseeAC, 
		PalletsNA, 
		PreGSTCharge, 
		GSTCharge, 
		TotalUnits, 
		TotalWeight, 
		TotalCubic, 
		FBYCode, 
		FBYPay, 
		Insurance, 
		DangerousGoods, 
		UNno, 
		ClassEmergCode, 
		Pickup, 
		Delivery, 
		Priced, 
		ValueOfGoods, 
		ChepOut, 
		LoscamOut, 
		LocalDeliveryOnly, 
		Printed, 
		[invoice id], 
		CreditLink, 
		SenderAddress1, 
		ReceiverAddress1, 
		PickupNumber, 
		StatementDate, 
		TransferLink, 
		Surcharge, 
		UserName, 
		QuoteOnly, 
		FldDateEntered, 
		fldLastModified, 
		fldModifiedBy, 
		fldReceiverReference, 
		fldPaymentComments, 
		ExpectedCost, 
		RemoveFromUncosted, 
		fldPalletType, 
		fldSenderReceived, 
		fldSenderDispatched, 
		fldReceiverReceived, 
		fldReceiverDispatched, 
		fldCMD, 
		FldSenderReceivedLoscam, 
		FldSenderDispatchedLoscam, 
		FldReceiverReceivedLoscam, 
		FldReceiverDispatchedLoscam, 
		FldChep, 
		FldLoscam, 
		FldTransfer, 
		fldOwner, 
		fldImportID, 
		fldETDDate, 
		COMMENTS, 
		fldHasAdjustments, 
		fldDispatchEmail, 
		StatementRunID, 
		fldStore, 
		fldMovement, 
		fldBalance, 
		fldMonthNumETADate, 
		fldMonthNumInvDate, 
		fldDispatchAccount, 
		rowguid, 
		fldTFRChep, 
		fldTFRLoscam, 
		fldCopiedFromQuote, 
		fldOriginalConNote, 
		fldCopied, 
		fldChargeableUnits, 
		fldFoodstuffs, 
		fldCWC, 
		fldPickupCreated, 
		InvoiceStatus, 
		InvoiceGuid, 
		PickupID, 
		fldStartZone, 
		fldEndZone,
		------ CASE 6181 CD ------
		fldBookmarkedReason,
		fldBookmarkedBy,
		fldDateBookmarked
		---- END CASE 6181 CD ----
FROM	[dbo].[synTS2000_dbo_tblInvoice]



GO
/****** Object:  View [dbo].[viwInvoicesSub]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwInvoicesSub]
AS
SELECT     Amount, Description, Weight, Cubic, CubedActual, ConNoteID, ChargeUnit, CustRef, ID, cub1, cub2, cub3, TotalCubed, fldCubicUnits, fldDateCreated, 
                      rowguid, fldAddCharge
FROM         synTS2000_dbo_InvoicesSub




GO
/****** Object:  View [dbo].[viwLastBatchScan]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwLastBatchScan]
AS
SELECT     Logged AS LogDate
FROM         dbo.ImportLog WITH (NOLOCK)
WHERE     (id =
                          (SELECT     MAX(id) AS Expr1
                            FROM          dbo.ImportLog WITH (NOLOCK)
                            WHERE      (Code = 3110)))



GO
/****** Object:  View [dbo].[viwLastEmailScan]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--disable trigger trgDDL_ProtectObjects on DATABASE

CREATE VIEW [dbo].[viwLastEmailScan]
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2010
*
* Purpose     :	Return the last email scan date
*	
* Notes
* =====
*	+ Addition
*	- Deletion
*	* Modification
*
********************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0										+ Initial creation
* 1.0.1		22/7/10		VF		SC:1426		+ Found a locking issue. If someone 
*											running the pricing routine then this 
*											lock this view. Add NOLOCK hint
*
*******************************************************************************/
 
SELECT Logged AS LogDate
FROM dbo.ImportLog WITH (NOLOCK)
WHERE id = (SELECT MAX(i.id)
			 FROM dbo.ImportLog i WITH (NOLOCK)
			 WHERE i.code = 1110)



GO
/****** Object:  View [dbo].[viwLastFolderScan]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwLastFolderScan]
AS
SELECT     Logged AS LogDate
FROM         dbo.ImportLog
WHERE     (id =
                          (SELECT     MAX(id) AS Expr1
                            FROM          dbo.ImportLog AS ImportLog_1
                            WHERE      (Code = 2110)))



GO
/****** Object:  View [dbo].[viwOwners]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwOwners]
AS
SELECT     Owner, ID, Address, Suburb, State, Postcode, Telephone, Facsimile, MAddress, MSuburb, MState, MPostcode, MTelephone, MFax, Logo, fldLocal, 
                      fldLinehaul, fldOnforward, MAddress1, MSuburb1, MPostcode1, MState1, fldSubbieList
FROM         synTS2000_dbo_Owners




GO
/****** Object:  View [dbo].[viwPricing]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwPricing]
AS
SELECT     ChargeUnit, [From], [To], Charge, GST, InclGST, ConNoteID, ID, ChargeUnits, ChargeRate, fldOnforward, fldManualPrice, Schedule, fldLegCubic, 
                      fldShowSurcharge
FROM         synTS2000_dbo_Pricing



GO
/****** Object:  View [dbo].[viwSendersReceivers]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwSendersReceivers]
AS
SELECT	CODE, 
		[NAME], 
		ADDRESS, 
		SUBURB, 
		STATE, 
		POSTCODE, 
		PHONE, 
		FAX, 
		CONTACT, 
		[COST CENTRE], 
		Owner, 
		Email, 
		ABN, 
		Sender, 
		Receiver, 
		[3rdParty], 
		RatesSchedule, 
		AccountTerms, 
		MailingAddress, 
		MailingSuburb, 
		MailingState, 
		MailingPostcode, 
		AsAbove, 
		FPBCode, 
		FPBName, 
		ID,
		SmentType, 
		MailingAddress1, 
		MailingAddress2, 
		PermRef, 
		AccountContact, 
		AcountPhone, 
		UseDefault, 
		AccountName, 
		Bank, 
		Branch, 
		FldCategory, 
		FldCloseTime, 
		FldStopCredit, 
		FldLastUpdateBy, 
		FldLastUpdateDate, 
		FldStatementFormat, 
		FldEmailStatement, 
		fldOpenTime, 
		fldMobile, 
		fldCardType, 
		fldCardNumber, 
		fldExpiryDate, 
		fldCardName, 
		fldOneInvoicePerPage, 
		PrintOrderByInv, 
		fldReceiverCode, 
		fldDateLastUsedOld, 
		fldLastPaymentDate, 
		fldLastPaymentAmount, 
		fldOSPhone, 
		fldCSVStatement, 
		fldCreditLimit, 
		fldDateLastUsed, 
		fldPrintAsWell, 
		fldDateStarted, 
		fldUpdatedBy, 
		fldExcludeManifestLabels, 
		rowguid, 
		fldAutoBookmark, 
		fldLastTradedDate, 
		msrepl_tran_version, 
		fldCSVTemplate,
		------ CASE 6181 CD ------
		fldAutoBookmarkedReason,
		fldAutoBookmarkedBy,
		fldDateAutoBookmarked
		---- END CASE 6181 CD ----
FROM         synTS2000_dbo_SendersReceivers



GO
/****** Object:  View [dbo].[viwSendingCentres1]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwSendingCentres1]
AS
SELECT     fldDepotID,
 [Sending Centre], [Address], Suburb, [State], Postcode, Telephone, Facsimile, fldExportCode, fldPickupDefault, 
                     fldPickupNotificationEmail	
FROM         synTS2000_dbo_Sending_Centres



GO
/****** Object:  View [dbo].[viwSuburbs]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viwSuburbs]
AS
SELECT     Suburb, RunNo, Postcode, State, ID, Depot1, Run1, Depot2, Run2, Depot3, Run3, fldDepotRun, rowguid, msrepl_tran_version
FROM         synTS2000_dbo_Suburbs




GO
/****** Object:  View [dbo].[vwAuditLog]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*****************************************************
	CODE
*****************************************************/
CREATE VIEW [dbo].[vwAuditLog] AS
	SELECT lg.pkAuditID
		,lg.fldDateTime
		,lg.fkTemplateID
		,case lg.fldEventCode 
			when 'I' then 'Add'
			when 'U' then 'Update'
			when 'D' then 'Delete'
			else 'Event'
		end fldEventCode 
		,lg.fldComment
		,lg.fldUser
		,d.fldUserFriendly	fldColumnName
		,lg.fldOldValue
		,lg.fldNewValue		
	FROM tblAuditLog lg
		LEFT JOIN tblAuditDisplay d ON lg.fldTableName = d.fldTableName AND lg.fldColumnName = d.fldColumnName
	WHERE lg.fldTableName IS NULL OR d.fldTableName IS NOT NULL



GO
/****** Object:  View [dbo].[vwAutoExportCheckpoints]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwAutoExportCheckpoints]
	AS
/********************************************************************************
 * Copyright (c) Border Express Pty Ltd 2008
 *
 * Date Created:	23-Jul-2008
 * Created By  :	Chris Daws
 * Purpose     :	Show the data in the Auto Export Checkpoints table on the TS database.
 *
 * Notes
 * =====
 *	+ Addition
 *	- Deletion
 *	* Modification
 *
 * Copyright (c) Border Express Pty Ltd 2008
 ********************************************************************************
 * Version	Date		By	Case	Notes
 * =======	========	==	====	=====
 * 1.0.0	23-07-08	CD	6024	+ Initial creation
 *
 * Copyright (c) Border Express Pty Ltd 2008
 *******************************************************************************/

	SELECT	[pkID],
			[fldStage],
			[fldStep],
			[fldResult],
			[fldCode],
			[fldMessage],
			[fldEnable]
	FROM	synTS2000_dbo_tblAutoExportCheckpoints



GO
/****** Object:  View [dbo].[vwAutoExportEventLog]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwAutoExportEventLog]
	AS
/********************************************************************************
 * Copyright (c) Border Express Pty Ltd 2008
 *
 * Date Created:	23-Jul-2008
 * Created By  :	Chris Daws
 * Purpose     :	Show the Auto Export event log on the TS database.
 *
 * Notes
 * =====
 *	+ Addition
 *	- Deletion
 *	* Modification
 *
 * Copyright (c) Border Express Pty Ltd 2008
 ********************************************************************************
 * Version	Date		By	Case	Notes
 * =======	========	==	====	=====
 * 1.0.0	23-07-08	CD	6024	+ Initial creation
 *
 * Copyright (c) Border Express Pty Ltd 2008
 *******************************************************************************/

	SELECT	[pkEventID],
			[fldLogged],
			[fldEventCode],
			[fldRefNo],
			[fldType],
			[fldUserName],
			[fldDepot],
			[fldComment],
			[fldOccurred]
	FROM	synTS2000_dbo_tblAutoExportLog



GO
/****** Object:  View [dbo].[vwBatchErrDetails]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwBatchErrDetails]
AS
SELECT hdr.BatchId fkBatchID
	,hdr.fldDate		fldBatchDate
	,tmp.fldId			fkTemplateID
	,tmp.fldTemplateName
	,stat.fkAccount
	,stat.fkConNoteNum
	,stat.fldProblem
FROM dbo.synTS2000_dbo_tblImportBatchHeader hdr
	INNER JOIN dbo.synTS2000_dbo_tblImportTemplates tmp ON hdr.fldTemplateID = tmp.fldId
	INNER JOIN dbo.tblRejectStats stat ON hdr.BatchId = stat.fkBatchId


GO
/****** Object:  View [dbo].[vwCustCatalogue]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE VIEW [dbo].[vwCustCatalogue] AS
	/*******************************************************************************  
		*     Copyright (c) Border Express Pty Ltd 2009  
		*  
		* Date Created: 12-Nov-29  
		* Created by: Nicole Brown  
		* Purpose:  This view provides a view of the customer catelogue table in transport 
		*			suite. This table is used to store customer product lines. The form 
		*			frmCustCatalouge provides the front end for this table in TS. 
		* =====  
		* + Addition  
		* - deletion  
		* * modification  
		*  
		*     Copyright (c) Border Express Pty Ltd 2009  
		********************************************************************************  
		* Version Date		By	Case	Notes  
		* ======= ====		==	====	=====  
		* 1.0.0  12-11-09	NB	SC:1009	+ Initial creation (See SC:805 for more info)  
		* 1.0.1  22-12-09   NY	SC:1009 * Copied from version on TS
		*
		*     Copyright (c) Border Express Pty Ltd 2009  
	*******************************************************************************/  

	
	SELECT	cat.pkCatId,																	--The primary key to identify a unique record
			cat.fldAccountCode,																--The customer code (links to the sendersreivers table on code)
			cat.fldCustRef1,																--The customer reference field
			cat.fldCustRef2,																--An extra customer reference field
			cat.fldDescription,																--The description of the item 
			cat.fldWeight,																	--The weight (kgs) of the item 
			cat.fldLength,																	--The length (m) of the item 
			cat.fldWidth,																	--The width (m) of the item
			cat.fldHeight,																	--The height (m) of the item
			CAST(cat.fldWeight AS DECIMAL(10,3))	AS fldWeightSort,						--The weight (kgs) of the item 
			CAST(cat.fldLength AS DECIMAL(10,3))	AS fldLengthSort,						--The length (m) of the item 
			CAST(cat.fldWidth AS DECIMAL(10,3))		AS fldWidthSort,						--The width (m) of the item
			CAST(cat.fldHeight AS DECIMAL(10,3))	AS fldHeightSort,						--The height (m) of the item
			cat.fldChargeUnit,																--The charge unit used for pricing the item on the con note 
			cat.fldEnteredBy,																--The name of the person that entered the product 
			cat.fldDateEntered,																--The date that the product was entered into the system
			cat.fldLastModifiedBy,															--The name of the person that last modified the product 
			cat.fldDateLastModified															--The date the product was last modified 
	FROM	synTS2000_dbo_tblCustCatalogue cat



GO
/****** Object:  View [dbo].[vwDuplicateOption]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwDuplicateOption]
AS
/*******************************************************************************
*					Copyright (c) Border Express Pty Ltd 2010
*
* Purpose:	This view shows a view of the synTS2000_dbo_tblImportDuplicateOption
*			
* Notes
* =====
*	+ Addition
*	- deletion
*	* modification
*
*					Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
* Version	Date		By	Notes
* =======	====		==	=====
* 1.0.0		24-09-13	VF	+ SC:3525 - Initial Creation
*
*					Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
	SELECT	pkImpDupOptId		
		,fldName			
		,fldDescription		
	FROM	synTS2000_dbo_tblImportDuplicateOption
	WHERE fldActive = 1



GO
/****** Object:  View [dbo].[vwImportedConNoteDetail]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwImportedConNoteDetail] 
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2007
*
* Purpose: View to display imported con notes (all details)
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
 Version   Date       By   Notes
 =======   ====       ==   =====
 1.0.0		31/07/13	VF	+ SC:3597: Initial version
 1.0.1		3/10/13		VF	* SC:3525 - removed SELECT * and replaced with fields

 Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
select [INVOICE NUMBER]
      ,[INVOICE DATE]
      ,[CONSIGNOR CODE]
      ,[CONSIGNOR NAME]
      ,[CONSIGNOR ADDRESS]
      ,[CONSIGNOR PHONE]
      ,[CONSIGNOR CONTACT]
      ,[CONSIGNOR REFERENCE]
      ,[RECEIVER CODE]
      ,[RECEIVER NAME]
      ,[RECEIVER ADDRESS]
      ,[RECEIVER PHONE]
      ,[RECEIVER CONTACT]
      ,[ETA DATE]
      ,[NUMBER ITEMS]
      ,[WEIGHT]
      ,[CUBIC]
      ,[SENDER PAYS]
      ,[RECEIVER PAYS]
      ,[FREIGHT PAYABLE BY]
      ,[COST TO DEBTORS]
      ,[CONSOR NAME]
      ,[CONSEE NAME]
      ,[DEBTOR]
      ,[TOTAL COST]
      ,[HOLD]
      ,[SALES]
      ,[PALLETS TRANSFERRED DIRECT]
      ,[CHEP]
      ,[LOSCAM]
      ,[ACCOUNT]
      ,[CONSIGNOR SUBURB]
      ,[CONSIGNOR STATE]
      ,[CONSIGNOR POSTCODE]
      ,[RECEIVER SUBURB]
      ,[RECEIVER STATE]
      ,[RECEIVER POSTCODE]
      ,[PAID]
      ,[AMOUNT PAID]
      ,[FBY CODE]
      ,[SCS]
      ,[RCS]
      ,[STATEMENT NUMBER]
      ,[MODE]
      ,[ConsAC]
      ,[ConseeAC]
      ,[PalletsNA]
      ,[PreGSTCharge]
      ,[GSTCharge]
      ,[TotalUnits]
      ,[TotalWeight]
      ,[TotalCubic]
      ,[FBYCode]
      ,[FBYPay]
      ,[Insurance]
      ,[DangerousGoods]
      ,[UNno]
      ,[ClassEmergCode]
      ,[Pickup]
      ,[Delivery]
      ,[Priced]
      ,[ValueOfGoods]
      ,[ChepOut]
      ,[LoscamOut]
      ,[LocalDeliveryOnly]
      ,[Printed]
      ,[invoice id]
      ,[CreditLink]
      ,[SenderAddress1]
      ,[ReceiverAddress1]
      ,[PickupNumber]
      ,[StatementDate]
      ,[TransferLink]
      ,[Surcharge]
      ,[UserName]
      ,[QuoteOnly]
      ,[FldDateEntered]
      ,[fldLastModified]
      ,[fldModifiedBy]
      ,[fldReceiverReference]
      ,[fldPaymentComments]
      ,[ExpectedCost]
      ,[RemoveFromUncosted]
      ,[fldPalletType]
      ,[fldSenderReceived]
      ,[fldSenderDispatched]
      ,[fldRecevierReceived]
      ,[fldReceiverDispatched]
      ,[fldCMD]
      ,[FldSenderReceivedLoscam]
      ,[FldSenderDispatchedLoscam]
      ,[FldReceiverReceivedLoscam]
      ,[FldReceiverDispatchedLoscam]
      ,[FldChep]
      ,[FldLoscam]
      ,[FldTransfer]
      ,[fldOwner]
      ,[fldImportID]
      ,[fldETDDate]
      ,[COMMENTS]
      ,[fldHasAdjustments]
      ,[fldDispatchEmail]
      ,[StatementRunID]
      ,[fldStore]
      ,[fldMovement]
      ,[fldBalance]
      ,[fldMonthNumETADate]
      ,[fldMonthNumInvDate]
      ,[fldDispatchAccount]
      ,[rowguid]
      ,[fldTFRChep]
      ,[fldTFRLoscam]
      ,[fldCopiedFromQuote]
      ,[fldOriginalConNote]
      ,[fldCopied]
      ,[fldChargeableUnits]
      ,[fldFoodstuffs]
      ,[fldCWC]
      ,[fldPickupCreated]
      ,[InvoiceStatus]
      ,[InvoiceGuid]
      ,[PickupID]
      ,[BatchID]
      ,[Converted]
      ,[Validated]
      ,[Rejected]
      ,[DuplicateConNote]
      ,[InvalidDate]
      ,[InsufficientSenderDetail]
      ,[InsufficientReceiverDetail]
      ,[LoadItemMismatch]
      ,[TotalsMismatch]
      ,[Other]
      ,[Transferred]
      ,[fldBookmarkedReason]
      ,[fldBookmarkedBy]
      ,[fldDateBookmarked]
      ,[fldChepPickupDocketNumber]
      ,[fldLoscamPickupDocketNumber]
      ,[fldLoscamDocketNumber]
      ,[fldExcludeCN]
      ,[fldPending]
      ,[fldFinaliseCN]
      ,(SELECT fldReasons FROM dbo.fncRejectReasons(iti.[invoice id]))  RejectComment
from importtransferinterface iti



GO
/****** Object:  View [dbo].[vwImportedConNoteSummary]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwImportedConNoteSummary] 
AS
/*******************************************************************************
* Copyright (c) Border Express Pty Ltd 2007
*
* Purpose: View to display imported con notes (just some summary info)
*
* Notes
* =====
* + Addition
* - Deletion
* * Modification
*
* Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
 Version   Date       By   Notes
 =======   ====       ==   =====
 1.0.0		31/07/13	VF	+ SC:3597: Initial version

 Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
select [INVOICE NUMBER]
	, [CONSOR NAME]
	, [CONSEE NAME]
	, [TotalUnits]
	, [TotalWeight]
	, [TotalCubic]
	, (CASE WHEN [DangerousGoods] = '1' THEN 'YES' ELSE 'NO' END) as DangerGoods
	, [Converted]
	, [Validated]
	, [Rejected]
	, [Transferred]
	, (SELECT fldReasons FROM dbo.fncRejectReasons(iti.[invoice id]))  RejectComment
	, [invoice id]
	, [BatchID] 
from importtransferinterface iti



GO
/****** Object:  View [dbo].[vwImportFieldsXREFLevel]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwImportFieldsXREFLevel]
	AS
/********************************************************************************
 * Copyright (c) Border Express Pty Ltd 2010
 *
 * Purpose     :	Provides the user with a list of the Field Level values
 *					that can be set when adding a new Field to ImportFieldsXREF
 *
 * Notes
 * =====
 *	+ Addition
 *	- Deletion
 *	* Modification
 *
 ********************************************************************************
 * Version	Date		By	Case	Notes
 * =======	========	==	====	=====
 * 1.0.0	04-05-10	VF	SC:1472	+ Initial creation
 *
 *******************************************************************************/

	SELECT 1 fldFieldLevel, 'TS2000' fldLevelDesc, 1 fldSystem
	UNION
	SELECT 2 fldFieldLevel, 'Con Note' fldLevelDesc, 0 fldSystem
	UNION
	SELECT 3 fldFieldLevel, 'Load Items' fldLevelDesc, 0 fldSystem
	UNION
	SELECT 4 fldFieldLevel, 'Dangerous Goods' fldLevelDesc, 0 fldSystem
	UNION
	SELECT 6 fldFieldLevel, 'Logistic Unit' fldLevelDesc, 0 fldSystem
	UNION
	SELECT 7 fldFieldLevel, 'Trade Item' fldLevelDesc, 0 fldSystem
	UNION
	SELECT 10 fldFieldLevel, 'End Con Note' fldLevelDesc, 1 fldSystem
	UNION
	SELECT 11 fldFieldLevel, 'End TS2000' fldLevelDesc, 1 fldSystem
	UNION
	SELECT 12 fldFieldLevel, 'Misc' fldLevelDesc, 1 fldSystem



GO
/****** Object:  View [dbo].[vwRejectStats]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwRejectStats]
/*******************************************************************************
*					Copyright (c) Border Express Pty Ltd 2010
*
* Purpose:	Shows some details about recent rejects
*			
* Notes
* =====
*	+ Addition
*	- deletion
*	* modification
*
*					Copyright (c) Border Express Pty Ltd 2007
********************************************************************************
* Version	Date		By	Notes
* =======	====		==	=====
* 1.0.0		04-10-13	VF	+ Initial Creation
*
*					Copyright (c) Border Express Pty Ltd 2007
*******************************************************************************/
AS
SELECT 
	 hdr.BatchID
	,hdr.fldCustCode
	,hdr.fldTemplateId	
	,tpl.fldTemplateName
	,hdr.fldDate
	,hdr.fldConsImported
	,hdr.fldConsRejected
	,hdr.fldConsAddedFromRejects
	,hdr.fldConsDeletedFromReject
	,s.fkAccount
	,s.fkConNoteNum
	,ctrl.fldDescription
	,s.fldProblem
FROM dbo.tblRejectStats s
	INNER JOIN dbo.synTS2000_dbo_tblImportBatchHeader hdr ON s.fkBatchId = hdr.BatchID
	INNER JOIN dbo.synTS2000_dbo_tblImportTemplates tpl ON hdr.fldTemplateId = tpl.fldID
	LEFT JOIN synTS2000_dbo_tblFormLogControl ctrl ON s.fkFormLogControl = ctrl.idxFormLogControl



GO
/****** Object:  View [dbo].[vwScratchpadFields]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vwScratchpadFields]
AS
	SELECT 
		x.FieldLevel	fldSortLevel
		,x.fldSortOrder
		,s.* 
	FROM ImportScratchpad s
		INNER JOIN ImportFieldsXREF x ON s.FieldID = x.FieldID



GO
/****** Object:  View [dbo].[vwTemplateFields]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vwTemplateFields]
AS
/*******************************************************************************
* Version	Date		By		Case		Notes
* =======	====		==		=======		=====
* 1.0.0									 		+ Initial creation
* 1.0.0		08/07/2014	VF		SR:75710 		+ Added pkTSField
*
*******************************************************************************/

SELECT 
	 fld.FieldLevel	fldSortLevel
	,xref.fldSortOrder
	,fld.* 
	,xref.ID pkTSField
FROM importtemplatefields fld
	INNER JOIN ImportFieldsXREF xref ON fld.FieldLevel = xref.FieldLevel AND fld.FieldNameTS = xref.FieldNameTS



GO
/****** Object:  View [dbo].[vwValidateConNoteLoadItem]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwValidateConNoteLoadItem]
	AS
/********************************************************************************
 * Copyright (c) Border Express Pty Ltd 2010
 *
 * Purpose     :	Provides a list of Load Item details in a format required by 
 *					the rules specified in vwValidationRule 
 *
 * Notes
 * =====
 *	+ Addition
 *	- Deletion
 *	* Modification
  *
 ********************************************************************************
 * Version	Date		By	Case		Notes
 * =======	========	==	====		=====
 * 1.0.0	12-05-10	VF	SC:1073		+Initial creation
 * 1.0.1	13-07-10	VF	SC:1435		Added charge unit
 * 1.0.2	03-08-10	VF	SC:1920		Added dimension values and rounding
 * 1.0.3	09-08-10	VF	SC:1920		Converted cubic to numeric rather than the more unreliable 
 *										float. Also had to cater for scientific nonation (eg '1e-006')
 * 1.0.4	30-10-12	VF	SC:3962		Added cubic units so it can be validated as integer
 *******************************************************************************/
SELECT	 ld.[ID]					AS pkLoadItemID
		,ld.[ConNoteID]				AS fkConNoteID
		,CASE WHEN ISNUMERIC(ld.[Amount]) = 0 
				THEN NULL 
				ELSE Convert(Float, ld.[Amount]) 
		  END						AS fldQuantity  --float
		,ld.[Description]			AS fldShippingUnit
		,CASE WHEN ISNUMERIC(ld.[Weight]) = 0 
				THEN NULL 
				ELSE Convert(Float, ld.[Weight]) 
		  END						AS fldWeight  --float
		,CASE WHEN ISNUMERIC(ld.[Cubic]) = 0 
				THEN NULL 
				ELSE 
					CASE WHEN charindex('e', cubic) > 0 
						THEN 0 -- tried converting to float and then numeric but weird float issue 
								-- reoccured (eg 1.1495 was rounded to 1.149 rather than 1.150)
						ELSE round(Convert(numeric(18,3), ld.[Cubic]),3) 
					END
		  END						AS fldDimension  --float
		,ld.ChargeUnit AS fldChargeUnit  
		,case when isnumeric(cub1) = 0 
			then NULL
			else convert(numeric(18,3),cub1)
		 end						AS fldLength
		,case when isnumeric(cub2) = 0 
			then NULL
			else convert(numeric(18,3),cub2)
		 end						AS fldWidth
		,case when isnumeric(cub3) = 0 
			then NULL
			else convert(numeric(18,3),cub3)
		 end						AS fldHeight
		,ld.fldCubicUnits
		,case when isnumeric(cub1) + isnumeric(cub2) + isnumeric(cub3) + isnumeric(fldCubicUnits) = 4
			then round(convert(numeric(18,3),cub1) * convert(numeric(18,3),cub2) * convert(numeric(18,3),cub3) * convert(int, fldCubicUnits),3)
			else null
		end							AS fldDerivedDimension

FROM	ImportTransferInterfaceSub ld





GO
/****** Object:  View [dbo].[vwValidationRule]    Script Date: 2015-02-18 6:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwValidationRule]
	AS
/********************************************************************************
 * Copyright (c) Border Express Pty Ltd 2010
 *
 * Purpose     :	Provides a list of validation that should be applied to 
 *					tables within Auto Import
 *
 * Notes
 * =====
 *	+ Addition
 *	- Deletion
 *	* Modification
 *
 ********************************************************************************
 * Version	Date		By	Case	Notes
 * =======	========	==	====	=====
 * 1.0.0	12-05-10	VF	SC:1073	+ Initial creation
 * 1.0.01	18-05-10	VF	SC:1073	* Changed the source to a local table so it can be 
 *									customised to suit Auto Import
 * 1.0.2	30-10-10	VF	SC:3962	* added fldContinueOnFail flag
 * 1.0.3	18-11-14	VF	SR:78202 * Replaced error msg with fkErrCode
 *******************************************************************************/
	SELECT 
		 t.fldValidationType fldType
		,fldValidateOrder
		,fldValidateTable
		,fldValidateIdentity
		,fldHeaderLink
		,fldValidateField
		,fldValidateRule
		,fkErrCode
		,r.fldContinueOnFail
	FROM tblValidationType t 
		INNER JOIN tblValidationRule r ON t.PKTypeID = r.fkValidationTypeID
	WHERE t.fldValidationType = 'LoadItems'
	  AND fldEnabled = 1



GO
ALTER TABLE [dbo].[ImportFieldsXREF] ADD  CONSTRAINT [DF_ImportFieldsXREF_EndTag]  DEFAULT ((0)) FOR [EndTag]
GO
ALTER TABLE [dbo].[ImportFieldsXREF] ADD  DEFAULT ((0)) FOR [fldSortOrder]
GO
ALTER TABLE [dbo].[ImportFieldsXREF] ADD  DEFAULT ((0)) FOR [fldContainerTag]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [Route_Key]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col2]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col3]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [Sequence]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col5]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [Leg_Key]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col7]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [Site]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col9]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [Site_DST]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col11]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [Desc1]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col13]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col14]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [Desc2]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col16]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col17]
GO
ALTER TABLE [dbo].[ImportNSAroutes] ADD  DEFAULT (' ') FOR [col18]
GO
ALTER TABLE [dbo].[ImportTemplateFields] ADD  CONSTRAINT [DF_ImportTemplateFields_Combine]  DEFAULT ((0)) FOR [Combine]
GO
ALTER TABLE [dbo].[tblAuditDisplay] ADD  DEFAULT ((1)) FOR [fldActive]
GO
ALTER TABLE [dbo].[tblCheckpoints] ADD  CONSTRAINT [DF_tblCheckpoints_fldEnable]  DEFAULT ((1)) FOR [fldEnable]
GO
ALTER TABLE [dbo].[tblFileList] ADD  CONSTRAINT [DF_tblFileList_fldSelect]  DEFAULT ((0)) FOR [fldSelect]
GO
ALTER TABLE [dbo].[tblFileTypes] ADD  DEFAULT ((0)) FOR [fldTemplateFileType]
GO
ALTER TABLE [dbo].[tblImportFileFields] ADD  CONSTRAINT [DF_tblImportFileFields_fldRecordType]  DEFAULT ((1)) FOR [fldRecordType]
GO
ALTER TABLE [dbo].[tblImportFileFields] ADD  CONSTRAINT [DF_tblImportFileFields_fldPrefix]  DEFAULT ((0)) FOR [fldPrefix]
GO
ALTER TABLE [dbo].[tblImportFileFields] ADD  CONSTRAINT [DF_tblImportFileFields_fldSuffix]  DEFAULT ((0)) FOR [fldSuffix]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldStartTime]  DEFAULT ((0)) FOR [fldStartTime]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldEndTime]  DEFAULT ('23:59:59') FOR [fldEndTime]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldIntervalType]  DEFAULT (N'days') FOR [fldIntervalType]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldIntervalQty]  DEFAULT ((1)) FOR [fldIntervalQty]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldFileQty]  DEFAULT ((1)) FOR [fldFileQty]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldLastCheck]  DEFAULT (getdate()) FOR [fldLastCheck]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldNextCheck]  DEFAULT (getdate()) FOR [fldNextCheck]
GO
ALTER TABLE [dbo].[tblImportSchedule] ADD  CONSTRAINT [DF_tblImportSchedule_fldEnabled]  DEFAULT ((1)) FOR [fldEnabled]
GO
ALTER TABLE [dbo].[tblNonCodedColumns] ADD  DEFAULT (getdate()) FOR [fldDateUpdated]
GO
ALTER TABLE [dbo].[tblTSImportTableXREF] ADD  DEFAULT (getdate()) FOR [fldDateUpdated]
GO
ALTER TABLE [dbo].[tblValidationRule] ADD  CONSTRAINT [DF_tblValidationRule_fldSubRecord]  DEFAULT ((0)) FOR [fldSubRecord]
GO
ALTER TABLE [dbo].[tblValidationRule] ADD  CONSTRAINT [DF_tblValidationRule_fldContinueOnFail]  DEFAULT ((1)) FOR [fldContinueOnFail]
GO
ALTER TABLE [dbo].[tblValidationRule] ADD  CONSTRAINT [DF_tblValidationRule_fldEnabled]  DEFAULT ((0)) FOR [fldEnabled]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [DDL].[tblProctedObjects] ADD  CONSTRAINT [DF_tblProctedObjects_fldActiveStatus]  DEFAULT ((1)) FOR [fldActiveStatus]
GO
ALTER TABLE [IndexMaint].[tblRenamedIndexes] ADD  DEFAULT (getdate()) FOR [fldDate]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
USE [master]
GO
ALTER DATABASE [AutoImport] SET  READ_WRITE 
GO
