CREATE DATABASE PEMTEST AUTOMATIC STORAGE YES USING CODESET UTF-8 TERRITORY DEFAULT COLLATE USING IDENTITY PAGESIZE 4096;
CONNECT TO PEMTEST;
UPDATE DATABASE CONFIG FOR PEMTEST USING LOGFILSIZ 65536;
UPDATE DATABASE CONFIG FOR PEMTEST USING LOGPRIMARY 40;
UPDATE DATABASE CONFIG FOR PEMTEST USING NUM_LOG_SPAN 32;
UPDATE DATABASE CONFIG FOR PEMTEST USING AUTO_MAINT ON;
UPDATE DATABASE CONFIG FOR PEMTEST USING AUTO_TBL_MAINT ON;
UPDATE DATABASE CONFIG FOR PEMTEST USING AUTO_RUNSTATS ON;
UPDATE DATABASE CONFIG FOR PEMTEST USING AUTO_REORG ON;
UPDATE DATABASE CONFIG FOR PEMTEST USING AUTO_DB_BACKUP ON;
UPDATE DATABASE CONFIG FOR PEMTEST USING NCHAR_MAPPING GRAPHIC_CU16;
CREATE USER TEMPORARY TABLESPACE B2BUSERTEMP PAGESIZE 32K BUFFERPOOL IBMDEFAULTBP;
CREATE BUFFERPOOL PEMTEST_04KBP IMMEDIATE SIZE 1000 PAGESIZE 4K;
CREATE REGULAR TABLESPACE TS_REG04_PEMTEST PAGESIZE 4K BUFFERPOOL PEMTEST_04KBP;
CREATE BUFFERPOOL PEMTEST_08KBP IMMEDIATE SIZE 1000 PAGESIZE 8K;
CREATE REGULAR TABLESPACE TS_REG08_PEMTEST PAGESIZE 8K BUFFERPOOL PEMTEST_08KBP;
CREATE BUFFERPOOL PEMTEST_16KBP IMMEDIATE SIZE 1000 PAGESIZE 16K;
CREATE REGULAR TABLESPACE TS_REG16_PEMTEST PAGESIZE 16K BUFFERPOOL PEMTEST_16KBP;
CREATE BUFFERPOOL PEMTEST_32KBP IMMEDIATE SIZE 1000 PAGESIZE 32K;
CREATE REGULAR TABLESPACE TS_REG32_PEMTEST PAGESIZE 32K BUFFERPOOL PEMTEST_32KBP;
CONNECT RESET;