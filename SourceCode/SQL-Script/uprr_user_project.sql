------------------------------------------------
-- Export file for user UPRR                  --
-- Created by 43631009 on 2016/8/18, 14:36:51 --
------------------------------------------------

spool uprr_user_project.log

prompt
prompt Creating table ALY_DIM_TABLE_META
prompt =================================
prompt
create table UPRR.ALY_DIM_TABLE_META
(
  ID                NUMBER not null,
  DIM_TABLE_NAME    VARCHAR2(60) not null,
  DIM_TABLE_DES     VARCHAR2(100) not null,
  DIM_TABLE_TYPE    VARCHAR2(30) not null,
  DIM_TABLE_CREATOR VARCHAR2(20),
  DIM_TABLE_DATE    VARCHAR2(10),
  IS_ADD_DATA       CHAR(1),
  IS_GATHER_FINISH  CHAR(1)
)
tablespace UPRR
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
alter table UPRR.ALY_DIM_TABLE_META
  add constraint PK_ALY_DIM_TABLE_META primary key (ID)
  using index 
  tablespace UPRR
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
prompt Creating table ALY_FACT_DIM_RELATION_TABLE
prompt ==========================================
prompt
create table UPRR.ALY_FACT_DIM_RELATION_TABLE
(
  ID                  NUMBER not null,
  RELATION_CODE       VARCHAR2(30) not null,
  RELATION_NAME       VARCHAR2(60) not null,
  FACT_TABLE_ID       NUMBER not null,
  FACT_TABLE_CLM_NAME VARCHAR2(60) not null,
  DIM_TABLE_ID        NUMBER not null,
  DIM_TABLE_CLM_NAME  VARCHAR2(60) not null
)
tablespace UPRR
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
alter table UPRR.ALY_FACT_DIM_RELATION_TABLE
  add constraint PK_ALY_FACT_DIM_RELATION_TABLE primary key (ID)
  using index 
  tablespace UPRR
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
alter table UPRR.ALY_FACT_DIM_RELATION_TABLE
  add constraint UN_ALY_FACT_DIM_RELATION_TABLE unique (RELATION_CODE)
  using index 
  tablespace UPRR
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
alter table UPRR.ALY_FACT_DIM_RELATION_TABLE
  add constraint FK_ALY_FACT_REFERENCE_ALY_DIM_ foreign key (DIM_TABLE_ID)
  references UPRR.ALY_DIM_TABLE_META (ID);

prompt
prompt Creating table ALY_FACT_TABLE_META
prompt ==================================
prompt
create table UPRR.ALY_FACT_TABLE_META
(
  ID                 NUMBER not null,
  FACT_TABLE_NAME    VARCHAR2(60) not null,
  FACT_TABLE_DES     VARCHAR2(100) not null,
  FACT_TABLE_TYPE    VARCHAR2(30) not null,
  FACT_TABLE_CREATOR VARCHAR2(20),
  FACT_TABLE_DATE    VARCHAR2(10),
  IS_ADD_DATA        CHAR(1),
  IS_GATHER_FINISH   CHAR(1),
  DIM_ORGFIT_CLM     VARCHAR2(60)
)
tablespace UPRR
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
alter table UPRR.ALY_FACT_TABLE_META
  add constraint PK_ALY_FACT_TABLE_META primary key (ID)
  using index 
  tablespace UPRR
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
prompt Creating table ALY_PURVIEW_META
prompt ===============================
prompt
create table UPRR.ALY_PURVIEW_META
(
  ID           NUMBER not null,
  PURVIEW_CODE VARCHAR2(20) not null,
  PURVIEW_NAME VARCHAR2(30) not null,
  IS_DEFAULT   CHAR(1)
)
tablespace UPRR
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
alter table UPRR.ALY_PURVIEW_META
  add constraint PK_ALY_PURVIEW_META primary key (ID)
  using index 
  tablespace UPRR
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
alter table UPRR.ALY_PURVIEW_META
  add constraint UN_ALY_PURVIEW_META unique (PURVIEW_CODE)
  using index 
  tablespace UPRR
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
prompt Creating table ALY_SUBJECT_META
prompt ===============================
prompt
create table UPRR.ALY_SUBJECT_META
(
  ID                 NUMBER not null,
  SUBJECT_CODE       VARCHAR2(20) not null,
  SUBJECT_NAME       VARCHAR2(60) not null,
  SUBJECT_DES        VARCHAR2(300),
  PURVIEW_ID         NUMBER not null,
  SUBJECT_ICON_CLASS VARCHAR2(60),
  PART_USER_PURVIEW  CHAR(1)
)
tablespace UPRR
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
alter table UPRR.ALY_SUBJECT_META
  add constraint PK_ALY_SUBJECT_META primary key (ID)
  using index 
  tablespace UPRR
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
alter table UPRR.ALY_SUBJECT_META
  add constraint UN_ALY_SU_META unique (SUBJECT_CODE)
  using index 
  tablespace UPRR
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
alter table UPRR.ALY_SUBJECT_META
  add constraint FK_ALY_SU_RF_ALY_PU foreign key (PURVIEW_ID)
  references UPRR.ALY_PURVIEW_META (ID);

prompt
prompt Creating table BASE_USER_EMAIL
prompt ==============================
prompt
create table UPRR.BASE_USER_EMAIL
(
  USER_ID         VARCHAR2(30),
  BANK_ID         VARCHAR2(30),
  SYSTEM_ID       VARCHAR2(30),
  CRMS_SUBJECT_ID VARCHAR2(30)
)
tablespace UPRR
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
grant select on UPRR.BASE_USER_EMAIL to METABASE;

prompt
prompt Creating table REPORT_FORCE_CHECK_VERIFY_LOG
prompt ============================================
prompt
create table UPRR.REPORT_FORCE_CHECK_VERIFY_LOG
(
  TASK_ID     VARCHAR2(50) not null,
  REPORT_ID   VARCHAR2(30) not null,
  REPORT_CH   VARCHAR2(200) not null,
  BANK_ID     VARCHAR2(50) not null,
  REPORT_DATE VARCHAR2(10) not null
)
tablespace UPRR
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
comment on column UPRR.REPORT_FORCE_CHECK_VERIFY_LOG.TASK_ID
  is 'ÈÎÎñID';
comment on column UPRR.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_ID
  is '±¨±íID';
comment on column UPRR.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_CH
  is '±¨±íÖÐÎÄÃû³Æ';
comment on column UPRR.REPORT_FORCE_CHECK_VERIFY_LOG.BANK_ID
  is '»ú¹¹Ãû³Æ';
comment on column UPRR.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_DATE
  is '±¨±íÈÕÆÚ';

prompt
prompt Creating table SQL_HISTORY
prompt ==========================
prompt
create table UPRR.SQL_HISTORY
(
  SQL_MARK     VARCHAR2(100) not null,
  SYSTEM_ID    VARCHAR2(10) not null,
  SYSTEM_NAME  VARCHAR2(100),
  EXECUTE_TIME VARCHAR2(100),
  DESCR        VARCHAR2(100),
  P_VERSION    VARCHAR2(10)
)
tablespace UPRR
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
comment on column UPRR.SQL_HISTORY.SQL_MARK
  is '½Å±¾Ãû³Æ';
comment on column UPRR.SQL_HISTORY.SYSTEM_ID
  is '×ÓÏµÍ³id';
comment on column UPRR.SQL_HISTORY.SYSTEM_NAME
  is '×ÓÄ£¿éÃû³Æ';
comment on column UPRR.SQL_HISTORY.EXECUTE_TIME
  is 'Ö´ÐÐÈÕÆÚ';
comment on column UPRR.SQL_HISTORY.DESCR
  is 'ÃèÊö';
comment on column UPRR.SQL_HISTORY.P_VERSION
  is '³ÌÐò°æ±¾ºÅ';
alter table UPRR.SQL_HISTORY
  add constraint PK_SQL_HISTORY primary key (SQL_MARK, SYSTEM_ID)
  using index 
  tablespace UPRR
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
prompt Creating table TABLE_DB2_COM
prompt ============================
prompt
create table UPRR.TABLE_DB2_COM
(
  OWNER        VARCHAR2(500),
  TABLENAME    VARCHAR2(500),
  COUNT        VARCHAR2(500),
  DATABASETYPE VARCHAR2(500),
  TABTYPE      VARCHAR2(500)
)
tablespace UPRR
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
prompt Creating table TABLE_ORACLE_COM
prompt ===============================
prompt
create table UPRR.TABLE_ORACLE_COM
(
  OWNER        VARCHAR2(500),
  TABLENAME    VARCHAR2(500),
  COUNT        VARCHAR2(500),
  DATABASETYPE VARCHAR2(500),
  TABTYPE      VARCHAR2(500)
)
tablespace UPRR
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
prompt Creating table U_AUTH_OBJECT
prompt ============================
prompt
create table UPRR.U_AUTH_OBJECT
(
  OBJECT_ID   VARCHAR2(20) not null,
  OBJECT_NAME VARCHAR2(30) not null,
  OBJECT_TYPE VARCHAR2(10)
)
tablespace UPRR
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
comment on table UPRR.U_AUTH_OBJECT
  is 'È¨ÏÞÖ÷Ìå';
comment on column UPRR.U_AUTH_OBJECT.OBJECT_ID
  is 'È¨ÏÞÖ÷Ìå±àºÅ';
comment on column UPRR.U_AUTH_OBJECT.OBJECT_NAME
  is 'È¨ÏÞÖ÷ÌåÃû³Æ';
comment on column UPRR.U_AUTH_OBJECT.OBJECT_TYPE
  is 'È¨ÏÞÖ÷ÌåÀàÐÍ,´æ·ÅÔÚÏµÍ³×Öµä±íÖÐ
·ÖÎªÓÃ»§¡¢½ÇÉ«Á½ÖÖÀàÐÍ';
alter table UPRR.U_AUTH_OBJECT
  add constraint PK_U_AUTH_OBJECT primary key (OBJECT_ID)
  using index 
  tablespace UPRR
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
grant select on UPRR.U_AUTH_OBJECT to CFA;
grant select on UPRR.U_AUTH_OBJECT to CFA2;
grant select on UPRR.U_AUTH_OBJECT to METABASE;

prompt
prompt Creating table U_AUTH_OBJECT_BF
prompt ===============================
prompt
create table UPRR.U_AUTH_OBJECT_BF
(
  OBJECT_ID           VARCHAR2(20) not null,
  OBJECT_NAME         VARCHAR2(30) not null,
  OBJECT_TYPE         VARCHAR2(10),
  REINFORCE_ID        NUMBER(22) not null,
  REINFORCE_TASK_ID   NUMBER(22) not null,
  REINFORCE_BANK_ID   VARCHAR2(20) not null,
  REINFORCE_DATA_DATE VARCHAR2(10),
  REINFORCE_STATUS    VARCHAR2(10) default -9,
  REINFORCE_USER      VARCHAR2(30)
)
tablespace UPRR
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
alter table UPRR.U_AUTH_OBJECT_BF
  add constraint PK_U_AUTH_OBJECT_BF primary key (OBJECT_ID)
  using index 
  tablespace UPRR
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
create index UPRR.U_AUTH_OBJECT_BF_IDX1 on UPRR.U_AUTH_OBJECT_BF (REINFORCE_ID)
  tablespace UPRR
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
create index UPRR.U_AUTH_OBJECT_BF_IDX2 on UPRR.U_AUTH_OBJECT_BF (REINFORCE_TASK_ID, REINFORCE_BANK_ID)
  tablespace UPRR
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
prompt Creating table U_BASE_CONFIG
prompt ============================
prompt
create table UPRR.U_BASE_CONFIG
(
  SYSTEM_ID            VARCHAR2(20) not null,
  SYSTEM_ENAME         VARCHAR2(50) not null,
  SYSTEM_NICK_ENAME    VARCHAR2(20) not null,
  SYSTEM_CNAME         VARCHAR2(100) not null,
  SYSTEM_NICK_CNAME    VARCHAR2(20) not null,
  DB_URL               VARCHAR2(100),
  MENU_NAME            VARCHAR2(12),
  MENU_TABLE           VARCHAR2(20),
  MENU_ORDER_NUM       INTEGER,
  MENU_IMG_SRC         VARCHAR2(30),
  LINK_TARGET          VARCHAR2(20),
  LINK_SITE_URL        VARCHAR2(100),
  UNIT_LOGIN_URL       VARCHAR2(100),
  DISPLAY              VARCHAR2(10),
  RES_DB_TYPE          VARCHAR2(20),
  RES_DB_USER_ID       VARCHAR2(50),
  RES_DB_SERVER_PORT   VARCHAR2(10),
  RES_DB_SERVER_IP     VARCHAR2(30),
  RES_DB_SID           VARCHAR2(20),
  RES_DB_PASSWORD      VARCHAR2(50),
  ENABLED              VARCHAR2(5),
  MENURES              VARCHAR2(1),
  CRMS_SUBJECT_ID      VARCHAR2(100),
  LINK_SITE_INNER_URL  VARCHAR2(100),
  UNIT_LOGIN_INNER_URL VARCHAR2(100)
)
tablespace UPRR
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table UPRR.U_BASE_CONFIG
  is '´æ·Å¸÷×ÓÏµÍ³»ù±¾ÐÅÏ¢,²Ëµ¥ÐÅÏ¢µÈ';
comment on column UPRR.U_BASE_CONFIG.SYSTEM_ID
  is 'ÏµÍ³±àºÅ';
comment on column UPRR.U_BASE_CONFIG.SYSTEM_ENAME
  is 'ÏµÍ³Ó¢ÎÄÃû³Æ';
comment on column UPRR.U_BASE_CONFIG.SYSTEM_NICK_ENAME
  is 'ÏµÍ³Ó¢ÎÄ¼ò³Æ';
comment on column UPRR.U_BASE_CONFIG.SYSTEM_CNAME
  is 'ÏµÍ³ÖÐÎÄÃû';
comment on column UPRR.U_BASE_CONFIG.SYSTEM_NICK_CNAME
  is 'ÏµÍ³ÖÐÎÄ¼ò³Æ';
comment on column UPRR.U_BASE_CONFIG.DB_URL
  is 'Êý¾Ý¿âÁ´½Ó';
comment on column UPRR.U_BASE_CONFIG.MENU_NAME
  is 'ÏµÍ³²Ëµ¥Ãû³Æ';
comment on column UPRR.U_BASE_CONFIG.MENU_TABLE
  is 'ÏµÍ³²Ëµ¥´æ·Å±í';
comment on column UPRR.U_BASE_CONFIG.MENU_ORDER_NUM
  is 'ÏµÍ³²Ëµ¥ÐòºÅ';
comment on column UPRR.U_BASE_CONFIG.MENU_IMG_SRC
  is 'ÏµÍ³²Ëµ¥Í¼±ê';
comment on column UPRR.U_BASE_CONFIG.LINK_TARGET
  is 'ÏµÍ³²Ëµ¥Á¬½Ó·½Ê½';
comment on column UPRR.U_BASE_CONFIG.LINK_SITE_URL
  is 'ÏµÍ³²Ëµ¥Á¬½ÓµØÖ·';
comment on column UPRR.U_BASE_CONFIG.UNIT_LOGIN_URL
  is 'ÏµÍ³²Ëµ¥Í³Ò»µÇÂ¼Á´½ÓµØÖ·';
comment on column UPRR.U_BASE_CONFIG.DISPLAY
  is 'ÊÇ·ñÏÔÊ¾';
comment on column UPRR.U_BASE_CONFIG.RES_DB_TYPE
  is '×ÊÔ´Êý¾Ý¿âÀàÐÍ';
comment on column UPRR.U_BASE_CONFIG.RES_DB_USER_ID
  is '×ÊÔ´Êý¾Ý¿âÓÃ»§Ãû';
comment on column UPRR.U_BASE_CONFIG.RES_DB_SERVER_PORT
  is '×ÊÔ´·þÎñÆ÷¶Ë¿Ú';
comment on column UPRR.U_BASE_CONFIG.RES_DB_SERVER_IP
  is '×ÊÔ´·þÎñÆ÷IP';
comment on column UPRR.U_BASE_CONFIG.RES_DB_SID
  is '×ÊÔ´Êý¾Ý¿â±êÊ¶';
comment on column UPRR.U_BASE_CONFIG.RES_DB_PASSWORD
  is '×ÊÔ´Êý¾Ý¿âÃÜÂë';
comment on column UPRR.U_BASE_CONFIG.ENABLED
  is 'ÊÇ·ñ¿ÉÓÃ';
comment on column UPRR.U_BASE_CONFIG.MENURES
  is 'ÅäÖÃ²Ëµ¥µÄÀ´Ô´£¬0-uprr;1-×ÓÏµÍ³×ÔÉí';
comment on column UPRR.U_BASE_CONFIG.CRMS_SUBJECT_ID
  is 'CRMS×ÓÏµÍ³±àºÅ';
alter table UPRR.U_BASE_CONFIG
  add constraint PK_U_BASE_CONFIG primary key (SYSTEM_ID)
  using index 
  tablespace UPRR
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
prompt Creating table U_AUTH_RES_MAP
prompt =============================
prompt
create table UPRR.U_AUTH_RES_MAP
(
  RES_ID         VARCHAR2(20) not null,
  RES_NAME       VARCHAR2(20) not null,
  SYSTEM_ID      VARCHAR2(20) not null,
  RES_TYPE       VARCHAR2(5) not null,
  SRC_TABLE      VARCHAR2(20) not null,
  SRC_KEY_FIELD  VARCHAR2(20) not null,
  SRC_ID_FIELD   VARCHAR2(20) not null,
  SRC_NAME_FIELD VARCHAR2(30) not null,
  ORDER_NUM      INTEGER,
  DESCRIPTION    VARCHAR2(50)
)
tablespace UPRR
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
comment on table UPRR.U_AUTH_RES_MAP
  is '×ÓÏµÍ³×ÊÔ´';
comment on column UPRR.U_AUTH_RES_MAP.RES_ID
  is '×ÊÔ´¶ÔÕÕ±àºÅ';
comment on column UPRR.U_AUTH_RES_MAP.RES_NAME
  is '×ÊÔ´Ãû³Æ';
comment on column UPRR.U_AUTH_RES_MAP.SYSTEM_ID
  is 'ÏµÍ³±àºÅ';
comment on column UPRR.U_AUTH_RES_MAP.RES_TYPE
  is '×ÊÔ´ÀàÐÍ,Í¨¹ý¶ÁÈ¡×Öµä±í,Ò»°ã×ÊÔ´ÀàÐÍÎª£º
²Ëµ¥¡¢±¨±í¡¢»ú¹¹µÈ';
comment on column UPRR.U_AUTH_RES_MAP.SRC_TABLE
  is 'Ô´±íÃû';
comment on column UPRR.U_AUTH_RES_MAP.SRC_KEY_FIELD
  is 'Ô´Ö÷¼ü×Ö¶Î';
comment on column UPRR.U_AUTH_RES_MAP.SRC_ID_FIELD
  is 'Ô´±àºÅ×Ö¶Î';
comment on column UPRR.U_AUTH_RES_MAP.SRC_NAME_FIELD
  is 'Ô´Ãû³Æ×Ö¶Î';
comment on column UPRR.U_AUTH_RES_MAP.ORDER_NUM
  is 'ÐòºÅ';
comment on column UPRR.U_AUTH_RES_MAP.DESCRIPTION
  is 'ÃèÊö';
