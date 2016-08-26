------------------------------------------------
-- Export file for user ACC                   --
-- Created by 43631009 on 2016/8/18, 15:09:57 --
------------------------------------------------

spool acc_user_project.log

prompt
prompt Creating table PUB_HOME_CELL
prompt ============================
prompt
create table ACC.PUB_HOME_CELL
(
  CELL_TYPE   VARCHAR2(20),
  CELL_TITLE  VARCHAR2(50),
  CELL_TARGET VARCHAR2(10),
  CELL_URL    VARCHAR2(200),
  CELL_KEYID  VARCHAR2(50),
  CELL_DATE   DATE,
  CELL_DESC   VARCHAR2(200),
  CELL_USERID VARCHAR2(20),
  DATA_TIME   DATE
)
tablespace ACC
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
comment on column ACC.PUB_HOME_CELL.CELL_TYPE
  is '对应字典表，类型';
comment on column ACC.PUB_HOME_CELL.CELL_TITLE
  is '标题';
comment on column ACC.PUB_HOME_CELL.CELL_TARGET
  is 'target';
comment on column ACC.PUB_HOME_CELL.CELL_URL
  is 'url';
comment on column ACC.PUB_HOME_CELL.CELL_KEYID
  is '主键';
comment on column ACC.PUB_HOME_CELL.CELL_DATE
  is '数据日期';
comment on column ACC.PUB_HOME_CELL.CELL_DESC
  is '描述';
comment on column ACC.PUB_HOME_CELL.CELL_USERID
  is '用户id';
comment on column ACC.PUB_HOME_CELL.DATA_TIME
  is '数据产生日期';

prompt
prompt Creating table PUB_HOME_DIC
prompt ===========================
prompt
create table ACC.PUB_HOME_DIC
(
  DIC_ID          NUMBER not null,
  DIC_TYPE        VARCHAR2(20),
  DIC_TYPENAME    VARCHAR2(50),
  DIC_NAME        VARCHAR2(50),
  DIC_VALUE       VARCHAR2(50),
  DIC_LIST_TARGET VARCHAR2(200),
  DIC_EDIT_TARGET VARCHAR2(200),
  DIC_MENUID      VARCHAR2(200)
)
tablespace ACC
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
comment on column ACC.PUB_HOME_DIC.DIC_ID
  is '字典id';
comment on column ACC.PUB_HOME_DIC.DIC_TYPE
  is '字典类型';
comment on column ACC.PUB_HOME_DIC.DIC_TYPENAME
  is '类型名';
comment on column ACC.PUB_HOME_DIC.DIC_NAME
  is '值名';
comment on column ACC.PUB_HOME_DIC.DIC_VALUE
  is '值';
comment on column ACC.PUB_HOME_DIC.DIC_LIST_TARGET
  is '对应的列表连接';
comment on column ACC.PUB_HOME_DIC.DIC_EDIT_TARGET
  is '对应的编辑连接';
alter table ACC.PUB_HOME_DIC
  add constraint PK_PUB_HOME_DIC primary key (DIC_ID)
  using index 
  tablespace ACC
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
prompt Creating table PUB_HOME_NOTE
prompt ============================
prompt
create table ACC.PUB_HOME_NOTE
(
  NOTE_TYPE   VARCHAR2(10),
  NOTE_NAME   VARCHAR2(100),
  NOTE_NUM    NUMBER,
  NOTE_URL    VARCHAR2(200),
  NOTE_USERID VARCHAR2(20),
  NOTE_TIME   DATE,
  NOTE_MENUID VARCHAR2(50)
)
tablespace ACC
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
prompt Creating table SQL_HISTORY
prompt ==========================
prompt
create table ACC.SQL_HISTORY
(
  SQL_MARK     VARCHAR2(100) not null,
  SYSTEM_ID    VARCHAR2(10) not null,
  SYSTEM_NAME  VARCHAR2(10),
  EXECUTE_TIME VARCHAR2(10),
  DESCR        VARCHAR2(100),
  P_VERSION    VARCHAR2(10)
)
tablespace ACC
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
comment on table ACC.SQL_HISTORY
  is '脚本执行记录';
comment on column ACC.SQL_HISTORY.SQL_MARK
  is '脚本名称';
comment on column ACC.SQL_HISTORY.SYSTEM_ID
  is '子系统id';
comment on column ACC.SQL_HISTORY.SYSTEM_NAME
  is '子模块名称';
comment on column ACC.SQL_HISTORY.EXECUTE_TIME
  is '执行日期';
comment on column ACC.SQL_HISTORY.DESCR
  is '描述';
comment on column ACC.SQL_HISTORY.P_VERSION
  is '程序版本号';
alter table ACC.SQL_HISTORY
  add constraint PK_SQL_HISTORY primary key (SQL_MARK, SYSTEM_ID)
  using index 
  tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT
prompt =============================
prompt
create table ACC.T_BASE_ACCOUNT
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2) default 0,
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  )
cache;
comment on table ACC.T_BASE_ACCOUNT
  is '账户开户信息表';
comment on column ACC.T_BASE_ACCOUNT.ACTIONTYPE
  is '操作类型';
comment on column ACC.T_BASE_ACCOUNT.ACTIONDESC
  is '删除原因';
comment on column ACC.T_BASE_ACCOUNT.BRANCH_CODE
  is '金融机构标识码';
comment on column ACC.T_BASE_ACCOUNT.BRANCH_NAME
  is '金融机构名称';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT
  is '账号';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNTSTAT
  is '账户状态';
comment on column ACC.T_BASE_ACCOUNT.AMTYPE
  is '开户主体类型';
comment on column ACC.T_BASE_ACCOUNT.EN_CODE
  is '开户主体代码';
comment on column ACC.T_BASE_ACCOUNT.CHINESE_NAME
  is '开户主体名称';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT_TYPE
  is '账户性质代码';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT_CATA
  is '账户类别';
comment on column ACC.T_BASE_ACCOUNT.CURRENCE_CODE
  is '币种';
comment on column ACC.T_BASE_ACCOUNT.OPEN_DATE
  is '业务发生日期';
comment on column ACC.T_BASE_ACCOUNT.FILE_NUMBER
  is '外汇局批件号/备案表号/业务编号';
comment on column ACC.T_BASE_ACCOUNT.LIMIT_TYPE
  is '限额类型';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT_LIMIT
  is '账户限额';
comment on column ACC.T_BASE_ACCOUNT.REMARK
  is '备注';
comment on column ACC.T_BASE_ACCOUNT.INSTCODE
  is '机构代码';
comment on column ACC.T_BASE_ACCOUNT.DATASTATUS
  is '数据状态';
comment on column ACC.T_BASE_ACCOUNT.AUDITNAME
  is '审核人';
comment on column ACC.T_BASE_ACCOUNT.AUDITDATE
  is '审核日期';
comment on column ACC.T_BASE_ACCOUNT.IMPORTDATE
  is '操作日期';
comment on column ACC.T_BASE_ACCOUNT.BUSINESSID
  is '业务ID';
comment on column ACC.T_BASE_ACCOUNT.MODIFYUSER
  is '最后维护人';
comment on column ACC.T_BASE_ACCOUNT.ISCOMMIT
  is '是否提交';
comment on column ACC.T_BASE_ACCOUNT.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column ACC.T_BASE_ACCOUNT.SPARE1
  is '预留字段1';
comment on column ACC.T_BASE_ACCOUNT.SPARE2
  is '预留字段2';
comment on column ACC.T_BASE_ACCOUNT.SPARE3
  is '预留字段3';
comment on column ACC.T_BASE_ACCOUNT.SPARE4
  is '预留字段4';
comment on column ACC.T_BASE_ACCOUNT.SPARE5
  is '预留字段5';
