------------------------------------------------
-- Export file for user FSD1                  --
-- Created by 43631009 on 2016/8/18, 14:35:15 --
------------------------------------------------

spool fsd1_user_project.log

prompt
prompt Creating table INDUSTRY
prompt =======================
prompt
create table FSD1.INDUSTRY
(
  C1 VARCHAR2(1000),
  C2 VARCHAR2(1000),
  C3 VARCHAR2(1000),
  C4 VARCHAR2(1000),
  C5 VARCHAR2(1000),
  C6 VARCHAR2(1000)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table LOAN_AMOUNT_20141031
prompt ===================================
prompt
create table FSD1.LOAN_AMOUNT_20141031
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table LOAN_AMOUNT_20141031_CDT
prompt =======================================
prompt
create table FSD1.LOAN_AMOUNT_20141031_CDT
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table LOAN_AMOUNT_20141031_GTRF
prompt ========================================
prompt
create table FSD1.LOAN_AMOUNT_20141031_GTRF
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table R_A1411
prompt ======================
prompt
create table FSD1.R_A1411
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  VALUE    NUMBER(31,6),
  CODE     VARCHAR2(500) not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index FSD1.R_A1411_DIMINDEX on FSD1.R_A1411 (DBANK_ID, DDATE, CODE)
  tablespace FSD1
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
prompt Creating table R_A2411
prompt ======================
prompt
create table FSD1.R_A2411
(
  DBANK_ID VARCHAR2(500) not null,
  DDATE    VARCHAR2(500) not null,
  VALUE    NUMBER(31,6),
  CODE     VARCHAR2(500) not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index FSD1.R_A2411_DIMINDEX on FSD1.R_A2411 (DBANK_ID, DDATE, CODE)
  tablespace FSD1
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
prompt Creating table R_IDX
prompt ====================
prompt
create table FSD1.R_IDX
(
  FILENAME      VARCHAR2(50) not null,
  KEYCODE       VARCHAR2(10) not null,
  TABLEID       VARCHAR2(5) not null,
  BRANCHTYPE    VARCHAR2(4),
  AREACODE      VARCHAR2(7),
  BRANCHCODE    VARCHAR2(14),
  DATAATTRIBUTE VARCHAR2(1),
  CURRENCY      VARCHAR2(9),
  UNIT          VARCHAR2(1),
  BUSIDATAFLAG  VARCHAR2(1),
  NUMBERTYPE    VARCHAR2(1)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.R_IDX
  is '大集中头文件记录表';
comment on column FSD1.R_IDX.FILENAME
  is '头文件名称';
comment on column FSD1.R_IDX.KEYCODE
  is '关键字代码';
comment on column FSD1.R_IDX.TABLEID
  is '表单代码';
comment on column FSD1.R_IDX.BRANCHTYPE
  is '机构类代码';
comment on column FSD1.R_IDX.AREACODE
  is '地区代码';
comment on column FSD1.R_IDX.BRANCHCODE
  is '机构代码';
comment on column FSD1.R_IDX.DATAATTRIBUTE
  is '数据属性〔AB类表单为数据属性，对CD类表单，此处是列号〕';
comment on column FSD1.R_IDX.CURRENCY
  is '币种';
comment on column FSD1.R_IDX.UNIT
  is '单位';
comment on column FSD1.R_IDX.BUSIDATAFLAG
  is '业务数据标志';
comment on column FSD1.R_IDX.NUMBERTYPE
  is '数值型类型';

prompt
prompt Creating table SQL_HISTORY
prompt ==========================
prompt
create table FSD1.SQL_HISTORY
(
  SQL_MARK     VARCHAR2(100) not null,
  SYSTEM_ID    VARCHAR2(10) not null,
  SYSTEM_NAME  VARCHAR2(32),
  EXECUTE_TIME VARCHAR2(10),
  DESCR        VARCHAR2(100),
  P_VERSION    VARCHAR2(10)
)
tablespace FSD1
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
comment on column FSD1.SQL_HISTORY.SQL_MARK
  is '？？？？';
comment on column FSD1.SQL_HISTORY.SYSTEM_ID
  is '？？？id';
comment on column FSD1.SQL_HISTORY.SYSTEM_NAME
  is '？？？？？';
comment on column FSD1.SQL_HISTORY.EXECUTE_TIME
  is '？？？？';
comment on column FSD1.SQL_HISTORY.DESCR
  is '？？';
comment on column FSD1.SQL_HISTORY.P_VERSION
  is '？？？？？';
alter table FSD1.SQL_HISTORY
  add constraint P_PK_SQL_HISTORY primary key (SQL_MARK, SYSTEM_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_COMMON_CODE
prompt ==============================
prompt
create table FSD1.T01_COMMON_CODE
(
  CODE_ID    VARCHAR2(40) not null,
  CODE_TYPE  VARCHAR2(20) not null,
  CODE_KEY   VARCHAR2(256) not null,
  CODE_VALUE VARCHAR2(256) not null,
  CODE_DES   VARCHAR2(256)
)
tablespace FSD1
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
comment on table FSD1.T01_COMMON_CODE
  is '？？？？？';
comment on column FSD1.T01_COMMON_CODE.CODE_ID
  is '？？？？';
comment on column FSD1.T01_COMMON_CODE.CODE_TYPE
  is '？？？？  ？？？？？？？？？？';
comment on column FSD1.T01_COMMON_CODE.CODE_KEY
  is '？？';
comment on column FSD1.T01_COMMON_CODE.CODE_VALUE
  is '？？？';
comment on column FSD1.T01_COMMON_CODE.CODE_DES
  is '？？';
alter table FSD1.T01_COMMON_CODE
  add constraint P_PK_T01_COMMON_CO primary key (CODE_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_CONDITION
prompt ============================
prompt
create table FSD1.T01_CONDITION
(
  CONDITION_ID  VARCHAR2(32) not null,
  ENTRY_ID      VARCHAR2(64),
  SEQ_NUM       INTEGER,
  CELL_KEY      VARCHAR2(64),
  CELL_NAME_CH  VARCHAR2(40),
  CELL_NAME_EN  VARCHAR2(40),
  HTML_TYPE     VARCHAR2(10),
  SELECT_REGION VARCHAR2(64),
  VALIDATE_RULE VARCHAR2(256),
  DEFAULT_VALUE VARCHAR2(64),
  SEARCH_TYPE   VARCHAR2(10),
  ISCONFIG      VARCHAR2(255)
)
tablespace FSD1
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
comment on table FSD1.T01_CONDITION
  is '？？,？？？？？:？？？？？？？？？？？？1:？？ ？？0:？？？？';
comment on column FSD1.T01_CONDITION.CONDITION_ID
  is '？？？？';
comment on column FSD1.T01_CONDITION.ENTRY_ID
  is '？？？？';
comment on column FSD1.T01_CONDITION.SEQ_NUM
  is '？？';
comment on column FSD1.T01_CONDITION.CELL_KEY
  is '？？？？？？';
comment on column FSD1.T01_CONDITION.CELL_NAME_CH
  is '？？？？';
comment on column FSD1.T01_CONDITION.CELL_NAME_EN
  is '？？？？';
comment on column FSD1.T01_CONDITION.HTML_TYPE
  is '？？？？:TEXT(？？？),SELECT(？？？？),DATE1(？？？？？),ORGAN(？？？？)';
comment on column FSD1.T01_CONDITION.SELECT_REGION
  is '？？？？？-HTML_TYPE？SELECT？？,？？？？？？？';
comment on column FSD1.T01_CONDITION.VALIDATE_RULE
  is '？？？？:？？？？？？？？？？？？';
comment on column FSD1.T01_CONDITION.DEFAULT_VALUE
  is '？？？？？:？？？？？？？？？？,？？？？？？？？？';
comment on column FSD1.T01_CONDITION.SEARCH_TYPE
  is '？？？？:？？？？？？？？？？？:=(？？？？),like(？？？？)？';
comment on column FSD1.T01_CONDITION.ISCONFIG
  is '？？,？？？？？:？？？？？？？？？？？？1:？？ ？？0:？？？？';
alter table FSD1.T01_CONDITION
  add constraint P_PK_T01_CONDITION primary key (CONDITION_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_DATE_SWITCH_CONFIG
prompt =====================================
prompt
create table FSD1.T01_DATE_SWITCH_CONFIG
(
  SWITCH_YEAR   VARCHAR2(4) not null,
  SWITCH_MONTH  VARCHAR2(2) not null,
  SWITCH_STATUS VARCHAR2(1) not null
)
tablespace FSD1
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
comment on table FSD1.T01_DATE_SWITCH_CONFIG
  is '？？？？？？？';
comment on column FSD1.T01_DATE_SWITCH_CONFIG.SWITCH_YEAR
  is '？？';
comment on column FSD1.T01_DATE_SWITCH_CONFIG.SWITCH_MONTH
  is '？？';
comment on column FSD1.T01_DATE_SWITCH_CONFIG.SWITCH_STATUS
  is '？？？？(0:？？,1:？？)';
alter table FSD1.T01_DATE_SWITCH_CONFIG
  add constraint PK_T01_DATE_SWITCH_CONFIG primary key (SWITCH_YEAR, SWITCH_MONTH)
  using index 
  tablespace FSD1
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
prompt Creating table T01_DETAIL
prompt =========================
prompt
create table FSD1.T01_DETAIL
(
  DETAIL_ID     VARCHAR2(32) not null,
  ENTRY_ID      VARCHAR2(64),
  DETAIL_TYPE   VARCHAR2(10),
  SEQ_NUM       INTEGER,
  CELL_KEY      VARCHAR2(64),
  CELL_ALIAS    VARCHAR2(64),
  CELL_NAME_CH  VARCHAR2(40),
  CELL_NAME_EN  VARCHAR2(40),
  HTML_TYPE     VARCHAR2(10),
  SELECT_REGION VARCHAR2(64),
  NULL_ABLE     VARCHAR2(10),
  EDIT_ABLE     VARCHAR2(10),
  VALIDATE_RULE VARCHAR2(256),
  DEFAULT_VALUE VARCHAR2(64),
  ISCONFIG      VARCHAR2(255)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.T01_DETAIL
  is '？？？？？？？？？？？？？？？？？？？';
comment on column FSD1.T01_DETAIL.DETAIL_ID
  is '？？？？';
comment on column FSD1.T01_DETAIL.ENTRY_ID
  is '？？？？-？？？？？？？？？？_add,_view,_edit,？？？？？？？？？？？？？';
comment on column FSD1.T01_DETAIL.DETAIL_TYPE
  is '？？？？-view(？？？？),add(？？？？),edit(？？？？)';
comment on column FSD1.T01_DETAIL.SEQ_NUM
  is '？？';
comment on column FSD1.T01_DETAIL.CELL_KEY
  is '？？？？？？';
comment on column FSD1.T01_DETAIL.CELL_NAME_CH
  is '？？？？';
comment on column FSD1.T01_DETAIL.CELL_NAME_EN
  is '？？？？';
comment on column FSD1.T01_DETAIL.HTML_TYPE
  is '？？？？-TEXT(？？？),SELECT(？？？？),DATE1(？？？？？),TEXTAREA(？？？？),BUTTON(？？？？？？？？)';
comment on column FSD1.T01_DETAIL.SELECT_REGION
  is '？？？？？-HTML_TYPE？SELECT？？,？？？？？？？';
comment on column FSD1.T01_DETAIL.NULL_ABLE
  is '？？？？-NOTNULL(？？),？？？？？？？';
comment on column FSD1.T01_DETAIL.EDIT_ABLE
  is '？？？？？-READONLY(？？),？？？？？？？？';
comment on column FSD1.T01_DETAIL.VALIDATE_RULE
  is '？？？？';
comment on column FSD1.T01_DETAIL.DEFAULT_VALUE
  is '？？？';
comment on column FSD1.T01_DETAIL.ISCONFIG
  is '？？,？？？？？:？？？？？？？？？？？？1:？？ ？？0:？？？？';
alter table FSD1.T01_DETAIL
  add constraint P_PK_T01_DETAIL primary key (DETAIL_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_ENTRY
prompt ========================
prompt
create table FSD1.T01_ENTRY
(
  ENTRY_ID   VARCHAR2(64) not null,
  ENTRY_NAME VARCHAR2(64),
  PAGE_TYPE  VARCHAR2(1)
)
tablespace FSD1
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
comment on table FSD1.T01_ENTRY
  is '功能模块总表';
comment on column FSD1.T01_ENTRY.ENTRY_ID
  is '入口标识';
comment on column FSD1.T01_ENTRY.ENTRY_NAME
  is '入口说明';
comment on column FSD1.T01_ENTRY.PAGE_TYPE
  is '页面类型：1（列表页面）,2（带树的列表页面）,3（卡片页）';
alter table FSD1.T01_ENTRY
  add constraint P_PK_T01_ENTRY primary key (ENTRY_ID)
  using index 
  tablespace FSD1
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
grant select on FSD1.T01_ENTRY to DATACORE;
grant select on FSD1.T01_ENTRY to DATACOREFF;
grant select on FSD1.T01_ENTRY to DATACOREOPR;
grant select on FSD1.T01_ENTRY to UPRR;

prompt
prompt Creating table T01_FROM_SEGMENT
prompt ===============================
prompt
create table FSD1.T01_FROM_SEGMENT
(
  ENTRY_ID     VARCHAR2(64) not null,
  FROM_SQL     VARCHAR2(2000),
  ORDER_COLUMN VARCHAR2(200)
)
tablespace FSD1
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
comment on table FSD1.T01_FROM_SEGMENT
  is 'FROM？？？？？？？？？,？？,？？？？？？？？？？,？？？？？？？？？？,？？？？？？？？？？？？,？？？？？？,？？？？？？？？？？？';
comment on column FSD1.T01_FROM_SEGMENT.ENTRY_ID
  is '？？？？';
comment on column FSD1.T01_FROM_SEGMENT.FROM_SQL
  is 'SQL？？？-？:FROM SOME_TABLE WHERE (？？？？？？？？？) ？？FROM SOME_TABLE S,OTHER_TABLE O WHERE S.ID=O.FID AND (？？？？？？？？？？？？)';
comment on column FSD1.T01_FROM_SEGMENT.ORDER_COLUMN
  is '？？？？ ？？？？？？？？？？？ ？？？？？？？？？？？？？？？？？？？';
alter table FSD1.T01_FROM_SEGMENT
  add constraint P_PK_T01_FROM_SEGM primary key (ENTRY_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_HOME_NOTE
prompt ============================
prompt
create table FSD1.T01_HOME_NOTE
(
  NOTE_ID     VARCHAR2(40) not null,
  ORDER_ID    VARCHAR2(5),
  NOTE_TYPE   VARCHAR2(10),
  NOTE_NAME   VARCHAR2(50),
  NOTE_NUM    VARCHAR2(50),
  NOTE_URL    VARCHAR2(500),
  NOTE_SQL    VARCHAR2(500),
  NOTE_USERID VARCHAR2(50),
  NOTE_TIME   VARCHAR2(14),
  SYS_ID      VARCHAR2(10),
  MENU_ID     VARCHAR2(20),
  POST_KEY    VARCHAR2(10),
  SYSTEM_ID   VARCHAR2(10)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on column FSD1.T01_HOME_NOTE.ORDER_ID
  is '？？？？ ？？？？？？？';
comment on column FSD1.T01_HOME_NOTE.NOTE_TYPE
  is '？？: 1 ？？？？？ 2 ？？？？？？ 3？？？？？？';
comment on column FSD1.T01_HOME_NOTE.NOTE_NAME
  is '？？？？？？';
comment on column FSD1.T01_HOME_NOTE.NOTE_NUM
  is '？？？ ？？？？,？？NOTE_SQL？？？？？？';
comment on column FSD1.T01_HOME_NOTE.NOTE_URL
  is '？？？？';
comment on column FSD1.T01_HOME_NOTE.NOTE_SQL
  is '？？SQL';
comment on column FSD1.T01_HOME_NOTE.NOTE_USERID
  is '？？ID';
comment on column FSD1.T01_HOME_NOTE.NOTE_TIME
  is 'Note？？？？';
comment on column FSD1.T01_HOME_NOTE.SYS_ID
  is '？？？ID';
comment on column FSD1.T01_HOME_NOTE.MENU_ID
  is '？？？？ID';
comment on column FSD1.T01_HOME_NOTE.POST_KEY
  is '？？ID:？？？？？？？？？？？？,？？？？？？？？？","？？';
comment on column FSD1.T01_HOME_NOTE.SYSTEM_ID
  is '？？ID';
alter table FSD1.T01_HOME_NOTE
  add constraint P_T01_HOME_NOTE_PK primary key (NOTE_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table T01_LISTHEAD
prompt ===========================
prompt
create table FSD1.T01_LISTHEAD
(
  LISTHEAD_ID   VARCHAR2(32) not null,
  ENTRY_ID      VARCHAR2(64),
  SEQ_NUM       INTEGER,
  CELL_KEY      VARCHAR2(64),
  CELL_ALIAS    VARCHAR2(64),
  CELL_NAME_CH  VARCHAR2(40),
  CELL_NAME_EN  VARCHAR2(40),
  HTML_TYPE     VARCHAR2(10),
  SELECT_REGION VARCHAR2(64),
  QUALIFIER     VARCHAR2(200),
  IMG_PATH      VARCHAR2(128),
  CLICK_HREF    VARCHAR2(256),
  STYLE         VARCHAR2(128)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.T01_LISTHEAD
  is '？？？？？？？？？？？？';
comment on column FSD1.T01_LISTHEAD.LISTHEAD_ID
  is '？？？？';
comment on column FSD1.T01_LISTHEAD.ENTRY_ID
  is '？？？？';
comment on column FSD1.T01_LISTHEAD.SEQ_NUM
  is '？？';
comment on column FSD1.T01_LISTHEAD.CELL_KEY
  is '？？？？？？';
comment on column FSD1.T01_LISTHEAD.CELL_ALIAS
  is '？？？？';
comment on column FSD1.T01_LISTHEAD.CELL_NAME_CH
  is '？？？？';
comment on column FSD1.T01_LISTHEAD.CELL_NAME_EN
  is '？？？？';
comment on column FSD1.T01_LISTHEAD.HTML_TYPE
  is '？？？？-TEXT(？？？),SELECT(？？？？),DATE1(？？？？？),ORGAN(？？？？),CHECKBOX(？？？),OPERATE(？？,？？？？？？？？？？？？,？:？？),TOOLBAR(？？？？？？？？？,？:？？),NORMAL(？？？),HIDDEN(？？？,？？？？？？？？,？？？？？？)';
comment on column FSD1.T01_LISTHEAD.SELECT_REGION
  is '？？？？？-HTML_TYPE？SELECT？？,？？？？？？？';
comment on column FSD1.T01_LISTHEAD.QUALIFIER
  is '？？？？-？？？？？CHECKBOX？？？,？？？？？？？？？？？？,？？？？？NORMAL？？？？？';
comment on column FSD1.T01_LISTHEAD.IMG_PATH
  is '？？？？-？？？？？？？';
comment on column FSD1.T01_LISTHEAD.CLICK_HREF
  is '？？URL-？？？？？？？？onclick？？？？？,？？？NORMAL？？？';
comment on column FSD1.T01_LISTHEAD.STYLE
  is '？？CSS-？？QUALIFIER？？？？TD？？TR？？？';
alter table FSD1.T01_LISTHEAD
  add constraint P_PK_T01_LISTHEAD primary key (LISTHEAD_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_LOG
prompt ======================
prompt
create table FSD1.T01_LOG
(
  LOG_ID          VARCHAR2(40) not null,
  OPER_ID         VARCHAR2(20),
  OPER_NAME       VARCHAR2(100),
  OPER_ORG_ID     VARCHAR2(20),
  OPER_ORG_NAME   VARCHAR2(60),
  OPER_STATUS     VARCHAR2(100),
  OPER_TIME       VARCHAR2(20),
  OPER_IP         VARCHAR2(20),
  OPER_DETAILS    VARCHAR2(500),
  OPER_URI        VARCHAR2(100),
  OPER_PARAMETERS VARCHAR2(2000),
  OPER_METHOD     VARCHAR2(100)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T01_LOG_DIC
prompt ==========================
prompt
create table FSD1.T01_LOG_DIC
(
  OPER_URI     VARCHAR2(100) not null,
  OPER_CONTENT VARCHAR2(500),
  SUB_MENU     VARCHAR2(100),
  BUS_SUBJECT  VARCHAR2(100),
  OPER_TYPE    VARCHAR2(100),
  OPER_METHOD  VARCHAR2(100),
  LOG_DIC_ID   VARCHAR2(64)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table T01_ORDER
prompt ========================
prompt
create table FSD1.T01_ORDER
(
  ORDER_ID     VARCHAR2(32) not null,
  ENTRY_ID     VARCHAR2(64),
  SEQ_NUM      INTEGER,
  CELL_KEY     VARCHAR2(64),
  CELL_NAME_CH VARCHAR2(40),
  CELL_NAME_EN VARCHAR2(40),
  IS_DEFAULT   VARCHAR2(10),
  ORDER_SORT   VARCHAR2(10)
)
tablespace FSD1
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
comment on table FSD1.T01_ORDER
  is '？？？？？？？？,？？？？？？？？？？';
comment on column FSD1.T01_ORDER.ORDER_ID
  is '？？？？';
comment on column FSD1.T01_ORDER.ENTRY_ID
  is '？？？？';
comment on column FSD1.T01_ORDER.SEQ_NUM
  is '？？';
comment on column FSD1.T01_ORDER.CELL_KEY
  is '？？？？？？';
comment on column FSD1.T01_ORDER.CELL_NAME_CH
  is '？？？？';
comment on column FSD1.T01_ORDER.CELL_NAME_EN
  is '？？？？';
comment on column FSD1.T01_ORDER.IS_DEFAULT
  is '？？？？-true(？？？？),？？？？？？？？？？？？？true,？？？？2？,？？SEQ_NUM？？？？？';
comment on column FSD1.T01_ORDER.ORDER_SORT
  is '？？？？？？-？？？？？？？？？？？,？？？？？？？？？？？[ASC,DESC]';
alter table FSD1.T01_ORDER
  add constraint P_PK_T01_ORDER primary key (ORDER_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_SELECT_REGION
prompt ================================
prompt
create table FSD1.T01_SELECT_REGION
(
  REGION_ID      VARCHAR2(32) not null,
  SELECT_CODE    VARCHAR2(64),
  SEQ_NUM        INTEGER,
  REGION_VALUE   VARCHAR2(40),
  REGION_TEXT_CH VARCHAR2(256),
  REGION_TEXT_EN VARCHAR2(256),
  RELATE_SQL     VARCHAR2(1000),
  REGION_TYPE    VARCHAR2(1)
)
tablespace FSD1
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
comment on table FSD1.T01_SELECT_REGION
  is ' ？？？？？？？？？？？？？？？？？';
comment on column FSD1.T01_SELECT_REGION.REGION_ID
  is '？？？？';
comment on column FSD1.T01_SELECT_REGION.SELECT_CODE
  is '？？-？？？？？？？？？？？,？？？？？？？？';
comment on column FSD1.T01_SELECT_REGION.SEQ_NUM
  is '？？';
comment on column FSD1.T01_SELECT_REGION.REGION_VALUE
  is '？？？-？？？？？？？？？';
comment on column FSD1.T01_SELECT_REGION.REGION_TEXT_CH
  is '？？？？？-？？？？？？？？';
comment on column FSD1.T01_SELECT_REGION.REGION_TEXT_EN
  is '？？？？？-？？？？？？？？';
comment on column FSD1.T01_SELECT_REGION.RELATE_SQL
  is '？？？？ ？？？？？？？？？？ ';
comment on column FSD1.T01_SELECT_REGION.REGION_TYPE
  is '？？？？？？-1:？？？？？,2:？？RELATE_SQL？？？？？';
alter table FSD1.T01_SELECT_REGION
  add constraint P_PK_T01_SELECT_RE primary key (REGION_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_SYS_CONFIG
prompt =============================
prompt
create table FSD1.T01_SYS_CONFIG
(
  PARA_ID        VARCHAR2(80) not null,
  PARA_CODE      VARCHAR2(80) not null,
  PARA_NM        VARCHAR2(120) not null,
  PARA_VALUE     VARCHAR2(100) not null,
  PARA_REF_VALUE VARCHAR2(500),
  IS_VISIABLE    VARCHAR2(1) default 0 not null,
  ORDER_NUM      NUMBER(3)
)
tablespace FSD1
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
comment on table FSD1.T01_SYS_CONFIG
  is '？？？？？？？';
comment on column FSD1.T01_SYS_CONFIG.PARA_ID
  is '？？ID';
comment on column FSD1.T01_SYS_CONFIG.PARA_CODE
  is '？？？？';
comment on column FSD1.T01_SYS_CONFIG.PARA_NM
  is '？？？？';
comment on column FSD1.T01_SYS_CONFIG.PARA_VALUE
  is '？？？';
comment on column FSD1.T01_SYS_CONFIG.PARA_REF_VALUE
  is '？？？？？ ';
comment on column FSD1.T01_SYS_CONFIG.IS_VISIABLE
  is '？？？？(0:？？(？？),1:？？？)';
comment on column FSD1.T01_SYS_CONFIG.ORDER_NUM
  is '？？？';
alter table FSD1.T01_SYS_CONFIG
  add constraint PK_T01_SYS_CONFIG primary key (PARA_ID)
  using index 
  tablespace FSD1
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
prompt Creating table T01_TREE_CODE
prompt ============================
prompt
create table FSD1.T01_TREE_CODE
(
  CODE_ID        VARCHAR2(40),
  CODE_TYPE      VARCHAR2(40),
  CODE_PARENT_ID VARCHAR2(40),
  CODE_DESC_CH   VARCHAR2(100),
  CODE_USE_CD    VARCHAR2(1),
  CODE_ISPARENT  VARCHAR2(10),
  ORDER_NUM      VARCHAR2(10)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 448K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column FSD1.T01_TREE_CODE.CODE_ID
  is '？？？';
comment on column FSD1.T01_TREE_CODE.CODE_TYPE
  is '？？？';
comment on column FSD1.T01_TREE_CODE.CODE_PARENT_ID
  is '？？？';
comment on column FSD1.T01_TREE_CODE.CODE_DESC_CH
  is '？？？？';
comment on column FSD1.T01_TREE_CODE.CODE_USE_CD
  is '？？？？:0,？;1,？？';
comment on column FSD1.T01_TREE_CODE.CODE_ISPARENT
  is '？？？？？？';
comment on column FSD1.T01_TREE_CODE.ORDER_NUM
  is '？？？？';
create index FSD1.IDX_T01_TREE_CODE on FSD1.T01_TREE_CODE (CODE_ID, CODE_TYPE)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
  compress;
grant select on FSD1.T01_TREE_CODE to DATACORE;
grant select on FSD1.T01_TREE_CODE to DATACOREFF;
grant select on FSD1.T01_TREE_CODE to DATACOREOPR;

prompt
prompt Creating table T01_TREE_CODE_BAK
prompt ================================
prompt
create table FSD1.T01_TREE_CODE_BAK
(
  CODE_ID        VARCHAR2(40),
  CODE_TYPE      VARCHAR2(40),
  CODE_PARENT_ID VARCHAR2(40),
  CODE_DESC_CH   VARCHAR2(100),
  CODE_USE_CD    VARCHAR2(1),
  CODE_ISPARENT  VARCHAR2(10),
  ORDER_NUM      VARCHAR2(10)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 640K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T01_TREE_CODE_ORIG_BAK
prompt =====================================
prompt
create table FSD1.T01_TREE_CODE_ORIG_BAK
(
  CODE_ID        VARCHAR2(40),
  CODE_TYPE      VARCHAR2(40),
  CODE_PARENT_ID VARCHAR2(40),
  CODE_DESC_CH   VARCHAR2(100),
  CODE_USE_CD    VARCHAR2(1),
  CODE_ISPARENT  VARCHAR2(10),
  ORDER_NUM      VARCHAR2(10)
)
tablespace FSD1
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

prompt
prompt Creating table T01_VALIDATE_DEF
prompt ===============================
prompt
create table FSD1.T01_VALIDATE_DEF
(
  DEF_ID          VARCHAR2(32) not null,
  VALIDATE_CODE   VARCHAR2(32) not null,
  FIELD_CODE      VARCHAR2(50) not null,
  FIELD_NAME      VARCHAR2(64),
  VALIDATE_TYPE   VARCHAR2(3),
  FIELD_ORDER     VARCHAR2(3),
  VALIDATOR_ORDER VARCHAR2(3),
  USE_CD          VARCHAR2(1),
  VAL_PARAM       VARCHAR2(50),
  VALIDATE_FLAG   VARCHAR2(10),
  VALID_DT        VARCHAR2(10),
  INVALID_DT      VARCHAR2(10)
)
tablespace FSD1
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
comment on table FSD1.T01_VALIDATE_DEF
  is '？？？？？';
comment on column FSD1.T01_VALIDATE_DEF.DEF_ID
  is '？？';
comment on column FSD1.T01_VALIDATE_DEF.VALIDATE_CODE
  is '？？？？';
comment on column FSD1.T01_VALIDATE_DEF.FIELD_CODE
  is '？？？？';
comment on column FSD1.T01_VALIDATE_DEF.FIELD_NAME
  is '？？？？';
comment on column FSD1.T01_VALIDATE_DEF.VALIDATE_TYPE
  is '？？？？-V01？？？？？-V02？？？？？？？-V03？？？？？？？？-V04？？？？？-V05？？？？？？？？(？？？)-V06';
comment on column FSD1.T01_VALIDATE_DEF.FIELD_ORDER
  is '？？？？？';
comment on column FSD1.T01_VALIDATE_DEF.VALIDATOR_ORDER
  is '？？？？？？';
comment on column FSD1.T01_VALIDATE_DEF.USE_CD
  is '1？？ 0？？？';
comment on column FSD1.T01_VALIDATE_DEF.VAL_PARAM
  is '？？？？:？？？？-？？？？  ？？？？？-？？？？......';
comment on column FSD1.T01_VALIDATE_DEF.VALIDATE_FLAG
  is '？？？？,？？？？？？？？';
comment on column FSD1.T01_VALIDATE_DEF.VALID_DT
  is '？？？？';
comment on column FSD1.T01_VALIDATE_DEF.INVALID_DT
  is '？？？？';
alter table FSD1.T01_VALIDATE_DEF
  add constraint P_PK_T01_VAL_DEF primary key (DEF_ID)
  using index 
  tablespace FSD1
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
prompt Creating table TA01_CONVERT_STATUS
prompt ==================================
prompt
create table FSD1.TA01_CONVERT_STATUS
(
  CONVERT_STATUS_ID VARCHAR2(40) not null,
  STATUS_CODE       VARCHAR2(64) not null,
  STATUS_NAME       VARCHAR2(64) not null,
  SUCESS_STATUS     VARCHAR2(64),
  FAIL_STATUS       VARCHAR2(64)
)
tablespace FSD1
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
comment on table FSD1.TA01_CONVERT_STATUS
  is '？？？？？？？';
comment on column FSD1.TA01_CONVERT_STATUS.CONVERT_STATUS_ID
  is '？？？？';
comment on column FSD1.TA01_CONVERT_STATUS.STATUS_CODE
  is '？？？？(1-？？？;2-？？？;3-？？？？;4-？？？？？;5-？？？;8-？？？？;9-？？？)';
comment on column FSD1.TA01_CONVERT_STATUS.STATUS_NAME
  is '？？？？';
comment on column FSD1.TA01_CONVERT_STATUS.SUCESS_STATUS
  is '？？？？？？';
comment on column FSD1.TA01_CONVERT_STATUS.FAIL_STATUS
  is '？？？？？？';
alter table FSD1.TA01_CONVERT_STATUS
  add constraint P_PK_TA01_CONVERT_ primary key (CONVERT_STATUS_ID)
  using index 
  tablespace FSD1
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
prompt Creating table TA01_LOG
prompt =======================
prompt
create table FSD1.TA01_LOG
(
  LOG_ID          VARCHAR2(40) not null,
  OPER_ID         VARCHAR2(20),
  OPER_NAME       VARCHAR2(100),
  OPER_ORG_ID     VARCHAR2(20),
  OPER_ORG_NAME   VARCHAR2(60),
  OPER_STATUS     VARCHAR2(100),
  OPER_TIME       VARCHAR2(20),
  OPER_IP         VARCHAR2(20),
  OPER_DETAILS    VARCHAR2(500),
  OPER_URI        VARCHAR2(100),
  OPER_PARAMETERS VARCHAR2(2000),
  OPER_METHOD     VARCHAR2(100) default 'def'
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA01_LOG
  is '？？？？？';
comment on column FSD1.TA01_LOG.LOG_ID
  is '？？？？';
comment on column FSD1.TA01_LOG.OPER_ID
  is '？？？？ID';
comment on column FSD1.TA01_LOG.OPER_NAME
  is '？？？？？？';
comment on column FSD1.TA01_LOG.OPER_ORG_ID
  is '？？？？ID';
comment on column FSD1.TA01_LOG.OPER_ORG_NAME
  is '？？？？？？';
comment on column FSD1.TA01_LOG.OPER_STATUS
  is '？？？？';
comment on column FSD1.TA01_LOG.OPER_TIME
  is '？？？？';
comment on column FSD1.TA01_LOG.OPER_IP
  is '？？IP';
comment on column FSD1.TA01_LOG.OPER_DETAILS
  is '？？？？？？';
comment on column FSD1.TA01_LOG.OPER_URI
  is '？？？？';
comment on column FSD1.TA01_LOG.OPER_PARAMETERS
  is '？？？？';
comment on column FSD1.TA01_LOG.OPER_METHOD
  is 'uri？？？？,？？？？';
alter table FSD1.TA01_LOG
  add constraint P_PK_TA01_LOG primary key (LOG_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 768K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA01_LOG_DIC
prompt ===========================
prompt
create table FSD1.TA01_LOG_DIC
(
  OPER_URI     VARCHAR2(100) not null,
  OPER_CONTENT VARCHAR2(500),
  SUB_MENU     VARCHAR2(100),
  BUS_SUBJECT  VARCHAR2(100),
  OPER_TYPE    VARCHAR2(100) default '1',
  OPER_METHOD  VARCHAR2(100) default 'def',
  LOG_DIC_ID   VARCHAR2(64) not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on column FSD1.TA01_LOG_DIC.OPER_URI
  is '？？？？';
comment on column FSD1.TA01_LOG_DIC.OPER_CONTENT
  is '？？？？';
comment on column FSD1.TA01_LOG_DIC.SUB_MENU
  is '？？？？(？？？？？？？？,？？？？？？？？？？？？？？？？？？？3.2.2？)';
comment on column FSD1.TA01_LOG_DIC.BUS_SUBJECT
  is '？？？？';
comment on column FSD1.TA01_LOG_DIC.OPER_TYPE
  is '？？？？ 1:？？ 2:？？ 3:？？ 4:？？ 5:？？ 6:？？ 7:？？ 8？？';
comment on column FSD1.TA01_LOG_DIC.OPER_METHOD
  is 'uri？？？？,？？？？';
comment on column FSD1.TA01_LOG_DIC.LOG_DIC_ID
  is '？？';
alter table FSD1.TA01_LOG_DIC
  add constraint P_PK_LOG_DIC_ID primary key (LOG_DIC_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TA01_LOG_VALIDATY
prompt ================================
prompt
create table FSD1.TA01_LOG_VALIDATY
(
  LOG_ID          VARCHAR2(40) not null,
  OPER_URI        VARCHAR2(100),
  OPER_METHOD     VARCHAR2(100),
  OPER_IP         VARCHAR2(50),
  TREAD_ID        NUMBER not null,
  FAIL_COUNT      NUMBER,
  SUCCESS_COUNT   NUMBER,
  PLAN_PERCENT    NUMBER,
  DATA_DATE       VARCHAR2(40),
  AGENCY_CODE     VARCHAR2(40),
  EXECUTION_STATE NUMBER,
  DATE_COUNT      NUMBER
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA01_LOG_VALIDATY
  is '验证进度监控表';
comment on column FSD1.TA01_LOG_VALIDATY.LOG_ID
  is '操作用户ID和执行验证的系统时间';
comment on column FSD1.TA01_LOG_VALIDATY.OPER_URI
  is '产品类别';
comment on column FSD1.TA01_LOG_VALIDATY.OPER_METHOD
  is '执行操作';
comment on column FSD1.TA01_LOG_VALIDATY.OPER_IP
  is '操作用户IP';
comment on column FSD1.TA01_LOG_VALIDATY.TREAD_ID
  is '线程ID';
comment on column FSD1.TA01_LOG_VALIDATY.FAIL_COUNT
  is '验证失败总数';
comment on column FSD1.TA01_LOG_VALIDATY.SUCCESS_COUNT
  is '验证通过总数';
comment on column FSD1.TA01_LOG_VALIDATY.PLAN_PERCENT
  is '该进程占总进程的百分比';
comment on column FSD1.TA01_LOG_VALIDATY.DATA_DATE
  is '数据日期';
comment on column FSD1.TA01_LOG_VALIDATY.AGENCY_CODE
  is '机构代码';
comment on column FSD1.TA01_LOG_VALIDATY.EXECUTION_STATE
  is '执行状态';
comment on column FSD1.TA01_LOG_VALIDATY.DATE_COUNT
  is '线程处理的数据总数';
alter table FSD1.TA01_LOG_VALIDATY
  add constraint P_PK_TA01_LOG_VALIDATY primary key (LOG_ID, TREAD_ID)
  using index 
  tablespace FSD1
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
prompt Creating table TA01_VAL_STATUS
prompt ==============================
prompt
create table FSD1.TA01_VAL_STATUS
(
  FILTER_STUSTUS_ID VARCHAR2(40) not null,
  STATUS_CODE       VARCHAR2(64) not null,
  STATUS_NAME       VARCHAR2(64) not null,
  SUCESS_STATUS     VARCHAR2(64),
  FAIL_STATUS       VARCHAR2(64)
)
tablespace FSD1
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
comment on table FSD1.TA01_VAL_STATUS
  is '？？？？？？？';
comment on column FSD1.TA01_VAL_STATUS.FILTER_STUSTUS_ID
  is '？？？？';
comment on column FSD1.TA01_VAL_STATUS.STATUS_CODE
  is '？？？？(1-？？？;2-？？;3-？？？？？;4-？？？？)';
comment on column FSD1.TA01_VAL_STATUS.STATUS_NAME
  is '？？？？';
comment on column FSD1.TA01_VAL_STATUS.SUCESS_STATUS
  is '？？？？？？';
comment on column FSD1.TA01_VAL_STATUS.FAIL_STATUS
  is '？？？？？？';
alter table FSD1.TA01_VAL_STATUS
  add constraint P_PK_TA01_FILTER_S primary key (FILTER_STUSTUS_ID)
  using index 
  tablespace FSD1
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
prompt Creating table TA02_DICTIONARY
prompt ==============================
prompt
create table FSD1.TA02_DICTIONARY
(
  DICTIONARY_ID   VARCHAR2(40) not null,
  DIC_TYPE_CODE   VARCHAR2(20),
  DICTIONARY_CODE VARCHAR2(20),
  DICTIONARY_NAME VARCHAR2(100),
  DESCRIPTIONS    VARCHAR2(100)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on table FSD1.TA02_DICTIONARY
  is '？？？？？';
comment on column FSD1.TA02_DICTIONARY.DICTIONARY_ID
  is '？？？？';
comment on column FSD1.TA02_DICTIONARY.DIC_TYPE_CODE
  is '？？？？？？';
comment on column FSD1.TA02_DICTIONARY.DICTIONARY_CODE
  is '？？？？';
comment on column FSD1.TA02_DICTIONARY.DICTIONARY_NAME
  is '？？？？';
comment on column FSD1.TA02_DICTIONARY.DESCRIPTIONS
  is '？？？？';
alter table FSD1.TA02_DICTIONARY
  add constraint P_PK_TA02_DICTIONA primary key (DICTIONARY_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TA02_DIC_TYPE
prompt ============================
prompt
create table FSD1.TA02_DIC_TYPE
(
  DIC_TYPE_ID   VARCHAR2(40) not null,
  DIC_TYPE_CODE VARCHAR2(20),
  DIC_TYPE_NAME VARCHAR2(100),
  DESCRIPTION   VARCHAR2(100)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on table FSD1.TA02_DIC_TYPE
  is '？？？？？？？';
comment on column FSD1.TA02_DIC_TYPE.DIC_TYPE_ID
  is '？？？？';
comment on column FSD1.TA02_DIC_TYPE.DIC_TYPE_CODE
  is '？？？？？？';
comment on column FSD1.TA02_DIC_TYPE.DIC_TYPE_NAME
  is '？？？？？？';
comment on column FSD1.TA02_DIC_TYPE.DESCRIPTION
  is '？？？？';
alter table FSD1.TA02_DIC_TYPE
  add constraint P_PK_TA02_DIC_TYPE primary key (DIC_TYPE_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TA12_BRANCH_MAPPING
prompt ==================================
prompt
create table FSD1.TA12_BRANCH_MAPPING
(
  INNER_BRANCH_CODE  VARCHAR2(30) not null,
  CENTER_BRANCH_CODE VARCHAR2(30) not null,
  LAWYER_BRANCH_CODE VARCHAR2(30) not null
)
tablespace FSD1
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
comment on table FSD1.TA12_BRANCH_MAPPING
  is '？？？？？';
comment on column FSD1.TA12_BRANCH_MAPPING.INNER_BRANCH_CODE
  is '？？？？？？';
comment on column FSD1.TA12_BRANCH_MAPPING.CENTER_BRANCH_CODE
  is '？？？？？？';
comment on column FSD1.TA12_BRANCH_MAPPING.LAWYER_BRANCH_CODE
  is '？？？？？？';
alter table FSD1.TA12_BRANCH_MAPPING
  add constraint P_PK_TA12_BRANCH_MAPPING primary key (INNER_BRANCH_CODE, CENTER_BRANCH_CODE, LAWYER_BRANCH_CODE)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA12_BRANCH_MAPPING_20141010
prompt ===========================================
prompt
create table FSD1.TA12_BRANCH_MAPPING_20141010
(
  INNER_BRANCH_CODE  VARCHAR2(30) not null,
  CENTER_BRANCH_CODE VARCHAR2(30) not null,
  LAWYER_BRANCH_CODE VARCHAR2(30) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA12_BRANCH_MAPPING_20141010A
prompt ============================================
prompt
create table FSD1.TA12_BRANCH_MAPPING_20141010A
(
  INNER_BRANCH_CODE  VARCHAR2(30) not null,
  CENTER_BRANCH_CODE VARCHAR2(30) not null,
  LAWYER_BRANCH_CODE VARCHAR2(30) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA12_BRANCH_MAPPING_20141010B
prompt ============================================
prompt
create table FSD1.TA12_BRANCH_MAPPING_20141010B
(
  INNER_BRANCH_CODE  VARCHAR2(30) not null,
  CENTER_BRANCH_CODE VARCHAR2(30) not null,
  LAWYER_BRANCH_CODE VARCHAR2(30) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA12_BRANCH_MAPPING_201411
prompt =========================================
prompt
create table FSD1.TA12_BRANCH_MAPPING_201411
(
  INNER_BRANCH_CODE  VARCHAR2(30) not null,
  CENTER_BRANCH_CODE VARCHAR2(30) not null,
  LAWYER_BRANCH_CODE VARCHAR2(30) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA12_BRANCH_MAPPING_BAK
prompt ======================================
prompt
create table FSD1.TA12_BRANCH_MAPPING_BAK
(
  INNER_BRANCH_CODE  VARCHAR2(30) not null,
  CENTER_BRANCH_CODE VARCHAR2(30) not null,
  LAWYER_BRANCH_CODE VARCHAR2(30) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA12_BRANCH_MAPPING_OLD
prompt ======================================
prompt
create table FSD1.TA12_BRANCH_MAPPING_OLD
(
  INNER_BRANCH_CODE VARCHAR2(30) not null,
  OLD_BRANCH_CODE   VARCHAR2(30) not null,
  SPARE1            VARCHAR2(50),
  SPARE2            VARCHAR2(50),
  SPARE3            VARCHAR2(50)
)
tablespace FSD1
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
comment on table FSD1.TA12_BRANCH_MAPPING_OLD
  is '？？？？？？？';
comment on column FSD1.TA12_BRANCH_MAPPING_OLD.INNER_BRANCH_CODE
  is '？？？？？？';
comment on column FSD1.TA12_BRANCH_MAPPING_OLD.OLD_BRANCH_CODE
  is '？11？？？？？';
comment on column FSD1.TA12_BRANCH_MAPPING_OLD.SPARE1
  is '？？？？1';
comment on column FSD1.TA12_BRANCH_MAPPING_OLD.SPARE2
  is '？？？？2';
comment on column FSD1.TA12_BRANCH_MAPPING_OLD.SPARE3
  is '？？？？3';
alter table FSD1.TA12_BRANCH_MAPPING_OLD
  add constraint P_PK_TA12_BRANCH_MAPPING_OLD primary key (INNER_BRANCH_CODE, OLD_BRANCH_CODE)
  using index 
  tablespace FSD1
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
prompt Creating table TA12_BRANCH_MAPPING_OLD_BAK
prompt ==========================================
prompt
create table FSD1.TA12_BRANCH_MAPPING_OLD_BAK
(
  INNER_BRANCH_CODE VARCHAR2(30) not null,
  OLD_BRANCH_CODE   VARCHAR2(30) not null,
  SPARE1            VARCHAR2(50),
  SPARE2            VARCHAR2(50),
  SPARE3            VARCHAR2(50)
)
tablespace FSD1
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

prompt
prompt Creating table TA12_BUSS_TYPE
prompt =============================
prompt
create table FSD1.TA12_BUSS_TYPE
(
  BUSS_TYPE_CODE VARCHAR2(80) not null,
  BUSS_TYPE_NM   VARCHAR2(120) not null
)
tablespace FSD1
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
comment on table FSD1.TA12_BUSS_TYPE
  is '业务条线表';
comment on column FSD1.TA12_BUSS_TYPE.BUSS_TYPE_CODE
  is '业务条线编号';
comment on column FSD1.TA12_BUSS_TYPE.BUSS_TYPE_NM
  is '业务条线名称';
alter table FSD1.TA12_BUSS_TYPE
  add constraint P_PK_TA12_BUSS_TYPE primary key (BUSS_TYPE_CODE)
  using index 
  tablespace FSD1
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
grant select on FSD1.TA12_BUSS_TYPE to DATACORE;
grant select on FSD1.TA12_BUSS_TYPE to DATACOREFF;
grant select on FSD1.TA12_BUSS_TYPE to DATACOREOPR;

prompt
prompt Creating table TA12_CKZHLX_MAPPING_CONFIG
prompt =========================================
prompt
create table FSD1.TA12_CKZHLX_MAPPING_CONFIG
(
  MAP_ID             NUMBER not null,
  ACCT_TYPE          VARCHAR2(20) not null,
  ACCT_TYPE_NAME     VARCHAR2(80),
  MAP_ACCT_TYPE      VARCHAR2(20) not null,
  MAP_ACCT_TYPE_NAME VARCHAR2(80)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FSD1.TA12_CKZHLX_MAPPING_CONFIG
  is '存款账户类型对照关系表';
comment on column FSD1.TA12_CKZHLX_MAPPING_CONFIG.MAP_ID
  is '映射ID';
comment on column FSD1.TA12_CKZHLX_MAPPING_CONFIG.ACCT_TYPE
  is '存款账户类型代码';
comment on column FSD1.TA12_CKZHLX_MAPPING_CONFIG.ACCT_TYPE_NAME
  is '存款账户类型名称';
comment on column FSD1.TA12_CKZHLX_MAPPING_CONFIG.MAP_ACCT_TYPE
  is '对应存款账户类型代码';
comment on column FSD1.TA12_CKZHLX_MAPPING_CONFIG.MAP_ACCT_TYPE_NAME
  is '对应存款账户类型名称';
alter table FSD1.TA12_CKZHLX_MAPPING_CONFIG
  add constraint PK_CKZHLX_MAPPING_CONFIG primary key (MAP_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TA12_DES_BANK_RELA
prompt =================================
prompt
create table FSD1.TA12_DES_BANK_RELA
(
  BANK_RELA_ID      VARCHAR2(40) not null,
  BANK_ID           VARCHAR2(60),
  REPORT_BANK_ID    VARCHAR2(14),
  BANK_RELA_DESC    VARCHAR2(100),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(60)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on table FSD1.TA12_DES_BANK_RELA
  is '？？？？？？？？？？？？？';
comment on column FSD1.TA12_DES_BANK_RELA.BANK_RELA_ID
  is '？？？？？？(BANK_ID||REPORT_BANK_ID)';
comment on column FSD1.TA12_DES_BANK_RELA.BANK_ID
  is '？？？？？？';
comment on column FSD1.TA12_DES_BANK_RELA.REPORT_BANK_ID
  is '？？？？？？(？？？？？14？？？？？？？)';
comment on column FSD1.TA12_DES_BANK_RELA.BANK_RELA_DESC
  is '？？？？';
comment on column FSD1.TA12_DES_BANK_RELA.FIN_MOD_OPER_ID
  is '？？？？？？？';
comment on column FSD1.TA12_DES_BANK_RELA.FIN_MOD_OPER_NAME
  is '？？？？？？？';
comment on column FSD1.TA12_DES_BANK_RELA.FIN_MDO_TIME
  is '？？？？？？';
alter table FSD1.TA12_DES_BANK_RELA
  add constraint P_PK_TA12_BANK_REL primary key (BANK_RELA_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
create unique index FSD1.I_TA12_BANK_RELA1 on FSD1.TA12_DES_BANK_RELA (BANK_ID, REPORT_BANK_ID)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TA12_LAWYER_BRANCH
prompt =================================
prompt
create table FSD1.TA12_LAWYER_BRANCH
(
  LAWYER_BRANCH_CODE VARCHAR2(30) not null,
  LAWYER_BRANCH_NM   VARCHAR2(120) not null
)
tablespace FSD1
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
comment on table FSD1.TA12_LAWYER_BRANCH
  is '？？？？？';
comment on column FSD1.TA12_LAWYER_BRANCH.LAWYER_BRANCH_CODE
  is '？？？？？？';
comment on column FSD1.TA12_LAWYER_BRANCH.LAWYER_BRANCH_NM
  is '？？？？？？';
alter table FSD1.TA12_LAWYER_BRANCH
  add constraint P_PK_TA12_LAWYER_BRANCH primary key (LAWYER_BRANCH_CODE)
  using index 
  tablespace FSD1
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
prompt Creating table TA12_PRD_MAPPING_CONFIG
prompt ======================================
prompt
create table FSD1.TA12_PRD_MAPPING_CONFIG
(
  MAP_ID            NUMBER not null,
  PRD_TAG           VARCHAR2(2) not null,
  PRD_TYPE          VARCHAR2(20) not null,
  PRD_TYPE_NAME     VARCHAR2(80),
  MAP_PRD_TYPE      VARCHAR2(20) not null,
  MAP_PRD_TYPE_NAME VARCHAR2(80)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FSD1.TA12_PRD_MAPPING_CONFIG
  is '产品类别对照关系表';
comment on column FSD1.TA12_PRD_MAPPING_CONFIG.MAP_ID
  is '映射ID';
comment on column FSD1.TA12_PRD_MAPPING_CONFIG.PRD_TAG
  is '产品标示：01-存款 ；02-贷款';
comment on column FSD1.TA12_PRD_MAPPING_CONFIG.PRD_TYPE
  is '产品类别';
comment on column FSD1.TA12_PRD_MAPPING_CONFIG.PRD_TYPE_NAME
  is '产品类别名称';
comment on column FSD1.TA12_PRD_MAPPING_CONFIG.MAP_PRD_TYPE
  is '对应产品类别';
comment on column FSD1.TA12_PRD_MAPPING_CONFIG.MAP_PRD_TYPE_NAME
  is '对应产品类别名称';
alter table FSD1.TA12_PRD_MAPPING_CONFIG
  add constraint PK_PRD_MAPPING_CONFIG primary key (MAP_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TA12_REPORT_XLS_SQL
prompt ==================================
prompt
create table FSD1.TA12_REPORT_XLS_SQL
(
  XLS_SQL_ID     VARCHAR2(10) not null,
  EXCEL_STATION  VARCHAR2(10),
  REPORT_XLS_SQL VARCHAR2(2000),
  USE_CD         VARCHAR2(1)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on column FSD1.TA12_REPORT_XLS_SQL.XLS_SQL_ID
  is '？？ID';
comment on column FSD1.TA12_REPORT_XLS_SQL.EXCEL_STATION
  is 'EXCEL？？？？？';
comment on column FSD1.TA12_REPORT_XLS_SQL.REPORT_XLS_SQL
  is '？？SQL';
comment on column FSD1.TA12_REPORT_XLS_SQL.USE_CD
  is '？？？？:0,？;1,？';
alter table FSD1.TA12_REPORT_XLS_SQL
  add constraint P_PK_REPORT_XLS_SQ primary key (XLS_SQL_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TA12_SUBJECT_INFO
prompt ================================
prompt
create table FSD1.TA12_SUBJECT_INFO
(
  SUBJECT_CODE VARCHAR2(80) not null,
  SUBJECT_NM   VARCHAR2(120) not null
)
tablespace FSD1
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
comment on table FSD1.TA12_SUBJECT_INFO
  is '？？？？？';
comment on column FSD1.TA12_SUBJECT_INFO.SUBJECT_CODE
  is '？？？？';
comment on column FSD1.TA12_SUBJECT_INFO.SUBJECT_NM
  is '？？？？';
alter table FSD1.TA12_SUBJECT_INFO
  add constraint P_PK_TA12_SUBJECT_INFO primary key (SUBJECT_CODE)
  using index 
  tablespace FSD1
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
prompt Creating table TA12_SUBJECT_MSG_REAL
prompt ====================================
prompt
create table FSD1.TA12_SUBJECT_MSG_REAL
(
  SUBJECT_CODE VARCHAR2(80) not null,
  MSG_TYPE     VARCHAR2(3) not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on table FSD1.TA12_SUBJECT_MSG_REAL
  is '？？？？？？？';
comment on column FSD1.TA12_SUBJECT_MSG_REAL.SUBJECT_CODE
  is '？？？？';
comment on column FSD1.TA12_SUBJECT_MSG_REAL.MSG_TYPE
  is '？？？？(？A？？？？？？？,？？？？？？:A01？？？？:A02？？？？？:A03？？？？:A04)';
alter table FSD1.TA12_SUBJECT_MSG_REAL
  add constraint P_PK_TA12_SUBJECT_MSG_REAL primary key (MSG_TYPE)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
alter table FSD1.TA12_SUBJECT_MSG_REAL
  add constraint FK_MSG_R_LAWYER_SUBJECT foreign key (SUBJECT_CODE)
  references FSD1.TA12_SUBJECT_INFO (SUBJECT_CODE);

prompt
prompt Creating table TA12_TRACE_LOG
prompt =============================
prompt
create table FSD1.TA12_TRACE_LOG
(
  LOG_ID        VARCHAR2(80) not null,
  OPER_ORGID    VARCHAR2(30) not null,
  OPER_USERID   VARCHAR2(30) not null,
  OPER_TIME     VARCHAR2(19) not null,
  OPRE_TYPE     VARCHAR2(1) not null,
  OPRE_MSG_TYPE VARCHAR2(3) not null,
  OPER_MSG_ID   VARCHAR2(200) not null,
  OPER_STATUS   VARCHAR2(1) not null,
  OPER_DETAIL   VARCHAR2(1000),
  OPER_EXP_INFO VARCHAR2(1000)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA12_TRACE_LOG
  is '？？？？？';
comment on column FSD1.TA12_TRACE_LOG.LOG_ID
  is '？？ID';
comment on column FSD1.TA12_TRACE_LOG.OPER_ORGID
  is '？？？？ID';
comment on column FSD1.TA12_TRACE_LOG.OPER_USERID
  is '？？？？ID';
comment on column FSD1.TA12_TRACE_LOG.OPER_TIME
  is '？？？？';
comment on column FSD1.TA12_TRACE_LOG.OPRE_TYPE
  is '？？？？(0:？？,1:？？,2:？？)';
comment on column FSD1.TA12_TRACE_LOG.OPRE_MSG_TYPE
  is '？？？？？？(？A？？？？？？？,？？？？？？:A01？？？？:A02？？？？？:A03？？？？:A04)';
comment on column FSD1.TA12_TRACE_LOG.OPER_MSG_ID
  is '？？？？？(？？？？？,？？？？)';
comment on column FSD1.TA12_TRACE_LOG.OPER_STATUS
  is '？？？？(0:？？？？,1:？？？？)';
comment on column FSD1.TA12_TRACE_LOG.OPER_DETAIL
  is '？？？？';
comment on column FSD1.TA12_TRACE_LOG.OPER_EXP_INFO
  is '？？？？？？';
alter table FSD1.TA12_TRACE_LOG
  add constraint PK_TA12_TRACE_LOG primary key (LOG_ID)
  using index 
  tablespace FSD1
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
prompt Creating table TA13_CELL_INTERFACE
prompt ==================================
prompt
create table FSD1.TA13_CELL_INTERFACE
(
  TA13_MSG_A411_ID   VARCHAR2(80) not null,
  VALIDATE_MSG_ID    VARCHAR2(80),
  REPORT_BANK_ID     VARCHAR2(14),
  MSG_TIME           VARCHAR2(6),
  N_D_B_RMB_01_A1411 NUMBER(13,5),
  N_D_B_WB_01_A1411  NUMBER(13,5),
  N_D_B_RMB_03_A1411 NUMBER(13,5),
  N_D_B_WB_03_A1411  NUMBER(13,5),
  N_D_B_RMB_04_A1411 NUMBER(13,5),
  N_D_B_WB_04_A1411  NUMBER(13,5),
  N_D_B_RMB_05_A1411 NUMBER(13,5),
  N_D_B_WB_05_A1411  NUMBER(13,5),
  N_D_B_RMB_06_A1411 NUMBER(13,5),
  N_D_B_WB_06_A1411  NUMBER(13,5),
  N_D_B_RMB_07_A1411 NUMBER(13,5),
  N_D_B_WB_07_A1411  NUMBER(13,5),
  N_D_B_RMB_10_A1411 NUMBER(13,5),
  N_D_B_WB_10_A1411  NUMBER(13,5),
  N_L_B_RMB_02_A1411 NUMBER(13,5),
  N_L_B_WB_02_A1411  NUMBER(13,5),
  N_L_B_RMB_05_A1411 NUMBER(13,5),
  N_L_B_WB_05_A1411  NUMBER(13,5),
  N_L_B_RMB_08_A1411 NUMBER(13,5),
  N_L_B_WB_08_A1411  NUMBER(13,5),
  N_L_B_RMB_09_A1411 NUMBER(13,5),
  N_L_B_WB_09_A1411  NUMBER(13,5),
  N_L_B_RMB_11_A1411 NUMBER(13,5),
  N_L_B_WB_11_A1411  NUMBER(13,5),
  N_L_B_RMB_12_A1411 NUMBER(13,5),
  N_L_B_WB_12_A1411  NUMBER(13,5)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
comment on table FSD1.TA13_CELL_INTERFACE
  is '？？？？？？？A1411？A2411？？？';
alter table FSD1.TA13_CELL_INTERFACE
  add constraint P_PK_TA13_MSG_A411 primary key (TA13_MSG_A411_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TA13_DEP_BALANCE
prompt ===============================
prompt
create table FSD1.TA13_DEP_BALANCE
(
  DEP_BALANCE_ID     VARCHAR2(80) not null,
  BANK_ID            VARCHAR2(60) not null,
  BUSS_TYPE_CODE     VARCHAR2(80),
  DEP_SUB_NAME       VARCHAR2(120),
  DEP_SUB_ORG_CODE   VARCHAR2(20),
  PER_CARD_TYPE      VARCHAR2(1),
  PER_CARD_CODE      VARCHAR2(20),
  DEP_ACC_CODE       VARCHAR2(60) not null,
  DEP_ACC_TYPE       VARCHAR2(3),
  DEP_AGR_CODE       VARCHAR2(60) not null,
  PRODUCT_TYPE       VARCHAR2(6) not null,
  DEP_AGR_START_DATE VARCHAR2(10) not null,
  DEP_AGR_END_DATE   VARCHAR2(10),
  CURRENCY_TYPE      VARCHAR2(3) not null,
  DEP_BALANCE        NUMBER(17,2) not null,
  DEP_USD_AMT        NUMBER(17,2),
  INT_RATE_IS_FIXED  VARCHAR2(4) not null,
  INT_RATE_HOR       NUMBER(13,5),
  ACCESS_FLAG        VARCHAR2(1),
  DATA_DATE          VARCHAR2(10),
  ACCT_CLASS_TYPE    VARCHAR2(1) not null,
  IS_MES_DATA        VARCHAR2(1),
  VALIDATE_STATUS    VARCHAR2(1) default 1,
  CONVERT_STATUS     VARCHAR2(2) default 1,
  FIN_MOD_OPER_ID    VARCHAR2(20),
  FIN_MOD_OPER_NAME  VARCHAR2(60),
  FIN_MDO_TIME       VARCHAR2(20),
  SOURCE_ID          VARCHAR2(1) default 1 not null,
  UPDATE_BYHAND      VARCHAR2(1) default '0' not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 111M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA13_DEP_BALANCE
  is '非活期存款余额信息表';
comment on column FSD1.TA13_DEP_BALANCE.DEP_BALANCE_ID
  is '唯一键标识';
comment on column FSD1.TA13_DEP_BALANCE.BANK_ID
  is '金融机构编码(内部机构号)';
comment on column FSD1.TA13_DEP_BALANCE.BUSS_TYPE_CODE
  is '业务条线编号';
comment on column FSD1.TA13_DEP_BALANCE.DEP_SUB_NAME
  is '存款主体名称';
comment on column FSD1.TA13_DEP_BALANCE.DEP_SUB_ORG_CODE
  is '存款主体组织机构代码';
comment on column FSD1.TA13_DEP_BALANCE.PER_CARD_TYPE
  is '个人证件类型';
comment on column FSD1.TA13_DEP_BALANCE.PER_CARD_CODE
  is '个人证件号码';
comment on column FSD1.TA13_DEP_BALANCE.DEP_ACC_CODE
  is '存款帐户代码';
comment on column FSD1.TA13_DEP_BALANCE.DEP_ACC_TYPE
  is '存款帐户类型';
comment on column FSD1.TA13_DEP_BALANCE.DEP_AGR_CODE
  is '存款协议代码';
comment on column FSD1.TA13_DEP_BALANCE.PRODUCT_TYPE
  is '产品类别';
comment on column FSD1.TA13_DEP_BALANCE.DEP_AGR_START_DATE
  is '存款协议起始日';
comment on column FSD1.TA13_DEP_BALANCE.DEP_AGR_END_DATE
  is '存款协议到期日';
comment on column FSD1.TA13_DEP_BALANCE.CURRENCY_TYPE
  is '币种';
comment on column FSD1.TA13_DEP_BALANCE.DEP_BALANCE
  is '存款余额';
comment on column FSD1.TA13_DEP_BALANCE.DEP_USD_AMT
  is '外币折美元金额';
comment on column FSD1.TA13_DEP_BALANCE.INT_RATE_IS_FIXED
  is '利率是否固定';
comment on column FSD1.TA13_DEP_BALANCE.INT_RATE_HOR
  is '利率水平';
comment on column FSD1.TA13_DEP_BALANCE.ACCESS_FLAG
  is '存取标志';
comment on column FSD1.TA13_DEP_BALANCE.DATA_DATE
  is '数据日期';
comment on column FSD1.TA13_DEP_BALANCE.ACCT_CLASS_TYPE
  is '客户类型（1；对公，0；对私）';
comment on column FSD1.TA13_DEP_BALANCE.IS_MES_DATA
  is '是否是报文数据(0-否、1-是)';
comment on column FSD1.TA13_DEP_BALANCE.VALIDATE_STATUS
  is '校验状态';
comment on column FSD1.TA13_DEP_BALANCE.CONVERT_STATUS
  is '流转状态';
comment on column FSD1.TA13_DEP_BALANCE.FIN_MOD_OPER_ID
  is '最后修改人标识';
comment on column FSD1.TA13_DEP_BALANCE.FIN_MOD_OPER_NAME
  is '最后修改人名称';
comment on column FSD1.TA13_DEP_BALANCE.FIN_MDO_TIME
  is '最后修改时间';
comment on column FSD1.TA13_DEP_BALANCE.SOURCE_ID
  is '数据来源标识（0：etl抽取，1：系统添加）';
comment on column FSD1.TA13_DEP_BALANCE.UPDATE_BYHAND
  is '是否是手工新增或修改过的记录,1代表改过';
create index FSD1.IDX_TA13_DEP_BAL_SEL on FSD1.TA13_DEP_BALANCE (DATA_DATE, CONVERT_STATUS)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
  compress;
create unique index FSD1.P_PK_TA12_DEP_BALA on FSD1.TA13_DEP_BALANCE (DEP_ACC_CODE, DEP_AGR_CODE, DATA_DATE, CURRENCY_TYPE)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 39M
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index FSD1.P_PK_TA13_DEP_BALANCE on FSD1.TA13_DEP_BALANCE (BANK_ID, DATA_DATE, ACCT_CLASS_TYPE, DEP_ACC_CODE, DEP_AGR_CODE)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 44M
    next 1M
    minextents 1
    maxextents unlimited
  );
grant select, insert, update, delete, references, alter, index on FSD1.TA13_DEP_BALANCE to DATACORE;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_DEP_BALANCE to DATACOREFF;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_DEP_BALANCE to DATACOREOPR;

prompt
prompt Creating table TA13_DEP_BALANCE_0131
prompt ====================================
prompt
create table FSD1.TA13_DEP_BALANCE_0131
(
  DEP_BALANCE_ID     VARCHAR2(80) not null,
  BANK_ID            VARCHAR2(60) not null,
  BUSS_TYPE_CODE     VARCHAR2(80),
  DEP_SUB_NAME       VARCHAR2(120),
  DEP_SUB_ORG_CODE   VARCHAR2(20),
  PER_CARD_TYPE      VARCHAR2(1),
  PER_CARD_CODE      VARCHAR2(20),
  DEP_ACC_CODE       VARCHAR2(60) not null,
  DEP_ACC_TYPE       VARCHAR2(3),
  DEP_AGR_CODE       VARCHAR2(60) not null,
  PRODUCT_TYPE       VARCHAR2(6) not null,
  DEP_AGR_START_DATE VARCHAR2(10) not null,
  DEP_AGR_END_DATE   VARCHAR2(10),
  CURRENCY_TYPE      VARCHAR2(3) not null,
  DEP_BALANCE        NUMBER(17,2) not null,
  DEP_USD_AMT        NUMBER(17,2),
  INT_RATE_IS_FIXED  VARCHAR2(4) not null,
  INT_RATE_HOR       NUMBER(13,5),
  ACCESS_FLAG        VARCHAR2(1),
  DATA_DATE          VARCHAR2(10),
  ACCT_CLASS_TYPE    VARCHAR2(1) not null,
  IS_MES_DATA        VARCHAR2(1),
  VALIDATE_STATUS    VARCHAR2(1),
  CONVERT_STATUS     VARCHAR2(2),
  FIN_MOD_OPER_ID    VARCHAR2(20),
  FIN_MOD_OPER_NAME  VARCHAR2(60),
  FIN_MDO_TIME       VARCHAR2(20),
  SOURCE_ID          VARCHAR2(1) not null,
  UPDATE_BYHAND      VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_DEP_BALANCE_2
prompt =================================
prompt
create table FSD1.TA13_DEP_BALANCE_2
(
  DEP_COLL_BALANCE_DETAIL_ID VARCHAR2(80) not null,
  DEP_COLL_BALANCE_ID        VARCHAR2(80) not null,
  BANK_ID                    VARCHAR2(60) not null,
  BUSS_TYPE_CODE             VARCHAR2(80),
  DEP_SUB_NAME               VARCHAR2(120),
  DEP_SUB_ORG_CODE           VARCHAR2(9),
  PER_CARD_TYPE              VARCHAR2(1),
  PER_CARD_CODE              VARCHAR2(18),
  DEP_ACC_CODE               VARCHAR2(60),
  DEP_ACC_TYPE               VARCHAR2(3),
  DEP_AGR_CODE               VARCHAR2(60),
  PRODUCT_TYPE               VARCHAR2(5),
  DEP_AGR_START_DATE         VARCHAR2(10),
  DEP_AGR_END_DATE           VARCHAR2(10),
  CURRENCY_TYPE              VARCHAR2(3),
  DEP_BALANCE                NUMBER(17,2),
  DEP_USD_AMT                NUMBER(17,2),
  INT_RATE_IS_FIXED          VARCHAR2(4),
  INT_RATE_HOR               NUMBER(13,5),
  ACCESS_FLAG                VARCHAR2(1),
  DATA_DATE                  VARCHAR2(10) not null,
  ACCT_CLASS_TYPE            VARCHAR2(1),
  IS_MES_DATA                VARCHAR2(1),
  VALIDATE_STATUS            VARCHAR2(1) default 1,
  CONVERT_STATUS             VARCHAR2(2) default 1,
  FIN_MOD_OPER_ID            VARCHAR2(20),
  FIN_MOD_OPER_NAME          VARCHAR2(60),
  FIN_MDO_TIME               VARCHAR2(20),
  SOURCE_ID                  VARCHAR2(1) default 1
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA13_DEP_BALANCE_2
  is '活期存款余额明细信息表';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_COLL_BALANCE_ID
  is '唯一键标识';
comment on column FSD1.TA13_DEP_BALANCE_2.BANK_ID
  is '金融机构编码(内部机构号)';
comment on column FSD1.TA13_DEP_BALANCE_2.BUSS_TYPE_CODE
  is '业务条线编号';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_SUB_NAME
  is '存款主体名称';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_SUB_ORG_CODE
  is '存款主体组织机构代码';
comment on column FSD1.TA13_DEP_BALANCE_2.PER_CARD_TYPE
  is '个人证件类型';
comment on column FSD1.TA13_DEP_BALANCE_2.PER_CARD_CODE
  is '个人证件号码';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_ACC_CODE
  is '存款帐户代码';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_ACC_TYPE
  is '存款帐户类型';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_AGR_CODE
  is '存款协议代码';
comment on column FSD1.TA13_DEP_BALANCE_2.PRODUCT_TYPE
  is '产品类别';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_AGR_START_DATE
  is '存款协议起始日';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_AGR_END_DATE
  is '存款协议到期日';
comment on column FSD1.TA13_DEP_BALANCE_2.CURRENCY_TYPE
  is '币种';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_BALANCE
  is '存款余额';
comment on column FSD1.TA13_DEP_BALANCE_2.DEP_USD_AMT
  is '外币折美元金额';
comment on column FSD1.TA13_DEP_BALANCE_2.INT_RATE_IS_FIXED
  is '利率是否固定';
comment on column FSD1.TA13_DEP_BALANCE_2.INT_RATE_HOR
  is '利率水平';
comment on column FSD1.TA13_DEP_BALANCE_2.ACCESS_FLAG
  is '存取标志';
comment on column FSD1.TA13_DEP_BALANCE_2.DATA_DATE
  is '数据日期';
comment on column FSD1.TA13_DEP_BALANCE_2.ACCT_CLASS_TYPE
  is '客户类型（1；对公，0；对私）';
comment on column FSD1.TA13_DEP_BALANCE_2.IS_MES_DATA
  is '是否是报文数据(0-否、1-是)';
comment on column FSD1.TA13_DEP_BALANCE_2.VALIDATE_STATUS
  is '校验状态';
comment on column FSD1.TA13_DEP_BALANCE_2.CONVERT_STATUS
  is '流转状态';
comment on column FSD1.TA13_DEP_BALANCE_2.FIN_MOD_OPER_ID
  is '最后修改人标识';
comment on column FSD1.TA13_DEP_BALANCE_2.FIN_MOD_OPER_NAME
  is '最后修改人名称';
comment on column FSD1.TA13_DEP_BALANCE_2.FIN_MDO_TIME
  is '最后修改时间';
comment on column FSD1.TA13_DEP_BALANCE_2.SOURCE_ID
  is '数据来源标识（0：etl抽取，1：系统添加）';
alter table FSD1.TA13_DEP_BALANCE_2
  add constraint PK_TA13_DEP_BALANCE_2 primary key (DEP_COLL_BALANCE_DETAIL_ID, DEP_COLL_BALANCE_ID)
  using index 
  tablespace FSD1
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
prompt Creating table TA13_DEP_BALANCE_20151231
prompt ========================================
prompt
create table FSD1.TA13_DEP_BALANCE_20151231
(
  DEP_BALANCE_ID     VARCHAR2(80) not null,
  BANK_ID            VARCHAR2(60) not null,
  BUSS_TYPE_CODE     VARCHAR2(80),
  DEP_SUB_NAME       VARCHAR2(120),
  DEP_SUB_ORG_CODE   VARCHAR2(20),
  PER_CARD_TYPE      VARCHAR2(1),
  PER_CARD_CODE      VARCHAR2(20),
  DEP_ACC_CODE       VARCHAR2(60) not null,
  DEP_ACC_TYPE       VARCHAR2(3),
  DEP_AGR_CODE       VARCHAR2(60) not null,
  PRODUCT_TYPE       VARCHAR2(6) not null,
  DEP_AGR_START_DATE VARCHAR2(10) not null,
  DEP_AGR_END_DATE   VARCHAR2(10),
  CURRENCY_TYPE      VARCHAR2(3) not null,
  DEP_BALANCE        NUMBER(17,2) not null,
  DEP_USD_AMT        NUMBER(17,2),
  INT_RATE_IS_FIXED  VARCHAR2(4) not null,
  INT_RATE_HOR       NUMBER(13,5),
  ACCESS_FLAG        VARCHAR2(1),
  DATA_DATE          VARCHAR2(10),
  ACCT_CLASS_TYPE    VARCHAR2(1) not null,
  IS_MES_DATA        VARCHAR2(1),
  VALIDATE_STATUS    VARCHAR2(1),
  CONVERT_STATUS     VARCHAR2(2),
  FIN_MOD_OPER_ID    VARCHAR2(20),
  FIN_MOD_OPER_NAME  VARCHAR2(60),
  FIN_MDO_TIME       VARCHAR2(20),
  SOURCE_ID          VARCHAR2(1) not null,
  UPDATE_BYHAND      VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_DEP_BALANCE_20160131
prompt ========================================
prompt
create table FSD1.TA13_DEP_BALANCE_20160131
(
  DEP_BALANCE_ID     VARCHAR2(80) not null,
  BANK_ID            VARCHAR2(60) not null,
  BUSS_TYPE_CODE     VARCHAR2(80),
  DEP_SUB_NAME       VARCHAR2(120),
  DEP_SUB_ORG_CODE   VARCHAR2(20),
  PER_CARD_TYPE      VARCHAR2(1),
  PER_CARD_CODE      VARCHAR2(20),
  DEP_ACC_CODE       VARCHAR2(60) not null,
  DEP_ACC_TYPE       VARCHAR2(3),
  DEP_AGR_CODE       VARCHAR2(60) not null,
  PRODUCT_TYPE       VARCHAR2(6) not null,
  DEP_AGR_START_DATE VARCHAR2(10) not null,
  DEP_AGR_END_DATE   VARCHAR2(10),
  CURRENCY_TYPE      VARCHAR2(3) not null,
  DEP_BALANCE        NUMBER(17,2) not null,
  DEP_USD_AMT        NUMBER(17,2),
  INT_RATE_IS_FIXED  VARCHAR2(4) not null,
  INT_RATE_HOR       NUMBER(13,5),
  ACCESS_FLAG        VARCHAR2(1),
  DATA_DATE          VARCHAR2(10),
  ACCT_CLASS_TYPE    VARCHAR2(1) not null,
  IS_MES_DATA        VARCHAR2(1),
  VALIDATE_STATUS    VARCHAR2(1),
  CONVERT_STATUS     VARCHAR2(2),
  FIN_MOD_OPER_ID    VARCHAR2(20),
  FIN_MOD_OPER_NAME  VARCHAR2(60),
  FIN_MDO_TIME       VARCHAR2(20),
  SOURCE_ID          VARCHAR2(1) not null,
  UPDATE_BYHAND      VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_DEP_BALANCE_HIS_2013
prompt ========================================
prompt
create table FSD1.TA13_DEP_BALANCE_HIS_2013
(
  DEP_BALANCE_ID     VARCHAR2(80) not null,
  BANK_ID            VARCHAR2(60) not null,
  BUSS_TYPE_CODE     VARCHAR2(80),
  DEP_SUB_NAME       VARCHAR2(120),
  DEP_SUB_ORG_CODE   VARCHAR2(20),
  PER_CARD_TYPE      VARCHAR2(1),
  PER_CARD_CODE      VARCHAR2(20),
  DEP_ACC_CODE       VARCHAR2(60) not null,
  DEP_ACC_TYPE       VARCHAR2(3),
  DEP_AGR_CODE       VARCHAR2(60) not null,
  PRODUCT_TYPE       VARCHAR2(6) not null,
  DEP_AGR_START_DATE VARCHAR2(10) not null,
  DEP_AGR_END_DATE   VARCHAR2(10),
  CURRENCY_TYPE      VARCHAR2(3) not null,
  DEP_BALANCE        NUMBER(17,2) not null,
  DEP_USD_AMT        NUMBER(17,2),
  INT_RATE_IS_FIXED  VARCHAR2(4) not null,
  INT_RATE_HOR       NUMBER(13,5),
  ACCESS_FLAG        VARCHAR2(1),
  DATA_DATE          VARCHAR2(10),
  ACCT_CLASS_TYPE    VARCHAR2(1) not null,
  IS_MES_DATA        VARCHAR2(1),
  VALIDATE_STATUS    VARCHAR2(1),
  CONVERT_STATUS     VARCHAR2(2),
  FIN_MOD_OPER_ID    VARCHAR2(20),
  FIN_MOD_OPER_NAME  VARCHAR2(60),
  FIN_MDO_TIME       VARCHAR2(20),
  SOURCE_ID          VARCHAR2(1) not null,
  UPDATE_BYHAND      VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_DEP_COLL_BALANCE
prompt ====================================
prompt
create table FSD1.TA13_DEP_COLL_BALANCE
(
  DEP_COLL_BALANCE_ID VARCHAR2(80) not null,
  BANK_ID             VARCHAR2(60) not null,
  BUSS_TYPE_CODE      VARCHAR2(80),
  PRODUCT_TYPE        VARCHAR2(5) not null,
  CURRENCY_TYPE       VARCHAR2(3) not null,
  DEP_BALANCE         NUMBER(17,2) not null,
  DEP_USD_AMT         NUMBER(17,2),
  INT_RATE_IS_FIXED   VARCHAR2(4) default 'RF02',
  INT_RATE_HOR        NUMBER(13,5),
  DATA_DATE           VARCHAR2(10) not null,
  ACCT_CLASS_TYPE     VARCHAR2(1) not null,
  IS_MES_DATA         VARCHAR2(1),
  VALIDATE_STATUS     VARCHAR2(1) default 1,
  CONVERT_STATUS      VARCHAR2(2) default 1,
  FIN_MOD_OPER_ID     VARCHAR2(20),
  FIN_MOD_OPER_NAME   VARCHAR2(60),
  FIN_MDO_TIME        VARCHAR2(20),
  SOURCE_ID           VARCHAR2(1) default 1 not null,
  UPDATE_BYHAND       VARCHAR2(1) default '0' not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA13_DEP_COLL_BALANCE
  is '活期存款余额汇总信息表';
comment on column FSD1.TA13_DEP_COLL_BALANCE.DEP_COLL_BALANCE_ID
  is '唯一键标识';
comment on column FSD1.TA13_DEP_COLL_BALANCE.BANK_ID
  is '金融机构编码';
comment on column FSD1.TA13_DEP_COLL_BALANCE.BUSS_TYPE_CODE
  is '业务条线编号';
comment on column FSD1.TA13_DEP_COLL_BALANCE.PRODUCT_TYPE
  is '产品类别';
comment on column FSD1.TA13_DEP_COLL_BALANCE.CURRENCY_TYPE
  is '币种';
comment on column FSD1.TA13_DEP_COLL_BALANCE.DEP_BALANCE
  is '存款余额';
comment on column FSD1.TA13_DEP_COLL_BALANCE.DEP_USD_AMT
  is '外币折美元金额';
comment on column FSD1.TA13_DEP_COLL_BALANCE.INT_RATE_IS_FIXED
  is '利率是否固定，默认值为浮动利率（RF02）';
comment on column FSD1.TA13_DEP_COLL_BALANCE.INT_RATE_HOR
  is '利率水平';
comment on column FSD1.TA13_DEP_COLL_BALANCE.DATA_DATE
  is '数据日期';
comment on column FSD1.TA13_DEP_COLL_BALANCE.ACCT_CLASS_TYPE
  is '客户类型（1；对公，0；对私）';
comment on column FSD1.TA13_DEP_COLL_BALANCE.IS_MES_DATA
  is '是否是报文数据(0-否、1-是)';
comment on column FSD1.TA13_DEP_COLL_BALANCE.VALIDATE_STATUS
  is '校验状态';
comment on column FSD1.TA13_DEP_COLL_BALANCE.CONVERT_STATUS
  is '流转状态';
comment on column FSD1.TA13_DEP_COLL_BALANCE.FIN_MOD_OPER_ID
  is '最后修改人标识';
comment on column FSD1.TA13_DEP_COLL_BALANCE.FIN_MOD_OPER_NAME
  is '最后修改人名称';
comment on column FSD1.TA13_DEP_COLL_BALANCE.FIN_MDO_TIME
  is '最后修改时间';
comment on column FSD1.TA13_DEP_COLL_BALANCE.SOURCE_ID
  is '数据来源标识（0：etl抽取，1：系统添加）';
comment on column FSD1.TA13_DEP_COLL_BALANCE.UPDATE_BYHAND
  is '是否是手工新增或修改过的记录,1代表改过';
create index FSD1.IDX_TA13_DEP_COLL_BAL_SEL on FSD1.TA13_DEP_COLL_BALANCE (DATA_DATE, CONVERT_STATUS)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
  compress;
create index FSD1.P_PK_TA13_DEP_COLL_BALANCE on FSD1.TA13_DEP_COLL_BALANCE (BANK_ID, DATA_DATE, ACCT_CLASS_TYPE)
  tablespace FSD1
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
grant select, insert, update, delete, references, alter, index on FSD1.TA13_DEP_COLL_BALANCE to DATACORE;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_DEP_COLL_BALANCE to DATACOREFF;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_DEP_COLL_BALANCE to DATACOREOPR;

prompt
prompt Creating table TA13_DEP_COLL_BALANCE_0113
prompt =========================================
prompt
create table FSD1.TA13_DEP_COLL_BALANCE_0113
(
  DEP_COLL_BALANCE_ID VARCHAR2(80) not null,
  BANK_ID             VARCHAR2(60) not null,
  BUSS_TYPE_CODE      VARCHAR2(80),
  PRODUCT_TYPE        VARCHAR2(5) not null,
  CURRENCY_TYPE       VARCHAR2(3) not null,
  DEP_BALANCE         NUMBER(17,2) not null,
  DEP_USD_AMT         NUMBER(17,2),
  INT_RATE_IS_FIXED   VARCHAR2(4),
  INT_RATE_HOR        NUMBER(13,5),
  DATA_DATE           VARCHAR2(10) not null,
  ACCT_CLASS_TYPE     VARCHAR2(1) not null,
  IS_MES_DATA         VARCHAR2(1),
  VALIDATE_STATUS     VARCHAR2(1),
  CONVERT_STATUS      VARCHAR2(2),
  FIN_MOD_OPER_ID     VARCHAR2(20),
  FIN_MOD_OPER_NAME   VARCHAR2(60),
  FIN_MDO_TIME        VARCHAR2(20),
  SOURCE_ID           VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_DEP_COLL_BALANCE_07
prompt =======================================
prompt
create table FSD1.TA13_DEP_COLL_BALANCE_07
(
  DEP_COLL_BALANCE_ID VARCHAR2(80) not null,
  BANK_ID             VARCHAR2(60) not null,
  BUSS_TYPE_CODE      VARCHAR2(80),
  PRODUCT_TYPE        VARCHAR2(5) not null,
  CURRENCY_TYPE       VARCHAR2(3) not null,
  DEP_BALANCE         NUMBER(17,2) not null,
  DEP_USD_AMT         NUMBER(17,2),
  INT_RATE_IS_FIXED   VARCHAR2(4),
  INT_RATE_HOR        NUMBER(13,5),
  DATA_DATE           VARCHAR2(10) not null,
  ACCT_CLASS_TYPE     VARCHAR2(1) not null,
  IS_MES_DATA         VARCHAR2(1),
  VALIDATE_STATUS     VARCHAR2(1),
  CONVERT_STATUS      VARCHAR2(2),
  FIN_MOD_OPER_ID     VARCHAR2(20),
  FIN_MOD_OPER_NAME   VARCHAR2(60),
  FIN_MDO_TIME        VARCHAR2(20),
  SOURCE_ID           VARCHAR2(1) not null,
  UPDATE_BYHAND       VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_DEP_COLL_BALANCE_20150409
prompt =============================================
prompt
create table FSD1.TA13_DEP_COLL_BALANCE_20150409
(
  DEP_COLL_BALANCE_ID VARCHAR2(80) not null,
  BANK_ID             VARCHAR2(60) not null,
  BUSS_TYPE_CODE      VARCHAR2(80),
  PRODUCT_TYPE        VARCHAR2(5) not null,
  CURRENCY_TYPE       VARCHAR2(3) not null,
  DEP_BALANCE         NUMBER(17,2) not null,
  DEP_USD_AMT         NUMBER(17,2),
  INT_RATE_IS_FIXED   VARCHAR2(4),
  INT_RATE_HOR        NUMBER(13,5),
  DATA_DATE           VARCHAR2(10) not null,
  ACCT_CLASS_TYPE     VARCHAR2(1) not null,
  IS_MES_DATA         VARCHAR2(1),
  VALIDATE_STATUS     VARCHAR2(1),
  CONVERT_STATUS      VARCHAR2(2),
  FIN_MOD_OPER_ID     VARCHAR2(20),
  FIN_MOD_OPER_NAME   VARCHAR2(60),
  FIN_MDO_TIME        VARCHAR2(20),
  SOURCE_ID           VARCHAR2(1) not null,
  UPDATE_BYHAND       VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_DEP_COLL_BALANCE_20160630
prompt =============================================
prompt
create table FSD1.TA13_DEP_COLL_BALANCE_20160630
(
  DEP_COLL_BALANCE_ID VARCHAR2(80) not null,
  BANK_ID             VARCHAR2(60) not null,
  BUSS_TYPE_CODE      VARCHAR2(80),
  PRODUCT_TYPE        VARCHAR2(5) not null,
  CURRENCY_TYPE       VARCHAR2(3) not null,
  DEP_BALANCE         NUMBER(17,2) not null,
  DEP_USD_AMT         NUMBER(17,2),
  INT_RATE_IS_FIXED   VARCHAR2(4),
  INT_RATE_HOR        NUMBER(13,5),
  DATA_DATE           VARCHAR2(10) not null,
  ACCT_CLASS_TYPE     VARCHAR2(1) not null,
  IS_MES_DATA         VARCHAR2(1),
  VALIDATE_STATUS     VARCHAR2(1),
  CONVERT_STATUS      VARCHAR2(2),
  FIN_MOD_OPER_ID     VARCHAR2(20),
  FIN_MOD_OPER_NAME   VARCHAR2(60),
  FIN_MDO_TIME        VARCHAR2(20),
  SOURCE_ID           VARCHAR2(1) not null,
  UPDATE_BYHAND       VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_DEP_COLL_BALANCE_HIS_2013
prompt =============================================
prompt
create table FSD1.TA13_DEP_COLL_BALANCE_HIS_2013
(
  DEP_COLL_BALANCE_ID VARCHAR2(80) not null,
  BANK_ID             VARCHAR2(60) not null,
  BUSS_TYPE_CODE      VARCHAR2(80),
  PRODUCT_TYPE        VARCHAR2(5) not null,
  CURRENCY_TYPE       VARCHAR2(3) not null,
  DEP_BALANCE         NUMBER(17,2) not null,
  DEP_USD_AMT         NUMBER(17,2),
  INT_RATE_IS_FIXED   VARCHAR2(4),
  INT_RATE_HOR        NUMBER(13,5),
  DATA_DATE           VARCHAR2(10) not null,
  ACCT_CLASS_TYPE     VARCHAR2(1) not null,
  IS_MES_DATA         VARCHAR2(1),
  VALIDATE_STATUS     VARCHAR2(1),
  CONVERT_STATUS      VARCHAR2(2),
  FIN_MOD_OPER_ID     VARCHAR2(20),
  FIN_MOD_OPER_NAME   VARCHAR2(60),
  FIN_MDO_TIME        VARCHAR2(20),
  SOURCE_ID           VARCHAR2(1) not null,
  UPDATE_BYHAND       VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_AMOUNT
prompt ===============================
prompt
create table FSD1.TA13_LOAN_AMOUNT
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1) default 1,
  CONVERT_STATUS    VARCHAR2(2) default 1,
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) default 1 not null,
  UPDATE_BYHAND     VARCHAR2(1) default '0' not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 24M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA13_LOAN_AMOUNT
  is '贷款发生额信息表';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_AMOUNT_ID
  is '唯一键标识';
comment on column FSD1.TA13_LOAN_AMOUNT.BANK_ID
  is '金融机构编码(内部机构号)';
comment on column FSD1.TA13_LOAN_AMOUNT.BUSS_TYPE_CODE
  is '业务条线编号';
comment on column FSD1.TA13_LOAN_AMOUNT.LENDER_CODE
  is '借款人代码';
comment on column FSD1.TA13_LOAN_AMOUNT.LENDER_NAME
  is '借款人名称(最长)';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_SUB_ORG_CODE
  is '贷款主体组织机构代码( 定长)';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_CARD_CODE
  is '贷款卡编码( 定长)';
comment on column FSD1.TA13_LOAN_AMOUNT.PER_CARD_TYPE
  is '个人证件类型';
comment on column FSD1.TA13_LOAN_AMOUNT.PER_CARD_CODE
  is '个人证件号码';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_SUB_TRA_TYPE
  is '贷款主体行业类别';
comment on column FSD1.TA13_LOAN_AMOUNT.LEN_REG_AREA_CODE
  is '借款人登记注册地编码';
comment on column FSD1.TA13_LOAN_AMOUNT.ENT_CON_ECO_ELEM
  is '企业出资人经济成分';
comment on column FSD1.TA13_LOAN_AMOUNT.ENT_SCALE
  is '企业规模';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_IOU_CODE
  is '贷款借据编码';
comment on column FSD1.TA13_LOAN_AMOUNT.PRODUCT_TYPE
  is '产品类别';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_AT
  is '贷款实际投向';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_GRANT_DATE
  is '贷款发放日期';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_EXPIRE_DATE
  is '贷款到期日期';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_END_DATE
  is '贷款实际终止日期';
comment on column FSD1.TA13_LOAN_AMOUNT.CURRENCY_TYPE
  is '币种';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_AMT
  is '贷款借据金额';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_USD_AMT
  is '外币折美元金额';
comment on column FSD1.TA13_LOAN_AMOUNT.INT_RATE_IS_FIXED
  is '利率是否固定';
comment on column FSD1.TA13_LOAN_AMOUNT.INT_RATE_HOR
  is '利率水平';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_GUA_TYPE
  is '贷款担保方式';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_STATUS
  is '贷款状态';
comment on column FSD1.TA13_LOAN_AMOUNT.LOAN_GRA_TAK_FLAG
  is '贷款发放收回标志(发放=1；收回=0)';
comment on column FSD1.TA13_LOAN_AMOUNT.DATA_DATE
  is '数据日期';
comment on column FSD1.TA13_LOAN_AMOUNT.ACCT_CLASS_TYPE
  is '客户类型（0；对公，1；对私）';
comment on column FSD1.TA13_LOAN_AMOUNT.IS_MES_DATA
  is '是否是报文数据(0-否、1-是)';
comment on column FSD1.TA13_LOAN_AMOUNT.VALIDATE_STATUS
  is '校验状态';
comment on column FSD1.TA13_LOAN_AMOUNT.CONVERT_STATUS
  is '流转状态';
comment on column FSD1.TA13_LOAN_AMOUNT.FIN_MOD_OPER_ID
  is '最后修改人标识';
comment on column FSD1.TA13_LOAN_AMOUNT.FIN_MOD_OPER_NAME
  is '最后修改人名称';
comment on column FSD1.TA13_LOAN_AMOUNT.FIN_MDO_TIME
  is '最后修改时间';
comment on column FSD1.TA13_LOAN_AMOUNT.SOURCE_ID
  is '数据来源标识（0：etl抽取，1：系统添加）';
comment on column FSD1.TA13_LOAN_AMOUNT.UPDATE_BYHAND
  is '是否是手工新增或修改过的记录,1代表改过';
create index FSD1.IDX_TA13_LOAN_AMOUNT_SEL on FSD1.TA13_LOAN_AMOUNT (DATA_DATE, CONVERT_STATUS)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
  compress;
create index FSD1.INDEX_BRANCH_DATE on FSD1.TA13_LOAN_AMOUNT (BANK_ID, DATA_DATE)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 11M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index FSD1.P_PK_TA13_LOAN_AMOUNT on FSD1.TA13_LOAN_AMOUNT (BANK_ID, LOAN_IOU_CODE, LOAN_GRA_TAK_FLAG, DATA_DATE)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 3M
    next 1M
    minextents 1
    maxextents unlimited
  );
grant select, insert, update, delete, references, alter, index on FSD1.TA13_LOAN_AMOUNT to DATACORE;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_LOAN_AMOUNT to DATACOREFF;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_LOAN_AMOUNT to DATACOREOPR;

prompt
prompt Creating table TA13_LOAN_AMOUNT_0131
prompt ====================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_0131
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_0707
prompt ====================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_0707
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_0707F81
prompt =======================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_0707F81
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_20130530
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20130530
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(18),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 6M
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_AMOUNT_20140331
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20140331
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_20140731
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20140731
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_20141031
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20141031
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_AMOUNT_20150131
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20150131
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_AMOUNT_20150204
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20150204
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_AMOUNT_20150228
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20150228
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_AMOUNT_20150720
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20150720
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_20160706
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20160706
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_20160803
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_20160803
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_HIS_2013
prompt ========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_HIS_2013
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_AMOUNT_NRD
prompt ===================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_NRD
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_RATEBAK_1031
prompt ============================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_RATEBAK_1031
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_RFN140228
prompt =========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_RFN140228
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_AMOUNT_RFN_140228
prompt ==========================================
prompt
create table FSD1.TA13_LOAN_AMOUNT_RFN_140228
(
  LOAN_AMOUNT_ID    VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  LOAN_END_DATE     VARCHAR2(10),
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GRA_TAK_FLAG VARCHAR2(1) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  SOURCE_ID         VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE
prompt ================================
prompt
create table FSD1.TA13_LOAN_BALANCE
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1) default 1,
  CONVERT_STATUS    VARCHAR2(2) default 1,
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) default 1 not null,
  UPDATE_BYHAND     VARCHAR2(1) default '0' not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 24M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA13_LOAN_BALANCE
  is '贷款余额信息表';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_BALANCE_ID
  is '唯一键标识';
comment on column FSD1.TA13_LOAN_BALANCE.BANK_ID
  is '金融机构编码(内部机构号)';
comment on column FSD1.TA13_LOAN_BALANCE.BUSS_TYPE_CODE
  is '业务条线编号';
comment on column FSD1.TA13_LOAN_BALANCE.LENDER_CODE
  is '借款人代码';
comment on column FSD1.TA13_LOAN_BALANCE.LENDER_NAME
  is '借款人名称(最长)';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_SUB_ORG_CODE
  is '贷款主体组织机构代码( 定长)';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_CARD_CODE
  is '贷款卡编码( 定长)';
comment on column FSD1.TA13_LOAN_BALANCE.PER_CARD_TYPE
  is '个人证件类型';
comment on column FSD1.TA13_LOAN_BALANCE.PER_CARD_CODE
  is '个人证件号码';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_SUB_TRA_TYPE
  is '贷款主体行业类别';
comment on column FSD1.TA13_LOAN_BALANCE.LEN_REG_AREA_CODE
  is '借款人登记注册地编码';
comment on column FSD1.TA13_LOAN_BALANCE.ENT_CON_ECO_ELEM
  is '企业出资人经济成分';
comment on column FSD1.TA13_LOAN_BALANCE.ENT_SCALE
  is '企业规模';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_IOU_CODE
  is '贷款借据编码';
comment on column FSD1.TA13_LOAN_BALANCE.PRODUCT_TYPE
  is '产品类别';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_AT
  is '贷款实际投向';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_GRANT_DATE
  is '贷款发放日期';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_EXPIRE_DATE
  is '贷款到期日期';
comment on column FSD1.TA13_LOAN_BALANCE.CURRENCY_TYPE
  is '币种';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_AMT
  is '贷款借据余额';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_USD_AMT
  is '外币折美元金额';
comment on column FSD1.TA13_LOAN_BALANCE.INT_RATE_IS_FIXED
  is '利率是否固定';
comment on column FSD1.TA13_LOAN_BALANCE.INT_RATE_HOR
  is '利率水平';
comment on column FSD1.TA13_LOAN_BALANCE.BALANCE_MASS
  is '贷款质量';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_STATUS
  is '贷款状态';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_GUA_TYPE
  is '贷款担保方式';
comment on column FSD1.TA13_LOAN_BALANCE.DATA_DATE
  is '数据日期';
comment on column FSD1.TA13_LOAN_BALANCE.ACCT_CLASS_TYPE
  is '客户类型（1；对公，0；对私）';
comment on column FSD1.TA13_LOAN_BALANCE.IS_MES_DATA
  is '是否是报文数据(0-否、1-是)';
comment on column FSD1.TA13_LOAN_BALANCE.VALIDATE_STATUS
  is '校验状态';
comment on column FSD1.TA13_LOAN_BALANCE.CONVERT_STATUS
  is '流转状态';
comment on column FSD1.TA13_LOAN_BALANCE.FIN_MOD_OPER_ID
  is '最后修改人标识';
comment on column FSD1.TA13_LOAN_BALANCE.FIN_MOD_OPER_NAME
  is '最后修改人名称';
comment on column FSD1.TA13_LOAN_BALANCE.FIN_MDO_TIME
  is '最后修改时间';
comment on column FSD1.TA13_LOAN_BALANCE.DEFER_BEGIN_DT
  is '展期起始日期';
comment on column FSD1.TA13_LOAN_BALANCE.DEFER_END_DT
  is '展期到期日期';
comment on column FSD1.TA13_LOAN_BALANCE.LOAN_GRA_TAK_FLAG
  is '贷款发放收回标志(发放=1；收回=0)';
comment on column FSD1.TA13_LOAN_BALANCE.SOURCE_ID
  is '数据来源标识（0：etl抽取，1：系统添加）';
comment on column FSD1.TA13_LOAN_BALANCE.UPDATE_BYHAND
  is '是否是手工新增或修改过的记录,1代表改过';
alter table FSD1.TA13_LOAN_BALANCE
  add constraint P_PK_TA12_LOAN_BAL primary key (DATA_DATE, BANK_ID, LOAN_IOU_CODE)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 5M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index FSD1.IDX_TA13_LOAN_BAL_SEL on FSD1.TA13_LOAN_BALANCE (DATA_DATE, CONVERT_STATUS)
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
  compress;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_LOAN_BALANCE to DATACORE;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_LOAN_BALANCE to DATACOREFF;
grant select, insert, update, delete, references, alter, index on FSD1.TA13_LOAN_BALANCE to DATACOREOPR;

prompt
prompt Creating table TA13_LOAN_BALANCE_0131
prompt =====================================
prompt
create table FSD1.TA13_LOAN_BALANCE_0131
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_05
prompt ===================================
prompt
create table FSD1.TA13_LOAN_BALANCE_05
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_0706GERZHUF
prompt ============================================
prompt
create table FSD1.TA13_LOAN_BALANCE_0706GERZHUF
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_0706QD
prompt =======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_0706QD
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_0707
prompt =====================================
prompt
create table FSD1.TA13_LOAN_BALANCE_0707
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_0707F81
prompt ========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_0707F81
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_0707GJ
prompt =======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_0707GJ
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_0731_AMT0
prompt ==========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_0731_AMT0
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_151231
prompt =======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_151231
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_160131
prompt =======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_160131
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_160131_RATE2
prompt =============================================
prompt
create table FSD1.TA13_LOAN_BALANCE_160131_RATE2
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_160131_RATE3
prompt =============================================
prompt
create table FSD1.TA13_LOAN_BALANCE_160131_RATE3
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_1607CZF
prompt ========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_1607CZF
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20130530
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20130530
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 18M
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_BALANCE_20130628
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20130628
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20140731
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20140731
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20141031
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20141031
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20150131
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20150131
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_BALANCE_20150204
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20150204
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20150228
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20150228
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_BALANCE_20150731
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20150731
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20160504TEST
prompt =============================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20160504TEST
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_201606
prompt =======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_201606
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20160706
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20160706
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_20160803
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_20160803
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_F0820
prompt ======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_F0820
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_HIS_2013
prompt =========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_HIS_2013
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
  pctfree 0
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TA13_LOAN_BALANCE_QD0605
prompt =======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_QD0605
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_RATEBAK_1031
prompt =============================================
prompt
create table FSD1.TA13_LOAN_BALANCE_RATEBAK_1031
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_RFN201501
prompt ==========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_RFN201501
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_RFN_140228
prompt ===========================================
prompt
create table FSD1.TA13_LOAN_BALANCE_RFN_140228
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_LOAN_BALANCE_SH0605
prompt =======================================
prompt
create table FSD1.TA13_LOAN_BALANCE_SH0605
(
  LOAN_BALANCE_ID   VARCHAR2(80) not null,
  BANK_ID           VARCHAR2(60) not null,
  BUSS_TYPE_CODE    VARCHAR2(80),
  LENDER_CODE       VARCHAR2(30) not null,
  LENDER_NAME       VARCHAR2(120),
  LOAN_SUB_ORG_CODE VARCHAR2(9),
  LOAN_CARD_CODE    VARCHAR2(20),
  PER_CARD_TYPE     VARCHAR2(1),
  PER_CARD_CODE     VARCHAR2(20),
  LOAN_SUB_TRA_TYPE VARCHAR2(1) not null,
  LEN_REG_AREA_CODE NUMBER(6),
  ENT_CON_ECO_ELEM  VARCHAR2(5),
  ENT_SCALE         VARCHAR2(4),
  LOAN_IOU_CODE     VARCHAR2(64) not null,
  PRODUCT_TYPE      VARCHAR2(6) not null,
  LOAN_AT           VARCHAR2(3),
  LOAN_GRANT_DATE   VARCHAR2(10) not null,
  LOAN_EXPIRE_DATE  VARCHAR2(10) not null,
  CURRENCY_TYPE     VARCHAR2(3) not null,
  LOAN_AMT          NUMBER(17,2) not null,
  LOAN_USD_AMT      NUMBER(17,2),
  INT_RATE_IS_FIXED VARCHAR2(4) not null,
  INT_RATE_HOR      NUMBER(13,5) not null,
  BALANCE_MASS      VARCHAR2(4) not null,
  LOAN_STATUS       VARCHAR2(4) not null,
  LOAN_GUA_TYPE     VARCHAR2(3) not null,
  DATA_DATE         VARCHAR2(10) not null,
  ACCT_CLASS_TYPE   VARCHAR2(1) not null,
  IS_MES_DATA       VARCHAR2(1),
  VALIDATE_STATUS   VARCHAR2(1),
  CONVERT_STATUS    VARCHAR2(2),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  DEFER_BEGIN_DT    VARCHAR2(10),
  DEFER_END_DT      VARCHAR2(10),
  LOAN_GRA_TAK_FLAG VARCHAR2(1),
  SOURCE_ID         VARCHAR2(1) not null,
  UPDATE_BYHAND     VARCHAR2(1) not null
)
tablespace FSD1
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

prompt
prompt Creating table TA13_VALIDATE_MSG
prompt ================================
prompt
create table FSD1.TA13_VALIDATE_MSG
(
  VALIDATE_MSG_ID   VARCHAR2(80) not null,
  REPORT_BANK_ID    VARCHAR2(14),
  MSG_STORAGE       BLOB,
  MSG_TIME          VARCHAR2(6) not null,
  CONVERT_STATUS    VARCHAR2(1),
  FIN_MOD_OPER_ID   VARCHAR2(20),
  FIN_MOD_OPER_NAME VARCHAR2(60),
  FIN_MDO_TIME      VARCHAR2(20),
  THE_LINE          VARCHAR2(100)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
  );
comment on table FSD1.TA13_VALIDATE_MSG
  is '？？？？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.VALIDATE_MSG_ID
  is '？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.REPORT_BANK_ID
  is '？？？？？？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.MSG_STORAGE
  is '？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.MSG_TIME
  is '？？';
comment on column FSD1.TA13_VALIDATE_MSG.CONVERT_STATUS
  is '？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.FIN_MOD_OPER_ID
  is '？？？？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.FIN_MOD_OPER_NAME
  is '？？？？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.FIN_MDO_TIME
  is '？？？？？？';
comment on column FSD1.TA13_VALIDATE_MSG.THE_LINE
  is '？？？？？？？？？';
alter table FSD1.TA13_VALIDATE_MSG
  add constraint PK_TA13_VALIDATE_MSG primary key (VALIDATE_MSG_ID)
  using index 
  tablespace FSD1
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TA14_MSG_SQL
prompt ===========================
prompt
create table FSD1.TA14_MSG_SQL
(
  REPORT_TYPE  VARCHAR2(20) not null,
  REPORT_SQL   VARCHAR2(2000) not null,
  STATUS       VARCHAR2(1),
  STORAGE_TYPE VARCHAR2(10),
  VALIDATA_SQL VARCHAR2(2000),
  VALIDATA_MSG VARCHAR2(200),
  STATUS_SQL   VARCHAR2(2000),
  SUBJECT_CODE VARCHAR2(1)
)
tablespace FSD1
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
comment on column FSD1.TA14_MSG_SQL.REPORT_TYPE
  is '？？？？';
comment on column FSD1.TA14_MSG_SQL.REPORT_SQL
  is '？？SQL';
comment on column FSD1.TA14_MSG_SQL.STATUS
  is '？？ 1:？？ 0:？？？';
comment on column FSD1.TA14_MSG_SQL.STORAGE_TYPE
  is '？？？？？？？';
comment on column FSD1.TA14_MSG_SQL.VALIDATA_SQL
  is '？？SQL';
comment on column FSD1.TA14_MSG_SQL.VALIDATA_MSG
  is '？？？？？？';
comment on column FSD1.TA14_MSG_SQL.STATUS_SQL
  is '？？？？？？？SQL';

prompt
prompt Creating table TA14_MSG_ZIP
prompt ===========================
prompt
create table FSD1.TA14_MSG_ZIP
(
  MSG_ZIP_ID          VARCHAR2(80) not null,
  MSG_ZIP_NAME        VARCHAR2(120) not null,
  MSG_DATA_DATE       VARCHAR2(10) not null,
  MSG_ZIP_STATUS      VARCHAR2(1) not null,
  MSG_REPORT_STATUS   VARCHAR2(1) not null,
  FIN_MOD_OPER_ID     VARCHAR2(30) not null,
  FIN_MOD_OPER_NAME   VARCHAR2(120),
  FIN_MOD_TIME        VARCHAR2(19) not null,
  MSG_ZIP_STORAGE     BLOB,
  REPORT_BANK_ID      VARCHAR2(80) not null,
  DOWNLOAD_TIME       VARCHAR2(19),
  FORCE_REPORT_REASON VARCHAR2(500),
  SUBJECT_CODE        VARCHAR2(80) not null,
  MSG_ERROR           VARCHAR2(2000),
  MSG_BACK_INFO       VARCHAR2(2000)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.TA14_MSG_ZIP
  is '？？？？？？';
comment on column FSD1.TA14_MSG_ZIP.MSG_ZIP_ID
  is '？？？ID';
comment on column FSD1.TA14_MSG_ZIP.MSG_ZIP_NAME
  is '？？？？？';
comment on column FSD1.TA14_MSG_ZIP.MSG_DATA_DATE
  is '？？？？？？？';
comment on column FSD1.TA14_MSG_ZIP.MSG_ZIP_STATUS
  is '？？？？？';
comment on column FSD1.TA14_MSG_ZIP.MSG_REPORT_STATUS
  is '？？？？？？？ ';
comment on column FSD1.TA14_MSG_ZIP.FIN_MOD_OPER_ID
  is '？？？ID';
comment on column FSD1.TA14_MSG_ZIP.FIN_MOD_OPER_NAME
  is '？？？？？';
comment on column FSD1.TA14_MSG_ZIP.FIN_MOD_TIME
  is '？？？？';
comment on column FSD1.TA14_MSG_ZIP.MSG_ZIP_STORAGE
  is '？？？？？';
comment on column FSD1.TA14_MSG_ZIP.REPORT_BANK_ID
  is '？？？？';
comment on column FSD1.TA14_MSG_ZIP.DOWNLOAD_TIME
  is '？？？？？？ ';
comment on column FSD1.TA14_MSG_ZIP.FORCE_REPORT_REASON
  is '？？？？？？？？';
comment on column FSD1.TA14_MSG_ZIP.SUBJECT_CODE
  is '？？？？ID';
comment on column FSD1.TA14_MSG_ZIP.MSG_ERROR
  is '？？？？？？？？';
comment on column FSD1.TA14_MSG_ZIP.MSG_BACK_INFO
  is '？？？？？？？？';
alter table FSD1.TA14_MSG_ZIP
  add constraint PK_TA14_MSG_ZIP primary key (MSG_ZIP_ID)
  using index 
  tablespace FSD1
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
alter table FSD1.TA14_MSG_ZIP
  add constraint FK_MSG_TO_SUBJECT foreign key (SUBJECT_CODE)
  references FSD1.TA12_SUBJECT_INFO (SUBJECT_CODE);

prompt
prompt Creating table T_NAVIGATIONVALIDATE
prompt ===================================
prompt
create table FSD1.T_NAVIGATIONVALIDATE
(
  MSGTIME        VARCHAR2(10) not null,
  BRANCHCODE     VARCHAR2(14) not null,
  VALIDATETIME   VARCHAR2(20),
  VALIDATERESULT VARCHAR2(50)
)
tablespace FSD1
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table FSD1.T_NAVIGATIONVALIDATE
  is '校验导航记录表';
comment on column FSD1.T_NAVIGATIONVALIDATE.MSGTIME
  is '数据时间';
comment on column FSD1.T_NAVIGATIONVALIDATE.BRANCHCODE
  is '机构代码';
comment on column FSD1.T_NAVIGATIONVALIDATE.VALIDATETIME
  is '校验执行时间';
comment on column FSD1.T_NAVIGATIONVALIDATE.VALIDATERESULT
  is '校验结果';
create index FSD1.INDEX_T_NAVIGATIONVALIDATE on FSD1.T_NAVIGATIONVALIDATE (MSGTIME, BRANCHCODE)
  tablespace FSD1
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
prompt Creating sequence SEQ_CKZHLX_MAPPING_CONFIG
prompt ===========================================
prompt
create sequence FSD1.SEQ_CKZHLX_MAPPING_CONFIG
minvalue 1
maxvalue 999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PRD_MAPPING_CONFIG
prompt ========================================
prompt
create sequence FSD1.SEQ_PRD_MAPPING_CONFIG
minvalue 1
maxvalue 999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating view V01_BANK_BASIS
prompt ============================
prompt
CREATE OR REPLACE VIEW FSD1.V01_BANK_BASIS AS
SELECT BANK.INST_ID   AS BANK_ID,
    BANK.INST_NAME      AS BANK_NAME,
    BANK.PARENT_INST_ID AS BANK_SUPERIOR,
    BANK.INST_LAYER     AS LEVEL_ID,
    BANK.START_DATE     AS EFFECT_DATE,
    BANK.END_DATE       AS END_DATE,
    ''                  AS ID,
    BANK.IS_BUSSINESS   AS BANK_FLAG,
    ORDER_NUM           AS BANK_ORDER,
    ''                  AS IS_DEAL_WB,
    BANK.INST_REGION    AS BANK_REGION,
    BANK.INST_LEVEL     AS INST_LEVEL
  FROM UPRR.U_BASE_INST BANK
/

prompt
prompt Creating view V01_USER_BANK
prompt ===========================
prompt
CREATE OR REPLACE VIEW FSD1.V01_USER_BANK AS
SELECT v.user_id AS USER_ID,
    v.INST_ID      AS INST_ID ,
    u.inst_name    AS INST_NAME
  FROM UPRR.V_USER_AUTH_BANK_RELATION_FSD1 v
  JOIN UPRR.U_BASE_INST u
  ON v.INST_ID=u.inst_ID
/

prompt
prompt Creating view V01_USER_INFO
prompt ===========================
prompt
CREATE OR REPLACE VIEW FSD1.V01_USER_INFO AS
SELECT USER_ID,
    USER_ENAME,
    USER_CNAME,
    INST_ID
  FROM UPRR.U_BASE_USER S
  WHERE NOT EXISTS
    (SELECT 1
    FROM UPRR.U_BASE_USER T
    WHERE S.USER_ID = T.USER_ID
    AND T.IS_DELETE = '1'
    )
/

prompt
prompt Creating view V_USER_RESOURCE_FROM_UPRR
prompt =======================================
prompt
create or replace view fsd1.v_user_resource_from_uprr as
select distinct t1.res_id               as RES_ID,
                t1.RES_DETAIL_VALUE     as RES_DETAIL_VALUE,
                t1.RES_DETAIL_NAME      as RES_DETAIL_NAME,
                t1.SYSTEM_ID            as SYSTEM_ID,
                t2.user_id as USER_ID
  from uprr.U_AUTH_ROLE_RESOURCE t1, uprr.U_AUTH_ROLE_USER t2
 where t2.role_id = t1.OBJECT_ID
/


spool off