alter table UPRR.U_AUTH_RES_MAP
  add constraint PK_U_AUTH_RES_MAP primary key (RES_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_AUTH_RES_MAP
  add constraint FK_AUTH_RES_R_BASE_CON foreign key (SYSTEM_ID)
  references UPRR.U_BASE_CONFIG (SYSTEM_ID);
grant select on UPRR.U_AUTH_RES_MAP to ACC;
grant select on UPRR.U_AUTH_RES_MAP to CFA;
grant select on UPRR.U_AUTH_RES_MAP to CFA2;
grant select on UPRR.U_AUTH_RES_MAP to METABASE;

prompt
prompt Creating table U_AUTH_RES_MAP_BF
prompt ================================
prompt
create table UPRR.U_AUTH_RES_MAP_BF
(
  RES_ID              VARCHAR2(20) not null,
  RES_NAME            VARCHAR2(20) not null,
  SYSTEM_ID           VARCHAR2(20) not null,
  RES_TYPE            VARCHAR2(5) not null,
  SRC_TABLE           VARCHAR2(20) not null,
  SRC_KEY_FIELD       VARCHAR2(20) not null,
  SRC_ID_FIELD        VARCHAR2(20) not null,
  SRC_NAME_FIELD      VARCHAR2(30) not null,
  ORDER_NUM           NUMBER(22),
  DESCRIPTION         VARCHAR2(50),
  REINFORCE_ID        NUMBER(22) not null,
  REINFORCE_TASK_ID   NUMBER(22) not null,
  REINFORCE_BANK_ID   VARCHAR2(20) not null,
  REINFORCE_DATA_DATE VARCHAR2(10),
  REINFORCE_STATUS    VARCHAR2(10) default -9,
  REINFORCE_USER      VARCHAR2(30)
)
tablespace UPRR
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
alter table UPRR.U_AUTH_RES_MAP_BF
  add constraint PK_U_AUTH_RES_MAP_BF primary key (RES_ID)
  using index 
  tablespace UPRR
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
create index UPRR.U_AUTH_RES_MAP_BF_IDX1 on UPRR.U_AUTH_RES_MAP_BF (REINFORCE_ID)
  tablespace UPRR
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
create index UPRR.U_AUTH_RES_MAP_BF_IDX2 on UPRR.U_AUTH_RES_MAP_BF (REINFORCE_TASK_ID, REINFORCE_BANK_ID)
  tablespace UPRR
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
prompt Creating table U_AUTH_ROLE
prompt ==========================
prompt
create table UPRR.U_AUTH_ROLE
(
  ROLE_ID     VARCHAR2(20) not null,
  ROLE_NAME   VARCHAR2(30) not null,
  START_DATE  DATE,
  END_DATE    DATE,
  CREATE_TIME DATE,
  DESCRIPTION VARCHAR2(600),
  ENABLED     VARCHAR2(5),
  SYSTEM_ID   VARCHAR2(20) not null,
  IS_HEAD     VARCHAR2(5) default 'false'
)
tablespace UPRR
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
comment on table UPRR.U_AUTH_ROLE
  is '½ÇÉ«±í';
comment on column UPRR.U_AUTH_ROLE.ROLE_ID
  is '½ÇÉ«±àºÅ';
comment on column UPRR.U_AUTH_ROLE.ROLE_NAME
  is '½ÇÉ«Ãû³Æ';
comment on column UPRR.U_AUTH_ROLE.START_DATE
  is '¿ªÊ¼Ê±¼ä';
comment on column UPRR.U_AUTH_ROLE.END_DATE
  is '½áÊøÊ±¼ä';
comment on column UPRR.U_AUTH_ROLE.CREATE_TIME
  is '´´½¨Ê±¼ä';
comment on column UPRR.U_AUTH_ROLE.DESCRIPTION
  is 'ÃèÊö';
comment on column UPRR.U_AUTH_ROLE.ENABLED
  is 'ÆôÓÃ±êÊ¶';
comment on column UPRR.U_AUTH_ROLE.SYSTEM_ID
  is 'ËùÊô×ÓÏµÍ³';
comment on column UPRR.U_AUTH_ROLE.IS_HEAD
  is 'ÊÇ·ñ½ö×ÜÐÐ¿ÉÓÃ';
alter table UPRR.U_AUTH_ROLE
  add constraint PK_U_AUTH_ROLE primary key (ROLE_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_AUTH_ROLE
  add constraint FK_AUTH_ROLE_R_AUTH_OBJECT foreign key (ROLE_ID)
  references UPRR.U_AUTH_OBJECT (OBJECT_ID);
alter table UPRR.U_AUTH_ROLE
  add constraint FK_AUTH_ROLE_R_BASE_CONFIG foreign key (SYSTEM_ID)
  references UPRR.U_BASE_CONFIG (SYSTEM_ID);
create index UPRR.IDX_U_AUTH_ROLE on UPRR.U_AUTH_ROLE (ENABLED, SYSTEM_ID, ROLE_ID)
  tablespace UPRR
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
grant select on UPRR.U_AUTH_ROLE to ACC;
grant select on UPRR.U_AUTH_ROLE to CFA;
grant select on UPRR.U_AUTH_ROLE to CFA2;
grant select on UPRR.U_AUTH_ROLE to METABASE;

prompt
prompt Creating table U_AUTH_ROLE_BF
prompt =============================
prompt
create table UPRR.U_AUTH_ROLE_BF
(
  ROLE_ID             VARCHAR2(20) not null,
  ROLE_NAME           VARCHAR2(30) not null,
  START_DATE          DATE,
  END_DATE            DATE,
  CREATE_TIME         DATE,
  DESCRIPTION         VARCHAR2(50),
  ENABLED             VARCHAR2(5),
  SYSTEM_ID           VARCHAR2(20) not null,
  REINFORCE_ID        NUMBER(22) not null,
  REINFORCE_TASK_ID   NUMBER(22) not null,
  REINFORCE_BANK_ID   VARCHAR2(20) not null,
  REINFORCE_DATA_DATE VARCHAR2(10),
  REINFORCE_STATUS    VARCHAR2(10) default -9,
  REINFORCE_USER      VARCHAR2(30)
)
tablespace UPRR
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
alter table UPRR.U_AUTH_ROLE_BF
  add constraint PK_U_AUTH_ROLE_BF primary key (ROLE_ID)
  using index 
  tablespace UPRR
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
create index UPRR.U_AUTH_ROLE_BF_IDX1 on UPRR.U_AUTH_ROLE_BF (REINFORCE_ID)
  tablespace UPRR
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
create index UPRR.U_AUTH_ROLE_BF_IDX2 on UPRR.U_AUTH_ROLE_BF (REINFORCE_TASK_ID, REINFORCE_BANK_ID)
  tablespace UPRR
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
prompt Creating table U_AUTH_ROLE_RESOURCE
prompt ===================================
prompt
create table UPRR.U_AUTH_ROLE_RESOURCE
(
  OBJECT_ID        VARCHAR2(20),
  RES_ID           VARCHAR2(20) not null,
  RES_DETAIL_VALUE VARCHAR2(32) not null,
  RES_DETAIL_NAME  VARCHAR2(1000),
  SYSTEM_ID        VARCHAR2(20)
)
tablespace UPRR
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table UPRR.U_AUTH_ROLE_RESOURCE
  is '½ÇÉ«×ÊÔ´';
comment on column UPRR.U_AUTH_ROLE_RESOURCE.OBJECT_ID
  is 'È¨ÏÞÖ÷Ìå±àºÅ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE.RES_ID
  is '¾ßÌå×ÊÔ´ËùÊô¶ÔÕÕ±àºÅ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE.RES_DETAIL_VALUE
  is '¾ßÌå×ÊÔ´¶ÔÏóÖµ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE.RES_DETAIL_NAME
  is '¾ßÌå×ÊÔ´¶ÔÏóÃû³Æ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE.SYSTEM_ID
  is 'È¨ÏÞÖ÷ÌåËùÊô×ÓÏµÍ³±àºÅ';
alter table UPRR.U_AUTH_ROLE_RESOURCE
  add constraint FK_AUTH_RES_R_AUTH_RES foreign key (RES_ID)
  references UPRR.U_AUTH_RES_MAP (RES_ID)
  disable;
alter table UPRR.U_AUTH_ROLE_RESOURCE
  add constraint FK_AUTH_RO_RES_R_AUTH_OBJ foreign key (OBJECT_ID)
  references UPRR.U_AUTH_OBJECT (OBJECT_ID);
create index UPRR.IDX_U_AUTH_ROLE_RES on UPRR.U_AUTH_ROLE_RESOURCE (TO_NUMBER(RES_ID), SYSTEM_ID, RES_DETAIL_VALUE, OBJECT_ID)
  tablespace UPRR
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
grant select on UPRR.U_AUTH_ROLE_RESOURCE to ACC;
grant select on UPRR.U_AUTH_ROLE_RESOURCE to CFA;
grant select on UPRR.U_AUTH_ROLE_RESOURCE to CFA2;
grant select on UPRR.U_AUTH_ROLE_RESOURCE to FSD1;
grant select on UPRR.U_AUTH_ROLE_RESOURCE to METABASE;

prompt
prompt Creating table U_AUTH_ROLE_RESOURCE_20141008
prompt ============================================
prompt
create table UPRR.U_AUTH_ROLE_RESOURCE_20141008
(
  OBJECT_ID        VARCHAR2(20),
  RES_ID           VARCHAR2(20) not null,
  RES_DETAIL_VALUE VARCHAR2(32) not null,
  RES_DETAIL_NAME  VARCHAR2(1000),
  SYSTEM_ID        VARCHAR2(20)
)
tablespace UPRR
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
prompt Creating table U_AUTH_ROLE_RESOURCE_BAK
prompt =======================================
prompt
create table UPRR.U_AUTH_ROLE_RESOURCE_BAK
(
  OBJECT_ID        VARCHAR2(20),
  RES_ID           VARCHAR2(20) not null,
  RES_DETAIL_VALUE VARCHAR2(32) not null,
  RES_DETAIL_NAME  VARCHAR2(1000),
  SYSTEM_ID        VARCHAR2(20)
)
tablespace UPRR
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table U_AUTH_ROLE_RESOURCE_CHANGE
prompt ==========================================
prompt
create table UPRR.U_AUTH_ROLE_RESOURCE_CHANGE
(
  OBJECT_ID        VARCHAR2(20),
  RES_ID           VARCHAR2(20) not null,
  RES_DETAIL_VALUE VARCHAR2(30) not null,
  RES_DETAIL_NAME  VARCHAR2(1000),
  SYSTEM_ID        VARCHAR2(20),
  CHANGE_USER      VARCHAR2(20),
  CHANGE_TIME      DATE,
  AUDIT_USER       VARCHAR2(20),
  AUDIT_TIME       DATE,
  AUDIT_STATUS     INTEGER,
  ID               NUMBER,
  CHANGE_STATUS    INTEGER
)
tablespace UPRR
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
comment on table UPRR.U_AUTH_ROLE_RESOURCE_CHANGE
  is '½ÇÉ«×ÊÔ´±ä¸üÐÅÏ¢';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.OBJECT_ID
  is 'È¨ÏÞÖ÷Ìå±àºÅ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.RES_ID
  is '¾ßÌå×ÊÔ´ËùÊô¶ÔÕÕ±àºÅ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.RES_DETAIL_VALUE
  is '¾ßÌå×ÊÔ´¶ÔÏóÖµ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.RES_DETAIL_NAME
  is '¾ßÌå×ÊÔ´¶ÔÏóÃû³Æ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.SYSTEM_ID
  is 'È¨ÏÞÖ÷ÌåËùÊô×ÓÏµÍ³±àºÅ';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.ID
  is 'id';
comment on column UPRR.U_AUTH_ROLE_RESOURCE_CHANGE.CHANGE_STATUS
  is 'Õý³£1Ôö¼Ó2É¾³ý3·ÏÆú4';

prompt
prompt Creating table U_BASE_INST
prompt ==========================
prompt
create table UPRR.U_BASE_INST
(
  INST_ID        VARCHAR2(20) not null,
  INST_NAME      VARCHAR2(60) not null,
  INST_SMP_NAME  VARCHAR2(60),
  PARENT_INST_ID VARCHAR2(20),
  INST_LAYER     INTEGER,
  ADDRESS        VARCHAR2(100),
  ZIP            VARCHAR2(6),
  TEL            VARCHAR2(27),
  FAX            VARCHAR2(20),
  IS_BUSSINESS   VARCHAR2(5),
  ORDER_NUM      INTEGER,
  DESCRIPTION    VARCHAR2(600),
  START_DATE     DATE,
  END_DATE       DATE,
  CREATE_TIME    DATE,
  ENABLED        VARCHAR2(5),
  INST_REGION    VARCHAR2(10),
  EMAIL          VARCHAR2(50),
  INST_PATH      VARCHAR2(1000),
  INST_LEVEL     INTEGER,
  IS_HEAD        VARCHAR2(10) default 'false'
)
tablespace UPRR
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
comment on table UPRR.U_BASE_INST
  is '»ú¹¹±í';
comment on column UPRR.U_BASE_INST.INST_ID
  is '»ú¹¹±àºÅ';
comment on column UPRR.U_BASE_INST.INST_NAME
  is '»ú¹¹Ãû³Æ';
comment on column UPRR.U_BASE_INST.INST_SMP_NAME
  is '»ú¹¹¼ò³Æ';
comment on column UPRR.U_BASE_INST.PARENT_INST_ID
  is 'ÉÏ¼¶»ú¹¹';
comment on column UPRR.U_BASE_INST.INST_LAYER
  is '»ú¹¹¼¶±ð';
comment on column UPRR.U_BASE_INST.ADDRESS
  is '»ú¹¹µØÖ·';
comment on column UPRR.U_BASE_INST.ZIP
  is '»ú¹¹ÓÊ±à';
comment on column UPRR.U_BASE_INST.TEL
  is '»ú¹¹µç»°';
comment on column UPRR.U_BASE_INST.FAX
  is '»ú¹¹´«Õæ';
comment on column UPRR.U_BASE_INST.IS_BUSSINESS
  is 'ÊÇ·ñÒµÎñ»ú¹¹';
comment on column UPRR.U_BASE_INST.ORDER_NUM
  is 'ÅÅÐòÖµ';
comment on column UPRR.U_BASE_INST.DESCRIPTION
  is 'ÃèÊö';
comment on column UPRR.U_BASE_INST.START_DATE
  is 'ÆôÓÃÈÕÆÚ';
comment on column UPRR.U_BASE_INST.END_DATE
  is 'ÖÕÖ¹ÈÕÆÚ';
comment on column UPRR.U_BASE_INST.CREATE_TIME
  is '´´½¨Ê±¼ä';
comment on column UPRR.U_BASE_INST.ENABLED
  is 'ÆôÓÃ±êÊ¶';
comment on column UPRR.U_BASE_INST.INST_PATH
  is '»ú¹¹±àºÅÂ·¾¶';
comment on column UPRR.U_BASE_INST.INST_LEVEL
  is '»ú¹¹ÔÚÊý¾Ý¿âÖÐµÄÎïÀí¼¶±ð';
comment on column UPRR.U_BASE_INST.IS_HEAD
  is 'ÊÇ·ñÊÇ×ÜÐÐ true:ÊÇ false:·ñ';
alter table UPRR.U_BASE_INST
  add constraint PK_U_BASE_INST primary key (INST_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_INST
  add constraint UK_U_BASE_INST unique (INST_PATH)
  using index 
  tablespace UPRR
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
create unique index UPRR.IDX_U_BASE_INST_KEYS on UPRR.U_BASE_INST (INST_ID, PARENT_INST_ID, ENABLED)
  tablespace UPRR
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
  compress 2;
grant select on UPRR.U_BASE_INST to ACC;
grant select on UPRR.U_BASE_INST to CFA;
grant select on UPRR.U_BASE_INST to CFA2;
grant select on UPRR.U_BASE_INST to DATACORE;
grant select on UPRR.U_BASE_INST to DATACOREFF;
grant select on UPRR.U_BASE_INST to DATACOREOPR;
grant select on UPRR.U_BASE_INST to FSD1;
grant select on UPRR.U_BASE_INST to METABASE;

prompt
prompt Creating table U_BASE_USER
prompt ==========================
prompt
create table UPRR.U_BASE_USER
(
  USER_ID           VARCHAR2(20) not null,
  USER_ENAME        VARCHAR2(20) not null,
  USER_CNAME        VARCHAR2(30) not null,
  PASSWORD          VARCHAR2(50) not null,
  INST_ID           VARCHAR2(20),
  DEPART_ID         VARCHAR2(20),
  TEL               VARCHAR2(20),
  MOBILE            VARCHAR2(27),
  ADDRESS           VARCHAR2(100),
  EMAIL             VARCHAR2(50),
  LAST_MODIFY_DATE  DATE,
  IS_FIRST_LOGIN    VARCHAR2(1),
  WRONG_PWD_COUNT   INTEGER,
  WRONG_PWD_DATE    DATE,
  IS_USER_LOCKED    VARCHAR2(1),
  USER_LOCKED_RESON VARCHAR2(50),
  START_DATE        DATE,
  END_DATE          DATE,
  CREATE_TIME       DATE,
  DESCRIPTION       VARCHAR2(600),
  ENABLED           VARCHAR2(5),
  IS_DELETE         VARCHAR2(1),
  LAST_LOGIN_DATE   DATE,
  IS_LIST           VARCHAR2(5)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_USER
  is 'ÓÃ»§±í';
comment on column UPRR.U_BASE_USER.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_BASE_USER.USER_ENAME
  is 'ÓÃ»§Ó¢ÎÄÃû';
comment on column UPRR.U_BASE_USER.USER_CNAME
  is 'ÓÃ»§ÖÐÎÄÃû';
comment on column UPRR.U_BASE_USER.PASSWORD
  is 'ÓÃ»§ÃÜÂë';
comment on column UPRR.U_BASE_USER.INST_ID
  is '»ú¹¹±àºÅ';
comment on column UPRR.U_BASE_USER.DEPART_ID
  is '²¿ÃÅ±àºÅ,¸Ã×Ö¶ÎÏÈÔ¤Áô';
comment on column UPRR.U_BASE_USER.TEL
  is '×ù»úµç»°';
comment on column UPRR.U_BASE_USER.MOBILE
  is 'ÊÖ»úºÅ';
comment on column UPRR.U_BASE_USER.ADDRESS
  is 'µØÖ·';
comment on column UPRR.U_BASE_USER.EMAIL
  is 'ÓÊÏä';
comment on column UPRR.U_BASE_USER.LAST_MODIFY_DATE
  is '×îºóÐÞ¸ÄÃÜÂëÈÕÆÚ';
comment on column UPRR.U_BASE_USER.IS_FIRST_LOGIN
  is 'ÊÇ·ñÎªÊ×´ÎµÇÂ¼';
comment on column UPRR.U_BASE_USER.WRONG_PWD_COUNT
  is 'ÊäÈëÃÜÂë´íÎó´ÎÊý';
comment on column UPRR.U_BASE_USER.WRONG_PWD_DATE
  is '×îºóÒ»´ÎÊäÈëÃÜÂë´íÎóÈÕÆÚ';
comment on column UPRR.U_BASE_USER.IS_USER_LOCKED
  is 'ÊÇ·ñËø¶¨ÓÃ»§';
comment on column UPRR.U_BASE_USER.USER_LOCKED_RESON
  is 'Ëø¶¨Ô­Òò :00Õý³£;01ÃÜÂëÊä´í$var$´Î;02±»¹ÜÀíÔ±Ëø¶¨;03ÓÃ»§$var$ÌìÎ´µÇÂ¼';
comment on column UPRR.U_BASE_USER.START_DATE
  is '¿ªÊ¼Ê±¼ä';
comment on column UPRR.U_BASE_USER.END_DATE
  is '½áÊøÊ±¼ä';
comment on column UPRR.U_BASE_USER.CREATE_TIME
  is '´´½¨Ê±¼ä';
comment on column UPRR.U_BASE_USER.DESCRIPTION
  is 'ÃèÊö';
comment on column UPRR.U_BASE_USER.ENABLED
  is 'ÆôÓÃ±êÊ¶';
comment on column UPRR.U_BASE_USER.IS_DELETE
  is 'ÊÇ·ñÉ¾³ý1-ÊÇ,Âß¼­É¾³ý';
comment on column UPRR.U_BASE_USER.LAST_LOGIN_DATE
  is '×îºóµÇÂ¼Ê±¼ä';
comment on column UPRR.U_BASE_USER.IS_LIST
  is '°×Ãûµ¥±êÊ¶';
alter table UPRR.U_BASE_USER
  add constraint PK_U_BASE_USER primary key (USER_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_USER
  add constraint FK_BASE_USER_R_AUTH_OBJ foreign key (USER_ID)
  references UPRR.U_AUTH_OBJECT (OBJECT_ID);
alter table UPRR.U_BASE_USER
  add constraint FK_BASE_USER_R_BASE_INST foreign key (INST_ID)
  references UPRR.U_BASE_INST (INST_ID);
grant select on UPRR.U_BASE_USER to ACC;
grant select on UPRR.U_BASE_USER to CFA;
grant select on UPRR.U_BASE_USER to CFA2;
grant select, update on UPRR.U_BASE_USER to DATACORE;
grant select, update on UPRR.U_BASE_USER to DATACOREFF;
grant select, update on UPRR.U_BASE_USER to DATACOREOPR;
grant select on UPRR.U_BASE_USER to FSD1;
grant select on UPRR.U_BASE_USER to METABASE;

prompt
prompt Creating table U_AUTH_ROLE_USER
prompt ===============================
prompt
create table UPRR.U_AUTH_ROLE_USER
(
  ROLE_ID VARCHAR2(20) not null,
  USER_ID VARCHAR2(20)
)
tablespace UPRR
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
comment on table UPRR.U_AUTH_ROLE_USER
  is '½ÇÉ«ÓÃ»§±í';
comment on column UPRR.U_AUTH_ROLE_USER.ROLE_ID
  is '½ÇÉ«±àºÅ';
comment on column UPRR.U_AUTH_ROLE_USER.USER_ID
  is 'ÓÃ»§±àºÅ';
alter table UPRR.U_AUTH_ROLE_USER
  add constraint FK_AUTH_USER_ROLE_R_AUTH_ROLE foreign key (ROLE_ID)
  references UPRR.U_AUTH_ROLE (ROLE_ID)
  disable;
alter table UPRR.U_AUTH_ROLE_USER
  add constraint FK_BASE_US_R_AUTH_ROLE_US foreign key (USER_ID)
  references UPRR.U_BASE_USER (USER_ID)
  disable;
create index UPRR.IDX_U_AUTH_ROLE_USER on UPRR.U_AUTH_ROLE_USER (USER_ID, ROLE_ID)
  tablespace UPRR
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
grant select on UPRR.U_AUTH_ROLE_USER to ACC;
grant select on UPRR.U_AUTH_ROLE_USER to CFA;
grant select on UPRR.U_AUTH_ROLE_USER to CFA2;
grant select on UPRR.U_AUTH_ROLE_USER to FSD1;
grant select on UPRR.U_AUTH_ROLE_USER to METABASE;

prompt
prompt Creating table U_AUTH_ROLE_USER_CHANGE
prompt ======================================
prompt
create table UPRR.U_AUTH_ROLE_USER_CHANGE
(
  ROLE_ID       VARCHAR2(20) not null,
  USER_ID       VARCHAR2(20),
  CHANGE_USER   VARCHAR2(20),
  CHANGE_TIME   DATE,
  AUDIT_USER    VARCHAR2(20),
  AUDIT_TIME    DATE,
  AUDIT_STATUS  INTEGER,
  ID            NUMBER,
  CHANGE_STATUS INTEGER
)
tablespace UPRR
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
comment on table UPRR.U_AUTH_ROLE_USER_CHANGE
  is 'ÓÃ»§ÐÅÏ¢±ä¸ü¼ÇÂ¼±í';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.ROLE_ID
  is '½ÇÉ«±àºÅ';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.ID
  is 'id';
comment on column UPRR.U_AUTH_ROLE_USER_CHANGE.CHANGE_STATUS
  is 'Õý³£1Ôö¼Ó2É¾³ý3·ÏÆú4';

prompt
prompt Creating table U_AUTH_SYSTEM_ADMIN
prompt ==================================
prompt
create table UPRR.U_AUTH_SYSTEM_ADMIN
(
  USER_ID   VARCHAR2(20),
  SYSTEM_ID VARCHAR2(20)
)
tablespace UPRR
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
comment on table UPRR.U_AUTH_SYSTEM_ADMIN
  is '×ÓÏµÍ³¹ÜÀíÔ±±í';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN.SYSTEM_ID
  is '×ÓÏµÍ³±àºÅ';
alter table UPRR.U_AUTH_SYSTEM_ADMIN
  add constraint FK_AUTH_SYS_R_BASE_CON foreign key (SYSTEM_ID)
  references UPRR.U_BASE_CONFIG (SYSTEM_ID);
alter table UPRR.U_AUTH_SYSTEM_ADMIN
  add constraint FK_AUTH_SYS_R_BASE_USE foreign key (USER_ID)
  references UPRR.U_BASE_USER (USER_ID);
grant select on UPRR.U_AUTH_SYSTEM_ADMIN to METABASE;

prompt
prompt Creating table U_AUTH_SYSTEM_ADMIN_CHANGE
prompt =========================================
prompt
create table UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE
(
  USER_ID       VARCHAR2(20),
  SYSTEM_ID     VARCHAR2(20),
  CHANGE_USER   VARCHAR2(20),
  CHANGE_TIME   DATE,
  AUDIT_USER    VARCHAR2(20),
  AUDIT_TIME    DATE,
  AUDIT_STATUS  INTEGER,
  ID            NUMBER,
  CHANGE_STATUS INTEGER,
  SYSTEM_CNAME  VARCHAR2(20)
)
tablespace UPRR
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
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.ID
  is 'id';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.CHANGE_STATUS
  is '11¹ÜÀíÔ±Ôö¼Ó12¹ÜÀíÔ±É¾³ý';
comment on column UPRR.U_AUTH_SYSTEM_ADMIN_CHANGE.SYSTEM_CNAME
  is '×ÓÏµÍ³Ãû';

prompt
prompt Creating table U_BASE_CONFIG_BAK
prompt ================================
prompt
create table UPRR.U_BASE_CONFIG_BAK
(
  SYSTEM_ID            VARCHAR2(20) not null,
  SYSTEM_ENAME         VARCHAR2(50) not null,
  SYSTEM_NICK_ENAME    VARCHAR2(20) not null,
  SYSTEM_CNAME         VARCHAR2(100) not null,
  SYSTEM_NICK_CNAME    VARCHAR2(20) not null,
  DB_URL               VARCHAR2(100),
  MENU_NAME            VARCHAR2(10),
  MENU_TABLE           VARCHAR2(20),
  MENU_ORDER_NUM       INTEGER,
  MENU_IMG_SRC         VARCHAR2(30),
  LINK_TARGET          VARCHAR2(20),
  LINK_SITE_URL        VARCHAR2(100),
  UNIT_LOGIN_URL       VARCHAR2(100),
  DISPLAY              VARCHAR2(10),
  RES_DB_TYPE          VARCHAR2(20),
  RES_DB_USER_ID       VARCHAR2(50),
  RES_DB_SERVER_PORT   VARCHAR2(10),
  RES_DB_SERVER_IP     VARCHAR2(30),
  RES_DB_SID           VARCHAR2(20),
  RES_DB_PASSWORD      VARCHAR2(50),
  ENABLED              VARCHAR2(5),
  MENURES              VARCHAR2(1),
  CRMS_SUBJECT_ID      VARCHAR2(100),
  LINK_SITE_INNER_URL  VARCHAR2(100),
  UNIT_LOGIN_INNER_URL VARCHAR2(100)
)
tablespace UPRR
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
prompt Creating table U_BASE_CONFIG_CHANGE
prompt ===================================
prompt
create table UPRR.U_BASE_CONFIG_CHANGE
(
  SYSTEM_ID            VARCHAR2(20) not null,
  SYSTEM_ENAME         VARCHAR2(50) not null,
  SYSTEM_NICK_ENAME    VARCHAR2(20) not null,
  SYSTEM_CNAME         VARCHAR2(100) not null,
  SYSTEM_NICK_CNAME    VARCHAR2(20) not null,
  DB_URL               VARCHAR2(100),
  MENU_NAME            VARCHAR2(10),
  MENU_TABLE           VARCHAR2(20),
  MENU_ORDER_NUM       INTEGER,
  MENU_IMG_SRC         VARCHAR2(30),
  LINK_TARGET          VARCHAR2(20),
  LINK_SITE_URL        VARCHAR2(100),
  UNIT_LOGIN_URL       VARCHAR2(100),
  DISPLAY              VARCHAR2(10),
  RES_DB_TYPE          VARCHAR2(20),
  RES_DB_USER_ID       VARCHAR2(50),
  RES_DB_SERVER_PORT   VARCHAR2(10),
  RES_DB_SERVER_IP     VARCHAR2(30),
  RES_DB_SID           VARCHAR2(20),
  RES_DB_PASSWORD      VARCHAR2(50),
  ENABLED              VARCHAR2(5),
  MENURES              VARCHAR2(1),
  CRMS_SUBJECT_ID      VARCHAR2(100),
  CHANGE_USER          VARCHAR2(20),
  CHANGE_TIME          DATE,
  AUDIT_USER           VARCHAR2(20),
  AUDIT_TIME           DATE,
  AUDIT_STATUS         INTEGER,
  ID                   NUMBER,
  CHANGE_STATUS        INTEGER,
  LINK_SITE_INNER_URL  VARCHAR2(100),
  UNIT_LOGIN_INNER_URL VARCHAR2(100)
)
tablespace UPRR
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
comment on column UPRR.U_BASE_CONFIG_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_BASE_CONFIG_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_BASE_CONFIG_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_BASE_CONFIG_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_BASE_CONFIG_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø';
comment on column UPRR.U_BASE_CONFIG_CHANGE.ID
  is 'id';
comment on column UPRR.U_BASE_CONFIG_CHANGE.CHANGE_STATUS
  is '13×ÓÏµÍ³ÐÞ¸Ä';

prompt
prompt Creating table U_BASE_DICTIONARY
prompt ================================
prompt
create table UPRR.U_BASE_DICTIONARY
(
  DIC_TYPE    VARCHAR2(10) not null,
  DIC_VALUE   VARCHAR2(20) not null,
  DIC_NAME    VARCHAR2(50) not null,
  ORDER_NUM   INTEGER,
  DESCRIPTION VARCHAR2(50)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_DICTIONARY
  is 'ÏµÍ³×Öµä±í';
comment on column UPRR.U_BASE_DICTIONARY.DIC_TYPE
  is '×Öµä·ÖÀà';
comment on column UPRR.U_BASE_DICTIONARY.DIC_VALUE
  is '×Öµä¼üÖµ';
comment on column UPRR.U_BASE_DICTIONARY.DIC_NAME
  is '×Öµä¼üÃû³Æ';
comment on column UPRR.U_BASE_DICTIONARY.ORDER_NUM
  is 'ÅÅÐò×Ö¶Î';
comment on column UPRR.U_BASE_DICTIONARY.DESCRIPTION
  is 'ÃèÊö';
alter table UPRR.U_BASE_DICTIONARY
  add constraint PK_U_BASE_DICTIONARY primary key (DIC_TYPE, DIC_VALUE)
  using index 
  tablespace UPRR
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
grant select on UPRR.U_BASE_DICTIONARY to METABASE;

prompt
prompt Creating table U_BASE_FILE
prompt ==========================
prompt
create table UPRR.U_BASE_FILE
(
  FILE_ID          NUMBER(9) not null,
  FOLDER_ID        NUMBER(9),
  REF_ID           VARCHAR2(20),
  FILE_NAME        VARCHAR2(1000),
  FILE_SIZE        NUMBER(9),
  DATASTREAM       BLOB,
  UPLOAD_TIME      DATE,
  STATUS           VARCHAR2(20) default '1',
  CREATE_USER_ID   VARCHAR2(20),
  CREATE_USER_NAME VARCHAR2(20)
)
tablespace UPRR
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
comment on column UPRR.U_BASE_FILE.FILE_ID
  is 'ÎÄ¼þID';
comment on column UPRR.U_BASE_FILE.FOLDER_ID
  is 'ÎÄ¼þ¼ÐID';
comment on column UPRR.U_BASE_FILE.REF_ID
  is 'Ïà¹ØID';
comment on column UPRR.U_BASE_FILE.FILE_NAME
  is 'ÎÄ¼þÃû';
comment on column UPRR.U_BASE_FILE.FILE_SIZE
  is 'ÎÄ¼þ´óÐ¡';
comment on column UPRR.U_BASE_FILE.DATASTREAM
  is 'ÎÄ¼þÁ÷';
comment on column UPRR.U_BASE_FILE.STATUS
  is 'ÎÄ¼þ×´Ì¬1:ÆôÓÃ0:Í£ÓÃ';
alter table UPRR.U_BASE_FILE
  add constraint PK_U_BASE_FILE primary key (FILE_ID)
  using index 
  tablespace UPRR
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
grant select, insert, update, delete, references, alter, index on UPRR.U_BASE_FILE to FSD1;

prompt
prompt Creating table U_BASE_FOLDER
prompt ============================
prompt
create table UPRR.U_BASE_FOLDER
(
  FOLDER_ID        NUMBER(9) not null,
  PARENT_FOLDER_ID NUMBER(9),
  SYSTEM_ID        VARCHAR2(20) not null,
  FOLDER_CODE      VARCHAR2(20) not null,
  FOLDER_NAME      VARCHAR2(50),
  FOLDER_PATH      VARCHAR2(1000),
  FOLDER_LEVEL     NUMBER(9),
  DISPLAY          VARCHAR2(10) default 'true',
  IS_UNIQUE        VARCHAR2(10) default 'false'
)
tablespace UPRR
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
comment on column UPRR.U_BASE_FOLDER.FOLDER_ID
  is 'ÎÄ¼þ¼ÐID';
comment on column UPRR.U_BASE_FOLDER.PARENT_FOLDER_ID
  is '¸¸ÎÄ¼þ¼ÐID';
comment on column UPRR.U_BASE_FOLDER.SYSTEM_ID
  is '×ÓÏµÍ³ID';
comment on column UPRR.U_BASE_FOLDER.FOLDER_CODE
  is 'ÎÄ¼þ¼ÐCODE';
comment on column UPRR.U_BASE_FOLDER.FOLDER_NAME
  is 'ÎÄ¼þ¼ÐÃû³Æ';
comment on column UPRR.U_BASE_FOLDER.FOLDER_PATH
  is 'ÎÄ¼þ¼ÐÂ·¾¶';
comment on column UPRR.U_BASE_FOLDER.FOLDER_LEVEL
  is 'ÎÄ¼þ¼Ð¼¶±ð';
comment on column UPRR.U_BASE_FOLDER.IS_UNIQUE
  is 'ÊÇ·ñÎ¨Ò»';
alter table UPRR.U_BASE_FOLDER
  add constraint PK_U_BASE_FOLDER primary key (FOLDER_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_FOLDER
  add constraint UK_U_BASE_FOLDER unique (SYSTEM_ID, FOLDER_CODE)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_FORM_NO
prompt =============================
prompt
create table UPRR.U_BASE_FORM_NO
(
  FORM_TYPE  VARCHAR2(5) not null,
  CURRENT_ID NUMBER(19) not null
)
tablespace UPRR
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
comment on table UPRR.U_BASE_FORM_NO
  is 'ÓÃÓÚÏµÍ³²»Í¬ÀàÐÍ±àºÅ';
comment on column UPRR.U_BASE_FORM_NO.FORM_TYPE
  is '±àºÅÖµ
ºÍ×Öµä±í½øÐÐ¹ØÁª';
comment on column UPRR.U_BASE_FORM_NO.CURRENT_ID
  is 'µ±Ç°±àºÅ';
alter table UPRR.U_BASE_FORM_NO
  add constraint PK_U_BASE_FORM_NO primary key (FORM_TYPE, CURRENT_ID)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_FUNC
prompt ==========================
prompt
create table UPRR.U_BASE_FUNC
(
  FUNC_ID   INTEGER not null,
  FUNC_URL  VARCHAR2(100) not null,
  FUNC_DESC VARCHAR2(100),
  FUNC_TYPE VARCHAR2(10)
)
tablespace UPRR
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
alter table UPRR.U_BASE_FUNC
  add constraint PK_U_BASE_FUNC primary key (FUNC_ID)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_FUNC_AUTH_RELA
prompt ====================================
prompt
create table UPRR.U_BASE_FUNC_AUTH_RELA
(
  OBJECT_ID   VARCHAR2(20) not null,
  FUNC_ID     INTEGER not null,
  OBJECT_TYPE VARCHAR2(10) not null
)
tablespace UPRR
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
alter table UPRR.U_BASE_FUNC_AUTH_RELA
  add constraint PK_FUNC_AUTH primary key (OBJECT_ID, FUNC_ID, OBJECT_TYPE)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_FUNC_AUTH_RELA
  add constraint FK_U_BASE_FUNC_AUTH_RELA foreign key (FUNC_ID)
  references UPRR.U_BASE_FUNC (FUNC_ID);

prompt
prompt Creating table U_BASE_FUNC_MENU_RELA
prompt ====================================
prompt
create table UPRR.U_BASE_FUNC_MENU_RELA
(
  FUNC_ID   INTEGER not null,
  MENU_ID   VARCHAR2(12) not null,
  SYSTEM_ID VARCHAR2(10) not null
)
tablespace UPRR
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
alter table UPRR.U_BASE_FUNC_MENU_RELA
  add constraint PK_U_BASE_FUNC_MENU_RELA primary key (FUNC_ID, MENU_ID, SYSTEM_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_FUNC_MENU_RELA
  add constraint FK_U_BASE_FUNC_MENU_RELA foreign key (FUNC_ID)
  references UPRR.U_BASE_FUNC (FUNC_ID);

prompt
prompt Creating table U_BASE_HIS_USER_PWD
prompt ==================================
prompt
create table UPRR.U_BASE_HIS_USER_PWD
(
  ID          NUMBER(19) not null,
  USER_ID     VARCHAR2(20),
  PASSWORD    VARCHAR2(50) not null,
  MODIFY_TIME DATE not null
)
tablespace UPRR
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
comment on table UPRR.U_BASE_HIS_USER_PWD
  is '×ÓÏµÍ³±àºÅ';
comment on column UPRR.U_BASE_HIS_USER_PWD.ID
  is 'ÐòÁÐºÅ';
comment on column UPRR.U_BASE_HIS_USER_PWD.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_BASE_HIS_USER_PWD.PASSWORD
  is 'ÃÜÂë';
comment on column UPRR.U_BASE_HIS_USER_PWD.MODIFY_TIME
  is 'ÐÞ¸ÄÃÜÂëÊ±¼ä';
alter table UPRR.U_BASE_HIS_USER_PWD
  add constraint PK_U_BASE_HIS_USER_PWD primary key (ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_HIS_USER_PWD
  add constraint FK_BASE_HIS_R_BASE_USER foreign key (USER_ID)
  references UPRR.U_BASE_USER (USER_ID);
grant select on UPRR.U_BASE_HIS_USER_PWD to DATACORE;
grant select on UPRR.U_BASE_HIS_USER_PWD to DATACOREFF;
grant select on UPRR.U_BASE_HIS_USER_PWD to DATACOREOPR;

prompt
prompt Creating table U_BASE_HOLIDAY
prompt =============================
prompt
create table UPRR.U_BASE_HOLIDAY
(
  HOLIDAY_TYPE  VARCHAR2(40) not null,
  HOLIDAY_VALUE VARCHAR2(20) not null,
  DESCRIPTION   VARCHAR2(50)
)
tablespace UPRR
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
comment on column UPRR.U_BASE_HOLIDAY.HOLIDAY_TYPE
  is '½Ú¼ÙÈÕÀà±ð±àºÅ';
comment on column UPRR.U_BASE_HOLIDAY.HOLIDAY_VALUE
  is '½Ú¼ÙÈÕÖµ£¬±ØÐëÎªyyyy-MM-dd';
comment on column UPRR.U_BASE_HOLIDAY.DESCRIPTION
  is 'ÃèÐð';
alter table UPRR.U_BASE_HOLIDAY
  add constraint PK_U_BASE_HOLIDAY primary key (HOLIDAY_TYPE, HOLIDAY_VALUE)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_HOLIDAY_CHANGE
prompt ====================================
prompt
create table UPRR.U_BASE_HOLIDAY_CHANGE
(
  HOLIDAY_TYPE  VARCHAR2(40) not null,
  HOLIDAY_VALUE VARCHAR2(20) not null,
  DESCRIPTION   VARCHAR2(50),
  ID            NUMBER not null,
  CHANGE_USER   VARCHAR2(20),
  CHANGE_TIME   DATE,
  AUDIT_USER    VARCHAR2(20),
  AUDIT_TIME    DATE,
  AUDIT_STATUS  INTEGER,
  CHANGE_STATUS INTEGER,
  CHANGE_REMARK VARCHAR2(30)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_HOLIDAY_CHANGE
  is '½Ú¼ÙÈÕ±ä¸ü±í';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.HOLIDAY_TYPE
  is '½Ú¼ÙÈÕÀà±ð±àºÅ';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.HOLIDAY_VALUE
  is '½Ú¼ÙÈÕÖµ£¬±ØÐëÎªyyyy-MM-dd';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.DESCRIPTION
  is 'ÃèÐð';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬£¨1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø£©';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.CHANGE_STATUS
  is 'ÐÞ¸Ä×´Ì¬£¨1Ôö¼Ó2ÐÞ¸Ä3É¾³ý£©';
comment on column UPRR.U_BASE_HOLIDAY_CHANGE.CHANGE_REMARK
  is 'ÐÞ¸Ä±¸×¢';
alter table UPRR.U_BASE_HOLIDAY_CHANGE
  add constraint PK_HOLIDAYCHANGE primary key (ID)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_HOLIDAY_TYPE
prompt ==================================
prompt
create table UPRR.U_BASE_HOLIDAY_TYPE
(
  HOLIDAY_TYPE VARCHAR2(40) not null,
  HOLIDAY_NAME VARCHAR2(50),
  ENABLE       VARCHAR2(3),
  REMARK       VARCHAR2(50)
)
tablespace UPRR
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
comment on column UPRR.U_BASE_HOLIDAY_TYPE.HOLIDAY_TYPE
  is '½Ú¼ÙÈÕÀà±ð±àºÅ';
comment on column UPRR.U_BASE_HOLIDAY_TYPE.HOLIDAY_NAME
  is '½Ú¼ÙÈÕÃû³Æ';
comment on column UPRR.U_BASE_HOLIDAY_TYPE.ENABLE
  is 'ÊÇ·ñÆôÓÃ1-ÆôÓÃ0-Î´ÆôÓÃ';
comment on column UPRR.U_BASE_HOLIDAY_TYPE.REMARK
  is '±¸×¢';
alter table UPRR.U_BASE_HOLIDAY_TYPE
  add constraint PK_U_BASE_HOLIDAY_TYPE primary key (HOLIDAY_TYPE)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_HOLIDAY_TYPE_CHANGE
prompt =========================================
prompt
create table UPRR.U_BASE_HOLIDAY_TYPE_CHANGE
(
  HOLIDAY_TYPE  VARCHAR2(40) not null,
  HOLIDAY_NAME  VARCHAR2(50),
  ENABLE        VARCHAR2(3),
  REMARK        VARCHAR2(50),
  ID            NUMBER not null,
  CHANGE_USER   VARCHAR2(20),
  CHANGE_TIME   DATE,
  AUDIT_USER    VARCHAR2(20),
  AUDIT_TIME    DATE,
  AUDIT_STATUS  INTEGER,
  CHANGE_STATUS INTEGER,
  CHANGE_REMARK VARCHAR2(30)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_HOLIDAY_TYPE_CHANGE
  is '½Ú¼ÙÈÕÀàÐÍ±ä¸ü±í';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.HOLIDAY_TYPE
  is '½Ú¼ÙÈÕÀà±ð±àºÅ';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.HOLIDAY_NAME
  is '½Ú¼ÙÈÕÃû³Æ';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.ENABLE
  is 'ÊÇ·ñÆôÓÃ1-ÆôÓÃ0-Î´ÆôÓÃ';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.REMARK
  is '±¸×¢';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.ID
  is 'id';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬£¨1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø£©';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.CHANGE_STATUS
  is 'ÐÞ¸Ä×´Ì¬£¨1Ôö¼Ó2ÐÞ¸Ä3É¾³ý£©';
comment on column UPRR.U_BASE_HOLIDAY_TYPE_CHANGE.CHANGE_REMARK
  is 'ÐÞ¸Ä±¸×¢';
alter table UPRR.U_BASE_HOLIDAY_TYPE_CHANGE
  add constraint PK_HOLIDAYTCHANGE primary key (ID)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_INST_CHANGE
prompt =================================
prompt
create table UPRR.U_BASE_INST_CHANGE
(
  INST_ID        VARCHAR2(20) not null,
  INST_NAME      VARCHAR2(60) not null,
  INST_SMP_NAME  VARCHAR2(60),
  PARENT_INST_ID VARCHAR2(20),
  INST_LAYER     INTEGER,
  ADDRESS        VARCHAR2(100),
  ZIP            VARCHAR2(6),
  TEL            VARCHAR2(27),
  FAX            VARCHAR2(20),
  IS_BUSSINESS   VARCHAR2(5),
  ORDER_NUM      INTEGER,
  DESCRIPTION    VARCHAR2(600),
  START_DATE     DATE,
  END_DATE       DATE,
  CREATE_TIME    DATE,
  ENABLED        VARCHAR2(5),
  INST_REGION    VARCHAR2(10),
  EMAIL          VARCHAR2(50),
  INST_PATH      VARCHAR2(1000),
  INST_LEVEL     INTEGER,
  IS_HEAD        VARCHAR2(10),
  CHANGE_USER    VARCHAR2(20),
  CHANGE_TIME    DATE,
  AUDIT_USER     VARCHAR2(20),
  AUDIT_TIME     DATE,
  AUDIT_STATUS   INTEGER,
  ID             NUMBER,
  CHANGE_STATUS  INTEGER
)
tablespace UPRR
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
comment on column UPRR.U_BASE_INST_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_BASE_INST_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_BASE_INST_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_BASE_INST_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_BASE_INST_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø';
comment on column UPRR.U_BASE_INST_CHANGE.ID
  is 'id';
comment on column UPRR.U_BASE_INST_CHANGE.CHANGE_STATUS
  is '7»ú¹¹Ôö¼Ó8»ú¹¹ÐÞ¸Ä9»ú¹¹É¾³ý';

prompt
prompt Creating table U_BASE_INST_RELA
prompt ===============================
prompt
create table UPRR.U_BASE_INST_RELA
(
  INST_ID         VARCHAR2(20) not null,
  INST_ID_LEVEL_1 VARCHAR2(20),
  INST_ID_LEVEL_2 VARCHAR2(20),
  INST_ID_LEVEL_3 VARCHAR2(20),
  INST_ID_LEVEL_4 VARCHAR2(20),
  INST_ID_LEVEL_5 VARCHAR2(20),
  INST_ID_LEVEL_6 VARCHAR2(20)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_INST_RELA
  is '»ú¹¹¼¶±ð±í';
comment on column UPRR.U_BASE_INST_RELA.INST_ID
  is '»ú¹¹';
comment on column UPRR.U_BASE_INST_RELA.INST_ID_LEVEL_1
  is '1¼¶»ú¹¹';
comment on column UPRR.U_BASE_INST_RELA.INST_ID_LEVEL_2
  is '2¼¶»ú¹¹';
comment on column UPRR.U_BASE_INST_RELA.INST_ID_LEVEL_3
  is '3¼¶»ú¹¹';
comment on column UPRR.U_BASE_INST_RELA.INST_ID_LEVEL_4
  is '4¼¶»ú¹¹';
comment on column UPRR.U_BASE_INST_RELA.INST_ID_LEVEL_5
  is '5¼¶»ú¹¹';
comment on column UPRR.U_BASE_INST_RELA.INST_ID_LEVEL_6
  is '6¼¶»ú¹¹';
alter table UPRR.U_BASE_INST_RELA
  add constraint PK_U_BASE_INST_RELA primary key (INST_ID)
  using index 
  tablespace UPRR
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
grant select on UPRR.U_BASE_INST_RELA to METABASE;

prompt
prompt Creating table U_BASE_INST_ROLE
prompt ===============================
prompt
create table UPRR.U_BASE_INST_ROLE
(
  INST_ROLE_ID   VARCHAR2(20) not null,
  INST_ROLE_NAME VARCHAR2(100) not null
)
tablespace UPRR
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
comment on table UPRR.U_BASE_INST_ROLE
  is '»ú¹¹È¨ÏÞ×é';
comment on column UPRR.U_BASE_INST_ROLE.INST_ROLE_ID
  is '»ú¹¹È¨ÏÞID';
comment on column UPRR.U_BASE_INST_ROLE.INST_ROLE_NAME
  is '»ú¹¹È¨ÏÞÃû³Æ';
grant select on UPRR.U_BASE_INST_ROLE to CFA;
grant select on UPRR.U_BASE_INST_ROLE to CFA2;
grant select on UPRR.U_BASE_INST_ROLE to METABASE;

prompt
prompt Creating table U_BASE_MENU
prompt ==========================
prompt
create table UPRR.U_BASE_MENU
(
  SYSTEM_ID  VARCHAR2(20) not null,
  MENU_ID    VARCHAR2(50) not null,
  MENU_NAME  VARCHAR2(100),
  TARGET     VARCHAR2(20),
  URL        VARCHAR2(200),
  IMG_SRC    VARCHAR2(100),
  ORDER_NUM  NUMBER,
  DISPLAY    VARCHAR2(5),
  ENABLED    VARCHAR2(5),
  MENU_ENAME VARCHAR2(100) default 'ename'
)
tablespace UPRR
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
comment on table UPRR.U_BASE_MENU
  is 'ÏµÍ³²Ëµ¥±í';
comment on column UPRR.U_BASE_MENU.SYSTEM_ID
  is 'ÏµÍ³ID';
comment on column UPRR.U_BASE_MENU.MENU_ID
  is 'À¸Ä¿±àºÅ';
comment on column UPRR.U_BASE_MENU.MENU_NAME
  is '²Ëµ¥Ãû³Æ';
comment on column UPRR.U_BASE_MENU.TARGET
  is 'Ö¸ÏòÄ¿±ê
ÀýÈç£º_blankµÈ';
comment on column UPRR.U_BASE_MENU.URL
  is 'Ö¸ÏòµØÖ·';
comment on column UPRR.U_BASE_MENU.IMG_SRC
  is 'À¸Ä¿Í¼±êµØÖ·';
comment on column UPRR.U_BASE_MENU.ORDER_NUM
  is 'ÐòÁÐºÅ';
comment on column UPRR.U_BASE_MENU.DISPLAY
  is 'ÊÇ·ñÏÔÊ¾';
comment on column UPRR.U_BASE_MENU.ENABLED
  is 'ÊÇ·ñ¿ÉÓÃ';
alter table UPRR.U_BASE_MENU
  add constraint PK_U_BASE_MENU primary key (SYSTEM_ID, MENU_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_MENU
  add constraint FK_BASE_MENU_R_BASE_CON foreign key (SYSTEM_ID)
  references UPRR.U_BASE_CONFIG (SYSTEM_ID);

prompt
prompt Creating table U_BASE_MENU_BAK
prompt ==============================
prompt
create table UPRR.U_BASE_MENU_BAK
(
  SYSTEM_ID  VARCHAR2(20) not null,
  MENU_ID    VARCHAR2(50) not null,
  MENU_NAME  VARCHAR2(100),
  TARGET     VARCHAR2(20),
  URL        VARCHAR2(200),
  IMG_SRC    VARCHAR2(100),
  ORDER_NUM  NUMBER,
  DISPLAY    VARCHAR2(5),
  ENABLED    VARCHAR2(5),
  MENU_ENAME VARCHAR2(100)
)
tablespace UPRR
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
prompt Creating table U_BASE_NOTICE_INFO
prompt =================================
prompt
create table UPRR.U_BASE_NOTICE_INFO
(
  ID          NUMBER(19) not null,
  TITLE       VARCHAR2(200) not null,
  CONTENT     VARCHAR2(4000) not null,
  TYPE        VARCHAR2(20) not null,
  USER_ID     VARCHAR2(20),
  CREATE_TIME DATE,
  STATUS      VARCHAR2(5)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_NOTICE_INFO
  is 'Í¨¸æ»ù´¡ÐÅÏ¢';
comment on column UPRR.U_BASE_NOTICE_INFO.ID
  is 'Ö÷¼ü';
comment on column UPRR.U_BASE_NOTICE_INFO.TITLE
  is '±êÌâ';
comment on column UPRR.U_BASE_NOTICE_INFO.CONTENT
  is 'ÄÚÈÝ';
comment on column UPRR.U_BASE_NOTICE_INFO.TYPE
  is 'Àà±ð(ËùÊô×ÓÏµÍ³)';
comment on column UPRR.U_BASE_NOTICE_INFO.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_BASE_NOTICE_INFO.CREATE_TIME
  is 'Ê±¼ä';
comment on column UPRR.U_BASE_NOTICE_INFO.STATUS
  is '×´Ì¬(true-ÖÃ¶¥;false-²»ÖÃ¶¥)';
alter table UPRR.U_BASE_NOTICE_INFO
  add constraint PK_U_BASE_NOTICE_INFO primary key (ID)
  using index 
  tablespace UPRR
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
grant select, insert, update, delete on UPRR.U_BASE_NOTICE_INFO to DATACORE;
grant select, insert, update, delete on UPRR.U_BASE_NOTICE_INFO to DATACOREFF;
grant select, insert, update, delete on UPRR.U_BASE_NOTICE_INFO to DATACOREOPR;

prompt
prompt Creating table U_BASE_NOTICE_AFFIX
prompt ==================================
prompt
create table UPRR.U_BASE_NOTICE_AFFIX
(
  ID          NUMBER(19) not null,
  NOTICE_ID   NUMBER(19) not null,
  FILE_PATH   VARCHAR2(200) not null,
  FILE_NAME   VARCHAR2(100) not null,
  FILE_SIZE   NUMBER(19),
  UPLOAD_USER VARCHAR2(30),
  UPLOAD_TIME DATE,
  DESCRIPTION VARCHAR2(200)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_NOTICE_AFFIX
  is 'Í¨¸æ¸½¼þÐÅÏ¢';
comment on column UPRR.U_BASE_NOTICE_AFFIX.ID
  is 'Ö÷¼ü';
comment on column UPRR.U_BASE_NOTICE_AFFIX.NOTICE_ID
  is 'Ö÷±í¼ÇÂ¼±àºÅ';
comment on column UPRR.U_BASE_NOTICE_AFFIX.FILE_PATH
  is 'ÎÄ¼þÂ·¾¶';
comment on column UPRR.U_BASE_NOTICE_AFFIX.FILE_NAME
  is 'ÎÄ¼þÃû';
comment on column UPRR.U_BASE_NOTICE_AFFIX.FILE_SIZE
  is 'ÎÄ¼þ´óÐ¡';
comment on column UPRR.U_BASE_NOTICE_AFFIX.UPLOAD_USER
  is 'ÉÏ´«ÓÃ»§';
comment on column UPRR.U_BASE_NOTICE_AFFIX.UPLOAD_TIME
  is 'ÉÏ´«Ê±¼ä';
comment on column UPRR.U_BASE_NOTICE_AFFIX.DESCRIPTION
  is '¸½¼þÃèÊö';
alter table UPRR.U_BASE_NOTICE_AFFIX
  add constraint PK_U_BASE_NOTICE_AFFIX primary key (ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_NOTICE_AFFIX
  add constraint FK_NOTICE_INFO_R_NOTICE_AFFIX foreign key (NOTICE_ID)
  references UPRR.U_BASE_NOTICE_INFO (ID);

prompt
prompt Creating table U_BASE_NOTICE_FEED_BACK
prompt ======================================
prompt
create table UPRR.U_BASE_NOTICE_FEED_BACK
(
  ID         VARCHAR2(19) not null,
  NOTICE_ID  NUMBER(19) not null,
  USER_ID    VARCHAR2(20) not null,
  CONTENT    VARCHAR2(2000),
  USER_CNAME VARCHAR2(30),
  USER_ENAME VARCHAR2(20),
  FEED_TIME  DATE
)
tablespace UPRR
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
comment on table UPRR.U_BASE_NOTICE_FEED_BACK
  is 'Í¨¸æ·´À¡ÐÅÏ¢';
comment on column UPRR.U_BASE_NOTICE_FEED_BACK.ID
  is 'Ö÷¼ü';
comment on column UPRR.U_BASE_NOTICE_FEED_BACK.NOTICE_ID
  is 'Ö÷±í¼ÇÂ¼±àºÅ';
comment on column UPRR.U_BASE_NOTICE_FEED_BACK.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_BASE_NOTICE_FEED_BACK.CONTENT
  is '·´À¡ÄÚÈÝ';
comment on column UPRR.U_BASE_NOTICE_FEED_BACK.USER_CNAME
  is 'ÓÃ»§ÖÐÎÄÃû';
comment on column UPRR.U_BASE_NOTICE_FEED_BACK.USER_ENAME
  is 'ÓÃ»§Ó¢ÎÄÃû';
comment on column UPRR.U_BASE_NOTICE_FEED_BACK.FEED_TIME
  is '·´À¡Ê±¼ä';
alter table UPRR.U_BASE_NOTICE_FEED_BACK
  add constraint PK_U_BASE_NOTICE_FEED_BACK primary key (ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_NOTICE_FEED_BACK
  add constraint FK_NOTICE_INFO_R_NOTICE_FEED foreign key (NOTICE_ID)
  references UPRR.U_BASE_NOTICE_INFO (ID);

prompt
prompt Creating table U_BASE_NOTICE_VIEW_LOG
prompt =====================================
prompt
create table UPRR.U_BASE_NOTICE_VIEW_LOG
(
  ID         VARCHAR2(19) not null,
  NOTICE_ID  NUMBER(19) not null,
  USER_ENAME VARCHAR2(20) not null,
  USER_CNAME VARCHAR2(20) not null,
  VIEW_TIME  DATE,
  IP         VARCHAR2(20)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_NOTICE_VIEW_LOG
  is 'Í¨¸æ²é¿´ÈÕÖ¾';
comment on column UPRR.U_BASE_NOTICE_VIEW_LOG.ID
  is 'Ö÷¼ü';
comment on column UPRR.U_BASE_NOTICE_VIEW_LOG.NOTICE_ID
  is 'Ö÷±í¼ÇÂ¼±àºÅ';
comment on column UPRR.U_BASE_NOTICE_VIEW_LOG.USER_ENAME
  is 'ÓÃ»§µÇÂ¼Ãû³Æ';
comment on column UPRR.U_BASE_NOTICE_VIEW_LOG.USER_CNAME
  is 'ÓÃ»§ÖÐÎÄÃû³Æ';
comment on column UPRR.U_BASE_NOTICE_VIEW_LOG.VIEW_TIME
  is '²é¿´Ê±¼ä';
comment on column UPRR.U_BASE_NOTICE_VIEW_LOG.IP
  is '¿Í»§¶ËIP';
alter table UPRR.U_BASE_NOTICE_VIEW_LOG
  add constraint PK_U_BASE_NOTICE_VIEW_LOG primary key (ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_NOTICE_VIEW_LOG
  add constraint FK_NOTICE_INFO_R_NOTICE_LOG foreign key (NOTICE_ID)
  references UPRR.U_BASE_NOTICE_INFO (ID);
grant select, insert, update, delete on UPRR.U_BASE_NOTICE_VIEW_LOG to DATACORE;
grant select, insert, update, delete on UPRR.U_BASE_NOTICE_VIEW_LOG to DATACOREFF;
grant select, insert, update, delete on UPRR.U_BASE_NOTICE_VIEW_LOG to DATACOREOPR;

prompt
prompt Creating table U_BASE_ONLINE
prompt ============================
prompt
create table UPRR.U_BASE_ONLINE
(
  LOGIN_ID     VARCHAR2(100) not null,
  USER_ID      VARCHAR2(50),
  LOGIN_TIME   TIMESTAMP(6),
  KICKOUT_TIME TIMESTAMP(6),
  ADDR         VARCHAR2(50),
  STATUS       VARCHAR2(10)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_ONLINE
  is 'ÔÚÏßÓÃ»§×´Ì¬±í';
comment on column UPRR.U_BASE_ONLINE.LOGIN_ID
  is 'µÇÂ½±êÊ¶';
comment on column UPRR.U_BASE_ONLINE.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_BASE_ONLINE.LOGIN_TIME
  is 'µÇÂ½Ê±¼ä';
comment on column UPRR.U_BASE_ONLINE.KICKOUT_TIME
  is '×¢ÏúÊ±¼ä';
comment on column UPRR.U_BASE_ONLINE.ADDR
  is 'µÇÂ½IP';
alter table UPRR.U_BASE_ONLINE
  add constraint PK_U_BASE_ONLINE primary key (LOGIN_ID)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_SYS_LOG
prompt =============================
prompt
create table UPRR.U_BASE_SYS_LOG
(
  LOG_ID      NUMBER(19) not null,
  USER_ID     VARCHAR2(20) not null,
  USER_ENAME  VARCHAR2(20),
  USER_CNAME  VARCHAR2(30),
  INST_ID     VARCHAR2(20),
  INST_CNAME  VARCHAR2(60),
  MENU_ID     VARCHAR2(20),
  MENU_NAME   VARCHAR2(30),
  IP          VARCHAR2(20),
  BROWSE      VARCHAR2(200),
  LOG_TYPE    VARCHAR2(100),
  EXEC_TIME   DATE,
  STATUS      VARCHAR2(10),
  SYSTEM_ID   VARCHAR2(20),
  DESCRIPTION CLOB
)
tablespace UPRR
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
comment on table UPRR.U_BASE_SYS_LOG
  is 'ÏµÍ³ÈÕÖ¾±í';
comment on column UPRR.U_BASE_SYS_LOG.LOG_ID
  is 'ÈÕÖ¾±àºÅ';
comment on column UPRR.U_BASE_SYS_LOG.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_BASE_SYS_LOG.USER_ENAME
  is 'ÓÃ»§µÇÂ¼Ãû';
comment on column UPRR.U_BASE_SYS_LOG.USER_CNAME
  is 'ÓÃ»§ÖÐÎÄ';
comment on column UPRR.U_BASE_SYS_LOG.INST_ID
  is '»ú¹¹±àºÅ';
comment on column UPRR.U_BASE_SYS_LOG.INST_CNAME
  is '»ú¹¹Ãû³Æ';
comment on column UPRR.U_BASE_SYS_LOG.MENU_ID
  is 'À¸Ä¿±àºÅ';
comment on column UPRR.U_BASE_SYS_LOG.MENU_NAME
  is 'À¸Ä¿Ãû³Æ';
comment on column UPRR.U_BASE_SYS_LOG.IP
  is 'ÓÃ»§IP';
comment on column UPRR.U_BASE_SYS_LOG.BROWSE
  is 'ÓÃ»§ä¯ÀÀÆ÷';
comment on column UPRR.U_BASE_SYS_LOG.LOG_TYPE
  is 'ÈÕÖ¾ÀàÐÍ
00001--ÓÃ»§µÇÂ¼ÈÕÖ¾';
comment on column UPRR.U_BASE_SYS_LOG.EXEC_TIME
  is 'Ö´ÐÐÊ±¼ä';
comment on column UPRR.U_BASE_SYS_LOG.STATUS
  is '×´Ì¬';
comment on column UPRR.U_BASE_SYS_LOG.SYSTEM_ID
  is 'ÏµÍ³±àºÅ';
comment on column UPRR.U_BASE_SYS_LOG.DESCRIPTION
  is 'ÃèÊö';
alter table UPRR.U_BASE_SYS_LOG
  add constraint PK_U_BASE_SYS_LOG primary key (LOG_ID)
  using index 
  tablespace UPRR
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
prompt Creating table U_BASE_SYS_PARAM
prompt ===============================
prompt
create table UPRR.U_BASE_SYS_PARAM
(
  PARAM_ID       NUMBER(19) not null,
  SYSTEM_ID      VARCHAR2(20),
  TYPE           VARCHAR2(20) not null,
  TYPE_DESC      VARCHAR2(100),
  ITEM_ENAME     VARCHAR2(50) not null,
  ITEM_CNAME     VARCHAR2(100),
  SELECTED_VALUE VARCHAR2(200),
  VALUE_LIST     VARCHAR2(200),
  IS_MODIFY      VARCHAR2(10),
  IS_VISIBLE     VARCHAR2(10),
  ORDER_NUM      NUMBER
)
tablespace UPRR
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
comment on table UPRR.U_BASE_SYS_PARAM
  is 'ÏµÍ³²ÎÊý±í';
comment on column UPRR.U_BASE_SYS_PARAM.PARAM_ID
  is '²ÎÊý±àºÅ';
comment on column UPRR.U_BASE_SYS_PARAM.SYSTEM_ID
  is 'ÏµÍ³±àºÅ';
comment on column UPRR.U_BASE_SYS_PARAM.TYPE
  is '²ÎÊýÀà±ð';
comment on column UPRR.U_BASE_SYS_PARAM.TYPE_DESC
  is '²ÎÊýÀà±ðÃèÊö';
comment on column UPRR.U_BASE_SYS_PARAM.ITEM_ENAME
  is '²ÎÊýÏîÓ¢ÎÄÃû';
comment on column UPRR.U_BASE_SYS_PARAM.ITEM_CNAME
  is '²ÎÊýÏîÖÐÎÄÃû';
comment on column UPRR.U_BASE_SYS_PARAM.SELECTED_VALUE
  is '²ÎÊýÑ¡ÖÐÖµ';
comment on column UPRR.U_BASE_SYS_PARAM.VALUE_LIST
  is '²ÎÊýÖµÁÐ±í';
comment on column UPRR.U_BASE_SYS_PARAM.IS_MODIFY
  is 'ÊÇ·ñ¿ÉÐÞ¸Ä';
comment on column UPRR.U_BASE_SYS_PARAM.IS_VISIBLE
  is 'ÊÇ·ñ¿É¼û';
comment on column UPRR.U_BASE_SYS_PARAM.ORDER_NUM
  is 'ÐòÁÐºÅ';
alter table UPRR.U_BASE_SYS_PARAM
  add constraint PK_U_BASE_SYS_PARAM primary key (PARAM_ID)
  using index 
  tablespace UPRR
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
alter table UPRR.U_BASE_SYS_PARAM
  add constraint FK_BASE_SYS_PARAM_R_BASE_CONF foreign key (SYSTEM_ID)
  references UPRR.U_BASE_CONFIG (SYSTEM_ID);

prompt
prompt Creating table U_BASE_SYS_PARAM_CHANGE
prompt ======================================
prompt
create table UPRR.U_BASE_SYS_PARAM_CHANGE
(
  SYSTEM_ID      VARCHAR2(20),
  TYPE           VARCHAR2(20) not null,
  TYPE_DESC      VARCHAR2(100),
  ITEM_ENAME     VARCHAR2(50) not null,
  ITEM_CNAME     VARCHAR2(100),
  SELECTED_VALUE VARCHAR2(200),
  VALUE_LIST     VARCHAR2(200),
  IS_MODIFY      VARCHAR2(10),
  IS_VISIBLE     VARCHAR2(10),
  ORDER_NUM      NUMBER,
  CHANGE_USER    VARCHAR2(20),
  CHANGE_TIME    DATE,
  AUDIT_USER     VARCHAR2(20),
  AUDIT_TIME     DATE,
  AUDIT_STATUS   INTEGER,
  ID             NUMBER,
  CHANGE_STATUS  INTEGER,
  PARAM_ID       VARCHAR2(20)
)
tablespace UPRR
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
comment on column UPRR.U_BASE_SYS_PARAM_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_BASE_SYS_PARAM_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_BASE_SYS_PARAM_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_BASE_SYS_PARAM_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_BASE_SYS_PARAM_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø';
comment on column UPRR.U_BASE_SYS_PARAM_CHANGE.ID
  is 'id';
comment on column UPRR.U_BASE_SYS_PARAM_CHANGE.CHANGE_STATUS
  is '10ÏµÍ³²ÎÊýÐÞ¸Ä';

prompt
prompt Creating table U_BASE_USER_1111
prompt ===============================
prompt
create table UPRR.U_BASE_USER_1111
(
  USER_ID           VARCHAR2(20) not null,
  USER_ENAME        VARCHAR2(20) not null,
  USER_CNAME        VARCHAR2(30) not null,
  PASSWORD          VARCHAR2(50) not null,
  INST_ID           VARCHAR2(20),
  DEPART_ID         VARCHAR2(20),
  TEL               VARCHAR2(20),
  MOBILE            VARCHAR2(27),
  ADDRESS           VARCHAR2(100),
  EMAIL             VARCHAR2(50),
  LAST_MODIFY_DATE  DATE,
  IS_FIRST_LOGIN    VARCHAR2(1),
  WRONG_PWD_COUNT   INTEGER,
  WRONG_PWD_DATE    DATE,
  IS_USER_LOCKED    VARCHAR2(1),
  USER_LOCKED_RESON VARCHAR2(50),
  START_DATE        DATE,
  END_DATE          DATE,
  CREATE_TIME       DATE,
  DESCRIPTION       VARCHAR2(600),
  ENABLED           VARCHAR2(5),
  IS_DELETE         VARCHAR2(1),
  LAST_LOGIN_DATE   DATE,
  IS_LIST           VARCHAR2(5)
)
tablespace UPRR
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
prompt Creating table U_BASE_USER_43469446
prompt ===================================
prompt
create table UPRR.U_BASE_USER_43469446
(
  USER_ID           VARCHAR2(20) not null,
  USER_ENAME        VARCHAR2(20) not null,
  USER_CNAME        VARCHAR2(30) not null,
  PASSWORD          VARCHAR2(50) not null,
  INST_ID           VARCHAR2(20),
  DEPART_ID         VARCHAR2(20),
  TEL               VARCHAR2(20),
  MOBILE            VARCHAR2(27),
  ADDRESS           VARCHAR2(100),
  EMAIL             VARCHAR2(50),
  LAST_MODIFY_DATE  DATE,
  IS_FIRST_LOGIN    VARCHAR2(1),
  WRONG_PWD_COUNT   INTEGER,
  WRONG_PWD_DATE    DATE,
  IS_USER_LOCKED    VARCHAR2(1),
  USER_LOCKED_RESON VARCHAR2(50),
  START_DATE        DATE,
  END_DATE          DATE,
  CREATE_TIME       DATE,
  DESCRIPTION       VARCHAR2(600),
  ENABLED           VARCHAR2(5),
  IS_DELETE         VARCHAR2(1),
  LAST_LOGIN_DATE   DATE,
  IS_LIST           VARCHAR2(5)
)
tablespace UPRR
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
prompt Creating table U_BASE_USER_CHANGE
prompt =================================
prompt
create table UPRR.U_BASE_USER_CHANGE
(
  USER_ID           VARCHAR2(20) not null,
  USER_ENAME        VARCHAR2(20),
  USER_CNAME        VARCHAR2(30),
  PASSWORD          VARCHAR2(50),
  INST_ID           VARCHAR2(20),
  DEPART_ID         VARCHAR2(20),
  TEL               VARCHAR2(20),
  MOBILE            VARCHAR2(27),
  ADDRESS           VARCHAR2(100),
  EMAIL             VARCHAR2(50),
  LAST_MODIFY_DATE  DATE,
  IS_FIRST_LOGIN    VARCHAR2(1),
  WRONG_PWD_COUNT   INTEGER,
  WRONG_PWD_DATE    DATE,
  IS_USER_LOCKED    VARCHAR2(1),
  USER_LOCKED_RESON VARCHAR2(50),
  START_DATE        DATE,
  END_DATE          DATE,
  CREATE_TIME       DATE,
  DESCRIPTION       VARCHAR2(600),
  ENABLED           VARCHAR2(5),
  CHANGE_USER       VARCHAR2(20),
  CHANGE_TIME       DATE,
  AUDIT_USER        VARCHAR2(20),
  AUDIT_TIME        DATE,
  AUDIT_STATUS      INTEGER,
  ID                NUMBER not null,
  CHANGE_STATUS     INTEGER,
  CHANGE_REMARK     VARCHAR2(30),
  IS_DELETE         VARCHAR2(1),
  LAST_LOGIN_DATE   DATE,
  IS_LIST           VARCHAR2(5)
)
tablespace UPRR
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
comment on table UPRR.U_BASE_USER_CHANGE
  is 'ÓÃ»§±ä¸ü±í';
comment on column UPRR.U_BASE_USER_CHANGE.USER_ID
  is 'ÓÃ»§±àºÅ';
comment on column UPRR.U_BASE_USER_CHANGE.USER_ENAME
  is 'ÓÃ»§Ó¢ÎÄÃû';
comment on column UPRR.U_BASE_USER_CHANGE.USER_CNAME
  is 'ÓÃ»§ÖÐÎÄÃû';
comment on column UPRR.U_BASE_USER_CHANGE.PASSWORD
  is 'ÓÃ»§ÃÜÂë';
comment on column UPRR.U_BASE_USER_CHANGE.INST_ID
  is '»ú¹¹±àºÅ';
comment on column UPRR.U_BASE_USER_CHANGE.DEPART_ID
  is '²¿ÃÅ±àºÅ,¸Ã×Ö¶ÎÏÈÔ¤Áô';
comment on column UPRR.U_BASE_USER_CHANGE.TEL
  is '×ù»úµç»°';
comment on column UPRR.U_BASE_USER_CHANGE.MOBILE
  is 'ÊÖ»úºÅ';
comment on column UPRR.U_BASE_USER_CHANGE.ADDRESS
  is 'µØÖ·';
comment on column UPRR.U_BASE_USER_CHANGE.EMAIL
  is 'ÓÊÏä';
comment on column UPRR.U_BASE_USER_CHANGE.LAST_MODIFY_DATE
  is '×îºóÐÞ¸ÄÃÜÂëÈÕÆÚ';
comment on column UPRR.U_BASE_USER_CHANGE.IS_FIRST_LOGIN
  is 'ÊÇ·ñÎªÊ×´ÎµÇÂ¼';
comment on column UPRR.U_BASE_USER_CHANGE.WRONG_PWD_COUNT
  is 'ÊäÈëÃÜÂë´íÎó´ÎÊý';
comment on column UPRR.U_BASE_USER_CHANGE.WRONG_PWD_DATE
  is '×îºóÒ»´ÎÊäÈëÃÜÂë´íÎóÈÕÆÚ';
comment on column UPRR.U_BASE_USER_CHANGE.IS_USER_LOCKED
  is 'ÊÇ·ñËø¶¨ÓÃ»§';
comment on column UPRR.U_BASE_USER_CHANGE.USER_LOCKED_RESON
  is 'Ëø¶¨Ô­Òò';
comment on column UPRR.U_BASE_USER_CHANGE.START_DATE
  is '¿ªÊ¼Ê±¼ä';
comment on column UPRR.U_BASE_USER_CHANGE.END_DATE
  is '½áÊøÊ±¼ä';
comment on column UPRR.U_BASE_USER_CHANGE.CREATE_TIME
  is '´´½¨Ê±¼ä';
comment on column UPRR.U_BASE_USER_CHANGE.DESCRIPTION
  is 'ÃèÊö';
comment on column UPRR.U_BASE_USER_CHANGE.ENABLED
  is 'ÆôÓÃ±êÊ¶';
comment on column UPRR.U_BASE_USER_CHANGE.CHANGE_USER
  is 'ÐÞ¸ÄÈË';
comment on column UPRR.U_BASE_USER_CHANGE.CHANGE_TIME
  is 'ÐÞ¸ÄÊ±¼ä';
comment on column UPRR.U_BASE_USER_CHANGE.AUDIT_USER
  is 'ÉóºËÈË';
comment on column UPRR.U_BASE_USER_CHANGE.AUDIT_TIME
  is 'ÉóºËÊ±¼ä';
comment on column UPRR.U_BASE_USER_CHANGE.AUDIT_STATUS
  is 'ÉóºË×´Ì¬1Õý³£2Í¨¹ý3Î´Í¨¹ý4³·»Ø';
comment on column UPRR.U_BASE_USER_CHANGE.ID
  is 'id';
comment on column UPRR.U_BASE_USER_CHANGE.CHANGE_STATUS
  is '1Ôö¼Ó2ÐÞ¸Ä6É¾³ý';
comment on column UPRR.U_BASE_USER_CHANGE.CHANGE_REMARK
  is 'ÐÞ¸Ä±¸×¢';
comment on column UPRR.U_BASE_USER_CHANGE.LAST_LOGIN_DATE
  is '×îºóµÇÂ¼Ê±¼ä';
comment on column UPRR.U_BASE_USER_CHANGE.IS_LIST
  is '°×Ãûµ¥±êÊ¶';
alter table UPRR.U_BASE_USER_CHANGE
  add primary key (ID)
  using index 
  tablespace UPRR
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
prompt Creating table V_USER_LIST
prompt ==========================
prompt
create table UPRR.V_USER_LIST
(
  USER_ID    VARCHAR2(20) not null,
  USER_CNAME VARCHAR2(100),
  INST_ID    VARCHAR2(20),
  EMAIL      VARCHAR2(50)
)
tablespace UPRR
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
alter table UPRR.V_USER_LIST
  add constraint PK_V_USER_LIST primary key (USER_ID)
  using index 
  tablespace UPRR
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
prompt Creating sequence REINFORCE_BUFFERTABLE_SEQ
prompt ===========================================
prompt
create sequence UPRR.REINFORCE_BUFFERTABLE_SEQ
minvalue 1
maxvalue 1000000000000000000000000000
start with 181
increment by 1
cache 20;

prompt
prompt Creating view EXTENT_BASE
prompt =========================
prompt
create or replace view uprr.extent_base as
select a.inst_name,
       t.ddate,
       t.system_id,
       t.item_id,
       t.item_name,
       t.rcurr_cd,
       case when t.item_value is null then t.item_amount else t.item_value end item_value,
       t.report_id,
       t.srcsys_cd
  from (

        select dbank_id,
                ddate,
                system_id,
                item_id,
                item_name,
                item_freq,
                rcurr_cd,
                item_value,
                report_id,
                item_amount,
                srcsys_cd,
                reserved4,
                sys_run_date
          from datacore.extent_base t

        union all

        select dbank_id,
               ddate,
               system_id,
               item_id,
               item_name,
               item_freq,
               rcurr_cd,
               item_value,
               report_id,
               item_amount,
               srcsys_cd,
               reserved4,
               sys_run_date
          from datacore.extent_base_his t) t
  join uprr.u_base_inst a on t.dbank_id = a.inst_id
/

prompt
prompt Creating view V_USER_INST_BY_ROLE_R1
prompt ====================================
prompt
create or replace view uprr.v_user_inst_by_role_r1 as
select distinct
/*»ñÈ¡R1»ú¹¹½ÇÉ« ÓÃ»§¡¢»ú¹¹¡¢ÏµÍ³¶ÔÕÕ±í*/
       u_auth_role_user.user_id,   /*ÓÃ»§ID*/
       u_base_user.inst_id,        /*»ú¹¹ID*/
       u_auth_role.system_id       /*ÏµÍ³ID*/
from u_auth_role_user
inner join u_base_user
      on u_auth_role_user.user_id=u_base_user.user_id
inner join u_auth_role
      on u_auth_role.role_id = u_auth_role_user.role_id

where u_auth_role_user.role_id in (
    select distinct object_id from u_auth_role_resource
    where 1=1
          and RES_ID=49            /*»ú¹¹½ÇÉ«×ÊÔ´ID*/
          and res_detail_value='R1'    /*»ú¹¹½ÇÉ«ÎªR1£¬Ö»ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹µÄÈ¨ÏÞ*/
)
and u_auth_role.enabled='1'
/

prompt
prompt Creating view V_USER_INST_BY_ROLE_R2
prompt ====================================
prompt
create or replace view uprr.v_user_inst_by_role_r2 as
select
       u_auth_role_user.user_id,   /*ÓÃ»§ID*/
       u_base_user.inst_id,        /*»ú¹¹ID*/
       u_auth_role.system_id       /*ÏµÍ³ID*/
from u_auth_role_user
inner join u_base_user
      on u_auth_role_user.user_id=u_base_user.user_id
inner join u_auth_role
      on u_auth_role.role_id = u_auth_role_user.role_id

where u_auth_role_user.role_id in (
    select distinct object_id from u_auth_role_resource
    where 1=1
          and RES_ID=49            /*»ú¹¹½ÇÉ«×ÊÔ´ID*/
          and res_detail_value='R2'    /*»ú¹¹½ÇÉ«ÎªR2£¬ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹¼°ÏÂÒ»¼¶»ú¹¹µÄÈ¨ÏÞ*/
)

and u_auth_role.enabled='1'
/

prompt
prompt Creating view V_USER_INST_BY_ROLE_R3
prompt ====================================
prompt
create or replace view uprr.v_user_inst_by_role_r3 as
select
       u_auth_role_user.user_id,   /*ÓÃ»§ID*/
       u_base_user.inst_id,        /*»ú¹¹ID*/
       u_auth_role.system_id       /*ÏµÍ³ID*/
from u_auth_role_user
inner join u_base_user
      on u_auth_role_user.user_id=u_base_user.user_id
inner join u_auth_role
      on u_auth_role.role_id = u_auth_role_user.role_id

where u_auth_role_user.role_id in (
    select distinct object_id from u_auth_role_resource
    where 1=1
          and RES_ID=49                                /*»ú¹¹½ÇÉ«×ÊÔ´ID*/
          and res_detail_value='R3'                  /*»ú¹¹½ÇÉ«ÎªR3£¬ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹¼°ÏÂ¼¶ËùÓÐ»ú¹¹µÄÈ¨ÏÞ*/
          )

and u_auth_role.enabled='1'
/

prompt
prompt Creating view V_AUTH_BANK_GROUP_CREDIT
prompt ======================================
prompt
create or replace view uprr.v_auth_bank_group_credit as
select
distinct
/*¹¹½¨R1»ú¹¹×é*/
1 as ID,
'R_B_W_15_R1-' || c.inst_id as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_15_R1-' || c.inst_id as GROUP_NAME
from v_user_inst_by_role_r1 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'
union
select
distinct
/*¹¹½¨R2»ú¹¹×é*/
1 as ID,
'R_B_W_15_R2-' || c.inst_id as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_15_R2-' || c.inst_id as GROUP_NAME
from v_user_inst_by_role_r2 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'
union
select
distinct
/*¹¹½¨R3»ú¹¹×é*/
1 as ID,
'R_B_W_15_R3-' || c.inst_id as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_15_R3-' || c.inst_id as GROUP_NAME
from v_user_inst_by_role_r3 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'
union
select
/*¹¹½¨R5»ú¹¹×é*/
1 as ID,
'R_B_W_15_R5-ALL' as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_15_R5-ALL'as GROUP_NAME
from dual
/*ÆäËû×é*/
union

select
     distinct 1 as id,
     'R_B_W_15-'|| res.object_id as group_code,
     '0' as owner_type,
     '' as owner_id,
     obj.object_name  as GROUP_NAME
 from u_auth_role_resource res
 inner join u_auth_object obj on res.object_id = obj.object_id
 inner join u_auth_role rol on rol.role_id = obj.object_id
 inner join u_base_inst d on res.res_detail_value=d.inst_id
 where res_id='35' and (res.SYSTEM_ID in ('00007') )
 and  obj.object_type='ROLE'
 and rol.enabled='1'        /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
 and d.enabled<>'false'
/

prompt
prompt Creating view V_CRMS_SYSTEM_RELA
prompt ================================
prompt
CREATE OR REPLACE VIEW UPRR.V_CRMS_SYSTEM_RELA AS
select r.SYSTEM_ID,c.system_cname,c.crms_subject_id,  r.RES_ID,r.RES_NAME from u_auth_res_map r
left join u_base_config c on r.system_id = c.system_id
where RES_TYPE='PRI' and src_table like 'report_meta%'
and c.crms_subject_id is not NULL
UNION
SELECT ubc.system_id, ubc.system_cname, ubc.crms_subject_id, ubc.crms_subject_id AS res_id, '' AS res_name FROM u_base_config ubc WHERE ubc.system_id='00008'
/
grant select on UPRR.V_CRMS_SYSTEM_RELA to METABASE;


prompt
prompt Creating view V_AUTH_BANK_GROUP_CRMS
prompt ====================================
prompt
create or replace view uprr.v_auth_bank_group_crms as
select
distinct
/*¹¹½¨R1»ú¹¹×é*/
1 as ID,
'R_B_W_0_R1-' || c.inst_id as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_0_R1-' || c.inst_id as GROUP_NAME
from v_user_inst_by_role_r1 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union
select
distinct
/*¹¹½¨R2»ú¹¹×é*/
1 as ID,
'R_B_W_0_R2-' || c.inst_id as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_0_R2-' || c.inst_id as GROUP_NAME
from v_user_inst_by_role_r2 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union
select
distinct
/*¹¹½¨R3»ú¹¹×é*/
1 as ID,
'R_B_W_0_R3-' || c.inst_id as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_0_R3-' || c.inst_id as GROUP_NAME
from v_user_inst_by_role_r3 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union
select
/*¹¹½¨R5»ú¹¹×é*/
1 as ID,
'R_B_W_0_R5-ALL' as GROUP_CODE,
'0' as OWNER_TYPE,
'' as OWNER_ID,
'R_B_W_0_R5-ALL'as GROPU_NAME
from dual

/*ÆäËû×é*/
union

select
     distinct 1 as id,
     'R_B_W_0-'|| res.object_id as group_code,
     '0' as owner_type,
     '' as owner_id,
     obj.object_name  as GROUP_NAME
 from u_auth_role_resource res
 inner join u_auth_object obj on res.object_id = obj.object_id
 inner join u_auth_role rol on rol.role_id = obj.object_id
 inner join u_base_inst d on res.res_detail_value=d.inst_id
 where res_id='35' and (res.SYSTEM_ID in (select system_id from v_crms_system_rela ) )
 and  obj.object_type='ROLE'
 and rol.enabled='1'        /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
 and d.enabled<>'false'
/
grant select on UPRR.V_AUTH_BANK_GROUP_CRMS to METABASE;


prompt
prompt Creating view V_AUTH_BANK_GROUP_MEMBER_CREDI
prompt ============================================
prompt
CREATE OR REPLACE VIEW UPRR.V_AUTH_BANK_GROUP_MEMBER_CREDI AS
select

'' as ID,
'R_B_W_15_R1-' || c.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from  V_USER_INST_BY_ROLE_R1 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'



union


select
distinct
'' as ID,
'R_B_W_15_R2-' || b.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
 from
 V_USER_INST_BY_ROLE_R2 b
inner join u_base_inst c on b.inst_id=c.parent_inst_id
where (SYSTEM_ID in ('00007') )
      and c.enabled<>'false'
union ALL

select
distinct
'' as ID,
'R_B_W_15_R2-' || c.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from  V_USER_INST_BY_ROLE_R2 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'


union


select
distinct
'' as ID,
'R_B_W_15_R5-ALL' GROUP_CODE,
b.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from  u_base_inst b
where b.enabled<>'false'


union


select
distinct
'' as ID,
'R_B_W_15_R3-' || b.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from
 V_USER_INST_BY_ROLE_R3 b
inner join U_BASE_INST c
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=b.INST_ID and c.INST_PATH like INST_PATH||'%'
            
                     )
where (SYSTEM_ID in ('00007') )




union

select distinct '' as id,
         'R_B_W_15-'||rr.object_id as GROUP_CODE,
         rr.res_detail_value as MEMBER_CODE,
         '' AS MEMBER_ORDER
    from u_auth_role_resource rr
    inner join u_auth_object obj on rr.object_id=obj.object_id
    inner join u_auth_role rol on rol.role_id=obj.object_id
    inner join u_base_inst d on rr.res_detail_value=d.inst_id
    where rr.res_id=35 and obj.object_type='ROLE'
    and (rr.SYSTEM_ID in ('00007') )
    and rol.enabled='1'       
    and d.enabled<>'false'
/

prompt
prompt Creating view V_AUTH_BANK_GROUP_MEMBER_CRMS
prompt ===========================================
prompt
CREATE OR REPLACE VIEW UPRR.V_AUTH_BANK_GROUP_MEMBER_CRMS AS
select

'' as ID,
'R_B_W_0_R1-' || c.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from  V_USER_INST_BY_ROLE_R1 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'

union

select
distinct
'' as ID,
'R_B_W_0_R2-' || b.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
 from
 V_USER_INST_BY_ROLE_R2 b
inner join u_base_inst c on b.inst_id=c.parent_inst_id
where (SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and c.enabled<>'false'
union ALL
select
distinct
'' as ID,
'R_B_W_0_R2-' || c.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from  V_USER_INST_BY_ROLE_R2 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union

select
distinct
'' as ID,
'R_B_W_0_R5-ALL' GROUP_CODE,
b.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from  u_base_inst b
where b.enabled<>'false'
union


select
distinct
'' as ID,
'R_B_W_0_R3-' || b.inst_id as GROUP_CODE,
c.inst_id as MEMBER_CODE,
'' as MEMORDER_GROUP
from
 V_USER_INST_BY_ROLE_R3 b
inner join U_BASE_INST c
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=b.INST_ID and c.INST_PATH like INST_PATH||'%'
            
                     )
and (SYSTEM_ID in (select system_id from v_crms_system_rela ) )

union

select distinct '' as id,
         'R_B_W_0-'||rr.object_id as GROUP_CODE,
         rr.res_detail_value as MEMBER_CODE,
         '' AS MEMBER_ORDER
    from u_auth_role_resource rr
    inner join u_auth_object obj on rr.object_id=obj.object_id
    inner join u_auth_role rol on rol.role_id=obj.object_id
    inner join u_base_inst d on rr.res_detail_value=d.inst_id
    where rr.res_id=35 and obj.object_type='ROLE'
    and (rr.SYSTEM_ID in (select system_id from v_crms_system_rela ) )
    and rol.enabled='1'       
    and d.enabled<>'false'
/
grant select on UPRR.V_AUTH_BANK_GROUP_MEMBER_CRMS to METABASE;


prompt
prompt Creating view V_USER_INST_BY_ROLE_R5
prompt ====================================
prompt
create or replace view uprr.v_user_inst_by_role_r5 as
select
       u_auth_role_user.user_id,   /*ÓÃ»§ID*/
       u_base_user.inst_id,        /*»ú¹¹ID*/
       u_auth_role.system_id       /*ÏµÍ³ID*/
from u_auth_role_user
inner join u_base_user
      on u_auth_role_user.user_id=u_base_user.user_id
inner join u_auth_role
      on u_auth_role.role_id = u_auth_role_user.role_id

where u_auth_role_user.role_id in (
    select distinct object_id from u_auth_role_resource
    where 1=1
          and RES_ID=49            /*»ú¹¹½ÇÉ«×ÊÔ´ID*/
          and res_detail_value='R5'                  /*»ú¹¹½ÇÉ«ÎªR5£¬ÓµÓÐËùÓÐ»ú¹¹µÄÈ¨ÏÞ*/
)


and u_auth_role.enabled='1'
/

prompt
prompt Creating view V_AUTH_USER_BANK_RIGHTS_CREDIT
prompt ============================================
prompt
create or replace view uprr.v_auth_user_bank_rights_credit as
select distinct
/*R1×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_15_R1-' || c.inst_id as BANK_GROUP_CODE,
c.user_id as USER_CODE,
'N' as IS_USER_GROUP
from V_USER_INST_BY_ROLE_R1 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'
union all

select distinct
/*R2×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_15_R2-' || c.inst_id as BANK_GROUP_CODE,
c.user_id as USER_CODE,
'N' as IS_USER_GROUP
from V_USER_INST_BY_ROLE_R2 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'
union all

select distinct
/*R3×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_15_R3-' || c.inst_id as BANK_GROUP_CODE,
c.user_id as USER_CODE,
'N' as IS_USER_GROUP
from V_USER_INST_BY_ROLE_R3 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'
union all

select distinct
/*R5×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_15_R5-ALL',
c.user_id as USER_CODE,
'N' as IS_USER_GROUP
from V_USER_INST_BY_ROLE_R5 c
inner join u_base_inst d on c.inst_id=d.inst_id
where (SYSTEM_ID in ('00007') )
      and d.enabled<>'false'
union
/*ÆäËû×éÈ¨ÏÞ*/
select  distinct '' as id,
     'R_B_W_15-'
     ||rr.object_id as bank_group_code,
     usr.user_id as user_code,
      'N' as is_user_group
from u_auth_role_resource rr
inner join u_auth_role_user usr on rr.object_id = usr.role_id
inner join u_auth_object obj on rr.object_id=obj.object_id
inner join u_auth_role rol on rol.role_id=obj.object_id
inner join u_base_inst d on rr.res_detail_value=d.inst_id
where rr.res_id=35 and obj.object_type='ROLE'
and (rr.SYSTEM_ID in ('00007') )
and rol.enabled='1'       /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
and d.enabled<>'false'
/

prompt
prompt Creating view V_AUTH_USER_BANK_RIGHTS_CRMS
prompt ==========================================
prompt
create or replace view uprr.v_auth_user_bank_rights_crms as
select distinct
/*R1×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_0_R1-' || c.inst_id as BANK_GROUP_CODE,
c.user_id as USER_CODE,
'N' as IS_USER_GROUP,
v.SYSTEM_ID AS system_id
from V_USER_INST_BY_ROLE_R1 c
inner join u_base_inst d on c.inst_id=d.inst_id
LEFT JOIN v_crms_system_rela v ON c.system_id=v.SYSTEM_ID
where (c.SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union all
select distinct
/*R2×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_0_R2-' || c.inst_id as BANK_GROUP_CODE,
c.user_id as USER_CODE,
'N' as IS_USER_GROUP,
v.SYSTEM_ID AS system_id
from V_USER_INST_BY_ROLE_R2 c
inner join u_base_inst d on c.inst_id=d.inst_id
LEFT JOIN v_crms_system_rela v ON c.system_id=v.SYSTEM_ID
where (c.SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union all
select distinct
/*R3×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_0_R3-' || c.inst_id as BANK_GROUP_CODE,
c.user_id as USER_CODE,
'N' as IS_USER_GROUP,
v.SYSTEM_ID AS system_id
from V_USER_INST_BY_ROLE_R3 c
inner join u_base_inst d on c.inst_id=d.inst_id
LEFT JOIN v_crms_system_rela v ON c.system_id=v.SYSTEM_ID
where (c.SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union all
select distinct
/*R5×éÈ¨ÏÞ*/
'' as ID,
'R_B_W_0_R5-ALL',
c.user_id as USER_CODE,
'N' as IS_USER_GROUP,
v.SYSTEM_ID AS system_id
from V_USER_INST_BY_ROLE_R5 c
inner join u_base_inst d on c.inst_id=d.inst_id
LEFT JOIN v_crms_system_rela v ON c.system_id=v.SYSTEM_ID
where (c.SYSTEM_ID in (select system_id from v_crms_system_rela ) )
      and d.enabled<>'false'
union
/*ÆäËû×éÈ¨ÏÞ*/
select  distinct '' as id,
     'R_B_W_0-'
     ||rr.object_id as bank_group_code,
     usr.user_id as user_code,
      'N' as is_user_group,
v.SYSTEM_ID AS system_id
from u_auth_role_resource rr
inner join u_auth_role_user usr on rr.object_id = usr.role_id
inner join u_auth_object obj on rr.object_id=obj.object_id
inner join u_auth_role rol on rol.role_id=obj.object_id
inner join u_base_inst d on rr.res_detail_value=d.inst_id
LEFT JOIN v_crms_system_rela v ON rr.system_id=v.SYSTEM_ID
where rr.res_id=35 and obj.object_type='ROLE'
and (rr.SYSTEM_ID in (select system_id from v_crms_system_rela ) )
and rol.enabled='1'       /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
and d.enabled<>'false'
/
grant select on UPRR.V_AUTH_USER_BANK_RIGHTS_CRMS to METABASE;


prompt
prompt Creating view V_BASE_USER_EMAIL
prompt ===============================
prompt
create or replace view uprr.v_base_user_email as
select b.user_id as USER_ID,b.user_ename as

USER_ENAME, a.system_id as SYSTEM_ID,b.email as EMAIL_ADDR
				   from   u_auth_system_admin a, u_base_user b
				   where  a.user_id = b.user_id
/

prompt
prompt Creating view V_CREDIT_SYSTEM_RELA
prompt ==================================
prompt
create or replace view uprr.v_credit_system_rela as
select r.SYSTEM_ID,c.system_cname,c.crms_subject_id,  r.RES_ID,r.RES_NAME from u_auth_res_map r
left join u_base_config c on r.system_id = c.system_id
where RES_TYPE='PRI' and c.system_id='00007' and res_id=98
/

prompt
prompt Creating view V_HOLIDAY
prompt =======================
prompt
CREATE OR REPLACE VIEW UPRR.V_HOLIDAY AS
SELECT
    h.holiday_type as holiday_type,
    t.holiday_name as holiday_name,
    t.enable as enable,
    t.remark as remark ,
    h.holiday_value as holiday_value,
    h.description as description
FROM
    u_base_holiday h
JOIN
    u_base_holiday_type t
    ON
    h.holiday_type= t.holiday_type
/
grant select on UPRR.V_HOLIDAY to CFA2;


prompt
prompt Creating view V_INST_AUTHOR_FOR_ABOQ
prompt ====================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_ABOQ AS
select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R1 c
inner join u_base_inst d on c.inst_id=d.inst_id
where system_id='00001'
and d.enabled<>'false'



union


select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R2 b
inner join u_base_inst c on b.inst_id=c.parent_inst_id
 where system_id='00001' and c.enabled<>'false'
union

select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R2 c
inner join u_base_inst d on c.inst_id=d.inst_id
 where system_id='00001'  and d.enabled<>'false'


union


select  b.user_id,c.inst_id
from  V_USER_INST_BY_ROLE_R5 b
,u_base_inst c
 where system_id='00001'
 and c.enabled<>'false'


union



select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R3 b
inner join U_BASE_INST c
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=b.INST_ID and c.INST_PATH like INST_PATH||'%'
            
                     )
and system_id='00001'





union

select
       a.user_id,
       b.RES_DETAIL_VALUE as inst_id
from u_auth_role_user a
inner join u_auth_role_resource b
      on a.role_id = b.OBJECT_ID
inner join u_auth_role c on a.role_id=c.role_id
inner join u_base_inst d on b.RES_DETAIL_VALUE=d.inst_id
where
      res_id=35 and b.system_id='00001'
      and c.enabled='1'              
      and d.enabled<>'false'
/

prompt
prompt Creating view V_INST_AUTHOR_FOR_ACC
prompt ===================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_ACC AS
select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R1 c
inner join u_base_inst d on c.inst_id=d.inst_id
where system_id='00102'
and d.enabled<>'false'
/*R1 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹µÄÈ¨ÏÞ*/
/***********************************************************************/
union
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ(ÊÊÓÃÓÚ´óÐÐ»ú¹¹·Ö¼¶¹ÜÀí*/
select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R2 b
inner join u_base_inst c on b.inst_id=c.parent_inst_id
 where system_id='00102' and c.enabled<>'false'
union
select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R2 c
inner join u_base_inst d on c.inst_id=d.inst_id
 where system_id='00102'  and d.enabled<>'false'
/***********************************************************************/
union
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
select  b.user_id,c.inst_id
from  V_USER_INST_BY_ROLE_R5 b
,u_base_inst c
 where system_id='00102'
 and c.enabled<>'false'
/***********************************************************************/
union
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ */
select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R3 b
inner join U_BASE_INST c
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=b.INST_ID and c.INST_PATH like INST_PATH||'%'
            /*Ö»È¡ÏÂÊôµÚN¼¶È¨ÏÞ )*/
            --and c.inst_level=inst_level
         )
and system_id='00102'
/***********************************************************************/
/*============°´½ÇÉ«°üº¬»ú¹¹»ñÈ¡È¨ÏÞ=============================================*/
union
/*ÆäËû½ÇÉ«È¨ÏÞ */
select
       a.user_id,
       b.RES_DETAIL_VALUE as inst_id
from u_auth_role_user a
inner join u_auth_role_resource b
      on a.role_id = b.OBJECT_ID
inner join u_auth_role c on a.role_id=c.role_id
inner join u_base_inst d on b.RES_DETAIL_VALUE=d.inst_id
where
      res_id=35 and b.system_id='00102'
      and c.enabled='1'              /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
      and d.enabled<>'false'
/
grant select on UPRR.V_INST_AUTHOR_FOR_ACC to ACC;
grant select on UPRR.V_INST_AUTHOR_FOR_ACC to DATACORE;
grant select on UPRR.V_INST_AUTHOR_FOR_ACC to DATACOREFF;
grant select on UPRR.V_INST_AUTHOR_FOR_ACC to DATACOREOPR;


prompt
prompt Creating view V_INST_AUTHOR_FOR_BOP
prompt ===================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_BOP AS
select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R1 c
inner join U_BASE_INST d on c.inst_id=d.inst_id
    where system_id='00002'
    and d.enabled<>'false'



union


select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R2 b
inner join u_base_inst c on b.inst_id=c.parent_inst_id
 where system_id='00002'
 and c.enabled<>'false'
union

select "USER_ID",b.inst_id from  V_USER_INST_BY_ROLE_R2 b
inner join U_BASE_INST d on b.inst_id=d.inst_id
 where system_id='00002'
 and d.enabled<>'false'


union


select  b.user_id,c.inst_id
from  V_USER_INST_BY_ROLE_R5 b
,u_base_inst c
 where system_id='00002'
 and c.enabled<>'false'


union


select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R3 b
inner join U_BASE_INST c
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=b.INST_ID and c.INST_PATH like INST_PATH||'%'
            
                     )
and system_id='00002'






union

select
       a.user_id,
       b.RES_DETAIL_VALUE as inst_id
from u_auth_role_user a
inner join u_auth_role_resource b
      on a.role_id = b.OBJECT_ID
inner join u_auth_role c on a.role_id=c.role_id
inner join u_base_inst d on b.res_detail_value=d.inst_id
where
      res_id=35 and b.system_id='00002'
      and c.enabled='1'              
      and d.enabled<>'false'
/

prompt
prompt Creating view V_INST_AUTHOR_FOR_CFA
prompt ===================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_CFA AS
select "USER_ID", c.inst_id
  from V_USER_INST_BY_ROLE_R1 c
 inner join U_BASE_INST d on c.inst_id = d.inst_id
 where system_id = '00101'
   and d.enabled <> 'false'
/***********************************************************************/
union
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ(ÊÊÓÃÓÚ´óÐÐ»ú¹¹·Ö¼¶¹ÜÀí*/
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R2 b
 inner join u_base_inst c on b.inst_id = c.parent_inst_id
 where system_id = '00101'
   and c.enabled <> 'false'
union
select "USER_ID", b.inst_id
  from V_USER_INST_BY_ROLE_R2 b
 inner join U_BASE_INST d on b.inst_id = d.inst_id
 where system_id = '00101'
   and d.enabled <> 'false'
/***********************************************************************/
union
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R5 b, u_base_inst c
 where system_id = '00101'
   and c.enabled <> 'false'
/***********************************************************************/
union
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ */
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R3 b
 inner join U_BASE_INST c on exists
 (SELECT 1
                                FROM U_BASE_INST
                               WHERE enabled = 'true'
                                 and INST_ID = b.INST_ID
                                 and c.INST_PATH like INST_PATH || '%')
                         and system_id = '00101'
/***********************************************************************/
/***°´½ÇÉ«°üº¬»ú¹¹»ñÈ¡È¨ÏÞ**********************************************/
union
/*ÆäËû½ÇÉ«È¨ÏÞ */
select a.user_id, b.RES_DETAIL_VALUE as inst_id
  from u_auth_role_user a
 inner join u_auth_role_resource b on a.role_id = b.OBJECT_ID
 inner join u_auth_role c on a.role_id = c.role_id
 inner join u_base_inst d on b.res_detail_value = d.inst_id
 where res_id = 35
   and b.system_id = '00101'
   and c.enabled = '1' /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
   and d.enabled <> 'false'
/
grant select on UPRR.V_INST_AUTHOR_FOR_CFA to CFA;


prompt
prompt Creating view V_INST_AUTHOR_FOR_CFA2
prompt ====================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_CFA2 AS
select "USER_ID", c.inst_id
  from V_USER_INST_BY_ROLE_R1 c
 inner join U_BASE_INST d on c.inst_id = d.inst_id
 where system_id in ('00117','00115')
   and d.enabled <> 'false'
/***********************************************************************/
union
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ(ÊÊÓÃÓÚ´óÐÐ»ú¹¹·Ö¼¶¹ÜÀí*/
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R2 b
 inner join u_base_inst c on b.inst_id = c.parent_inst_id
 where system_id in ('00117','00115')
   and c.enabled <> 'false'
union
select "USER_ID", b.inst_id
  from V_USER_INST_BY_ROLE_R2 b
 inner join U_BASE_INST d on b.inst_id = d.inst_id
 where system_id in ('00117','00115')
   and d.enabled <> 'false'
/***********************************************************************/
union
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R5 b, u_base_inst c
 where system_id in ('00117','00115')
   and c.enabled <> 'false'
/***********************************************************************/
union
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ */
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R3 b
 inner join U_BASE_INST c on exists
 (SELECT 1
                                FROM U_BASE_INST
                               WHERE enabled = 'true'
                                 and INST_ID = b.INST_ID
                                 and c.INST_PATH like INST_PATH || '%')
                         and system_id in ('00117','00115')
/***********************************************************************/
/***°´½ÇÉ«°üº¬»ú¹¹»ñÈ¡È¨ÏÞ**********************************************/
union
/*ÆäËû½ÇÉ«È¨ÏÞ */
select a.user_id, b.RES_DETAIL_VALUE as inst_id
  from u_auth_role_user a
 inner join u_auth_role_resource b on a.role_id = b.OBJECT_ID
 inner join u_auth_role c on a.role_id = c.role_id
 inner join u_base_inst d on b.res_detail_value = d.inst_id
 where res_id = 35
   and b.system_id in ('00117','00115')
   and c.enabled = '1' /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
   and d.enabled <> 'false'
/
grant select on UPRR.V_INST_AUTHOR_FOR_CFA2 to CFA2;


prompt
prompt Creating view V_INST_AUTHOR_FOR_EXD
prompt ===================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_EXD AS
select "USER_ID", c.inst_id
  from V_USER_INST_BY_ROLE_R1 c
 inner join U_BASE_INST d on c.inst_id = d.inst_id
 where system_id = '00115'
   and d.enabled <> 'false'
/***********************************************************************/
union
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ(ÊÊÓÃÓÚ´óÐÐ»ú¹¹·Ö¼¶¹ÜÀí*/
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R2 b
 inner join u_base_inst c on b.inst_id = c.parent_inst_id
 where system_id = '00115'
   and c.enabled <> 'false'
union
select "USER_ID", b.inst_id
  from V_USER_INST_BY_ROLE_R2 b
 inner join U_BASE_INST d on b.inst_id = d.inst_id
 where system_id = '00115'
   and d.enabled <> 'false'
/***********************************************************************/
union
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R5 b, u_base_inst c
 where system_id = '00115'
   and c.enabled <> 'false'
/***********************************************************************/
union
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ */
select b.user_id, c.inst_id
  from V_USER_INST_BY_ROLE_R3 b
 inner join U_BASE_INST c on exists
 (SELECT 1
                                FROM U_BASE_INST
                               WHERE enabled = 'true'
                                 and INST_ID = b.INST_ID
                                 and c.INST_PATH like INST_PATH || '%')
                         and system_id = '00115'
/***********************************************************************/
/***°´½ÇÉ«°üº¬»ú¹¹»ñÈ¡È¨ÏÞ**********************************************/
union
/*ÆäËû½ÇÉ«È¨ÏÞ */
select a.user_id, b.RES_DETAIL_VALUE as inst_id
  from u_auth_role_user a
 inner join u_auth_role_resource b on a.role_id = b.OBJECT_ID
 inner join u_auth_role c on a.role_id = c.role_id
 inner join u_base_inst d on b.res_detail_value = d.inst_id
 where res_id = 35
   and b.system_id = '00115'
   and c.enabled = '1' /*ÅÐ¶Ï½ÇÉ«ÊÇ·ñÆôÓÃ*/
   and d.enabled <> 'false'
/
grant select on UPRR.V_INST_AUTHOR_FOR_EXD to CFA2;


prompt
prompt Creating view V_INST_AUTHOR_FOR_PFS
prompt ===================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_PFS AS
select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R1 c
inner join U_BASE_INST d on c.inst_id=d.inst_id
    where system_id='00999'
    and d.enabled<>'false'



union


select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R2 b
inner join u_base_inst c on b.inst_id=c.parent_inst_id
 where system_id='00999'
 and c.enabled<>'false'
union

select "USER_ID",b.inst_id from  V_USER_INST_BY_ROLE_R2 b
inner join U_BASE_INST d on b.inst_id=d.inst_id
 where system_id='00999'
 and d.enabled<>'false'


union


select  b.user_id,c.inst_id
from  V_USER_INST_BY_ROLE_R5 b
,u_base_inst c
 where system_id='00999'
 and c.enabled<>'false'


union


select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R3 b
inner join U_BASE_INST c
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=b.INST_ID and c.INST_PATH like INST_PATH||'%'
            
                     )
and system_id='00999'






union

select
       a.user_id,
       b.RES_DETAIL_VALUE as inst_id
from u_auth_role_user a
inner join u_auth_role_resource b
      on a.role_id = b.OBJECT_ID
inner join u_auth_role c on a.role_id=c.role_id
inner join u_base_inst d on b.res_detail_value=d.inst_id
where
      res_id=35 and b.system_id='00999'
      and c.enabled='1'              
      and d.enabled<>'false'
/

prompt
prompt Creating view V_INST_AUTHOR_FOR_RCPMIS
prompt ======================================
prompt
CREATE OR REPLACE VIEW UPRR.V_INST_AUTHOR_FOR_RCPMIS AS
select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R1 c
inner join U_BASE_INST d on c.inst_id=d.inst_id
where system_id='00009' and d.enabled<>'false'



union


select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R2 b
inner join u_base_inst c on b.inst_id=c.parent_inst_id
 where system_id='00009' and c.enabled<>'false'
union

select "USER_ID",c.inst_id from  V_USER_INST_BY_ROLE_R2 c
inner join U_BASE_INST d on c.inst_id=d.inst_id
 where system_id='00009'
       and d.enabled<>'false'


union


select  b.user_id,c.inst_id
from  V_USER_INST_BY_ROLE_R5 b
,u_base_inst c
 where system_id='00009'
       and c.enabled<>'false'


union


select b.user_id,c.inst_id from
 V_USER_INST_BY_ROLE_R3 b
inner join U_BASE_INST c
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=b.INST_ID and c.INST_PATH like INST_PATH||'%'
            
                     )
and system_id='00009'





union

select
       a.user_id,
       b.RES_DETAIL_VALUE as inst_id
from u_auth_role_user a
inner join u_auth_role_resource b
      on a.role_id = b.OBJECT_ID
inner join u_auth_role c on a.role_id=c.role_id
inner join U_BASE_INST d on b.RES_DETAIL_VALUE=d.inst_id
where
      res_id=35 and b.system_id='00009'
      and c.enabled='1'              
      and d.enabled<>'false'
/

prompt
prompt Creating view V_USER_AUTH_BANK_RELATION
prompt =======================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION AS
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID NOT IN (SELECT SYSTEM_ID FROM V_CRMS_SYSTEM_RELA)

UNION

SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID NOT IN (SELECT SYSTEM_ID FROM V_CRMS_SYSTEM_RELA)
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID NOT IN (SELECT SYSTEM_ID FROM V_CRMS_SYSTEM_RELA)) E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'

UNION

SELECT  E.USER_ID,F.INST_ID
FROM U_BASE_INST F join (SELECT  distinct B.USER_ID, C.INST_ID
                              FROM U_AUTH_ROLE_RESOURCE A
                                   JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                                   JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                              WHERE A.RES_DETAIL_VALUE = 'R3'
                                   AND A.SYSTEM_ID NOT IN (SELECT SYSTEM_ID FROM V_CRMS_SYSTEM_RELA)) E
on  exists
         (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=E.INST_ID and F.INST_PATH like INST_PATH||'%'
            
                     )

UNION

SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID NOT IN (SELECT SYSTEM_ID FROM V_CRMS_SYSTEM_RELA)) E
 WHERE F.ENABLED = 'true'
UNION

SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND A.SYSTEM_ID='00070'
/
grant select on UPRR.V_USER_AUTH_BANK_RELATION to DATACORE;
grant select on UPRR.V_USER_AUTH_BANK_RELATION to DATACOREFF;
grant select on UPRR.V_USER_AUTH_BANK_RELATION to DATACOREOPR;


prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_AMLM
prompt ============================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_AMLM AS
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID ='00070'
/*R1 END*/
UNION
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ*/
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID ='00070'
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID ='00070') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
/*R2 END*/
UNION
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ*/
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F join (SELECT DISTINCT B.USER_ID, C.INST_ID
                                FROM U_AUTH_ROLE_RESOURCE A
                                 JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                                 JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                                WHERE A.RES_DETAIL_VALUE = 'R3'
                                AND A.SYSTEM_ID ='00070') E
                          on  exists
                               (SELECT   1 FROM  U_BASE_INST WHERE enabled='true' and INST_ID=E.INST_ID and F.INST_PATH like INST_PATH||'%'
                                  /*Ö»È¡ÏÂÊôµÚN¼¶È¨ÏÞ )*/
                                  --and F.inst_level=inst_level
                               )
/*R3 END*/
UNION
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID ='00070') E
 WHERE F.ENABLED = 'true'
UNION
/*¸Ã½ÇÉ«ÅäÖÃµÄ»ú¹¹È¨ÏÞ */
SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND  A.SYSTEM_ID ='00070'
/

prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_CELL
prompt ============================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_CELL AS
SELECT DISTINCT B.USER_ID, C.INST_ID,A.SYSTEM_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID in (select SYSTEM_ID from V_CRMS_SYSTEM_RELA
                       UNION
                       SELECT '00008' FROM DUAL)
/*R1 END*/
UNION
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ*/
SELECT DISTINCT B.USER_ID, C.INST_ID,A.SYSTEM_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID in (select SYSTEM_ID from V_CRMS_SYSTEM_RELA
                       UNION
                       SELECT '00008' FROM DUAL)
UNION
SELECT E.USER_ID, F.INST_ID,E.SYSTEM_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID,A.SYSTEM_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID in (select SYSTEM_ID from V_CRMS_SYSTEM_RELA
                               UNION
                               SELECT '00008' FROM DUAL)) E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
/*R2 END*/
UNION
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ*/
SELECT E.USER_ID, F.INST_ID,E.SYSTEM_ID
  FROM U_BASE_INST F join (SELECT DISTINCT B.USER_ID, C.INST_ID,A.SYSTEM_ID
                                FROM U_AUTH_ROLE_RESOURCE A
                                 JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                                 JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                                WHERE A.RES_DETAIL_VALUE = 'R3'
                                AND A.SYSTEM_ID in (select SYSTEM_ID from V_CRMS_SYSTEM_RELA
                                                    UNION
                                                    SELECT '00008' FROM DUAL)) E
                          on  exists
                               (SELECT   1 FROM  U_BASE_INST WHERE enabled='true' and INST_ID=E.INST_ID and F.INST_PATH like INST_PATH||'%'
                                  /*Ö»È¡ÏÂÊôµÚN¼¶È¨ÏÞ )*/
                                  --and F.inst_level=inst_level
                               )
/*R3 END*/
UNION
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
SELECT E.USER_ID, F.INST_ID,E.SYSTEM_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID,A.SYSTEM_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID in (select SYSTEM_ID from V_CRMS_SYSTEM_RELA
                               UNION
                               SELECT '00008' FROM DUAL)) E
 WHERE F.ENABLED = 'true'
UNION
/*¸Ã½ÇÉ«ÅäÖÃµÄ»ú¹¹È¨ÏÞ */
SELECT B.USER_ID, A.RES_DETAIL_VALUE,A.SYSTEM_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = '35'
   AND D.ENABLED = 'true'
   AND  A.SYSTEM_ID in (select SYSTEM_ID from V_CRMS_SYSTEM_RELA
                               UNION
                               SELECT '00008' FROM DUAL)
/
grant select on UPRR.V_USER_AUTH_BANK_RELATION_CELL to METABASE;


prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_FREQ
prompt ============================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_FREQ AS
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID ='00016'
/*R1 END*/
UNION
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ*/
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID ='00016'
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID ='00016') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
/*R2 END*/
UNION
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ (Ä¬ÈÏÏÈÖ»È¡µ½µÚËÄ²ã)*/
--Ò»²ã
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R3'
   AND A.SYSTEM_ID ='00016'
UNION
--¶þ²ã
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R3'
           AND A.SYSTEM_ID ='00016') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
UNION
--Èý²ã
SELECT G.USER_ID, H.INST_ID
  FROM U_BASE_INST H
  JOIN (SELECT E.USER_ID, F.INST_ID
          FROM U_BASE_INST F
          JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
                 FROM U_AUTH_ROLE_RESOURCE A
                 JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                 JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                WHERE A.RES_DETAIL_VALUE = 'R3'
                  AND A.SYSTEM_ID ='00016') E ON F.PARENT_INST_ID =
                                                                       E.INST_ID) G ON H.PARENT_INST_ID =
                                                                                       G.INST_ID
 WHERE H.ENABLED = 'true'
UNION
--ËÄ²ã
SELECT I.USER_ID, J.INST_ID
  FROM U_BASE_INST J
  JOIN (SELECT G.USER_ID, H.INST_ID
          FROM U_BASE_INST H
          JOIN (SELECT E.USER_ID, F.INST_ID
                 FROM U_BASE_INST F
                 JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
                        FROM U_AUTH_ROLE_RESOURCE A
                        JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                        JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                       WHERE A.RES_DETAIL_VALUE = 'R3'
                         AND A.SYSTEM_ID ='00016') E ON F.PARENT_INST_ID =
                                                                              E.INST_ID) G ON H.PARENT_INST_ID =
                                                                                              G.INST_ID) I ON J.PARENT_INST_ID =
                                                                                                              I.INST_ID
 WHERE J.ENABLED = 'true'
/*R3 END*/
UNION
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID ='00016') E
 WHERE F.ENABLED = 'true'
UNION
/*¸Ã½ÇÉ«ÅäÖÃµÄ»ú¹¹È¨ÏÞ */
SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND  A.SYSTEM_ID ='00016'
/

prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_FSD
prompt ===========================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_FSD AS
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID ='00090'
/*R1 END*/
UNION
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ*/
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID ='00090'
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID ='00090') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
/*R2 END*/
UNION
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ (Ä¬ÈÏÏÈÖ»È¡µ½µÚËÄ²ã)*/
--Ò»²ã
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R3'
   AND A.SYSTEM_ID ='00090'
UNION
--¶þ²ã
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R3'
           AND A.SYSTEM_ID ='00090') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
UNION
--Èý²ã
SELECT G.USER_ID, H.INST_ID
  FROM U_BASE_INST H
  JOIN (SELECT E.USER_ID, F.INST_ID
          FROM U_BASE_INST F
          JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
                 FROM U_AUTH_ROLE_RESOURCE A
                 JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                 JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                WHERE A.RES_DETAIL_VALUE = 'R3'
                  AND A.SYSTEM_ID ='00090') E ON F.PARENT_INST_ID =
                                                                       E.INST_ID) G ON H.PARENT_INST_ID =
                                                                                       G.INST_ID
 WHERE H.ENABLED = 'true'
UNION
--ËÄ²ã
SELECT I.USER_ID, J.INST_ID
  FROM U_BASE_INST J
  JOIN (SELECT G.USER_ID, H.INST_ID
          FROM U_BASE_INST H
          JOIN (SELECT E.USER_ID, F.INST_ID
                 FROM U_BASE_INST F
                 JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
                        FROM U_AUTH_ROLE_RESOURCE A
                        JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                        JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                       WHERE A.RES_DETAIL_VALUE = 'R3'
                         AND A.SYSTEM_ID ='00090') E ON F.PARENT_INST_ID =
                                                                              E.INST_ID) G ON H.PARENT_INST_ID =
                                                                                              G.INST_ID) I ON J.PARENT_INST_ID =
                                                                                                              I.INST_ID
 WHERE J.ENABLED = 'true'
/*R3 END*/
UNION
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID ='00090') E
 WHERE F.ENABLED = 'true'
UNION
/*¸Ã½ÇÉ«ÅäÖÃµÄ»ú¹¹È¨ÏÞ */
SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND  A.SYSTEM_ID ='00090'
/

prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_FSD1
prompt ============================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_FSD1 AS
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F inner join (SELECT DISTINCT B.USER_ID
                                FROM U_AUTH_ROLE_RESOURCE A
                                 INNER JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                                 INNER JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                                 INNER JOIN U_BASE_INST I ON I.INST_ID=C.INST_ID
                                WHERE A.RES_DETAIL_VALUE = 'R3'
                                AND A.SYSTEM_ID ='00100') E
                          on F.ENABLED='true'
                                  /*Ö»È¡ÏÂÊôµÚN¼¶È¨ÏÞ )*/
                                  --and F.inst_level=inst_level

/*R3 END*/
UNION
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID ='00100') E
 WHERE F.ENABLED = 'true'
UNION
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID ='00100'
/*R1 END*/
UNION
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ*/
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID ='00100'
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID ='00100') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
/*R2 END*/
UNION

