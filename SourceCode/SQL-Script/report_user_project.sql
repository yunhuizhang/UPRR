------------------------------------------------
-- Export file for user REPORT                --
-- Created by 43631009 on 2016/8/18, 13:59:48 --
------------------------------------------------

spool report_user_project.log

prompt
prompt Creating table A1302
prompt ====================
prompt
create table REPORT.A1302
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1302_DIMINDEX on REPORT.A1302 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1303
prompt ====================
prompt
create table REPORT.A1303
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1303_DIMINDEX on REPORT.A1303 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1305
prompt ====================
prompt
create table REPORT.A1305
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1305_DIMINDEX on REPORT.A1305 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1310
prompt ====================
prompt
create table REPORT.A1310
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1310_DIMINDEX on REPORT.A1310 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1311
prompt ====================
prompt
create table REPORT.A1311
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1311_DIMINDEX on REPORT.A1311 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1320
prompt ====================
prompt
create table REPORT.A1320
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1320_DIMINDEX on REPORT.A1320 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1321
prompt ====================
prompt
create table REPORT.A1321
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1321_DIMINDEX on REPORT.A1321 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1322
prompt ====================
prompt
create table REPORT.A1322
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1322_DIMINDEX on REPORT.A1322 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1323
prompt ====================
prompt
create table REPORT.A1323
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1323_DIMINDEX on REPORT.A1323 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1333
prompt ====================
prompt
create table REPORT.A1333
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1333_DIMINDEX on REPORT.A1333 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1369
prompt ====================
prompt
create table REPORT.A1369
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1369_DIMINDEX on REPORT.A1369 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1401
prompt ====================
prompt
create table REPORT.A1401
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1401_DIMINDEX on REPORT.A1401 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1403
prompt ====================
prompt
create table REPORT.A1403
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1403_DIMINDEX on REPORT.A1403 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1411_1
prompt ======================
prompt
create table REPORT.A1411_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1411_1_DIMINDEX on REPORT.A1411_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1433_1
prompt ======================
prompt
create table REPORT.A1433_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1433_1_DIMINDEX on REPORT.A1433_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1450
prompt ====================
prompt
create table REPORT.A1450
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1450_DIMINDEX on REPORT.A1450 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1451
prompt ====================
prompt
create table REPORT.A1451
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1451_DIMINDEX on REPORT.A1451 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1460
prompt ====================
prompt
create table REPORT.A1460
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1460_DIMINDEX on REPORT.A1460 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1461
prompt ====================
prompt
create table REPORT.A1461
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1461_DIMINDEX on REPORT.A1461 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1462
prompt ====================
prompt
create table REPORT.A1462
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1462_DIMINDEX on REPORT.A1462 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1463
prompt ====================
prompt
create table REPORT.A1463
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1463_DIMINDEX on REPORT.A1463 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1464
prompt ====================
prompt
create table REPORT.A1464
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1464_DIMINDEX on REPORT.A1464 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1465
prompt ====================
prompt
create table REPORT.A1465
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1465_DIMINDEX on REPORT.A1465 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1468
prompt ====================
prompt
create table REPORT.A1468
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1468_DIMINDEX on REPORT.A1468 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A1470
prompt ====================
prompt
create table REPORT.A1470
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A1470_DIMINDEX on REPORT.A1470 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2302
prompt ====================
prompt
create table REPORT.A2302
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2302_DIMINDEX on REPORT.A2302 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2305
prompt ====================
prompt
create table REPORT.A2305
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2305_DIMINDEX on REPORT.A2305 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2310
prompt ====================
prompt
create table REPORT.A2310
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2310_DIMINDEX on REPORT.A2310 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2311
prompt ====================
prompt
create table REPORT.A2311
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2311_DIMINDEX on REPORT.A2311 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2320
prompt ====================
prompt
create table REPORT.A2320
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2320_DIMINDEX on REPORT.A2320 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2321
prompt ====================
prompt
create table REPORT.A2321
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2321_DIMINDEX on REPORT.A2321 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2322
prompt ====================
prompt
create table REPORT.A2322
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2322_DIMINDEX on REPORT.A2322 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2323
prompt ====================
prompt
create table REPORT.A2323
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2323_DIMINDEX on REPORT.A2323 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2333_1
prompt ======================
prompt
create table REPORT.A2333_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2333_1_DIMINDEX on REPORT.A2333_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2369
prompt ====================
prompt
create table REPORT.A2369
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2369_DIMINDEX on REPORT.A2369 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2401
prompt ====================
prompt
create table REPORT.A2401
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2401_DIMINDEX on REPORT.A2401 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2403
prompt ====================
prompt
create table REPORT.A2403
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2403_DIMINDEX on REPORT.A2403 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2411_1
prompt ======================
prompt
create table REPORT.A2411_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2411_1_DIMINDEX on REPORT.A2411_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2433_1
prompt ======================
prompt
create table REPORT.A2433_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2433_1_DIMINDEX on REPORT.A2433_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2460
prompt ====================
prompt
create table REPORT.A2460
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2460_DIMINDEX on REPORT.A2460 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2463
prompt ====================
prompt
create table REPORT.A2463
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2463_DIMINDEX on REPORT.A2463 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2464
prompt ====================
prompt
create table REPORT.A2464
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2464_DIMINDEX on REPORT.A2464 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2465
prompt ====================
prompt
create table REPORT.A2465
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2465_DIMINDEX on REPORT.A2465 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2468
prompt ====================
prompt
create table REPORT.A2468
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2468_DIMINDEX on REPORT.A2468 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A2501
prompt ====================
prompt
create table REPORT.A2501
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A2501_DIMINDEX on REPORT.A2501 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3101
prompt ====================
prompt
create table REPORT.A3101
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3101_DIMINDEX on REPORT.A3101 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3301
prompt ====================
prompt
create table REPORT.A3301
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3301_DIMINDEX on REPORT.A3301 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3302
prompt ====================
prompt
create table REPORT.A3302
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3302_DIMINDEX on REPORT.A3302 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3303
prompt ====================
prompt
create table REPORT.A3303
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3303_DIMINDEX on REPORT.A3303 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3320
prompt ====================
prompt
create table REPORT.A3320
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3320_DIMINDEX on REPORT.A3320 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3321_1
prompt ======================
prompt
create table REPORT.A3321_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3321_1_DIMINDEX on REPORT.A3321_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3322_1
prompt ======================
prompt
create table REPORT.A3322_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3322_1_DIMINDEX on REPORT.A3322_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3400
prompt ====================
prompt
create table REPORT.A3400
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3400_DIMINDEX on REPORT.A3400 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3410_1
prompt ======================
prompt
create table REPORT.A3410_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3410_1_DIMINDEX on REPORT.A3410_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3501_1
prompt ======================
prompt
create table REPORT.A3501_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3501_1_DIMINDEX on REPORT.A3501_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3601
prompt ====================
prompt
create table REPORT.A3601
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3601_DIMINDEX on REPORT.A3601 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3701_1
prompt ======================
prompt
create table REPORT.A3701_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3701_1_DIMINDEX on REPORT.A3701_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A3702_1
prompt ======================
prompt
create table REPORT.A3702_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A3702_1_DIMINDEX on REPORT.A3702_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table A4401_1
prompt ======================
prompt
create table REPORT.A4401_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.A4401_1_DIMINDEX on REPORT.A4401_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table BASE_ITEM_MONTH
prompt ==============================
prompt
create table REPORT.BASE_ITEM_MONTH
(
  DBANK_ID VARCHAR2(500) not null,
  DCURR_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  KMH      VARCHAR2(500),
  KMMC     VARCHAR2(500),
  JFFSE    NUMBER,
  DFFSE    NUMBER,
  JFYE     NUMBER,
  DFYE     NUMBER,
  JC       NUMBER,
  DC       NUMBER,
  YDFSE    NUMBER,
  YJFSE    NUMBER,
  SQJFYE   NUMBER,
  SQDFYE   NUMBER,
  ROW_NO   NUMBER
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CRMS_DUAL
prompt ========================
prompt
create table REPORT.CRMS_DUAL
(
  CRMS_REQD CHAR(1) not null
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G00_00
prompt =====================
prompt
create table REPORT.G00_00
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G00_00_DIMINDEX on REPORT.G00_00 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_1_IV
prompt =======================
prompt
create table REPORT.G01_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_1_IV_DIMINDEX on REPORT.G01_1_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_2_IV
prompt =======================
prompt
create table REPORT.G01_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_2_IV_DIMINDEX on REPORT.G01_2_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_3
prompt ====================
prompt
create table REPORT.G01_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_3_DIMINDEX on REPORT.G01_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_4_IV
prompt =======================
prompt
create table REPORT.G01_4_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_4_IV_DIMINDEX on REPORT.G01_4_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_5_IV
prompt =======================
prompt
create table REPORT.G01_5_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_5_IV_DIMINDEX on REPORT.G01_5_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_6_IV
prompt =======================
prompt
create table REPORT.G01_6_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_6_IV_DIMINDEX on REPORT.G01_6_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_7_IV
prompt =======================
prompt
create table REPORT.G01_7_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_7_IV_DIMINDEX on REPORT.G01_7_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_8_IV
prompt =======================
prompt
create table REPORT.G01_8_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_8_IV_DIMINDEX on REPORT.G01_8_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_9
prompt ====================
prompt
create table REPORT.G01_9
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_9_DIMINDEX on REPORT.G01_9 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G01_IV
prompt =====================
prompt
create table REPORT.G01_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G01_IV_DIMINDEX on REPORT.G01_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G02_IV
prompt =====================
prompt
create table REPORT.G02_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G02_IV_DIMINDEX on REPORT.G02_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G03_IV
prompt =====================
prompt
create table REPORT.G03_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G03_IV_DIMINDEX on REPORT.G03_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G04_IV
prompt =====================
prompt
create table REPORT.G04_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G04_IV_DIMINDEX on REPORT.G04_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G05_IV
prompt =====================
prompt
create table REPORT.G05_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G05_IV_DIMINDEX on REPORT.G05_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G06_IV
prompt =====================
prompt
create table REPORT.G06_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G06_IV_DIMINDEX on REPORT.G06_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G11_1_IV
prompt =======================
prompt
create table REPORT.G11_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G11_1_IV_DIMINDEX on REPORT.G11_1_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G11_2_IV
prompt =======================
prompt
create table REPORT.G11_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G11_2_IV_DIMINDEX on REPORT.G11_2_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G11_3
prompt ====================
prompt
create table REPORT.G11_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G11_3_DIMINDEX on REPORT.G11_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G12_IV
prompt =====================
prompt
create table REPORT.G12_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G12_IV_DIMINDEX on REPORT.G12_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G13_1
prompt ====================
prompt
create table REPORT.G13_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G13_1_DIMINDEX on REPORT.G13_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G13_2
prompt ====================
prompt
create table REPORT.G13_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G13_2_DIMINDEX on REPORT.G13_2 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G13_3
prompt ====================
prompt
create table REPORT.G13_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G13_3_DIMINDEX on REPORT.G13_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G13_4
prompt ====================
prompt
create table REPORT.G13_4
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G13_4_DIMINDEX on REPORT.G13_4 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G14_1
prompt ====================
prompt
create table REPORT.G14_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G14_1_DIMINDEX on REPORT.G14_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G14_2
prompt ====================
prompt
create table REPORT.G14_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G14_2_DIMINDEX on REPORT.G14_2 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G14_3
prompt ====================
prompt
create table REPORT.G14_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G14_3_DIMINDEX on REPORT.G14_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G15
prompt ==================
prompt
create table REPORT.G15
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G15_DIMINDEX on REPORT.G15 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G16_IV
prompt =====================
prompt
create table REPORT.G16_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G16_IV_DIMINDEX on REPORT.G16_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G17_IV
prompt =====================
prompt
create table REPORT.G17_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G17_IV_DIMINDEX on REPORT.G17_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G18_0
prompt ====================
prompt
create table REPORT.G18_0
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G18_0_DIMINDEX on REPORT.G18_0 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G21_IV
prompt =====================
prompt
create table REPORT.G21_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G21_IV_DIMINDEX on REPORT.G21_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G22_IV
prompt =====================
prompt
create table REPORT.G22_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G22_IV_DIMINDEX on REPORT.G22_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G23
prompt ==================
prompt
create table REPORT.G23
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G23_DIMINDEX on REPORT.G23 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G24
prompt ==================
prompt
create table REPORT.G24
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G24_DIMINDEX on REPORT.G24 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G25_1
prompt ====================
prompt
create table REPORT.G25_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G25_1_DIMINDEX on REPORT.G25_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G25_2
prompt ====================
prompt
create table REPORT.G25_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G25_2_DIMINDEX on REPORT.G25_2 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G31_IV
prompt =====================
prompt
create table REPORT.G31_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G31_IV_DIMINDEX on REPORT.G31_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G32_IV
prompt =====================
prompt
create table REPORT.G32_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G32_IV_DIMINDEX on REPORT.G32_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G33_1_IV
prompt =======================
prompt
create table REPORT.G33_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DCURR_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G33_1_IV_DIMINDEX on REPORT.G33_1_IV (DBANK_ID, DCURR_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G33_2_IV
prompt =======================
prompt
create table REPORT.G33_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DCURR_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G33_2_IV_DIMINDEX on REPORT.G33_2_IV (DBANK_ID, DCURR_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G41_N_IV
prompt =======================
prompt
create table REPORT.G41_N_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G41_N_IV_DIMINDEX on REPORT.G41_N_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G42_IV
prompt =====================
prompt
create table REPORT.G42_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G42_IV_DIMINDEX on REPORT.G42_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G43_IV
prompt =====================
prompt
create table REPORT.G43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G43_IV_DIMINDEX on REPORT.G43_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G44
prompt ==================
prompt
create table REPORT.G44
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G44_DIMINDEX on REPORT.G44 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G53_1_IV
prompt =======================
prompt
create table REPORT.G53_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G53_1_IV_DIMINDEX on REPORT.G53_1_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G53_2_IV
prompt =======================
prompt
create table REPORT.G53_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G53_2_IV_DIMINDEX on REPORT.G53_2_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G53_3_IV
prompt =======================
prompt
create table REPORT.G53_3_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G53_3_IV_DIMINDEX on REPORT.G53_3_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table G53_4_IV
prompt =======================
prompt
create table REPORT.G53_4_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.G53_4_IV_DIMINDEX on REPORT.G53_4_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF01_01
prompt ======================
prompt
create table REPORT.GF01_01
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF01_01_DIMINDEX on REPORT.GF01_01 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF01_02
prompt ======================
prompt
create table REPORT.GF01_02
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF01_02_DIMINDEX on REPORT.GF01_02 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF01_3
prompt =====================
prompt
create table REPORT.GF01_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF01_3_DIMINDEX on REPORT.GF01_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF01_6
prompt =====================
prompt
create table REPORT.GF01_6
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF01_6_DIMINDEX on REPORT.GF01_6 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF01_7
prompt =====================
prompt
create table REPORT.GF01_7
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF01_7_DIMINDEX on REPORT.GF01_7 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF01_9
prompt =====================
prompt
create table REPORT.GF01_9
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF01_9_DIMINDEX on REPORT.GF01_9 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF01_IV
prompt ======================
prompt
create table REPORT.GF01_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF01_IV_DIMINDEX on REPORT.GF01_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF04_1_IV
prompt ========================
prompt
create table REPORT.GF04_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF04_1_IV_DIMINDEX on REPORT.GF04_1_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF04_IV
prompt ======================
prompt
create table REPORT.GF04_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF04_IV_DIMINDEX on REPORT.GF04_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF11_1_IV
prompt ========================
prompt
create table REPORT.GF11_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF11_1_IV_DIMINDEX on REPORT.GF11_1_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF11_2_IV
prompt ========================
prompt
create table REPORT.GF11_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF11_2_IV_DIMINDEX on REPORT.GF11_2_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF11_3
prompt =====================
prompt
create table REPORT.GF11_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF11_3_DIMINDEX on REPORT.GF11_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF12_IV
prompt ======================
prompt
create table REPORT.GF12_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF12_IV_DIMINDEX on REPORT.GF12_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF13_1
prompt =====================
prompt
create table REPORT.GF13_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF13_1_DIMINDEX on REPORT.GF13_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF13_2
prompt =====================
prompt
create table REPORT.GF13_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF13_2_DIMINDEX on REPORT.GF13_2 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF13_3
prompt =====================
prompt
create table REPORT.GF13_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF13_3_DIMINDEX on REPORT.GF13_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF13_4
prompt =====================
prompt
create table REPORT.GF13_4
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF13_4_DIMINDEX on REPORT.GF13_4 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF14_1
prompt =====================
prompt
create table REPORT.GF14_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF14_1_DIMINDEX on REPORT.GF14_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF14_3
prompt =====================
prompt
create table REPORT.GF14_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF14_3_DIMINDEX on REPORT.GF14_3 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF16_IV
prompt ======================
prompt
create table REPORT.GF16_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF16_IV_DIMINDEX on REPORT.GF16_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GF43_IV
prompt ======================
prompt
create table REPORT.GF43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.GF43_IV_DIMINDEX on REPORT.GF43_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G01_IV
prompt ========================
prompt
create table REPORT.HB_G01_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G01_IV_DIMINDEX on REPORT.HB_G01_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G02_IV
prompt ========================
prompt
create table REPORT.HB_G02_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G02_IV_DIMINDEX on REPORT.HB_G02_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G03_IV
prompt ========================
prompt
create table REPORT.HB_G03_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G03_IV_DIMINDEX on REPORT.HB_G03_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G04_IV
prompt ========================
prompt
create table REPORT.HB_G04_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G04_IV_DIMINDEX on REPORT.HB_G04_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G11_1_IV
prompt ==========================
prompt
create table REPORT.HB_G11_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G11_1_IV_DIMINDEX on REPORT.HB_G11_1_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G11_2_IV
prompt ==========================
prompt
create table REPORT.HB_G11_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G11_2_IV_DIMINDEX on REPORT.HB_G11_2_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G14_1_PV
prompt ==========================
prompt
create table REPORT.HB_G14_1_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G14_1_PV_DIMINDEX on REPORT.HB_G14_1_PV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G14_2_PV
prompt ==========================
prompt
create table REPORT.HB_G14_2_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G14_2_PV_DIMINDEX on REPORT.HB_G14_2_PV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G14_3_PV
prompt ==========================
prompt
create table REPORT.HB_G14_3_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G14_3_PV_DIMINDEX on REPORT.HB_G14_3_PV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G15_PV
prompt ========================
prompt
create table REPORT.HB_G15_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G15_PV_DIMINDEX on REPORT.HB_G15_PV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G22_IV
prompt ========================
prompt
create table REPORT.HB_G22_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G22_IV_DIMINDEX on REPORT.HB_G22_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G25_1_IV
prompt ==========================
prompt
create table REPORT.HB_G25_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G25_1_IV_DIMINDEX on REPORT.HB_G25_1_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G25_2_IV
prompt ==========================
prompt
create table REPORT.HB_G25_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G25_2_IV_DIMINDEX on REPORT.HB_G25_2_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G31_IV
prompt ========================
prompt
create table REPORT.HB_G31_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G31_IV_DIMINDEX on REPORT.HB_G31_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G32_IV
prompt ========================
prompt
create table REPORT.HB_G32_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G32_IV_DIMINDEX on REPORT.HB_G32_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G41_IV
prompt ========================
prompt
create table REPORT.HB_G41_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G41_IV_DIMINDEX on REPORT.HB_G41_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G42_IV
prompt ========================
prompt
create table REPORT.HB_G42_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G42_IV_DIMINDEX on REPORT.HB_G42_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G43_IV
prompt ========================
prompt
create table REPORT.HB_G43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G43_IV_DIMINDEX on REPORT.HB_G43_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_G44_IV
prompt ========================
prompt
create table REPORT.HB_G44_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_G44_IV_DIMINDEX on REPORT.HB_G44_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HB_S24_IV
prompt ========================
prompt
create table REPORT.HB_S24_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.HB_S24_IV_DIMINDEX on REPORT.HB_S24_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table HSBC_001
prompt =======================
prompt
create table REPORT.HSBC_001
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255;
create index REPORT.HSBC_001_DIMINDEX on REPORT.HSBC_001 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table HSBC_002
prompt =======================
prompt
create table REPORT.HSBC_002
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255;
create index REPORT.HSBC_002_DIMINDEX on REPORT.HSBC_002 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table REPORT_HEADFOOT_SAVE
prompt ===================================
prompt
create table REPORT.REPORT_HEADFOOT_SAVE
(
  ID           NUMBER(19) not null,
  REPORT_ID    VARCHAR2(30) not null,
  BASE_DIM1    VARCHAR2(20),
  BASE_DIM2    VARCHAR2(10),
  BASE_DIM3    VARCHAR2(10),
  BASE_DIM4    VARCHAR2(10),
  BASE_DIM5    VARCHAR2(10),
  SAVE_ROW_NUM NUMBER(38) not null,
  SAVE_CLM_NUM NUMBER(38) not null,
  P_VALUE      VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column REPORT.REPORT_HEADFOOT_SAVE.ID
  is '逻辑主键';
comment on column REPORT.REPORT_HEADFOOT_SAVE.REPORT_ID
  is '报表代码';
comment on column REPORT.REPORT_HEADFOOT_SAVE.BASE_DIM1
  is '基本维度1';
comment on column REPORT.REPORT_HEADFOOT_SAVE.BASE_DIM2
  is '基本维度2';
comment on column REPORT.REPORT_HEADFOOT_SAVE.BASE_DIM3
  is '基本维度3';
comment on column REPORT.REPORT_HEADFOOT_SAVE.BASE_DIM4
  is '基本维度4';
comment on column REPORT.REPORT_HEADFOOT_SAVE.BASE_DIM5
  is '基本维度4';
comment on column REPORT.REPORT_HEADFOOT_SAVE.SAVE_ROW_NUM
  is '点存储行号';
comment on column REPORT.REPORT_HEADFOOT_SAVE.SAVE_CLM_NUM
  is '点存储列号';
comment on column REPORT.REPORT_HEADFOOT_SAVE.P_VALUE
  is '点存储值';
alter table REPORT.REPORT_HEADFOOT_SAVE
  add constraint RHS_KEY_12181 unique (REPORT_ID, BASE_DIM1, BASE_DIM2, BASE_DIM3, BASE_DIM4, BASE_DIM5, SAVE_ROW_NUM, SAVE_CLM_NUM)
  using index 
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.REF625_1 on REPORT.REPORT_HEADFOOT_SAVE (REPORT_ID)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S24_IV
prompt =====================
prompt
create table REPORT.S24_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S24_IV_DIMINDEX on REPORT.S24_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S35_PV
prompt =====================
prompt
create table REPORT.S35_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S35_PV_DIMINDEX on REPORT.S35_PV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S36_1A
prompt =====================
prompt
create table REPORT.S36_1A
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S36_1A_DIMINDEX on REPORT.S36_1A (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S36_1B
prompt =====================
prompt
create table REPORT.S36_1B
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S36_1B_DIMINDEX on REPORT.S36_1B (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S36_2
prompt ====================
prompt
create table REPORT.S36_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S36_2_DIMINDEX on REPORT.S36_2 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S39
prompt ==================
prompt
create table REPORT.S39
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S39_DIMINDEX on REPORT.S39 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S3D
prompt ==================
prompt
create table REPORT.S3D
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S3D_DIMINDEX on REPORT.S3D (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S41_IV
prompt =====================
prompt
create table REPORT.S41_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S41_IV_DIMINDEX on REPORT.S41_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S42_IV
prompt =====================
prompt
create table REPORT.S42_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S42_IV_DIMINDEX on REPORT.S42_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S43_IV
prompt =====================
prompt
create table REPORT.S43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S43_IV_DIMINDEX on REPORT.S43_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S44_IV
prompt =====================
prompt
create table REPORT.S44_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S44_IV_DIMINDEX on REPORT.S44_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S45_IV
prompt =====================
prompt
create table REPORT.S45_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S45_IV_DIMINDEX on REPORT.S45_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S46_IV
prompt =====================
prompt
create table REPORT.S46_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S46_IV_DIMINDEX on REPORT.S46_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S47_IV
prompt =====================
prompt
create table REPORT.S47_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S47_IV_DIMINDEX on REPORT.S47_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S48_IV
prompt =====================
prompt
create table REPORT.S48_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S48_IV_DIMINDEX on REPORT.S48_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S51_IV
prompt =====================
prompt
create table REPORT.S51_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S51_IV_DIMINDEX on REPORT.S51_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S54_1
prompt ====================
prompt
create table REPORT.S54_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S54_1_DIMINDEX on REPORT.S54_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S5501_IV
prompt =======================
prompt
create table REPORT.S5501_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S5501_IV_DIMINDEX on REPORT.S5501_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S5502_IV
prompt =======================
prompt
create table REPORT.S5502_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S5502_IV_DIMINDEX on REPORT.S5502_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S56_IV
prompt =====================
prompt
create table REPORT.S56_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S56_IV_DIMINDEX on REPORT.S56_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S57_IV
prompt =====================
prompt
create table REPORT.S57_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S57_IV_DIMINDEX on REPORT.S57_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S58_IV
prompt =====================
prompt
create table REPORT.S58_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S58_IV_DIMINDEX on REPORT.S58_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S59_2
prompt ====================
prompt
create table REPORT.S59_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S59_2_DIMINDEX on REPORT.S59_2 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S60
prompt ==================
prompt
create table REPORT.S60
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S60_DIMINDEX on REPORT.S60 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S61_PV
prompt =====================
prompt
create table REPORT.S61_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S61_PV_DIMINDEX on REPORT.S61_PV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S62
prompt ==================
prompt
create table REPORT.S62
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S62_DIMINDEX on REPORT.S62 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S63_IV
prompt =====================
prompt
create table REPORT.S63_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S63_IV_DIMINDEX on REPORT.S63_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S64_IV
prompt =====================
prompt
create table REPORT.S64_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S64_IV_DIMINDEX on REPORT.S64_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S65_IV
prompt =====================
prompt
create table REPORT.S65_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S65_IV_DIMINDEX on REPORT.S65_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table S66_IV
prompt =====================
prompt
create table REPORT.S66_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.S66_IV_DIMINDEX on REPORT.S66_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table SF51_IV
prompt ======================
prompt
create table REPORT.SF51_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.SF51_IV_DIMINDEX on REPORT.SF51_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table SF54_1
prompt =====================
prompt
create table REPORT.SF54_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.SF54_1_DIMINDEX on REPORT.SF54_1 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table SF56_IV
prompt ======================
prompt
create table REPORT.SF56_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.SF56_IV_DIMINDEX on REPORT.SF56_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table SF57_IV
prompt ======================
prompt
create table REPORT.SF57_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.SF57_IV_DIMINDEX on REPORT.SF57_IV (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table SF62
prompt ===================
prompt
create table REPORT.SF62
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace REPORT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index REPORT.SF62_DIMINDEX on REPORT.SF62 (DBANK_ID, DDATE)
  tablespace REPORT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating sequence CRMS_SEQ
prompt ==========================
prompt
create sequence REPORT.CRMS_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 19200000000067
increment by 1
cache 100000000000;


spool off