alter table ACC.T_BASE_ACCOUNT
  add constraint PK_T_BASE_ACCOUNT primary key (BUSINESSID)
  using index 
  tablespace ACC
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
create index ACC.IDX_INST_ACCT on ACC.T_BASE_ACCOUNT (INSTCODE, ACCOUNT)
  tablespace ACC
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
create index ACC.T_BASE_ACCOUNT_UKEYS on ACC.T_BASE_ACCOUNT (DATASTATUS, INSTCODE, BRANCH_CODE||','||ACCOUNT||','||CURRENCE_CODE)
  tablespace ACC
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
grant select, insert, update, delete on ACC.T_BASE_ACCOUNT to DATACORE;
grant select, insert, update, delete on ACC.T_BASE_ACCOUNT to DATACOREFF;
grant select, insert, update, delete on ACC.T_BASE_ACCOUNT to DATACOREOPR;

prompt
prompt Creating table T_BASE_ACCOUNT_1008
prompt ==================================
prompt
create table ACC.T_BASE_ACCOUNT_1008
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_20130113
prompt ======================================
prompt
create table ACC.T_BASE_ACCOUNT_20130113
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_20150925
prompt ======================================
prompt
create table ACC.T_BASE_ACCOUNT_20150925
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_20160226
prompt ======================================
prompt
create table ACC.T_BASE_ACCOUNT_20160226
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_20160630
prompt ======================================
prompt
create table ACC.T_BASE_ACCOUNT_20160630
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_C
prompt ===============================
prompt
create table ACC.T_BASE_ACCOUNT_C
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_CD
prompt ================================
prompt
create table ACC.T_BASE_ACCOUNT_CD
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_HZ
prompt ================================
prompt
create table ACC.T_BASE_ACCOUNT_HZ
(
  BRANCH_CODE VARCHAR2(24),
  INSTCODE    VARCHAR2(50),
  ACCOUNT     VARCHAR2(128),
  IMPORTDATE  DATE
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_HZ_ACCSZY
prompt =======================================
prompt
create table ACC.T_BASE_ACCOUNT_HZ_ACCSZY
(
  ACTIONTYPE    CHAR(1),
  BRANCH_CODE   VARCHAR2(24),
  ACCOUNT       VARCHAR2(128),
  CURRENCE_CODE VARCHAR2(3),
  CREDIT        NUMBER(24,2),
  DEBT          NUMBER(24,2),
  BALANCE       NUMBER(24,2),
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_OP
prompt ================================
prompt
create table ACC.T_BASE_ACCOUNT_OP
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_ACCOUNT_UPDATE
prompt ====================================
prompt
create table ACC.T_BASE_ACCOUNT_UPDATE
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  BRANCH_NAME   VARCHAR2(256),
  ACCOUNT       VARCHAR2(128),
  ACCOUNTSTAT   CHAR(2),
  AMTYPE        CHAR(2),
  EN_CODE       VARCHAR2(18),
  CHINESE_NAME  VARCHAR2(256),
  ACCOUNT_TYPE  VARCHAR2(5),
  ACCOUNT_CATA  CHAR(2),
  CURRENCE_CODE VARCHAR2(32),
  OPEN_DATE     DATE,
  FILE_NUMBER   VARCHAR2(28),
  LIMIT_TYPE    CHAR(2),
  ACCOUNT_LIMIT NUMBER(22,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_CHANGES
prompt =============================
prompt
create table ACC.T_BASE_CHANGES
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  ACCOUNT       VARCHAR2(128),
  DEAL_DATE     DATE,
  CURRENCE_CODE VARCHAR2(3),
  CREDIT        NUMBER(24,2),
  DEBT          NUMBER(24,2),
  BALANCE       NUMBER(24,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  DATASTATUSCV  NUMBER(10) default 1,
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2) default 0,
  ISETLBALANCE  CHAR(1) default '0',
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_BASE_CHANGES
  is '账户收支余变动数据表';
comment on column ACC.T_BASE_CHANGES.ACTIONTYPE
  is '操作类型';
comment on column ACC.T_BASE_CHANGES.ACTIONDESC
  is '删除原因';
comment on column ACC.T_BASE_CHANGES.BRANCH_CODE
  is '金融机构标识码';
comment on column ACC.T_BASE_CHANGES.ACCOUNT
  is '账号';
comment on column ACC.T_BASE_CHANGES.DEAL_DATE
  is '发生日期';
comment on column ACC.T_BASE_CHANGES.CURRENCE_CODE
  is '币种';
comment on column ACC.T_BASE_CHANGES.CREDIT
  is '当日贷方发生额';
comment on column ACC.T_BASE_CHANGES.DEBT
  is '当日借方发生额';
comment on column ACC.T_BASE_CHANGES.BALANCE
  is '账户余额';
comment on column ACC.T_BASE_CHANGES.REMARK
  is '备注';
comment on column ACC.T_BASE_CHANGES.INSTCODE
  is '机构代码';
comment on column ACC.T_BASE_CHANGES.DATASTATUS
  is '数据状态';
comment on column ACC.T_BASE_CHANGES.DATASTATUSCV
  is '数值更正状态';
comment on column ACC.T_BASE_CHANGES.AUDITNAME
  is '审核人';
comment on column ACC.T_BASE_CHANGES.AUDITDATE
  is '审核日期';
comment on column ACC.T_BASE_CHANGES.IMPORTDATE
  is '操作日期';
comment on column ACC.T_BASE_CHANGES.BUSINESSID
  is '业务ID';
comment on column ACC.T_BASE_CHANGES.MODIFYUSER
  is '最后维护人';
comment on column ACC.T_BASE_CHANGES.ISCOMMIT
  is '是否提交';
comment on column ACC.T_BASE_CHANGES.ISETLBALANCE
  is '余额是否直接从ETL中抽取';
comment on column ACC.T_BASE_CHANGES.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column ACC.T_BASE_CHANGES.SPARE1
  is '预留字段1';
comment on column ACC.T_BASE_CHANGES.SPARE2
  is '预留字段2';
comment on column ACC.T_BASE_CHANGES.SPARE3
  is '预留字段3';
comment on column ACC.T_BASE_CHANGES.SPARE4
  is '预留字段4';
comment on column ACC.T_BASE_CHANGES.SPARE5
  is '预留字段5';
alter table ACC.T_BASE_CHANGES
  add constraint PK_T_BASE_CHANGES_BUSINESSID primary key (BUSINESSID)
  using index 
  tablespace ACC
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
create index ACC.IDX_DEALDATE on ACC.T_BASE_CHANGES (INSTCODE, ACCOUNT, TO_CHAR(DEAL_DATE,'yyyy-mm-dd'), CURRENCE_CODE)
  tablespace ACC
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
create index ACC.IDX_T_BASE_CHANS_ACCOUNT on ACC.T_BASE_CHANGES (ACCOUNT)
  tablespace ACC
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
create index ACC.IDX_T_BASE_CHANS_COLS on ACC.T_BASE_CHANGES (DATASTATUS, ISCOMMIT)
  tablespace ACC
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
create index ACC.IDX_T_BASE_CHANS_UKEYS on ACC.T_BASE_CHANGES (DATASTATUS, INSTCODE, BRANCH_CODE||', '||ACCOUNT||', '||CURRENCE_CODE||', '||TO_CHAR(DEAL_DATE,'yyyyMMdd'))
  tablespace ACC
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
grant select, insert, update, delete on ACC.T_BASE_CHANGES to DATACORE;
grant select, insert, update, delete on ACC.T_BASE_CHANGES to DATACOREFF;
grant select, insert, update, delete on ACC.T_BASE_CHANGES to DATACOREOPR;

prompt
prompt Creating table T_BASE_CHANGES_1008
prompt ==================================
prompt
create table ACC.T_BASE_CHANGES_1008
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  ACCOUNT       VARCHAR2(128),
  DEAL_DATE     DATE,
  CURRENCE_CODE VARCHAR2(3),
  CREDIT        NUMBER(24,2),
  DEBT          NUMBER(24,2),
  BALANCE       NUMBER(24,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  DATASTATUSCV  NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  ISETLBALANCE  CHAR(1),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_CHANGES_20130113
prompt ======================================
prompt
create table ACC.T_BASE_CHANGES_20130113
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  ACCOUNT       VARCHAR2(128),
  DEAL_DATE     DATE,
  CURRENCE_CODE VARCHAR2(3),
  CREDIT        NUMBER(24,2),
  DEBT          NUMBER(24,2),
  BALANCE       NUMBER(24,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  DATASTATUSCV  NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  ISETLBALANCE  CHAR(1),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_CHANGES_20150721
prompt ======================================
prompt
create table ACC.T_BASE_CHANGES_20150721
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  ACCOUNT       VARCHAR2(128),
  DEAL_DATE     DATE,
  CURRENCE_CODE VARCHAR2(3),
  CREDIT        NUMBER(24,2),
  DEBT          NUMBER(24,2),
  BALANCE       NUMBER(24,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  DATASTATUSCV  NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  ISETLBALANCE  CHAR(1),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_CHANGES_20160816
prompt ======================================
prompt
create table ACC.T_BASE_CHANGES_20160816
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(256),
  BRANCH_CODE   VARCHAR2(24),
  ACCOUNT       VARCHAR2(128),
  DEAL_DATE     DATE,
  CURRENCE_CODE VARCHAR2(3),
  CREDIT        NUMBER(24,2),
  DEBT          NUMBER(24,2),
  BALANCE       NUMBER(24,2),
  REMARK        VARCHAR2(512),
  INSTCODE      VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  DATASTATUSCV  NUMBER(10),
  AUDITNAME     VARCHAR2(50),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2),
  ISETLBALANCE  CHAR(1),
  IS_HANDIWORK  CHAR(1),
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
prompt Creating table T_BASE_EXPENDITURE
prompt =================================
prompt
create table ACC.T_BASE_EXPENDITURE
(
  REF_NUMBER     VARCHAR2(24),
  DEAL_DATE      DATE,
  OP_BANK        VARCHAR2(128),
  OP_NAME        VARCHAR2(70),
  OP_ACCOUNT     VARCHAR2(30),
  EN_NAME        VARCHAR2(70),
  EN_CODE        VARCHAR2(18),
  ACCOUNT        VARCHAR2(30),
  CURRENCE_CODE  VARCHAR2(3),
  AMOUNT         NUMBER(16,2),
  PAYMETHOD      VARCHAR2(1),
  TRANSACTCODE   VARCHAR2(6),
  AUTHORITY_CODE VARCHAR2(30),
  AP_NUMBER      VARCHAR2(24),
  COUNTRY_CODE   VARCHAR2(3),
  INSTCODE       VARCHAR2(50),
  DATASTATUS     NUMBER(10),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  BUSINESSID     VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  MODIFYUSER     VARCHAR2(30) default 'admin',
  DATASTATUSCV   NUMBER(10) default 1,
  ISCOMMIT       NUMBER(2) default 0,
  IS_HANDIWORK   CHAR(1),
  SPARE1         VARCHAR2(128),
  SPARE2         VARCHAR2(128),
  SPARE3         VARCHAR2(128),
  SPARE4         VARCHAR2(128),
  SPARE5         VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_BASE_EXPENDITURE
  is '账户支出明细表';
comment on column ACC.T_BASE_EXPENDITURE.REF_NUMBER
  is '业务参号';
comment on column ACC.T_BASE_EXPENDITURE.DEAL_DATE
  is '发生日期';
comment on column ACC.T_BASE_EXPENDITURE.OP_BANK
  is '收款银行';
comment on column ACC.T_BASE_EXPENDITURE.OP_NAME
  is '收款人名称';
comment on column ACC.T_BASE_EXPENDITURE.OP_ACCOUNT
  is '收款人账户';
comment on column ACC.T_BASE_EXPENDITURE.EN_NAME
  is '付款人名称';
comment on column ACC.T_BASE_EXPENDITURE.EN_CODE
  is '付款人代码';
comment on column ACC.T_BASE_EXPENDITURE.ACCOUNT
  is '付款人账户';
comment on column ACC.T_BASE_EXPENDITURE.CURRENCE_CODE
  is '币种代码';
comment on column ACC.T_BASE_EXPENDITURE.AMOUNT
  is '金额';
comment on column ACC.T_BASE_EXPENDITURE.PAYMETHOD
  is '结算方式';
comment on column ACC.T_BASE_EXPENDITURE.TRANSACTCODE
  is '交易编码';
comment on column ACC.T_BASE_EXPENDITURE.AUTHORITY_CODE
  is '审批件编号';
comment on column ACC.T_BASE_EXPENDITURE.AP_NUMBER
  is '交易类别';
comment on column ACC.T_BASE_EXPENDITURE.COUNTRY_CODE
  is '收款人国别';
comment on column ACC.T_BASE_EXPENDITURE.INSTCODE
  is '机构代码';
comment on column ACC.T_BASE_EXPENDITURE.DATASTATUS
  is '数据状态';
comment on column ACC.T_BASE_EXPENDITURE.AUDITDATE
  is '审核日期';
comment on column ACC.T_BASE_EXPENDITURE.IMPORTDATE
  is '操作日期';
comment on column ACC.T_BASE_EXPENDITURE.BUSINESSID
  is '业务ID';
comment on column ACC.T_BASE_EXPENDITURE.AUDITNAME
  is '审核人';
comment on column ACC.T_BASE_EXPENDITURE.MODIFYUSER
  is '最后维护人';
comment on column ACC.T_BASE_EXPENDITURE.DATASTATUSCV
  is '数值更正状态';
comment on column ACC.T_BASE_EXPENDITURE.ISCOMMIT
  is '是否提交';
comment on column ACC.T_BASE_EXPENDITURE.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column ACC.T_BASE_EXPENDITURE.SPARE1
  is '预留字段1';
comment on column ACC.T_BASE_EXPENDITURE.SPARE2
  is '预留字段2';
comment on column ACC.T_BASE_EXPENDITURE.SPARE3
  is '预留字段3';
comment on column ACC.T_BASE_EXPENDITURE.SPARE4
  is '预留字段4';
comment on column ACC.T_BASE_EXPENDITURE.SPARE5
  is '预留字段5';
create unique index ACC.UNIQUE_T_BASE_EXPENDITURE on ACC.T_BASE_EXPENDITURE (BUSINESSID)
  tablespace ACC
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
prompt Creating table T_BASE_INCOME
prompt ============================
prompt
create table ACC.T_BASE_INCOME
(
  REF_NUMBER     VARCHAR2(24),
  DEAL_DATE      DATE,
  OP_BANK        VARCHAR2(128),
  OP_NAME        VARCHAR2(70),
  OP_ACCOUNT     VARCHAR2(30),
  EN_NAME        VARCHAR2(70),
  EN_CODE        VARCHAR2(18),
  ACCOUNT        VARCHAR2(30),
  CURRENCE_CODE  VARCHAR2(3),
  AMOUNT         NUMBER(16,2),
  PAYMETHOD      VARCHAR2(1),
  TRANSACTCODE   VARCHAR2(6),
  AUTHORITY_CODE VARCHAR2(30),
  AP_NUMBER      VARCHAR2(24),
  COUNTRY_CODE   VARCHAR2(3),
  INSTCODE       VARCHAR2(50),
  DATASTATUS     NUMBER(10),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  BUSINESSID     VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  MODIFYUSER     VARCHAR2(30) default 'admin',
  DATASTATUSCV   NUMBER(10) default 1,
  ISCOMMIT       NUMBER(2) default 0,
  IS_HANDIWORK   CHAR(1),
  SPARE1         VARCHAR2(128),
  SPARE2         VARCHAR2(128),
  SPARE3         VARCHAR2(128),
  SPARE4         VARCHAR2(128),
  SPARE5         VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_BASE_INCOME
  is '账户收入明细表';
comment on column ACC.T_BASE_INCOME.REF_NUMBER
  is '业务参号';
comment on column ACC.T_BASE_INCOME.DEAL_DATE
  is '发生日期';
comment on column ACC.T_BASE_INCOME.OP_BANK
  is '付款银行';
comment on column ACC.T_BASE_INCOME.OP_NAME
  is '付款人名称';
comment on column ACC.T_BASE_INCOME.OP_ACCOUNT
  is '付款人账户';
comment on column ACC.T_BASE_INCOME.EN_NAME
  is '收款人名称';
comment on column ACC.T_BASE_INCOME.EN_CODE
  is '收款人代码';
comment on column ACC.T_BASE_INCOME.ACCOUNT
  is '收款人账户';
comment on column ACC.T_BASE_INCOME.CURRENCE_CODE
  is '币种代码';
comment on column ACC.T_BASE_INCOME.AMOUNT
  is '金额';
comment on column ACC.T_BASE_INCOME.PAYMETHOD
  is '结算方式';
comment on column ACC.T_BASE_INCOME.TRANSACTCODE
  is '交易编码';
comment on column ACC.T_BASE_INCOME.AUTHORITY_CODE
  is '审批件编号';
comment on column ACC.T_BASE_INCOME.AP_NUMBER
  is '交易类别';
comment on column ACC.T_BASE_INCOME.COUNTRY_CODE
  is '付款人国别';
comment on column ACC.T_BASE_INCOME.INSTCODE
  is '机构代码';
comment on column ACC.T_BASE_INCOME.DATASTATUS
  is '数据状态';
comment on column ACC.T_BASE_INCOME.AUDITDATE
  is '审核日期';
comment on column ACC.T_BASE_INCOME.IMPORTDATE
  is '操作日期';
comment on column ACC.T_BASE_INCOME.BUSINESSID
  is '业务ID';
comment on column ACC.T_BASE_INCOME.AUDITNAME
  is '审核人';
comment on column ACC.T_BASE_INCOME.MODIFYUSER
  is '最后维护人';
comment on column ACC.T_BASE_INCOME.DATASTATUSCV
  is '数值更正状态';
comment on column ACC.T_BASE_INCOME.ISCOMMIT
  is '是否提交';
comment on column ACC.T_BASE_INCOME.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column ACC.T_BASE_INCOME.SPARE1
  is '预留字段1';
comment on column ACC.T_BASE_INCOME.SPARE2
  is '预留字段2';
comment on column ACC.T_BASE_INCOME.SPARE3
  is '预留字段3';
comment on column ACC.T_BASE_INCOME.SPARE4
  is '预留字段4';
comment on column ACC.T_BASE_INCOME.SPARE5
  is '预留字段5';
create unique index ACC.UNIQUE_T_BASE_INCOME on ACC.T_BASE_INCOME (BUSINESSID)
  tablespace ACC
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
prompt Creating table T_CODE_DICTIONARY
prompt ================================
prompt
create table ACC.T_CODE_DICTIONARY
(
  ID                         NUMBER(10) not null,
  CODE_TYPE                  VARCHAR2(50),
  CODE_VALUE_BANK            VARCHAR2(50),
  CODE_VALUE_STANDARD_LETTER VARCHAR2(50),
  CODE_VALUE_STANDARD_NUM    VARCHAR2(50),
  CODE_NAME                  VARCHAR2(500),
  CODE_TYPE_DESC             VARCHAR2(500),
  CODE_SYM                   VARCHAR2(500),
  BACKUP_NUM                 CHAR(10),
  BEGINDATE                  CHAR(10),
  ENDDATE                    CHAR(10)
)
tablespace ACC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 768K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column ACC.T_CODE_DICTIONARY.BEGINDATE
  is '启用日期';
comment on column ACC.T_CODE_DICTIONARY.ENDDATE
  is '停用日期';
create unique index ACC.UNIQUE_T_CODE_DICTIONARY on ACC.T_CODE_DICTIONARY (CODE_TYPE, CODE_VALUE_STANDARD_NUM)
  tablespace ACC
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 192K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CONFIG_MTS
prompt ===========================
prompt
create table ACC.T_CONFIG_MTS
(
  RPTTITLE           VARCHAR2(50) not null,
  IP                 VARCHAR2(50),
  PORT               VARCHAR2(5),
  LINK               VARCHAR2(20),
  USERNAME           VARCHAR2(50),
  PASSWORD           VARCHAR2(50),
  SENDPATH           VARCHAR2(200),
  FEEDBACKPATH       VARCHAR2(200),
  RUNTIME            VARCHAR2(50),
  ENABLED            VARCHAR2(3),
  ERRORFILESPATH     VARCHAR2(500),
  HISTORYSENDPATH    VARCHAR2(500),
  ERRORFILESENABLED  VARCHAR2(3),
  HISTORYSENDENABLED VARCHAR2(3),
  IDENTITY           VARCHAR2(500),
  PASSPHRASE         VARCHAR2(100),
  MODEL              VARCHAR2(4)
)
tablespace ACC
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
comment on table ACC.T_CONFIG_MTS
  is 'MTS参数配置表';
comment on column ACC.T_CONFIG_MTS.RPTTITLE
  is '机构编号';
comment on column ACC.T_CONFIG_MTS.IP
  is 'IP地址';
comment on column ACC.T_CONFIG_MTS.PORT
  is '端口号';
comment on column ACC.T_CONFIG_MTS.LINK
  is '链接方式';
comment on column ACC.T_CONFIG_MTS.USERNAME
  is '登录用户';
comment on column ACC.T_CONFIG_MTS.PASSWORD
  is '登录密码';
comment on column ACC.T_CONFIG_MTS.SENDPATH
  is '上传文件路径';
comment on column ACC.T_CONFIG_MTS.FEEDBACKPATH
  is '反馈文件路径';
comment on column ACC.T_CONFIG_MTS.RUNTIME
  is '运行时间';
comment on column ACC.T_CONFIG_MTS.ENABLED
  is '是否启用';
comment on column ACC.T_CONFIG_MTS.ERRORFILESPATH
  is '错误文件路径';
comment on column ACC.T_CONFIG_MTS.HISTORYSENDPATH
  is '发送历史目录';
comment on column ACC.T_CONFIG_MTS.ERRORFILESENABLED
  is '是否启用错误文件目录';
comment on column ACC.T_CONFIG_MTS.HISTORYSENDENABLED
  is '是否启用发送历史目录';
comment on column ACC.T_CONFIG_MTS.MODEL
  is '连接模式';
alter table ACC.T_CONFIG_MTS
  add constraint PK_T_CONFIG_MTS primary key (RPTTITLE)
  using index 
  tablespace ACC
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
prompt Creating table T_CONFIG_PARAMETER
prompt =================================
prompt
create table ACC.T_CONFIG_PARAMETER
(
  CONFIGNAME  VARCHAR2(50) not null,
  CONFIGVALUE VARCHAR2(200),
  CONFIGDESC  VARCHAR2(512),
  CONFIGPROJ  VARCHAR2(256),
  CREATEDATE  VARCHAR2(20),
  SPARE1      VARCHAR2(128),
  SPARE2      VARCHAR2(128),
  SPARE3      VARCHAR2(128),
  SPARE4      VARCHAR2(128),
  SPARE5      VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_CONFIG_PARAMETER
  is '参数配置项记录';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGNAME
  is '配置名';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGVALUE
  is '配置值';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGDESC
  is '配置描述';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGPROJ
  is '适用项目';
comment on column ACC.T_CONFIG_PARAMETER.CREATEDATE
  is '创建日期';
comment on column ACC.T_CONFIG_PARAMETER.SPARE1
  is '预留字段1';
comment on column ACC.T_CONFIG_PARAMETER.SPARE2
  is '预留字段2';
comment on column ACC.T_CONFIG_PARAMETER.SPARE3
  is '预留字段3';
comment on column ACC.T_CONFIG_PARAMETER.SPARE4
  is '预留字段4';
comment on column ACC.T_CONFIG_PARAMETER.SPARE5
  is '预留字段5';
alter table ACC.T_CONFIG_PARAMETER
  add constraint PK_T_CONFIG_PARAMETER primary key (CONFIGNAME)
  using index 
  tablespace ACC
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
prompt Creating table T_ERROR_FEEDBACK
prompt ===============================
prompt
create table ACC.T_ERROR_FEEDBACK
(
  ID                 NUMBER(10) not null,
  ERROR_TYPE         VARCHAR2(50),
  DATA_NO            VARCHAR2(100),
  FILE_ID            VARCHAR2(50),
  FILE_NAME          VARCHAR2(50),
  INFO_TYPE          VARCHAR2(50),
  DATA_DATE          VARCHAR2(50),
  DATA_TYPE          VARCHAR2(50),
  ERROR_DESC         CLOB,
  HAS_REJECT         CHAR(1),
  TOTAL_FILES        NUMBER(10),
  RPT_SEND_FILE_NAME VARCHAR2(50),
  SPARE1             VARCHAR2(128),
  SPARE2             VARCHAR2(128),
  SPARE3             VARCHAR2(128),
  SPARE4             VARCHAR2(128),
  SPARE5             VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_ERROR_FEEDBACK
  is '反馈信息';
comment on column ACC.T_ERROR_FEEDBACK.ID
  is 'ID';
comment on column ACC.T_ERROR_FEEDBACK.ERROR_TYPE
  is '错误类型(数据错误/文件错误)';
comment on column ACC.T_ERROR_FEEDBACK.DATA_NO
  is '业务数据主键';
comment on column ACC.T_ERROR_FEEDBACK.FILE_ID
  is '数据文件tableId';
comment on column ACC.T_ERROR_FEEDBACK.FILE_NAME
  is '数据文件tableName';
comment on column ACC.T_ERROR_FEEDBACK.INFO_TYPE
  is '错误文件类型';
comment on column ACC.T_ERROR_FEEDBACK.DATA_DATE
  is '反馈日期';
comment on column ACC.T_ERROR_FEEDBACK.DATA_TYPE
  is '错误数据主键名称';
comment on column ACC.T_ERROR_FEEDBACK.ERROR_DESC
  is '错误描述';
comment on column ACC.T_ERROR_FEEDBACK.HAS_REJECT
  is '是否被拒';
comment on column ACC.T_ERROR_FEEDBACK.TOTAL_FILES
  is '包含错误文件数';
comment on column ACC.T_ERROR_FEEDBACK.RPT_SEND_FILE_NAME
  is '报送文件名';
comment on column ACC.T_ERROR_FEEDBACK.SPARE1
  is '预留字段1';
comment on column ACC.T_ERROR_FEEDBACK.SPARE2
  is '预留字段2';
comment on column ACC.T_ERROR_FEEDBACK.SPARE3
  is '预留字段3';
comment on column ACC.T_ERROR_FEEDBACK.SPARE4
  is '预留字段4';
comment on column ACC.T_ERROR_FEEDBACK.SPARE5
  is '预留字段5';
create index ACC.IDX_T_ERROR_FEEDBACK on ACC.T_ERROR_FEEDBACK (HAS_REJECT, FILE_ID, DATA_NO)
  tablespace ACC
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
prompt Creating table T_FILEM_LOG
prompt ==========================
prompt
create table ACC.T_FILEM_LOG
(
  ID          NUMBER(10) not null,
  FK_CUSTOMID VARCHAR2(50) not null,
  CUR_DATE    VARCHAR2(50) not null,
  TABLE_ID    VARCHAR2(50) not null,
  SPARE1      VARCHAR2(128),
  SPARE2      VARCHAR2(128),
  SPARE3      VARCHAR2(128),
  SPARE4      VARCHAR2(128),
  SPARE5      VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_FILEM_LOG
  is '报文生成记录';
comment on column ACC.T_FILEM_LOG.ID
  is 'ID';
comment on column ACC.T_FILEM_LOG.FK_CUSTOMID
  is '机构ID';
comment on column ACC.T_FILEM_LOG.CUR_DATE
  is '生成日期';
comment on column ACC.T_FILEM_LOG.TABLE_ID
  is '报文类型标识';
comment on column ACC.T_FILEM_LOG.SPARE1
  is '预留字段1';
comment on column ACC.T_FILEM_LOG.SPARE2
  is '预留字段2';
comment on column ACC.T_FILEM_LOG.SPARE3
  is '预留字段3';
comment on column ACC.T_FILEM_LOG.SPARE4
  is '预留字段4';
comment on column ACC.T_FILEM_LOG.SPARE5
  is '预留字段5';

prompt
prompt Creating table T_FILEM_VALIDATE
prompt ===============================
prompt
create table ACC.T_FILEM_VALIDATE
(
  ID            NUMBER(10) not null,
  TABLE_ID      VARCHAR2(50),
  BRANCH_CODE   VARCHAR2(24),
  ACCOUNT       VARCHAR2(128),
  CURRENCE_CODE VARCHAR2(3),
  OPEN_DATE     DATE,
  ERRFIELD      VARCHAR2(64),
  ERRFIELDCN    VARCHAR2(100),
  ERRDESC       VARCHAR2(100),
  USER_ID       VARCHAR2(20),
  OPERATE_DATE  DATE,
  BUSINESSID    VARCHAR2(50)
)
tablespace ACC
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
prompt Creating table T_ORG_CONFIG
prompt ===========================
prompt
create table ACC.T_ORG_CONFIG
(
  ORG_ID   VARCHAR2(50),
  ORG_NAME VARCHAR2(200),
  RPTNO    VARCHAR2(50),
  RPTTITLE VARCHAR2(50),
  SPARE1   VARCHAR2(128),
  SPARE2   VARCHAR2(128),
  SPARE3   VARCHAR2(128),
  SPARE4   VARCHAR2(128),
  SPARE5   VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_ORG_CONFIG
  is '机构对照表';
comment on column ACC.T_ORG_CONFIG.ORG_ID
  is '机构ID';
comment on column ACC.T_ORG_CONFIG.ORG_NAME
  is '机构名称';
comment on column ACC.T_ORG_CONFIG.RPTNO
  is '申报号码';
comment on column ACC.T_ORG_CONFIG.RPTTITLE
  is '主报告行号码';
comment on column ACC.T_ORG_CONFIG.SPARE1
  is '预留字段1';
comment on column ACC.T_ORG_CONFIG.SPARE2
  is '预留字段2';
comment on column ACC.T_ORG_CONFIG.SPARE3
  is '预留字段3';
comment on column ACC.T_ORG_CONFIG.SPARE4
  is '预留字段4';
comment on column ACC.T_ORG_CONFIG.SPARE5
  is '预留字段5';
create index ACC.IDX_T_ORG_CONFIG_ORGID on ACC.T_ORG_CONFIG (ORG_ID, RPTNO)
  tablespace ODS_HIS
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
grant select on ACC.T_ORG_CONFIG to DATACORE;
grant select on ACC.T_ORG_CONFIG to DATACOREFF;
grant select on ACC.T_ORG_CONFIG to DATACOREOPR;

prompt
prompt Creating table T_REFUSE_RESION
prompt ==============================
prompt
create table ACC.T_REFUSE_RESION
(
  BUSINESSID    VARCHAR2(50) not null,
  BUSI_TABLE_ID VARCHAR2(50) not null,
  REASION       VARCHAR2(1000) not null,
  BUSI_TYPE     CHAR(1) not null,
  SPARE1        VARCHAR2(128),
  SPARE2        VARCHAR2(128),
  SPARE3        VARCHAR2(128),
  SPARE4        VARCHAR2(128),
  SPARE5        VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_REFUSE_RESION
  is '审核打回原因表';
comment on column ACC.T_REFUSE_RESION.BUSINESSID
  is '业务ID';
comment on column ACC.T_REFUSE_RESION.BUSI_TABLE_ID
  is '报文ID';
comment on column ACC.T_REFUSE_RESION.REASION
  is '文字描述';
comment on column ACC.T_REFUSE_RESION.BUSI_TYPE
  is '业务类型（1-审核/2-打回）';
comment on column ACC.T_REFUSE_RESION.SPARE1
  is '预留字段1';
comment on column ACC.T_REFUSE_RESION.SPARE2
  is '预留字段2';
comment on column ACC.T_REFUSE_RESION.SPARE3
  is '预留字段3';
comment on column ACC.T_REFUSE_RESION.SPARE4
  is '预留字段4';
comment on column ACC.T_REFUSE_RESION.SPARE5
  is '预留字段5';
alter table ACC.T_REFUSE_RESION
  add constraint PK_REFUSE_RESION primary key (BUSINESSID, BUSI_TABLE_ID, BUSI_TYPE)
  using index 
  tablespace ACC
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
prompt Creating table T_RELA_TABLES
prompt ============================
prompt
create table ACC.T_RELA_TABLES
(
  OBJID   VARCHAR2(50) not null,
  TABLEID VARCHAR2(50) not null,
  OBJTYPE VARCHAR2(50) not null,
  SPARE1  VARCHAR2(128),
  SPARE2  VARCHAR2(128),
  SPARE3  VARCHAR2(128),
  SPARE4  VARCHAR2(128),
  SPARE5  VARCHAR2(128)
)
tablespace ACC
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
comment on table ACC.T_RELA_TABLES
  is '用户角色报文对应表';
comment on column ACC.T_RELA_TABLES.OBJID
  is '对象ID';
comment on column ACC.T_RELA_TABLES.TABLEID
  is '报文名称ID';
comment on column ACC.T_RELA_TABLES.OBJTYPE
  is '对象类型 R角色 U用户';
comment on column ACC.T_RELA_TABLES.SPARE1
  is '预留字段1';
comment on column ACC.T_RELA_TABLES.SPARE2
  is '预留字段2';
comment on column ACC.T_RELA_TABLES.SPARE3
  is '预留字段3';
comment on column ACC.T_RELA_TABLES.SPARE4
  is '预留字段4';
comment on column ACC.T_RELA_TABLES.SPARE5
  is '预留字段5';
alter table ACC.T_RELA_TABLES
  add constraint PK_RELA_TABLES primary key (OBJID, TABLEID, OBJTYPE)
  using index 
  tablespace ACC
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
prompt Creating table T_RPT_COLUMN_INFO
prompt ================================
prompt
create table ACC.T_RPT_COLUMN_INFO
(
  COLUMN_ID          VARCHAR2(50) not null,
  TABLE_ID           VARCHAR2(50) not null,
  COLUMN_NAME        VARCHAR2(100),
  order              NUMBER(10),
  POSITION           VARCHAR2(50),
  DATA_TYPE          VARCHAR2(50),
  DATA_TYPE_DESC     VARCHAR2(100),
  DICTIONARY_TYPE_ID VARCHAR2(50),
  CONS_RULE          VARCHAR2(200),
  CONS_DESC          VARCHAR2(500),
  TXT_ID             NUMBER(10),
  TXT_COLUMN_ID      NUMBER(10),
  IS_SHOW            CHAR(1),
  TAG_TYPE           CHAR(1),
  CAN_MODIFY         CHAR(1),
  HAS_INNER_TABLE    CHAR(1),
  LOG_COLUMN_ID      VARCHAR2(20),
  IS_ENABLED         CHAR(1),
  CAN_INPUT          CHAR(1)
)
tablespace ACC
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
comment on table ACC.T_RPT_COLUMN_INFO
  is '列配置信息表';
comment on column ACC.T_RPT_COLUMN_INFO.COLUMN_ID
  is '列名ID';
comment on column ACC.T_RPT_COLUMN_INFO.TABLE_ID
  is '表名ID';
comment on column ACC.T_RPT_COLUMN_INFO.COLUMN_NAME
  is '列名称';
comment on column ACC.T_RPT_COLUMN_INFO.order
  is '排序';
comment on column ACC.T_RPT_COLUMN_INFO.POSITION
  is '位置';
comment on column ACC.T_RPT_COLUMN_INFO.DATA_TYPE
  is '数据类型';
comment on column ACC.T_RPT_COLUMN_INFO.DATA_TYPE_DESC
  is '数据类型描述';
comment on column ACC.T_RPT_COLUMN_INFO.DICTIONARY_TYPE_ID
  is '对应字典项ID';
comment on column ACC.T_RPT_COLUMN_INFO.CONS_RULE
  is '提交规则';
comment on column ACC.T_RPT_COLUMN_INFO.CONS_DESC
  is '提交规则描述';
comment on column ACC.T_RPT_COLUMN_INFO.IS_SHOW
  is '是否展示';
comment on column ACC.T_RPT_COLUMN_INFO.TAG_TYPE
  is '控件类型';
comment on column ACC.T_RPT_COLUMN_INFO.CAN_MODIFY
  is '是否可维护';
comment on column ACC.T_RPT_COLUMN_INFO.HAS_INNER_TABLE
  is '是否含子表';
comment on column ACC.T_RPT_COLUMN_INFO.LOG_COLUMN_ID
  is '对应修改记录表字段ID';
comment on column ACC.T_RPT_COLUMN_INFO.IS_ENABLED
  is '是否激活：1-已激活，0-未激活';
comment on column ACC.T_RPT_COLUMN_INFO.CAN_INPUT
  is '是否可录入';
create unique index ACC.UNIQUE_T_RPT_COLUMN_INFO on ACC.T_RPT_COLUMN_INFO (TABLE_ID, COLUMN_ID)
  tablespace ACC
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
prompt Creating table T_RPT_LOG_INFO
prompt =============================
prompt
create table ACC.T_RPT_LOG_INFO
(
  LOGTYPE      VARCHAR2(10) not null,
  TABLEID      VARCHAR2(30) not null,
  USERID       VARCHAR2(50) not null,
  UPDATETIME   VARCHAR2(20) not null,
  BUSINESSID   VARCHAR2(50) not null,
  SUBID        VARCHAR2(50),
  DATASTATUS   NUMBER(10),
  COLUMN01     VARCHAR2(256),
  COLUMN02     VARCHAR2(256),
  COLUMN03     VARCHAR2(256),
  COLUMN04     VARCHAR2(256),
  COLUMN05     VARCHAR2(256),
  COLUMN06     VARCHAR2(256),
  COLUMN07     VARCHAR2(512),
  COLUMN08     VARCHAR2(512),
  COLUMN09     VARCHAR2(50),
  COLUMN10     VARCHAR2(50),
  COLUMN11     VARCHAR2(128),
  COLUMN12     VARCHAR2(50),
  COLUMN13     VARCHAR2(50),
  COLUMN14     VARCHAR2(128),
  COLUMN15     VARCHAR2(50),
  COLUMN16     VARCHAR2(50),
  COLUMN17     VARCHAR2(50),
  COLUMN18     VARCHAR2(50),
  COLUMN19     VARCHAR2(50),
  COLUMN20     VARCHAR2(50),
  COLUMN21     VARCHAR2(50),
  COLUMN22     VARCHAR2(50),
  COLUMN23     VARCHAR2(50),
  COLUMN24     VARCHAR2(50),
  COLUMN25     VARCHAR2(50),
  COLUMN26     VARCHAR2(50),
  COLUMN27     VARCHAR2(50),
  COLUMN28     VARCHAR2(50),
  COLUMN29     VARCHAR2(50),
  COLUMN30     VARCHAR2(50),
  COLUMN31     VARCHAR2(50),
  COLUMN32     VARCHAR2(50),
  COLUMN33     VARCHAR2(50),
  COLUMN34     VARCHAR2(50),
  COLUMN35     VARCHAR2(50),
  COLUMN36     VARCHAR2(50),
  COLUMN37     VARCHAR2(50),
  DATASTATUSCV NUMBER(10)
)
tablespace ACC
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
comment on table ACC.T_RPT_LOG_INFO
  is '报文修改记录';
comment on column ACC.T_RPT_LOG_INFO.LOGTYPE
  is '操作类型(insert/update/delete)';
comment on column ACC.T_RPT_LOG_INFO.TABLEID
  is '所属表名';
comment on column ACC.T_RPT_LOG_INFO.USERID
  is '用户ID';
comment on column ACC.T_RPT_LOG_INFO.UPDATETIME
  is '修改时间';
comment on column ACC.T_RPT_LOG_INFO.BUSINESSID
  is '主表业务ID';
comment on column ACC.T_RPT_LOG_INFO.SUBID
  is '子表业务ID';
comment on column ACC.T_RPT_LOG_INFO.DATASTATUS
  is '数据状态';
comment on column ACC.T_RPT_LOG_INFO.DATASTATUSCV
  is '数值更正状态';

prompt
prompt Creating table T_RPT_RECIEVE
prompt ============================
prompt
create table ACC.T_RPT_RECIEVE
(
  PACKNAME VARCHAR2(50),
  FILENAME VARCHAR2(50),
  SPARE1   VARCHAR2(128),
  SPARE2   VARCHAR2(128),
  SPARE3   VARCHAR2(128),
  SPARE4   VARCHAR2(128),
  SPARE5   VARCHAR2(128),
  PACKTYPE VARCHAR2(3)
)
tablespace ACC
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
comment on table ACC.T_RPT_RECIEVE
  is '反馈文件接收记录';
comment on column ACC.T_RPT_RECIEVE.PACKNAME
  is '接受包名';
comment on column ACC.T_RPT_RECIEVE.FILENAME
  is '接受文件名';
comment on column ACC.T_RPT_RECIEVE.SPARE1
  is '预留字段1';
comment on column ACC.T_RPT_RECIEVE.SPARE2
  is '预留字段2';
comment on column ACC.T_RPT_RECIEVE.SPARE3
  is '预留字段3';
comment on column ACC.T_RPT_RECIEVE.SPARE4
  is '预留字段4';
comment on column ACC.T_RPT_RECIEVE.SPARE5
  is '预留字段5';
comment on column ACC.T_RPT_RECIEVE.PACKTYPE
  is '接受文件夹类型REC/ERR/HIS';

prompt
prompt Creating table T_RPT_SEND_COMMIT
prompt ================================
prompt
create table ACC.T_RPT_SEND_COMMIT
(
  TABLEID    VARCHAR2(50) not null,
  BUSINESSID VARCHAR2(50) not null,
  PACKNAME   VARCHAR2(50),
  FILENAME   VARCHAR2(50),
  IS_RECEIVE CHAR(1),
  IS_SENDMTS CHAR(1),
  SPARE1     VARCHAR2(128),
  SPARE2     VARCHAR2(128),
  SPARE3     VARCHAR2(128),
  SPARE4     VARCHAR2(128),
  SPARE5     VARCHAR2(128)
)
tablespace ACC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 384K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table ACC.T_RPT_SEND_COMMIT
  is '报文发送记录';
comment on column ACC.T_RPT_SEND_COMMIT.TABLEID
  is '报文表名';
comment on column ACC.T_RPT_SEND_COMMIT.BUSINESSID
  is '业务ID';
comment on column ACC.T_RPT_SEND_COMMIT.PACKNAME
  is '报送包名';
comment on column ACC.T_RPT_SEND_COMMIT.FILENAME
  is '报送文件名';
comment on column ACC.T_RPT_SEND_COMMIT.IS_RECEIVE
  is '是否收到反馈';
comment on column ACC.T_RPT_SEND_COMMIT.IS_SENDMTS
  is '是否发送MTS目录';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE1
  is '预留字段1';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE2
  is '预留字段2';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE3
  is '预留字段3';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE4
  is '预留字段4';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE5
  is '预留字段5';
create index ACC.IDX_RPT_SEND_COMMIT_PKN on ACC.T_RPT_SEND_COMMIT (PACKNAME)
  tablespace ACC
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
create index ACC.INDEX_BUSINESSID on ACC.T_RPT_SEND_COMMIT (BUSINESSID)
  tablespace ACC
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
create index ACC.INDEX_T_RPT_SEND_COMMIT_ID on ACC.T_RPT_SEND_COMMIT (TABLEID, BUSINESSID)
  tablespace ACC
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
prompt Creating table T_RPT_TABLE_INFO
prompt ===============================
prompt
create table ACC.T_RPT_TABLE_INFO
(
  ID            NUMBER(10) not null,
  INFO_TYPE     VARCHAR2(30),
  BUSI_TABLE_ID VARCHAR2(50),
  BUSI_NAME     VARCHAR2(50),
  IS_SHOW       NUMBER(10),
  ORDERBY       NUMBER(10),
  PBULICDATA    VARCHAR2(50),
  PRIVATEDATA   VARCHAR2(50),
  FILETYPE      VARCHAR2(2),
  IS_SHOW_LIST  NUMBER(10),
  ORDERBY_LIST  NUMBER(10)
)
tablespace ACC
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
create unique index ACC.UNIQUE_T_RPT_TABLE_INFO on ACC.T_RPT_TABLE_INFO (BUSI_TABLE_ID)
  tablespace ACC
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
prompt Creating table T_TASK_LOCK
prompt ==========================
prompt
create table ACC.T_TASK_LOCK
(
  TASK_ID   VARCHAR2(50) not null,
  TASK_INFO VARCHAR2(50),
  TASK_TYPE VARCHAR2(20)
)
tablespace ACC
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
alter table ACC.T_TASK_LOCK
  add constraint PK_T_TASK_LOCK primary key (TASK_ID)
  using index 
  tablespace ACC
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
prompt Creating table T_TASK_LOCK_INFO
prompt ===============================
prompt
create table ACC.T_TASK_LOCK_INFO
(
  ID       VARCHAR2(12) not null,
  TYPE     VARCHAR2(20) not null,
  END_DATE VARCHAR2(12),
  STEP     VARCHAR2(50),
  INFO     VARCHAR2(1000),
  RPTTITLE VARCHAR2(12) not null
)
tablespace ACC
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
comment on table ACC.T_TASK_LOCK_INFO
  is '监控信息表';
comment on column ACC.T_TASK_LOCK_INFO.RPTTITLE
  is '主报告行号';
alter table ACC.T_TASK_LOCK_INFO
  add constraint PK_T_TASK_LOCK_INFO primary key (ID, TYPE, RPTTITLE)
  using index 
  tablespace ACC
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
prompt Creating table T_VALID_ACCOUNT
prompt ==============================
prompt
create table ACC.T_VALID_ACCOUNT
(
  ACCOUNT       VARCHAR2(128),
  CURRENCE_CODE VARCHAR2(32),
  INSTCODE      VARCHAR2(50)
)
tablespace ACC
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
comment on table ACC.T_VALID_ACCOUNT
  is '当前有效账户信息表';
comment on column ACC.T_VALID_ACCOUNT.ACCOUNT
  is '账号';
comment on column ACC.T_VALID_ACCOUNT.CURRENCE_CODE
  is '币种';
comment on column ACC.T_VALID_ACCOUNT.INSTCODE
  is '机构代码';

prompt
prompt Creating table U_BASE_FORM_NO
prompt =============================
prompt
create table ACC.U_BASE_FORM_NO
(
  FORM_TYPE  VARCHAR2(5) not null,
  CURRENT_ID NUMBER(19) not null
)
tablespace ACC
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
comment on table ACC.U_BASE_FORM_NO
  is '用于系统不同类型编号';
comment on column ACC.U_BASE_FORM_NO.FORM_TYPE
  is '编号值
	和字典表进行关联';
comment on column ACC.U_BASE_FORM_NO.CURRENT_ID
  is '当前编号';
alter table ACC.U_BASE_FORM_NO
  add constraint PK_U_BASE_FORM_NO primary key (FORM_TYPE, CURRENT_ID)
  using index 
  tablespace ACC
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 320K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table U_BASE_SYS_LOG
prompt =============================
prompt
create table ACC.U_BASE_SYS_LOG
(
  LOG_ID      NUMBER(19) not null,
  USER_ID     VARCHAR2(20) not null,
  USER_ENAME  VARCHAR2(20),
  USER_CNAME  VARCHAR2(30),
  INST_ID     VARCHAR2(20) not null,
  INST_CNAME  VARCHAR2(30),
  MENU_ID     VARCHAR2(20),
  MENU_NAME   VARCHAR2(30),
  IP          VARCHAR2(20),
  BROWSE      VARCHAR2(200),
  LOG_TYPE    VARCHAR2(10),
  EXEC_TIME   DATE,
  DESCRIPTION VARCHAR2(500),
  STATUS      VARCHAR2(10)
)
tablespace ACC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 152M
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table ACC.U_BASE_SYS_LOG
  is '系统日志表';
comment on column ACC.U_BASE_SYS_LOG.LOG_ID
  is '日志编号';
comment on column ACC.U_BASE_SYS_LOG.USER_ID
  is '用户编号';
comment on column ACC.U_BASE_SYS_LOG.USER_ENAME
  is '用户登录名';
comment on column ACC.U_BASE_SYS_LOG.USER_CNAME
  is '用户中文';
comment on column ACC.U_BASE_SYS_LOG.INST_ID
  is '机构编号';
comment on column ACC.U_BASE_SYS_LOG.INST_CNAME
  is '机构名称';
comment on column ACC.U_BASE_SYS_LOG.MENU_ID
  is '栏目编号';
comment on column ACC.U_BASE_SYS_LOG.MENU_NAME
  is '栏目名称';
comment on column ACC.U_BASE_SYS_LOG.IP
  is '用户IP';
comment on column ACC.U_BASE_SYS_LOG.BROWSE
  is '用户浏览器';
comment on column ACC.U_BASE_SYS_LOG.LOG_TYPE
  is '日志类型
00001--用户登录日志';
comment on column ACC.U_BASE_SYS_LOG.EXEC_TIME
  is '执行时间';
comment on column ACC.U_BASE_SYS_LOG.DESCRIPTION
  is '描述';
comment on column ACC.U_BASE_SYS_LOG.STATUS
  is '状态';
alter table ACC.U_BASE_SYS_LOG
  add constraint PK_U_BASE_SYS_LOG primary key (LOG_ID)
  using index 
  tablespace ACC
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 23M
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table U_BASE_SYS_LOG_20140701
prompt ======================================
prompt
create table ACC.U_BASE_SYS_LOG_20140701
(
  LOG_ID      NUMBER(19) not null,
  USER_ID     VARCHAR2(20) not null,
  USER_ENAME  VARCHAR2(20),
  USER_CNAME  VARCHAR2(30),
  INST_ID     VARCHAR2(20) not null,
  INST_CNAME  VARCHAR2(30),
  MENU_ID     VARCHAR2(20),
  MENU_NAME   VARCHAR2(30),
  IP          VARCHAR2(20),
  BROWSE      VARCHAR2(200),
  LOG_TYPE    VARCHAR2(10),
  EXEC_TIME   DATE,
  DESCRIPTION VARCHAR2(500),
  STATUS      VARCHAR2(10)
)
tablespace ACC
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
prompt Creating sequence S_T_CODE_DICTIONARY
prompt =====================================
prompt
create sequence ACC.S_T_CODE_DICTIONARY
minvalue 1
maxvalue 999999999999999999999999999
start with 5600
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_ERROR_FEEDBACK
prompt ====================================
prompt
create sequence ACC.S_T_ERROR_FEEDBACK
minvalue 1
maxvalue 999999999999999999999999999
start with 34782
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_FILEM_LOG
prompt ===============================
prompt
create sequence ACC.S_T_FILEM_LOG
minvalue 1
maxvalue 999999999999999999999999999
start with 33702
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_FILEM_VALIDATE
prompt ====================================
prompt
create sequence ACC.S_T_FILEM_VALIDATE
minvalue 1
maxvalue 99999999999999999
start with 1
increment by 1
cache 30;

prompt
prompt Creating view T_ORG
prompt ===================
prompt
CREATE OR REPLACE VIEW ACC.T_ORG AS
SELECT INST_ID AS ID,
       case when INST_NAME Is  null then t2.org_name else INST_NAME end as NAME,
       INST_SMP_NAME AS SHORTNAME,
       INST_ID as CUSTOMID,
       '0' AS ISSHOW,
       INST_LAYER     AS LAYER,
       PARENT_INST_ID AS PARENTID,
       INST_PATH AS PATH
FROM UPRR.U_BASE_INST t1
LEFT JOIN T_ORG_CONFIG t2
on t1.inst_id = t2.org_id
/

prompt
prompt Creating view T_USER
prompt ====================
prompt
CREATE OR REPLACE VIEW ACC.T_USER AS
SELECT A.USER_ID    AS ID,
       A.USER_ENAME AS USERNAME,
       A.USER_CNAME AS NAME,
       A.PASSWORD   AS PASSWORD,
       A.DESCRIPTION AS DESCRIPTION,
       A.INST_ID AS FK_ORGID,
       '1' AS CHANGEPASSWORD,
       '0' AS ISSHOW,
       A.TEL AS PHONE
  FROM UPRR.U_BASE_USER A
/

prompt
prompt Creating view T_USER_ORG
prompt ========================
prompt
create or replace view acc.t_user_org as
select
       1 as ID,
       user_id as FK_USERID,
       inst_id as FK_ORGID
from UPRR.V_INST_AUTHOR_FOR_ACC
/

prompt
prompt Creating view V_ACC_USER
prompt ========================
prompt
create or replace view acc.v_acc_user as
select u.user_id, u.user_ename, u.user_cname, u.inst_id, o.inst_name
  from uprr.u_base_user u
  left join uprr.u_base_inst o on u.inst_id = o.inst_id,
 uprr.u_auth_role_user ru,
 uprr.u_auth_role r
 where u.user_id = ru.user_id
   and ru.role_id = r.role_id
   and r.system_id = '00102'
/

prompt
prompt Creating view V_ROLE_USER
prompt =========================
prompt
create or replace view acc.v_role_user as
select r.role_id, r.role_name, r.enabled, r.system_id, ru.user_id
  from uprr.u_auth_role r
  left join uprr.u_auth_role_user ru on r.role_id = ru.role_id
 where r.system_id = '00102'
/


spool off