/*¸Ã½ÇÉ«ÅäÖÃµÄ»ú¹¹È¨ÏÞ */
SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND A.SYSTEM_ID ='00100'
/
grant select on UPRR.V_USER_AUTH_BANK_RELATION_FSD1 to FSD1;


prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_MDR
prompt ===========================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_MDR AS
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID ='00095'
/*R1 END*/
UNION
/*R2 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍÏÂÒ»¼¶±ð»ú¹¹µÄÈ¨ÏÞ*/
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID ='00095'
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID ='00095') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
/*R2 END*/
UNION
/*R3 ¸Ã½ÇÉ«ÓµÓÐ×Ô¼ºËùÔÚ»ú¹¹ºÍËùÓÐÏÂ¼¶»ú¹¹µÄÈ¨ÏÞ (Ä¬ÈÏÏÈÖ»È¡µ½µÚËÄ²ã)*/
--Ò»²ã
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R3'
   AND A.SYSTEM_ID ='00095'
UNION
--¶þ²ã
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R3'
           AND A.SYSTEM_ID ='00095') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'
UNION
--Èý²ã
SELECT G.USER_ID, H.INST_ID
  FROM U_BASE_INST H
  JOIN (SELECT E.USER_ID, F.INST_ID
          FROM U_BASE_INST F
          JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
                 FROM U_AUTH_ROLE_RESOURCE A
                 JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                 JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                WHERE A.RES_DETAIL_VALUE = 'R3'
                  AND A.SYSTEM_ID ='00095') E ON F.PARENT_INST_ID =
                                                                       E.INST_ID) G ON H.PARENT_INST_ID =
                                                                                       G.INST_ID
 WHERE H.ENABLED = 'true'
