------------------------------------------------
-- Export file for user WORK                  --
-- Created by 43631009 on 2016/8/18, 14:05:08 --
------------------------------------------------

spool work_user_project.log

prompt
prompt Creating table A1302
prompt ====================
prompt
create table WORK.A1302
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1302_DIMINDEX on WORK.A1302 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1303
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1303_DIMINDEX on WORK.A1303 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1305
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1305_DIMINDEX on WORK.A1305 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1310
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1310_DIMINDEX on WORK.A1310 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1311
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1311_DIMINDEX on WORK.A1311 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1320
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1320_DIMINDEX on WORK.A1320 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1321
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1321_DIMINDEX on WORK.A1321 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1322
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1322_DIMINDEX on WORK.A1322 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1323
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1323_DIMINDEX on WORK.A1323 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1333
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1333_DIMINDEX on WORK.A1333 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1369
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1369_DIMINDEX on WORK.A1369 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1401
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1401_DIMINDEX on WORK.A1401 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1403
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1403_DIMINDEX on WORK.A1403 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1411_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1411_1_DIMINDEX on WORK.A1411_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1433_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1433_1_DIMINDEX on WORK.A1433_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1450
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1450_DIMINDEX on WORK.A1450 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1451
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1451_DIMINDEX on WORK.A1451 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1460
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1460_DIMINDEX on WORK.A1460 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1461
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1461_DIMINDEX on WORK.A1461 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1462
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1462_DIMINDEX on WORK.A1462 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1463
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1463_DIMINDEX on WORK.A1463 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1464
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1464_DIMINDEX on WORK.A1464 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1465
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1465_DIMINDEX on WORK.A1465 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1468
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1468_DIMINDEX on WORK.A1468 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A1470
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A1470_DIMINDEX on WORK.A1470 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2302
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2302_DIMINDEX on WORK.A2302 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2305
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2305_DIMINDEX on WORK.A2305 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2310
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2310_DIMINDEX on WORK.A2310 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2311
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2311_DIMINDEX on WORK.A2311 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2320
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2320_DIMINDEX on WORK.A2320 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2321
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2321_DIMINDEX on WORK.A2321 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2322
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2322_DIMINDEX on WORK.A2322 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2323
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2323_DIMINDEX on WORK.A2323 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2333_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2333_1_DIMINDEX on WORK.A2333_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2369
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2369_DIMINDEX on WORK.A2369 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2401
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2401_DIMINDEX on WORK.A2401 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2403
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2403_DIMINDEX on WORK.A2403 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2411_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2411_1_DIMINDEX on WORK.A2411_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2433_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2433_1_DIMINDEX on WORK.A2433_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2460
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2460_DIMINDEX on WORK.A2460 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2463
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2463_DIMINDEX on WORK.A2463 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2464
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2464_DIMINDEX on WORK.A2464 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2465
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2465_DIMINDEX on WORK.A2465 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2468
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2468_DIMINDEX on WORK.A2468 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A2501
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A2501_DIMINDEX on WORK.A2501 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3101
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3101_DIMINDEX on WORK.A3101 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3301
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3301_DIMINDEX on WORK.A3301 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3302
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3302_DIMINDEX on WORK.A3302 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3303
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3303_DIMINDEX on WORK.A3303 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3320
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3320_DIMINDEX on WORK.A3320 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3321_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3321_1_DIMINDEX on WORK.A3321_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3322_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3322_1_DIMINDEX on WORK.A3322_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3400
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3400_DIMINDEX on WORK.A3400 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3410_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3410_1_DIMINDEX on WORK.A3410_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3501_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3501_1_DIMINDEX on WORK.A3501_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3601
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3601_DIMINDEX on WORK.A3601 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3701_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3701_1_DIMINDEX on WORK.A3701_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A3702_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A3702_1_DIMINDEX on WORK.A3702_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.A4401_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.A4401_1_DIMINDEX on WORK.A4401_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.BASE_ITEM_MONTH
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
  SQJFYE   NUMBER,
  SQDFYE   NUMBER,
  ROW_NO   NUMBER
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.BASE_ITEM_MONTH_DIMINDEX on WORK.BASE_ITEM_MONTH (DBANK_ID, DCURR_ID, DDATE)
  tablespace WORK
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CRMS_DUAL
prompt ========================
prompt
create table WORK.CRMS_DUAL
(
  CRMS_REQD CHAR(1) not null
)
tablespace WORK
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
create table WORK.G00_00
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G00_00_DIMINDEX on WORK.G00_00 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_1_IV_DIMINDEX on WORK.G01_1_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_2_IV_DIMINDEX on WORK.G01_2_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_3_DIMINDEX on WORK.G01_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_4_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_4_IV_DIMINDEX on WORK.G01_4_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_5_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_5_IV_DIMINDEX on WORK.G01_5_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_6_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_6_IV_DIMINDEX on WORK.G01_6_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_7_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_7_IV_DIMINDEX on WORK.G01_7_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_8_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_8_IV_DIMINDEX on WORK.G01_8_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_9
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_9_DIMINDEX on WORK.G01_9 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G01_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G01_IV_DIMINDEX on WORK.G01_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G02_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G02_IV_DIMINDEX on WORK.G02_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G03_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G03_IV_DIMINDEX on WORK.G03_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G04_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G04_IV_DIMINDEX on WORK.G04_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G05_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G05_IV_DIMINDEX on WORK.G05_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G06_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G06_IV_DIMINDEX on WORK.G06_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G11_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G11_1_IV_DIMINDEX on WORK.G11_1_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G11_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G11_2_IV_DIMINDEX on WORK.G11_2_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G11_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G11_3_DIMINDEX on WORK.G11_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G12_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G12_IV_DIMINDEX on WORK.G12_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G13_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G13_1_DIMINDEX on WORK.G13_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G13_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G13_2_DIMINDEX on WORK.G13_2 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G13_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G13_3_DIMINDEX on WORK.G13_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G13_4
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G13_4_DIMINDEX on WORK.G13_4 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G14_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G14_1_DIMINDEX on WORK.G14_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G14_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G14_2_DIMINDEX on WORK.G14_2 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G14_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G14_3_DIMINDEX on WORK.G14_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G15
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G15_DIMINDEX on WORK.G15 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G16_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G16_IV_DIMINDEX on WORK.G16_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G17_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G17_IV_DIMINDEX on WORK.G17_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G18_0
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G18_0_DIMINDEX on WORK.G18_0 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G21_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G21_IV_DIMINDEX on WORK.G21_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G22_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G22_IV_DIMINDEX on WORK.G22_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G23
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G23_DIMINDEX on WORK.G23 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G24
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G24_DIMINDEX on WORK.G24 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G25_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G25_1_DIMINDEX on WORK.G25_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G25_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G25_2_DIMINDEX on WORK.G25_2 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G31_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G31_IV_DIMINDEX on WORK.G31_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G32_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G32_IV_DIMINDEX on WORK.G32_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G33_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DCURR_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G33_1_IV_DIMINDEX on WORK.G33_1_IV (DBANK_ID, DCURR_ID, DDATE)
  tablespace WORK
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
create table WORK.G33_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DCURR_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G33_2_IV_DIMINDEX on WORK.G33_2_IV (DBANK_ID, DCURR_ID, DDATE)
  tablespace WORK
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
create table WORK.G41_N_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G41_N_IV_DIMINDEX on WORK.G41_N_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G42_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G42_IV_DIMINDEX on WORK.G42_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G43_IV_DIMINDEX on WORK.G43_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G44
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G44_DIMINDEX on WORK.G44 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G53_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G53_1_IV_DIMINDEX on WORK.G53_1_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G53_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G53_2_IV_DIMINDEX on WORK.G53_2_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G53_3_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G53_3_IV_DIMINDEX on WORK.G53_3_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.G53_4_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.G53_4_IV_DIMINDEX on WORK.G53_4_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF01_01
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF01_01_DIMINDEX on WORK.GF01_01 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF01_02
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF01_02_DIMINDEX on WORK.GF01_02 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF01_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF01_3_DIMINDEX on WORK.GF01_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF01_6
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF01_6_DIMINDEX on WORK.GF01_6 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF01_7
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF01_7_DIMINDEX on WORK.GF01_7 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF01_9
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF01_9_DIMINDEX on WORK.GF01_9 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF01_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF01_IV_DIMINDEX on WORK.GF01_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF04_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF04_1_IV_DIMINDEX on WORK.GF04_1_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF04_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF04_IV_DIMINDEX on WORK.GF04_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF11_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF11_1_IV_DIMINDEX on WORK.GF11_1_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF11_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF11_2_IV_DIMINDEX on WORK.GF11_2_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF11_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF11_3_DIMINDEX on WORK.GF11_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF12_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF12_IV_DIMINDEX on WORK.GF12_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF13_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF13_1_DIMINDEX on WORK.GF13_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF13_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF13_2_DIMINDEX on WORK.GF13_2 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF13_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF13_3_DIMINDEX on WORK.GF13_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF13_4
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF13_4_DIMINDEX on WORK.GF13_4 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF14_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF14_1_DIMINDEX on WORK.GF14_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF14_3
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF14_3_DIMINDEX on WORK.GF14_3 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF16_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF16_IV_DIMINDEX on WORK.GF16_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.GF43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.GF43_IV_DIMINDEX on WORK.GF43_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G01_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G01_IV_DIMINDEX on WORK.HB_G01_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G02_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G02_IV_DIMINDEX on WORK.HB_G02_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G03_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G03_IV_DIMINDEX on WORK.HB_G03_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G04_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G04_IV_DIMINDEX on WORK.HB_G04_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G11_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G11_1_IV_DIMINDEX on WORK.HB_G11_1_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G11_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G11_2_IV_DIMINDEX on WORK.HB_G11_2_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G14_1_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G14_1_PV_DIMINDEX on WORK.HB_G14_1_PV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G14_2_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G14_2_PV_DIMINDEX on WORK.HB_G14_2_PV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G14_3_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G14_3_PV_DIMINDEX on WORK.HB_G14_3_PV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G15_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G15_PV_DIMINDEX on WORK.HB_G15_PV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G22_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G22_IV_DIMINDEX on WORK.HB_G22_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G25_1_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G25_1_IV_DIMINDEX on WORK.HB_G25_1_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G25_2_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G25_2_IV_DIMINDEX on WORK.HB_G25_2_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G31_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G31_IV_DIMINDEX on WORK.HB_G31_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G32_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G32_IV_DIMINDEX on WORK.HB_G32_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G41_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G41_IV_DIMINDEX on WORK.HB_G41_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G42_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G42_IV_DIMINDEX on WORK.HB_G42_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G43_IV_DIMINDEX on WORK.HB_G43_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_G44_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_G44_IV_DIMINDEX on WORK.HB_G44_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HB_S24_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.HB_S24_IV_DIMINDEX on WORK.HB_S24_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.HSBC_001
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index WORK.HSBC_001_DIMINDEX on WORK.HSBC_001 (DBANK_ID, DDATE)
  tablespace WORK
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table HSBC_002
prompt =======================
prompt
create table WORK.HSBC_002
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index WORK.HSBC_002_DIMINDEX on WORK.HSBC_002 (DBANK_ID, DDATE)
  tablespace WORK
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table REPORT_HEADFOOT_SAVE
prompt ===================================
prompt
create table WORK.REPORT_HEADFOOT_SAVE
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
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column WORK.REPORT_HEADFOOT_SAVE.ID
  is '逻辑主键';
