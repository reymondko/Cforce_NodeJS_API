-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2017 at 09:26 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmc`
--
CREATE DATABASE IF NOT EXISTS `cmc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cmc`;

-- --------------------------------------------------------

--
-- Table structure for table `cmc_merchant`
--

CREATE TABLE `cmc_merchant` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `Lead_ID` int(11) DEFAULT NULL,
  `MID` varchar(15) DEFAULT NULL,
  `DBA_Name` varchar(60) DEFAULT NULL,
  `Legal_Name` varchar(60) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `MrchType` varchar(1) DEFAULT 'R',
  `DateAdded` datetime DEFAULT NULL,
  `DatePending` date DEFAULT NULL,
  `DateBoarded` date DEFAULT NULL,
  `Date_Closed` date DEFAULT NULL,
  `Date_Opened` date DEFAULT NULL,
  `Rep_Name` varchar(50) DEFAULT NULL,
  `AgentID` char(4) DEFAULT NULL,
  `CMC_AgentID` int(11) DEFAULT NULL,
  `Agent_Schedule` int(11) DEFAULT NULL,
  `Address` text,
  `City` varchar(25) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Acquirer` varchar(45) DEFAULT NULL,
  `Monthly_Volume` decimal(16,2) DEFAULT NULL,
  `Average_Ticket` decimal(16,2) DEFAULT NULL,
  `Years_in_Business` int(11) DEFAULT NULL,
  `Pricing_Type` varchar(20) DEFAULT NULL,
  `Surcharge` decimal(16,2) DEFAULT NULL,
  `Percentage` varchar(20) DEFAULT NULL,
  `TransFee` decimal(16,2) DEFAULT NULL,
  `Debit` decimal(16,2) DEFAULT NULL,
  `Qual` decimal(16,2) DEFAULT NULL,
  `Mid_Qual` varchar(20) DEFAULT NULL,
  `Non_Qual` decimal(16,2) DEFAULT NULL,
  `Amex` varchar(5) DEFAULT 'NO',
  `Discover` varchar(5) DEFAULT 'NO',
  `Pin_Debit` varchar(5) DEFAULT 'NO',
  `Pin_Transfer_Fee` varchar(20) DEFAULT NULL,
  `Monthly_Min` decimal(16,2) DEFAULT NULL,
  `Statement_Fee` decimal(16,2) DEFAULT NULL,
  `Hardware` varchar(20) DEFAULT NULL,
  `Platform` varchar(20) DEFAULT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Prefund` decimal(16,2) DEFAULT NULL,
  `Prefund_met` tinyint(4) DEFAULT '0',
  `Contact_Name` varchar(20) DEFAULT NULL,
  `Personal_Guarantor` varchar(45) DEFAULT NULL,
  `Legal_Address` text,
  `Legal_Address2` varchar(45) DEFAULT NULL,
  `Legal_City` varchar(45) DEFAULT NULL,
  `Legal_State` varchar(45) DEFAULT NULL,
  `Legal_Zip` varchar(45) DEFAULT NULL,
  `Cs_Phone` varchar(45) DEFAULT NULL,
  `Corp_Phone` varchar(45) DEFAULT NULL,
  `Web_Address` varchar(65) DEFAULT NULL,
  `Contact_Phone` varchar(45) DEFAULT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `Cellular` varchar(20) DEFAULT NULL,
  `Ownership_Type` varchar(45) DEFAULT NULL,
  `Market_Type` varchar(45) DEFAULT NULL,
  `Card_Present` decimal(10,2) DEFAULT NULL,
  `Card_Swyped` decimal(10,2) DEFAULT NULL,
  `Card_Cnp` decimal(10,2) DEFAULT NULL,
  `Card_Other` decimal(10,2) DEFAULT NULL,
  `Card_Total` decimal(10,2) DEFAULT NULL,
  `Amex_Se` varchar(20) DEFAULT NULL,
  `Amex_Discount` varchar(20) DEFAULT NULL,
  `Name1` varchar(45) DEFAULT NULL,
  `Title1` varchar(45) DEFAULT NULL,
  `Percent_Owned1` decimal(10,2) DEFAULT NULL,
  `Address1` varchar(60) DEFAULT NULL,
  `City1` varchar(45) DEFAULT NULL,
  `State1` varchar(20) DEFAULT NULL,
  `Zip1` varchar(10) DEFAULT NULL,
  `Phone1` varchar(20) DEFAULT NULL,
  `SS1` varchar(14) DEFAULT NULL,
  `Name2` varchar(45) DEFAULT NULL,
  `Title2` varchar(45) DEFAULT NULL,
  `Percent_Owned2` decimal(10,2) DEFAULT NULL,
  `Address2` text,
  `City2` varchar(45) DEFAULT NULL,
  `State2` varchar(20) DEFAULT NULL,
  `Zip2` varchar(11) DEFAULT NULL,
  `Years2` varchar(15) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `SS2` varchar(15) DEFAULT NULL,
  `Routing_Number` varchar(45) DEFAULT NULL,
  `Alt_Routing_Number` varchar(45) DEFAULT NULL,
  `Checking_Account_Number` varchar(45) DEFAULT NULL,
  `Alt_Checking_Account_Number` varchar(45) DEFAULT NULL,
  `Account_Setup_Fee` decimal(10,2) DEFAULT NULL,
  `Chargeback_Fee` decimal(10,2) DEFAULT NULL,
  `EDC_AVS_Fee` decimal(10,2) DEFAULT NULL,
  `Annual_Pci_Fee` decimal(10,2) DEFAULT NULL,
  `Retrieval_Fee` decimal(10,2) DEFAULT NULL,
  `Voice_Auth_Fee` decimal(10,2) DEFAULT NULL,
  `Annual_Membership_Fee` decimal(10,2) DEFAULT NULL,
  `Non_Sufficient_Funds` decimal(10,2) DEFAULT NULL,
  `Help_Desk_Fee` decimal(10,2) DEFAULT NULL,
  `Monthly_Minimum_Fee` decimal(10,2) DEFAULT NULL,
  `Monthly_Debit_Access_Fee` decimal(10,2) DEFAULT NULL,
  `Online_Reporting_Access` decimal(10,2) DEFAULT NULL,
  `Monthly_Statement_Fee` decimal(10,2) DEFAULT NULL,
  `Monthly_Regulatory_Fee` decimal(10,2) DEFAULT NULL,
  `Other_Fee` decimal(10,2) DEFAULT NULL,
  `Gateway_Fee` decimal(10,2) DEFAULT NULL,
  `IRS_Name` varchar(70) DEFAULT NULL,
  `Taxpayer_ID` varchar(15) DEFAULT NULL,
  `SIC_Code` varchar(6) DEFAULT NULL,
  `Weekly_Dept_Amt` decimal(20,2) DEFAULT NULL,
  `Disbursement_Dly_Dep` varchar(50) DEFAULT NULL,
  `Adjustments` varchar(50) DEFAULT NULL,
  `Discount` varchar(50) DEFAULT NULL,
  `Monthly_ACH` varchar(50) DEFAULT NULL,
  `Fund_Routing` varchar(10) DEFAULT NULL,
  `Fund_DDA` varchar(25) DEFAULT NULL,
  `Disb_Detail` varchar(2) DEFAULT NULL,
  `Days_Hold` varchar(2) DEFAULT NULL,
  `ETC_Type` varchar(1) DEFAULT NULL,
  `ETC_Cutoff` varchar(50) DEFAULT NULL,
  `Incorp_Status` varchar(1) DEFAULT NULL,
  `Stmt_Additional_Page` varchar(50) DEFAULT NULL,
  `Fin_Acct_Type` varchar(50) DEFAULT NULL,
  `Alternate_Media_Flag` varchar(50) DEFAULT NULL,
  `Alternate_Fin_Acct_Type` varchar(50) DEFAULT NULL,
  `Disbursement_Method_Code` varchar(50) DEFAULT NULL,
  `Discount_Entry_Flag` varchar(50) DEFAULT NULL,
  `Stmt_Mail_Flag` varchar(50) DEFAULT NULL,
  `Stmt_IC_Print_Option` varchar(50) DEFAULT NULL,
  `Chain_Code` varchar(18) DEFAULT NULL,
  `Chain_Hdqtr_Pct` varchar(50) DEFAULT NULL,
  `Bnk_Crd_DBA` varchar(70) DEFAULT NULL,
  `Retail_DBA` varchar(70) DEFAULT NULL,
  `POS_Type` varchar(4) DEFAULT NULL,
  `CVV_Strip` varchar(4) DEFAULT NULL,
  `POS_Capability` varchar(4) DEFAULT NULL,
  `POS_Entry_Mode` varchar(4) DEFAULT NULL,
  `Batch_Chg` decimal(20,2) DEFAULT NULL,
  `Auth_Inc_Grid_ID` varchar(5) DEFAULT NULL,
  `User_Def_Inc_Grid_ID` varchar(5) DEFAULT NULL,
  `Chgbk_Chg` decimal(20,2) DEFAULT NULL,
  `Help_Desk_Chg` decimal(20,2) DEFAULT NULL,
  `Avs_Chg` decimal(20,2) DEFAULT NULL,
  `12bLtrChg` decimal(20,2) DEFAULT NULL,
  `One_Time_Chg` decimal(20,2) DEFAULT NULL,
  `Acct_Fee_Chg` decimal(20,2) DEFAULT NULL,
  `Acct_Fee_Chg2` decimal(20,2) DEFAULT NULL,
  `Acct_Fee_Chg3` decimal(20,2) DEFAULT NULL,
  `Acct_Fee_Chg4` decimal(20,2) DEFAULT NULL,
  `Acct_Fee_Chg5` decimal(20,2) DEFAULT NULL,
  `Dcvr_MID` varchar(18) DEFAULT NULL,
  `CardSw_Star` varchar(1) DEFAULT NULL,
  `CardSw_Maestro` varchar(1) DEFAULT NULL,
  `CardSw_Interlink` varchar(1) DEFAULT NULL,
  `CardSw_NYCE` varchar(1) DEFAULT NULL,
  `CardSw_Shazam` varchar(1) DEFAULT NULL,
  `CardSw_Pulse` varchar(1) DEFAULT NULL,
  `CardSw_Accel` varchar(1) DEFAULT NULL,
  `CardSw_CU24` varchar(1) DEFAULT NULL,
  `CardSw_AFFN` varchar(1) DEFAULT NULL,
  `CardSw_AKOPT` varchar(1) DEFAULT NULL,
  `CardSw_Jeanie` varchar(1) DEFAULT NULL,
  `CardSw_Visa` varchar(1) DEFAULT NULL,
  `CardSw_Vs_Ofln_Db` varchar(1) DEFAULT NULL,
  `CardSw_Mastercard` varchar(1) DEFAULT NULL,
  `CardSw_Mc_Ofln_Db` varchar(1) DEFAULT NULL,
  `CardSw_Dcvr_Acq` varchar(1) DEFAULT NULL,
  `CardSw_Dcvr_Aq_Db` varchar(1) DEFAULT NULL,
  `CardSw_Amex` varchar(1) DEFAULT NULL,
  `CardSw_Diners` varchar(1) DEFAULT NULL,
  `CardSw_JCB` varchar(1) DEFAULT NULL,
  `CardSw_Wright` varchar(1) DEFAULT NULL,
  `CardSw_Voyager` varchar(1) DEFAULT NULL,
  `CardSw_EBT_Cash` varchar(1) DEFAULT NULL,
  `CardSw_EBT_Stamp` varchar(1) DEFAULT NULL,
  `Tin_Typ` varchar(50) DEFAULT NULL,
  `Tin_Vldt_Stts_Cd` varchar(2) DEFAULT NULL,
  `Tin_Vldt_Stts_Dt` varchar(10) DEFAULT NULL,
  `Exclude_Adj_Chargebacks` varchar(50) DEFAULT NULL,
  `Discount_Calculation` varchar(50) DEFAULT NULL,
  `Help_Center` varchar(50) DEFAULT NULL,
  `Next_Review_Date` date DEFAULT NULL,
  `One_Time_Inc_Flg` varchar(50) DEFAULT NULL,
  `Acct1_Fee_Flag` varchar(50) DEFAULT NULL,
  `Acct2_Fee_Flag` varchar(50) DEFAULT NULL,
  `Acct3_Fee_Flag` varchar(50) DEFAULT NULL,
  `Acct4_Fee_Flag` varchar(50) DEFAULT NULL,
  `Acct5_Fee_Flag` varchar(50) DEFAULT NULL,
  `Filing_Index` varchar(45) DEFAULT NULL,
  `Product_Sold` varchar(45) DEFAULT NULL,
  `Contract_Time` varchar(10) DEFAULT '5',
  `ETF_Amount` varchar(45) DEFAULT '500',
  `Signer` varchar(50) DEFAULT NULL,
  `Pricing_Type_OB` varchar(20) DEFAULT NULL,
  `Qual_OB` decimal(16,2) DEFAULT NULL,
  `Debit_OB` decimal(16,2) DEFAULT NULL,
  `Mid_Qual_OB` decimal(16,2) DEFAULT NULL,
  `Non_Qual_OB` decimal(16,2) DEFAULT NULL,
  `TransFee_OB` decimal(16,2) DEFAULT NULL,
  `Percentage_OB` decimal(16,2) DEFAULT NULL,
  `MID_temp` varchar(20) DEFAULT NULL,
  `BBB_score` text,
  `BBB_updated` datetime DEFAULT NULL,
  `BBB_Link` text,
  `Gateway_Url` text,
  `Equipment` varchar(45) DEFAULT NULL,
  `Equipment_Type` varchar(45) DEFAULT NULL,
  `Gateway_Username` varchar(60) DEFAULT NULL,
  `Gateway_Password` varchar(60) DEFAULT NULL,
  `Integration_Partner` varchar(60) DEFAULT NULL,
  `Integration_Gateway` varchar(45) DEFAULT NULL,
  `Integration_source_key` varchar(65) DEFAULT NULL,
  `Integration_pin` varchar(45) DEFAULT NULL,
  `Integration_secret_key` varchar(45) DEFAULT NULL,
  `Integration_user_key` varchar(45) DEFAULT NULL,
  `Reserve_Amount` varchar(45) DEFAULT NULL,
  `Pre-Fund_Met` varchar(45) DEFAULT NULL,
  `Currency_Code` varchar(20) NOT NULL,
  `First_Data_Adjustment_Completed` int(1) DEFAULT '0',
  `Last_Updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmc_merchant`
--

INSERT INTO `cmc_merchant` (`ID`, `APP_ID`, `Lead_ID`, `MID`, `DBA_Name`, `Legal_Name`, `Status`, `MrchType`, `DateAdded`, `DatePending`, `DateBoarded`, `Date_Closed`, `Date_Opened`, `Rep_Name`, `AgentID`, `CMC_AgentID`, `Agent_Schedule`, `Address`, `City`, `State`, `Zip`, `Acquirer`, `Monthly_Volume`, `Average_Ticket`, `Years_in_Business`, `Pricing_Type`, `Surcharge`, `Percentage`, `TransFee`, `Debit`, `Qual`, `Mid_Qual`, `Non_Qual`, `Amex`, `Discover`, `Pin_Debit`, `Pin_Transfer_Fee`, `Monthly_Min`, `Statement_Fee`, `Hardware`, `Platform`, `Email`, `Phone`, `Prefund`, `Prefund_met`, `Contact_Name`, `Personal_Guarantor`, `Legal_Address`, `Legal_Address2`, `Legal_City`, `Legal_State`, `Legal_Zip`, `Cs_Phone`, `Corp_Phone`, `Web_Address`, `Contact_Phone`, `Fax`, `Cellular`, `Ownership_Type`, `Market_Type`, `Card_Present`, `Card_Swyped`, `Card_Cnp`, `Card_Other`, `Card_Total`, `Amex_Se`, `Amex_Discount`, `Name1`, `Title1`, `Percent_Owned1`, `Address1`, `City1`, `State1`, `Zip1`, `Phone1`, `SS1`, `Name2`, `Title2`, `Percent_Owned2`, `Address2`, `City2`, `State2`, `Zip2`, `Years2`, `Phone2`, `SS2`, `Routing_Number`, `Alt_Routing_Number`, `Checking_Account_Number`, `Alt_Checking_Account_Number`, `Account_Setup_Fee`, `Chargeback_Fee`, `EDC_AVS_Fee`, `Annual_Pci_Fee`, `Retrieval_Fee`, `Voice_Auth_Fee`, `Annual_Membership_Fee`, `Non_Sufficient_Funds`, `Help_Desk_Fee`, `Monthly_Minimum_Fee`, `Monthly_Debit_Access_Fee`, `Online_Reporting_Access`, `Monthly_Statement_Fee`, `Monthly_Regulatory_Fee`, `Other_Fee`, `Gateway_Fee`, `IRS_Name`, `Taxpayer_ID`, `SIC_Code`, `Weekly_Dept_Amt`, `Disbursement_Dly_Dep`, `Adjustments`, `Discount`, `Monthly_ACH`, `Fund_Routing`, `Fund_DDA`, `Disb_Detail`, `Days_Hold`, `ETC_Type`, `ETC_Cutoff`, `Incorp_Status`, `Stmt_Additional_Page`, `Fin_Acct_Type`, `Alternate_Media_Flag`, `Alternate_Fin_Acct_Type`, `Disbursement_Method_Code`, `Discount_Entry_Flag`, `Stmt_Mail_Flag`, `Stmt_IC_Print_Option`, `Chain_Code`, `Chain_Hdqtr_Pct`, `Bnk_Crd_DBA`, `Retail_DBA`, `POS_Type`, `CVV_Strip`, `POS_Capability`, `POS_Entry_Mode`, `Batch_Chg`, `Auth_Inc_Grid_ID`, `User_Def_Inc_Grid_ID`, `Chgbk_Chg`, `Help_Desk_Chg`, `Avs_Chg`, `12bLtrChg`, `One_Time_Chg`, `Acct_Fee_Chg`, `Acct_Fee_Chg2`, `Acct_Fee_Chg3`, `Acct_Fee_Chg4`, `Acct_Fee_Chg5`, `Dcvr_MID`, `CardSw_Star`, `CardSw_Maestro`, `CardSw_Interlink`, `CardSw_NYCE`, `CardSw_Shazam`, `CardSw_Pulse`, `CardSw_Accel`, `CardSw_CU24`, `CardSw_AFFN`, `CardSw_AKOPT`, `CardSw_Jeanie`, `CardSw_Visa`, `CardSw_Vs_Ofln_Db`, `CardSw_Mastercard`, `CardSw_Mc_Ofln_Db`, `CardSw_Dcvr_Acq`, `CardSw_Dcvr_Aq_Db`, `CardSw_Amex`, `CardSw_Diners`, `CardSw_JCB`, `CardSw_Wright`, `CardSw_Voyager`, `CardSw_EBT_Cash`, `CardSw_EBT_Stamp`, `Tin_Typ`, `Tin_Vldt_Stts_Cd`, `Tin_Vldt_Stts_Dt`, `Exclude_Adj_Chargebacks`, `Discount_Calculation`, `Help_Center`, `Next_Review_Date`, `One_Time_Inc_Flg`, `Acct1_Fee_Flag`, `Acct2_Fee_Flag`, `Acct3_Fee_Flag`, `Acct4_Fee_Flag`, `Acct5_Fee_Flag`, `Filing_Index`, `Product_Sold`, `Contract_Time`, `ETF_Amount`, `Signer`, `Pricing_Type_OB`, `Qual_OB`, `Debit_OB`, `Mid_Qual_OB`, `Non_Qual_OB`, `TransFee_OB`, `Percentage_OB`, `MID_temp`, `BBB_score`, `BBB_updated`, `BBB_Link`, `Gateway_Url`, `Equipment`, `Equipment_Type`, `Gateway_Username`, `Gateway_Password`, `Integration_Partner`, `Integration_Gateway`, `Integration_source_key`, `Integration_pin`, `Integration_secret_key`, `Integration_user_key`, `Reserve_Amount`, `Pre-Fund_Met`, `Currency_Code`, `First_Data_Adjustment_Completed`, `Last_Updated`) VALUES
(1, NULL, NULL, NULL, 'reymond test merchant', 'asfasf', NULL, 'R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmc_merchant`
--
ALTER TABLE `cmc_merchant`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `Agent` (`CMC_AgentID`,`Status`),
  ADD KEY `DDA` (`Checking_Account_Number`,`MID`,`MrchType`),
  ADD KEY `DateBoarded` (`DateBoarded`,`MID`,`MrchType`),
  ADD KEY `Residuals` (`MrchType`,`Agent_Schedule`,`MID`),
  ADD KEY `closed` (`MrchType`,`Date_Closed`),
  ADD KEY `mrchtype` (`MID`,`MrchType`,`Chain_Code`),
  ADD KEY `Status` (`Status`),
  ADD KEY `mid,monthly_vol` (`MID`,`Monthly_Volume`),
  ADD KEY `SIC` (`SIC_Code`,`MID`),
  ADD KEY `POS,MID` (`POS_Capability`,`POS_Entry_Mode`,`MID`),
  ADD KEY `DBAName` (`DBA_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmc_merchant`
--
ALTER TABLE `cmc_merchant`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