UNION
--ËÄ²ã
SELECT I.USER_ID, J.INST_ID
  FROM U_BASE_INST J
  JOIN (SELECT G.USER_ID, H.INST_ID
          FROM U_BASE_INST H
          JOIN (SELECT E.USER_ID, F.INST_ID
                 FROM U_BASE_INST F
                 JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
                        FROM U_AUTH_ROLE_RESOURCE A
                        JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                        JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                       WHERE A.RES_DETAIL_VALUE = 'R3'
                         AND A.SYSTEM_ID ='00095') E ON F.PARENT_INST_ID =
                                                                              E.INST_ID) G ON H.PARENT_INST_ID =
                                                                                              G.INST_ID) I ON J.PARENT_INST_ID =
                                                                                                              I.INST_ID
 WHERE J.ENABLED = 'true'
/*R3 END*/
UNION
/*R5 ¸Ã½ÇÉ«ÓµÓÐÏµÍ³ËùÓÐ»ú¹¹µÄÈ¨ÏÞ */
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID ='00095') E
 WHERE F.ENABLED = 'true'
UNION
/*¸Ã½ÇÉ«ÅäÖÃµÄ»ú¹¹È¨ÏÞ */
SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND  A.SYSTEM_ID ='00095'
/

prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_RCP
prompt ===========================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_RCP AS
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID = '00009'