comment on column WORK.REPORT_HEADFOOT_SAVE.REPORT_ID
  is '报表代码';
comment on column WORK.REPORT_HEADFOOT_SAVE.BASE_DIM1
  is '基本维度1';
comment on column WORK.REPORT_HEADFOOT_SAVE.BASE_DIM2
  is '基本维度2';
comment on column WORK.REPORT_HEADFOOT_SAVE.BASE_DIM3
  is '基本维度3';
comment on column WORK.REPORT_HEADFOOT_SAVE.BASE_DIM4
  is '基本维度4';
comment on column WORK.REPORT_HEADFOOT_SAVE.BASE_DIM5
  is '基本维度4';
comment on column WORK.REPORT_HEADFOOT_SAVE.SAVE_ROW_NUM
  is '点存储行号';
comment on column WORK.REPORT_HEADFOOT_SAVE.SAVE_CLM_NUM
  is '点存储列号';
comment on column WORK.REPORT_HEADFOOT_SAVE.P_VALUE
  is '点存储值';
alter table WORK.REPORT_HEADFOOT_SAVE
  add constraint RHS_KEY_12181 unique (REPORT_ID, BASE_DIM1, BASE_DIM2, BASE_DIM3, BASE_DIM4, BASE_DIM5, SAVE_ROW_NUM, SAVE_CLM_NUM)
  using index 
  tablespace WORK
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index WORK.REF625_1 on WORK.REPORT_HEADFOOT_SAVE (REPORT_ID)
  tablespace WORK
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S24_IV
prompt =====================
prompt
create table WORK.S24_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S24_IV_DIMINDEX on WORK.S24_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S35_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S35_PV_DIMINDEX on WORK.S35_PV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S36_1A
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S36_1A_DIMINDEX on WORK.S36_1A (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S36_1B
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S36_1B_DIMINDEX on WORK.S36_1B (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S36_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S36_2_DIMINDEX on WORK.S36_2 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S39
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S39_DIMINDEX on WORK.S39 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S3D
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S3D_DIMINDEX on WORK.S3D (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S41_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S41_IV_DIMINDEX on WORK.S41_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S42_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S42_IV_DIMINDEX on WORK.S42_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S43_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S43_IV_DIMINDEX on WORK.S43_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S44_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S44_IV_DIMINDEX on WORK.S44_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S45_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S45_IV_DIMINDEX on WORK.S45_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S46_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S46_IV_DIMINDEX on WORK.S46_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S47_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S47_IV_DIMINDEX on WORK.S47_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S48_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S48_IV_DIMINDEX on WORK.S48_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S51_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S51_IV_DIMINDEX on WORK.S51_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S54_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S54_1_DIMINDEX on WORK.S54_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S5501_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S5501_IV_DIMINDEX on WORK.S5501_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S5502_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S5502_IV_DIMINDEX on WORK.S5502_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S56_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S56_IV_DIMINDEX on WORK.S56_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S57_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S57_IV_DIMINDEX on WORK.S57_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S58_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S58_IV_DIMINDEX on WORK.S58_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S59_2
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S59_2_DIMINDEX on WORK.S59_2 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S60
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S60_DIMINDEX on WORK.S60 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S61_PV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  ROW_NUM  NUMBER(20,6),
  COL_NUM  NUMBER(20,6),
  PV       NUMBER(20,6),
  PV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S61_PV_DIMINDEX on WORK.S61_PV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S62
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S62_DIMINDEX on WORK.S62 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S63_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S63_IV_DIMINDEX on WORK.S63_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S64_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S64_IV_DIMINDEX on WORK.S64_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S65_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S65_IV_DIMINDEX on WORK.S65_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.S66_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.S66_IV_DIMINDEX on WORK.S66_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.SF51_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.SF51_IV_DIMINDEX on WORK.SF51_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.SF54_1
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.SF54_1_DIMINDEX on WORK.SF54_1 (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.SF56_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.SF56_IV_DIMINDEX on WORK.SF56_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.SF57_IV
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.SF57_IV_DIMINDEX on WORK.SF57_IV (DBANK_ID, DDATE)
  tablespace WORK
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
create table WORK.SF62
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  INDEX_ID VARCHAR2(500),
  IV       NUMBER(20,6),
  IV_STR   VARCHAR2(500)
)
tablespace WORK
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
create index WORK.SF62_DIMINDEX on WORK.SF62 (DBANK_ID, DDATE)
  tablespace WORK
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
create sequence WORK.CRMS_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 128200000001787
increment by 1
cache 100000000000;

prompt
prompt Creating sequence ETL_LOGGER_ID_SEQ
prompt ===================================
prompt
create sequence WORK.ETL_LOGGER_ID_SEQ
minvalue 1
maxvalue 999999999999999999999999
start with 19000
increment by 1
cache 100;

prompt
prompt Creating sequence LOCK_INFO_ID_SEQ
prompt ==================================
prompt
create sequence WORK.LOCK_INFO_ID_SEQ
minvalue 1
maxvalue 9999999999999999999999999
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence MESSAGE_INFO_ID_SEQ
prompt =====================================
prompt
create sequence WORK.MESSAGE_INFO_ID_SEQ
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_PV_SAVE_FORMAT_ID_SEQ
prompt ==============================================
prompt
create sequence WORK.REPORT_PV_SAVE_FORMAT_ID_SEQ
minvalue 1
maxvalue 999999999999999999999999
start with 17020
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_RANGE_RIGHTS_ID_SEQ
prompt ============================================
prompt
create sequence WORK.REPORT_RANGE_RIGHTS_ID_SEQ
minvalue 1
maxvalue 999999999999999999999999
start with 170
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_SUBJECT_RELATION_ID_SEQ
prompt ================================================
prompt
create sequence WORK.REPORT_SUBJECT_RELATION_ID_SEQ
minvalue 1
maxvalue 999999999999999999999999
start with 170
increment by 1
cache 20;


spool off