UNION

SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID = '00009'
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID = '00009') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'

UNION


SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F join (SELECT DISTINCT B.USER_ID, C.INST_ID
                                FROM U_AUTH_ROLE_RESOURCE A
                                     JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                                     JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                                WHERE A.RES_DETAIL_VALUE = 'R3'
                                      AND A.SYSTEM_ID = '00009') E
                          on  exists
                                   (SELECT  1 FROM U_BASE_INST WHERE enabled='true' and INST_ID=E.INST_ID and F.INST_PATH like INST_PATH||'%'
                                      
                                                                         )


UNION

SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID = '00009') E
 WHERE F.ENABLED = 'true'
UNION

SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND A.SYSTEM_ID='00009'
/

prompt
prompt Creating view V_USER_AUTH_BANK_RELATION_RISK
prompt ============================================
prompt
CREATE OR REPLACE VIEW UPRR.V_USER_AUTH_BANK_RELATION_RISK AS
SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R1'
   AND A.SYSTEM_ID ='00080'

UNION

SELECT DISTINCT B.USER_ID, C.INST_ID
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
 WHERE A.RES_DETAIL_VALUE = 'R2'
   AND A.SYSTEM_ID ='00080'
UNION
SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F
  JOIN (SELECT DISTINCT B.USER_ID, C.INST_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R2'
           AND A.SYSTEM_ID ='00080') E ON F.PARENT_INST_ID =
                                                                                   E.INST_ID
 WHERE F.ENABLED = 'true'

UNION

SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F join (SELECT DISTINCT B.USER_ID, C.INST_ID
                                FROM U_AUTH_ROLE_RESOURCE A
                                 JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
                                 JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
                                WHERE A.RES_DETAIL_VALUE = 'R3'
                                AND A.SYSTEM_ID ='00080') E
                          on  exists
                               (SELECT   1 FROM  U_BASE_INST WHERE enabled='true' and INST_ID=E.INST_ID and F.INST_PATH like INST_PATH||'%'
                                  
                                                                 )

UNION

SELECT E.USER_ID, F.INST_ID
  FROM U_BASE_INST F,
       (SELECT DISTINCT B.USER_ID
          FROM U_AUTH_ROLE_RESOURCE A
          JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
          JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
         WHERE A.RES_DETAIL_VALUE = 'R5'
           AND A.SYSTEM_ID ='00080') E
 WHERE F.ENABLED = 'true'
UNION

SELECT B.USER_ID, A.RES_DETAIL_VALUE
  FROM U_AUTH_ROLE_RESOURCE A
  JOIN U_AUTH_ROLE_USER B ON A.OBJECT_ID = B.ROLE_ID
  JOIN U_BASE_USER C ON B.USER_ID = C.USER_ID
  JOIN U_BASE_INST D ON A.RES_DETAIL_VALUE = D.INST_ID
 WHERE A.RES_ID = 35
   AND D.ENABLED = 'true'
   AND  A.SYSTEM_ID ='00080'
/

prompt
prompt Creating view V_USER_LIST_CAS
prompt =============================
prompt
create or replace view uprr.v_user_list_cas as
select v.user_id,v.user_cname,v.inst_id,v.email,'yes' is_exists_uprr from v_user_list v
where   exists (
 select 1 from u_base_user u  where v.user_id = u.user_id
)
union all
select v.user_id,v.user_cname,v.inst_id,v.email,'no' is_exists_uprr from v_user_list v
where not  exists (
 select 1 from u_base_user u  where v.user_id = u.user_id
)
/

prompt
prompt Creating view V_USER_POSTION_AMLM
prompt =================================
prompt
create or replace view uprr.v_user_postion_amlm as
select ur.user_id,t.res_detail_value   from u_auth_role_user ur

join u_auth_role_resource t on ur.ROLE_ID=t.object_id  

where t.res_id='70' and t.system_id='00070'
/

prompt
prompt Creating view V_USER_POSTION_RISK
prompt =================================
prompt
create or replace view uprr.v_user_postion_risk as
select ur.user_id,t.res_detail_value   from u_auth_role_user ur

join u_auth_role_resource t on ur.ROLE_ID=t.object_id

where t.res_id='71' and t.system_id='00080'
/

prompt
prompt Creating view V_USER_ROLE_FOR_AML
prompt =================================
prompt
create or replace view uprr.v_user_role_for_aml as
select
       /*·´Ï´Ç®½ÇÉ«ÓëÓÃ»§¹ØÏµ±í*/
       u_auth_role_resource.res_detail_value  as ROLE_ID, /*·´Ï´Ç®½ÇÉ«ID*/
       user_id as USER_ID                                 /*ÓÃ»§ID*/
from u_auth_role_user
inner join u_auth_role_resource
on u_auth_role_user.role_id =u_auth_role_resource.object_id
inner join u_auth_role on u_auth_role_user.role_id=u_auth_role.role_id

where
u_auth_role_resource.system_id='00005'           /*ÏµÍ³ID ·´Ï´Ç®*/
and res_id='50'             /*·´Ï´Ç®ÓÃ»§×é×ÊÔ´ID*/
and u_auth_role.enabled='1'
/

prompt
prompt Creating type STRING_AGG_TYPE
prompt =============================
prompt
CREATE OR REPLACE TYPE UPRR."STRING_AGG_TYPE"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                as object

(

total varchar2(4000),

static function

ODCIAggregateInitialize(sctx IN OUT string_agg_type )

return number,

member function

ODCIAggregateIterate(self IN OUT string_agg_type ,

value IN varchar2 )

return number,

member function

ODCIAggregateTerminate(self IN string_agg_type,

returnValue OUT varchar2,

flags IN number)

return number,

member function

ODCIAggregateMerge(self IN OUT string_agg_type,

ctx2 IN string_agg_type)

return number

);
/

prompt
prompt Creating type STRING_SUM_OBJ
prompt ============================
prompt
CREATE OR REPLACE TYPE UPRR."STRING_SUM_OBJ"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                as object (
--¿¿¿¿¿¿¿¿¿¿¿¿
     sum_string varchar2(4000),
     static function ODCIAggregateInitialize(v_self in out string_sum_obj) return number,
     --¿¿¿¿
     member function ODCIAggregateIterate(self in out string_sum_obj, value in varchar2) return number,
     --¿¿¿¿¿¿¿¿¿(¿¿¿¿¿¿¿¿)
     member function ODCIAggregateMerge(self in out string_sum_obj, v_next in string_sum_obj) return number,
     --¿¿¿¿¿¿¿¿¿¿,¿¿¿¿¿¿¿,¿¿¿¿¿¿¿¿¿¿¿¿¿¿

     member function ODCIAggregateTerminate(self in string_sum_obj, return_value out varchar2 ,v_flags in number) return number
     --¿¿¿¿¿¿¿¿¿,¿¿¿¿¿¿¿¿¿¿¿.
)
/

prompt
prompt Creating type T_LINK
prompt ====================
prompt
CREATE OR REPLACE TYPE UPRR."T_LINK"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                AS OBJECT (
 STR VARCHAR2(30000),
 STATIC FUNCTION ODCIAGGREGATEINITIALIZE(SCTX IN OUT T_LINK) RETURN NUMBER,
 MEMBER FUNCTION ODCIAGGREGATEITERATE(SELF IN OUT T_LINK, VALUE IN VARCHAR2) RETURN NUMBER,
 MEMBER FUNCTION ODCIAGGREGATETERMINATE(SELF IN T_LINK, RETURNVALUE OUT VARCHAR2, FLAGS IN NUMBEr
) RETURN NUMBER,
 MEMBER FUNCTION ODCIAGGREGATEMERGE(SELF IN OUT T_LINK, CTX2 IN T_LINK) RETURN NUMBER
 )
/

prompt
prompt Creating type body STRING_AGG_TYPE
prompt ==================================
prompt
create or replace type body uprr.string_agg_type

is

static function ODCIAggregateInitialize(sctx IN OUT string_agg_type)

return number

is

begin

sctx := string_agg_type( null );

return ODCIConst.Success;

end;

member function ODCIAggregateIterate(self IN OUT string_agg_type,

value IN varchar2 )

return number

is

begin

dbms_output.put_line(value);

self.total := self.total || ',' || value;

return ODCIConst.Success;

end;

member function ODCIAggregateTerminate(self IN string_agg_type,

returnValue OUT varchar2,flags IN number)

return number

is

begin

returnValue := ltrim(self.total,'');

return ODCIConst.Success;

end;

member function ODCIAggregateMerge(self IN OUT string_agg_type,

ctx2 IN string_agg_type)

return number

is

begin

self.total := self.total || ctx2.total;

return ODCIConst.Success;

end;

end;
/

prompt
prompt Creating type body STRING_SUM_OBJ
prompt =================================
prompt
create or replace type body uprr.string_sum_obj is
     static function ODCIAggregateInitialize(v_self in out string_sum_obj) return number is
     begin
         v_self := string_sum_obj(null);
         return ODCICONST.Success;
     end;
     member function ODCIAggregateIterate(self in out string_sum_obj, value in varchar2) return number is
     begin
          /* ¿¿ */
          self.sum_string := self.sum_string || value;
          return ODCICONST.Success;
     end;
     member function ODCIAggregateMerge(self in out string_sum_obj, v_next in string_sum_obj) return number is
     begin
          /* ¿¿ */
          self.sum_string := self.sum_string || v_next.sum_string;
          return ODCICONST.Success;
     end;
     member function ODCIAggregateTerminate(self in string_sum_obj, return_value out varchar2 ,v_flags in number) return number is
     begin
          return_value:= self.sum_string;
          return ODCICONST.Success;
     end;
end;
/

prompt
prompt Creating type body T_LINK
prompt =========================
prompt
CREATE OR REPLACE TYPE BODY UPRR.T_LINK IS
    STATIC FUNCTION ODCIAGGREGATEINITIALIZE(SCTX IN OUT T_LINK) RETURN NUMBER IS
    BEGIN
    SCTX := T_LINK(NULL);
    RETURN ODCICONST.SUCCESS;
    END;
   
  MEMBER FUNCTION ODCIAGGREGATEITERATE(SELF IN OUT T_LINK, VALUE IN VARCHAR2) RETURN NUMBER IS
  BEGIN
   SELF.STR := SELF.STR || VALUE || ',';
  RETURN ODCICONST.SUCCESS;
   END;
   
   MEMBER FUNCTION ODCIAGGREGATETERMINATE(SELF IN T_LINK, RETURNVALUE OUT VARCHAR2, FLAGS IN NUMBER) RETURN NUMBER IS
   BEGIN
  RETURNVALUE := SUBSTR(SELF.STR, 1, LENGTH(SELF.STR) - 1);
  RETURN ODCICONST.SUCCESS;
   END;
  
   MEMBER FUNCTION ODCIAGGREGATEMERGE(SELF IN OUT T_LINK, CTX2 IN T_LINK) RETURN NUMBER IS
  BEGIN
  NULL;
   RETURN ODCICONST.SUCCESS;
  END;
  END;
/


spool off
