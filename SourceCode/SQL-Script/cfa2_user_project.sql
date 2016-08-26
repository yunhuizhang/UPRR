------------------------------------------------
-- Export file for user CFA2                  --
-- Created by 43631009 on 2016/8/18, 13:57:42 --
------------------------------------------------

spool cfa2_user_project.log

prompt
prompt Creating table EXDEBT_SYN_RECORD
prompt ================================
prompt
create table CFA2.EXDEBT_SYN_RECORD
(
  PACKAGE_DATE  VARCHAR2(10) not null,
  PACHAGE_NAME  VARCHAR2(50) not null,
  IS_SYN        VARCHAR2(1),
  RECORD_NUMBER NUMBER
)
tablespace USERS
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
comment on table CFA2.EXDEBT_SYN_RECORD
  is 'EXD外债数据同步CFA记录表';
comment on column CFA2.EXDEBT_SYN_RECORD.PACKAGE_DATE
  is '数据包生成日期';
comment on column CFA2.EXDEBT_SYN_RECORD.PACHAGE_NAME
  is '数据包名称';
comment on column CFA2.EXDEBT_SYN_RECORD.IS_SYN
  is '是否已经同步标识Y/N';
comment on column CFA2.EXDEBT_SYN_RECORD.RECORD_NUMBER
  is '数据包中对应业务数据量';
create index CFA2.EXDEBT_SYN_INDEX on CFA2.EXDEBT_SYN_RECORD (PACKAGE_DATE, PACHAGE_NAME)
  tablespace USERS
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
grant select, insert on CFA2.EXDEBT_SYN_RECORD to DATACORE;
grant select, insert on CFA2.EXDEBT_SYN_RECORD to DATACOREFF;
grant select, insert on CFA2.EXDEBT_SYN_RECORD to DATACOREOPR;

prompt
prompt Creating table EXD_BUBAO_RECORD
prompt ===============================
prompt
create table CFA2.EXD_BUBAO_RECORD
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(100) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 104M
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table CFA2.EXD_BUBAO_RECORD
  add constraint PK_BUSINESSID primary key (BUSINESSID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 16M
    next 1M
    minextents 1
    maxextents unlimited
  );
grant select, insert, update, delete on CFA2.EXD_BUBAO_RECORD to DATACORE;
grant select, insert, update, delete on CFA2.EXD_BUBAO_RECORD to DATACOREFF;
grant select, insert, update, delete on CFA2.EXD_BUBAO_RECORD to DATACOREOPR;

prompt
prompt Creating table EXD_BUBAO_RECORD_1010
prompt ====================================
prompt
create table CFA2.EXD_BUBAO_RECORD_1010
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(100) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table EXD_BUBAO_RECORD_20141009
prompt ========================================
prompt
create table CFA2.EXD_BUBAO_RECORD_20141009
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(100) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table PUB_HOME_DIC
prompt ===========================
prompt
create table CFA2.PUB_HOME_DIC
(
  DIC_ID          NUMBER not null,
  DIC_TYPE        VARCHAR2(20),
  DIC_TYPENAME    VARCHAR2(50),
  DIC_NAME        VARCHAR2(50),
  DIC_VALUE       VARCHAR2(50),
  DIC_LIST_TARGET VARCHAR2(200),
  DIC_EDIT_TARGET VARCHAR2(200),
  DIC_EDIT_MENUID VARCHAR2(200)
)
tablespace CFA2
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
comment on column CFA2.PUB_HOME_DIC.DIC_ID
  is '字典id';
comment on column CFA2.PUB_HOME_DIC.DIC_TYPE
  is '字典类型';
comment on column CFA2.PUB_HOME_DIC.DIC_TYPENAME
  is '类型名';
comment on column CFA2.PUB_HOME_DIC.DIC_NAME
  is '值名';
comment on column CFA2.PUB_HOME_DIC.DIC_VALUE
  is '值';
comment on column CFA2.PUB_HOME_DIC.DIC_LIST_TARGET
  is '对应的列表连接';
comment on column CFA2.PUB_HOME_DIC.DIC_EDIT_TARGET
  is '对应的编辑连接';
alter table CFA2.PUB_HOME_DIC
  add constraint PK_PUB_HOME_DIC primary key (DIC_ID)
  using index 
  tablespace CFA2
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
prompt Creating table SQL_HISTORY
prompt ==========================
prompt
create table CFA2.SQL_HISTORY
(
  SQL_MARK     VARCHAR2(100) not null,
  SYSTEM_ID    VARCHAR2(10) not null,
  SYSTEM_NAME  VARCHAR2(10),
  EXECUTE_TIME VARCHAR2(10),
  DESCR        VARCHAR2(100),
  P_VERSION    VARCHAR2(10)
)
tablespace CFA2
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
comment on table CFA2.SQL_HISTORY
  is '脚本执行记录';
comment on column CFA2.SQL_HISTORY.SQL_MARK
  is '脚本名称';
comment on column CFA2.SQL_HISTORY.SYSTEM_ID
  is '子系统id';
comment on column CFA2.SQL_HISTORY.SYSTEM_NAME
  is '子模块名称';
comment on column CFA2.SQL_HISTORY.EXECUTE_TIME
  is '执行日期';
comment on column CFA2.SQL_HISTORY.DESCR
  is '描述';
comment on column CFA2.SQL_HISTORY.P_VERSION
  is '程序版本号';
alter table CFA2.SQL_HISTORY
  add constraint PK_SQL_HISTORY primary key (SQL_MARK, SYSTEM_ID)
  using index 
  tablespace CFA2
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
prompt Creating table SUBJECT_INFO
prompt ===========================
prompt
create table CFA2.SUBJECT_INFO
(
  SUBJECT_ID   VARCHAR2(10) not null,
  ID           NUMBER(19) not null,
  SUBJECT_NAME VARCHAR2(200) not null,
  SUBJECT_KEY  VARCHAR2(200),
  SYSTEM_ID    VARCHAR2(10) not null
)
tablespace CFA2
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
prompt Creating table SUBJECT_OBJECT_RELATION
prompt ======================================
prompt
create table CFA2.SUBJECT_OBJECT_RELATION
(
  SUBJECT_ID  VARCHAR2(10) not null,
  OBJECT_ID   VARCHAR2(100) not null,
  OBJECT_TYPE VARCHAR2(30) not null,
  ID          NUMBER(38) not null,
  SYSTEM_ID   VARCHAR2(10) not null
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT
prompt =============================
prompt
create table CFA2.T_CFA_A_EXDEBT
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
comment on table CFA2.T_CFA_A_EXDEBT
  is '自身资本项目－外债信息';
comment on column CFA2.T_CFA_A_EXDEBT.ACTIONTYPE
  is '操作类型';
comment on column CFA2.T_CFA_A_EXDEBT.ACTIONDESC
  is '删除原因';
comment on column CFA2.T_CFA_A_EXDEBT.EXDEBTCODE
  is '外债编号';
comment on column CFA2.T_CFA_A_EXDEBT.LIMITTYPE
  is '账户类型';
comment on column CFA2.T_CFA_A_EXDEBT.DEBTORCODE
  is '债务人代码';
comment on column CFA2.T_CFA_A_EXDEBT.DEBTYPE
  is '债务类型';
comment on column CFA2.T_CFA_A_EXDEBT.DEBTYPEREMA
  is '债务类型备注';
comment on column CFA2.T_CFA_A_EXDEBT.CONTRACTDATE
  is '签约日期';
comment on column CFA2.T_CFA_A_EXDEBT.VALUEDATE
  is '起息日';
comment on column CFA2.T_CFA_A_EXDEBT.CONTRACTCURR
  is '签约币种';
comment on column CFA2.T_CFA_A_EXDEBT.CONTRACTAMOUNT
  is '签约金额';
comment on column CFA2.T_CFA_A_EXDEBT.MATURITY
  is '到期日';
comment on column CFA2.T_CFA_A_EXDEBT.FLOATRATE
  is '是否浮动利率';
comment on column CFA2.T_CFA_A_EXDEBT.ANNINRATE
  is '年化利率值';
comment on column CFA2.T_CFA_A_EXDEBT.INPRIAMOUNT
  is '利息本金化金额';
comment on column CFA2.T_CFA_A_EXDEBT.CREDITORCODE
  is '债权人代码';
comment on column CFA2.T_CFA_A_EXDEBT.CREDITORNAME
  is '债权人中文名称';
comment on column CFA2.T_CFA_A_EXDEBT.CREDITORNAMEN
  is '债权人英文名称';
comment on column CFA2.T_CFA_A_EXDEBT.CREDITORTYPE
  is '债权人类型代码';
comment on column CFA2.T_CFA_A_EXDEBT.CREHQCODE
  is '债权人总部所在国家（地区）代码';
comment on column CFA2.T_CFA_A_EXDEBT.OPERCODE
  is '债权人经营地所在国家（地区）代码';
comment on column CFA2.T_CFA_A_EXDEBT.INPRTERM
  is '是否有利息本金化条款';
comment on column CFA2.T_CFA_A_EXDEBT.SPAPFEBOINDEX
  is '是否经外汇局特批不需占用指标';
comment on column CFA2.T_CFA_A_EXDEBT.APPCODE
  is '申请人代码';
comment on column CFA2.T_CFA_A_EXDEBT.APPNAME
  is '申请人名称';
comment on column CFA2.T_CFA_A_EXDEBT.INLTCABUSCODE
  is '承继的远期信用证承兑银行业务参号';
comment on column CFA2.T_CFA_A_EXDEBT.ISINCODE
  is '国际证券识别编码';
comment on column CFA2.T_CFA_A_EXDEBT.PROJECTNAME
  is '项目名称';
comment on column CFA2.T_CFA_A_EXDEBT.REMARK
  is '备注';
comment on column CFA2.T_CFA_A_EXDEBT.BUSCODE
  is '银行业务参号';
comment on column CFA2.T_CFA_A_EXDEBT.CHANGENO
  is '变动编号';
comment on column CFA2.T_CFA_A_EXDEBT.CHANGTYPE
  is '变动类型';
comment on column CFA2.T_CFA_A_EXDEBT.CHDATE
  is '变动日期';
comment on column CFA2.T_CFA_A_EXDEBT.CHCURRENCY
  is '变动币种';
comment on column CFA2.T_CFA_A_EXDEBT.CHAMOUNT
  is '变动金额';
comment on column CFA2.T_CFA_A_EXDEBT.FAIRVALUE
  is '公允价值';
comment on column CFA2.T_CFA_A_EXDEBT.ACCOAMOUNT
  is '外债余额';
comment on column CFA2.T_CFA_A_EXDEBT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_A_EXDEBT.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_A_EXDEBT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_A_EXDEBT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_A_EXDEBT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_A_EXDEBT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_A_EXDEBT.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_A_EXDEBT.TRADEDATE
  is '交易日期';
comment on column CFA2.T_CFA_A_EXDEBT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_A_EXDEBT.BUSINESSNO
  is '业务编号';
comment on column CFA2.T_CFA_A_EXDEBT.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column CFA2.T_CFA_A_EXDEBT.TEAMID
  is '团队ID(记录T_RPT_BUSS_TYPE表业务类型编号)';
comment on column CFA2.T_CFA_A_EXDEBT.RELATION
  is '对方与本机构的关系';
comment on column CFA2.T_CFA_A_EXDEBT.CREDITTYPE
  is '相关业务类型';
comment on column CFA2.T_CFA_A_EXDEBT.BILLSN
  is '是否附有银行承兑汇票';
comment on column CFA2.T_CFA_A_EXDEBT.DEPTYPE
  is '存款业务类别';
comment on column CFA2.T_CFA_A_EXDEBT.ORIGINALPERIOD
  is '原始期限';
alter table CFA2.T_CFA_A_EXDEBT
  add constraint PK_T_CFA_A_EXDEBT primary key (BUSINESSID)
  using index 
  tablespace CFA2
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
create index CFA2.IDX_T_CFA_A_EXDEBT on CFA2.T_CFA_A_EXDEBT (SUBSTR(BUSINESSNO,0,12), FILETYPE)
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
create index CFA2.IDX_T_CFA_A_EXDEBT_A on CFA2.T_CFA_A_EXDEBT (INSTCODE, DATASTATUS, FILETYPE)
  tablespace CFA2
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
create index CFA2.IDX_T_CFA_A_EXDEBT_B on CFA2.T_CFA_A_EXDEBT (BUSINESSNO, FILETYPE, INSTCODE, DATASTATUS)
  tablespace CFA2
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
create index CFA2.IDX_T_CFA_A_EXDEBT_TYPE on CFA2.T_CFA_A_EXDEBT (DEBTYPE, FILETYPE)
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
create index CFA2.INDEX_BNO_T_CFA_A_EXDEBT on CFA2.T_CFA_A_EXDEBT (BUSINESSNO)
  tablespace CFA2
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
create index CFA2.INDEX_EXD_T_CFA_A_EXDEBT on CFA2.T_CFA_A_EXDEBT (EXDEBTCODE)
  tablespace CFA2
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
create index CFA2.INDEX_FTYPE_T_CFA_A_EXDEBT on CFA2.T_CFA_A_EXDEBT (FILETYPE)
  tablespace CFA2
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
create index CFA2.INDEX_IMP_T_CFA_A_EXDEBT on CFA2.T_CFA_A_EXDEBT (IMPORTDATE)
  tablespace CFA2
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
grant select, insert, update, delete on CFA2.T_CFA_A_EXDEBT to DATACORE;
grant select, insert, update, delete on CFA2.T_CFA_A_EXDEBT to DATACOREFF;
grant select, insert, update, delete on CFA2.T_CFA_A_EXDEBT to DATACOREOPR;

prompt
prompt Creating table T_CFA_A_EXDEBT_0628
prompt ==================================
prompt
create table CFA2.T_CFA_A_EXDEBT_0628
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_0629HSS
prompt =====================================
prompt
create table CFA2.T_CFA_A_EXDEBT_0629HSS
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_1010
prompt ==================================
prompt
create table CFA2.T_CFA_A_EXDEBT_1010
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_1015
prompt ==================================
prompt
create table CFA2.T_CFA_A_EXDEBT_1015
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_20141009
prompt ======================================
prompt
create table CFA2.T_CFA_A_EXDEBT_20141009
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_20141010
prompt ======================================
prompt
create table CFA2.T_CFA_A_EXDEBT_20141010
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_20141011
prompt ======================================
prompt
create table CFA2.T_CFA_A_EXDEBT_20141011
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_20150126
prompt ======================================
prompt
create table CFA2.T_CFA_A_EXDEBT_20150126
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_CHANGE
prompt ====================================
prompt
create table CFA2.T_CFA_A_EXDEBT_CHANGE
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_CREDITCARD_BAK
prompt ============================================
prompt
create table CFA2.T_CFA_A_EXDEBT_CREDITCARD_BAK
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_CZF_0622
prompt ======================================
prompt
create table CFA2.T_CFA_A_EXDEBT_CZF_0622
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_HZ
prompt ================================
prompt
create table CFA2.T_CFA_A_EXDEBT_HZ
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_JYZ
prompt =================================
prompt
create table CFA2.T_CFA_A_EXDEBT_JYZ
(
  EXDEBTCODE VARCHAR2(56),
  ACCOAMOUNT NUMBER(27,2)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_JYZ2
prompt ==================================
prompt
create table CFA2.T_CFA_A_EXDEBT_JYZ2
(
  EXDEBTCODE VARCHAR2(56),
  ACCOAMOUNT NUMBER(27,2)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_REUP
prompt ==================================
prompt
create table CFA2.T_CFA_A_EXDEBT_REUP
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_A_EXDEBT_ZT9
prompt =================================
prompt
create table CFA2.T_CFA_A_EXDEBT_ZT9
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXDEBTCODE     VARCHAR2(56),
  LIMITTYPE      VARCHAR2(4),
  DEBTORCODE     VARCHAR2(24),
  DEBTYPE        CHAR(4),
  DEBTYPEREMA    VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  VALUEDATE      VARCHAR2(8),
  CONTRACTCURR   CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  FLOATRATE      CHAR(1),
  ANNINRATE      NUMBER(21,8),
  INPRIAMOUNT    NUMBER(27,2),
  CREDITORCODE   VARCHAR2(11),
  CREDITORNAME   VARCHAR2(256),
  CREDITORNAMEN  VARCHAR2(256),
  CREDITORTYPE   CHAR(8),
  CREHQCODE      CHAR(3),
  OPERCODE       CHAR(3),
  INPRTERM       CHAR(1),
  SPAPFEBOINDEX  CHAR(1),
  APPCODE        VARCHAR2(36),
  APPNAME        VARCHAR2(256),
  INLTCABUSCODE  VARCHAR2(64),
  ISINCODE       VARCHAR2(24),
  PROJECTNAME    VARCHAR2(256),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  CHANGTYPE      CHAR(4),
  CHDATE         VARCHAR2(16),
  CHCURRENCY     CHAR(3),
  CHAMOUNT       NUMBER(27,2),
  FAIRVALUE      NUMBER(27,2),
  ACCOAMOUNT     NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10),
  RELATION       VARCHAR2(2),
  CREDITTYPE     VARCHAR2(1),
  BILLSN         VARCHAR2(1),
  DEPTYPE        VARCHAR2(1),
  ORIGINALPERIOD VARCHAR2(1)
)
tablespace CFA2
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
prompt Creating table T_CFA_BESTIR_ACCOUNT_CLOESD
prompt ==========================================
prompt
create table CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD
(
  BUSINESSID                    VARCHAR2(50),
  BUSINESS_NUM                  VARCHAR2(20),
  OPEN_BANK_ID                  VARCHAR2(12),
  OPEN_AGENCY_INST_ID           VARCHAR2(9),
  DEDICATED_ACCOUNT             VARCHAR2(32),
  CLOSE_DATA                    CHAR(8),
  CLOSE_REASON                  VARCHAR2(128),
  CLOSED_ASSETS_DEAL_TYPE       VARCHAR2(4),
  SETTLEMENT_TO_ACCOUNT_BANK_ID VARCHAR2(12),
  SETTLEMENT_TO_ACCOUNT_NAME    VARCHAR2(128),
  SETTLEMENT_TO_ACCOUNT         VARCHAR2(64),
  TO_ACCOUNT_BANK_ID            VARCHAR2(12),
  TO_ACCOUNT_NAME               VARCHAR2(128),
  TO_ACCOUNT                    VARCHAR2(64),
  EXPEND_OVER_ACCOUNT_BANK_ID   VARCHAR2(32),
  EXPEND_OVER_ACCOUNT_NAME      VARCHAR2(128),
  EXPEND_OVER_ACCOUNT           VARCHAR2(64),
  REMARK                        VARCHAR2(256),
  FILETYPE                      VARCHAR2(2),
  AUDITNAME                     VARCHAR2(50),
  AUDITDATE                     DATE,
  IMPORTDATE                    DATE,
  DATASTATUS                    NUMBER(10),
  BUSINESSDATE                  VARCHAR2(8),
  MODIFYUSER                    VARCHAR2(30),
  INSTCODE                      VARCHAR2(50),
  IS_HANDIWORK                  CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD
  is ' 境内专用外汇账户关户资金处置信息';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.OPEN_BANK_ID
  is '开户银行代码';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.OPEN_AGENCY_INST_ID
  is '开户境内代理机构代码';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.DEDICATED_ACCOUNT
  is '境内专用外汇账户账号';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.CLOSE_DATA
  is '关户日期';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.CLOSE_REASON
  is '关户原因';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.CLOSED_ASSETS_DEAL_TYPE
  is '关户后资金处置类型';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.SETTLEMENT_TO_ACCOUNT_BANK_ID
  is '结汇所得人民币资金划往的账户开户行代码';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.SETTLEMENT_TO_ACCOUNT_NAME
  is '结汇所得人民币资金划往的账户户名';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.SETTLEMENT_TO_ACCOUNT
  is '结汇所得人民币资金划往的账户账号';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.TO_ACCOUNT_BANK_ID
  is '划往境内外汇账户开户行代码';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.TO_ACCOUNT_NAME
  is '划往境内外汇账户户名';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.TO_ACCOUNT
  is '划往境内外汇账户账号';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.EXPEND_OVER_ACCOUNT_BANK_ID
  is '汇出境外收款账户开户行代码';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.EXPEND_OVER_ACCOUNT_NAME
  is '汇出境外收款账户户名';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.EXPEND_OVER_ACCOUNT
  is '汇出境外收款账户账号';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.REMARK
  is '备注';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_BESTIR_ACCOUNT_CLOESD.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_BESTIR_CHANGES
prompt ===================================
prompt
create table CFA2.T_CFA_BESTIR_CHANGES
(
  BUSINESSID                   VARCHAR2(20),
  BUSINESS_NUM                 VARCHAR2(20),
  OPEN_BANK_ID                 VARCHAR2(12),
  OPEN_AGENCY_INST_ID          VARCHAR2(9),
  OPEN_AGENCY_INST_NAME        VARCHAR2(128),
  DEDICATED_ACCOUNT            VARCHAR2(64),
  REPORT_PERIOD                NUMBER(6),
  CURRENCE_CODE                VARCHAR2(3),
  MONTH_BEGIN_BALANCE          NUMBER(22,2),
  INCOME_AMOUNT                NUMBER(22,2),
  BUY_INCOME_AMOUNT            NUMBER(22,2),
  PERSON_SAVING_ACCOUNT_INCOME NUMBER(22,2),
  OVER_INVEST_PROFIT_BACK      NUMBER(22,2),
  EXPEND_AMOUNT                NUMBER(22,2),
  EXPEND_OVERSEAS_AMOUNT       NUMBER(22,2),
  SETTLEMENT_AMOUNT            NUMBER(22,2),
  TO_PERSON_ACCOUNT_AMOUNT     NUMBER(22,2),
  MONTH_END_BALANCE            NUMBER(22,2),
  OTHER_CLEAR_CHANGES_AMOUNT   NUMBER(22,2),
  REMARK                       VARCHAR2(256),
  FILETYPE                     VARCHAR2(2),
  INSTCODE                     VARCHAR2(50),
  AUDITNAME                    VARCHAR2(50),
  AUDITDATE                    DATE,
  IMPORTDATE                   DATE,
  DATASTATUS                   NUMBER(10),
  BUSINESSDATE                 VARCHAR2(8),
  MODIFYUSER                   VARCHAR2(30),
  IS_HANDIWORK                 CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_BESTIR_CHANGES
  is '境内专用外汇账户收支信息';
comment on column CFA2.T_CFA_BESTIR_CHANGES.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_BESTIR_CHANGES.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_BESTIR_CHANGES.OPEN_BANK_ID
  is '开户银行代码';
comment on column CFA2.T_CFA_BESTIR_CHANGES.OPEN_AGENCY_INST_ID
  is '开户境内代理机构代码';
comment on column CFA2.T_CFA_BESTIR_CHANGES.OPEN_AGENCY_INST_NAME
  is '开户境内代理机构名称';
comment on column CFA2.T_CFA_BESTIR_CHANGES.DEDICATED_ACCOUNT
  is '境内专用外汇账户账号';
comment on column CFA2.T_CFA_BESTIR_CHANGES.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_BESTIR_CHANGES.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_BESTIR_CHANGES.MONTH_BEGIN_BALANCE
  is '月初余额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.INCOME_AMOUNT
  is '汇入金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.BUY_INCOME_AMOUNT
  is '购汇汇入金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.PERSON_SAVING_ACCOUNT_INCOME
  is '个人外汇储蓄账户划入金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.OVER_INVEST_PROFIT_BACK
  is '境外投资本金及收益汇回金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.EXPEND_AMOUNT
  is '汇出金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.EXPEND_OVERSEAS_AMOUNT
  is '汇往境外金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.SETTLEMENT_AMOUNT
  is '结汇金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.TO_PERSON_ACCOUNT_AMOUNT
  is '划入个人外汇储蓄账户金额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.MONTH_END_BALANCE
  is '月末账户余额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.OTHER_CLEAR_CHANGES_AMOUNT
  is '其他收支净额';
comment on column CFA2.T_CFA_BESTIR_CHANGES.REMARK
  is '备注';
comment on column CFA2.T_CFA_BESTIR_CHANGES.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_BESTIR_CHANGES.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_BESTIR_CHANGES.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_BESTIR_CHANGES.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_BESTIR_CHANGES.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_BESTIR_CHANGES.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_BESTIR_CHANGES.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_BESTIR_CHANGES.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_BESTIR_CHANGES.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_B_EXGUARAN
prompt ===============================
prompt
create table CFA2.T_CFA_B_EXGUARAN
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  EXGUARANCODE   VARCHAR2(28),
  GUARANTORCODE  VARCHAR2(12),
  CONTRACTDATE   VARCHAR2(8),
  GUARANAMOUNT   NUMBER(27,2),
  GUARANCURR     CHAR(3),
  MATURITY       VARCHAR2(8),
  GUARANTYPE     VARCHAR2(4),
  MAINDEBTCURR   CHAR(3),
  MAINDEBTAMOUNT NUMBER(27,2),
  BENEFICIARYS   VARCHAR2(5),
  GUARANTORES    VARCHAR2(5),
  GUAPPCODE      VARCHAR2(64),
  GUAPPNAME      VARCHAR2(256),
  GUAPPNAMEN     VARCHAR2(256),
  APPDOCUNO      VARCHAR2(256),
  REMARK         VARCHAR2(512),
  WABACHANDATE   VARCHAR2(8),
  BASERE         NUMBER(27,2),
  COMPLIANCENO   VARCHAR2(5),
  BUSCODE        VARCHAR2(64),
  BENCODE        VARCHAR2(64),
  BENAME         VARCHAR2(256),
  BENAMEN        VARCHAR2(256),
  GUPERDATE      VARCHAR2(8),
  GUPERCURR      CHAR(3),
  GUPERAMOUNT    NUMBER(27,2),
  PGUPERAMOUNT   NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_B_EXGUARAN
  is '自身资本项目－对外担保信息';
comment on column CFA2.T_CFA_B_EXGUARAN.ACTIONTYPE
  is '操作类型';
comment on column CFA2.T_CFA_B_EXGUARAN.ACTIONDESC
  is '删除原因';
comment on column CFA2.T_CFA_B_EXGUARAN.EXGUARANCODE
  is '对外担保编号';
comment on column CFA2.T_CFA_B_EXGUARAN.GUARANTORCODE
  is '担保人代码';
comment on column CFA2.T_CFA_B_EXGUARAN.CONTRACTDATE
  is '签约日期';
comment on column CFA2.T_CFA_B_EXGUARAN.GUARANAMOUNT
  is '保函金额';
comment on column CFA2.T_CFA_B_EXGUARAN.GUARANCURR
  is '保函币种';
comment on column CFA2.T_CFA_B_EXGUARAN.MATURITY
  is '到期日';
comment on column CFA2.T_CFA_B_EXGUARAN.GUARANTYPE
  is '担保类型';
comment on column CFA2.T_CFA_B_EXGUARAN.MAINDEBTCURR
  is '主债务币种';
comment on column CFA2.T_CFA_B_EXGUARAN.MAINDEBTAMOUNT
  is '主债务金额';
comment on column CFA2.T_CFA_B_EXGUARAN.BENEFICIARYS
  is '受益人信息';
comment on column CFA2.T_CFA_B_EXGUARAN.GUARANTORES
  is '被担保人信息';
comment on column CFA2.T_CFA_B_EXGUARAN.GUAPPCODE
  is '担保申请人代码';
comment on column CFA2.T_CFA_B_EXGUARAN.GUAPPNAME
  is '担保申请人中文名称';
comment on column CFA2.T_CFA_B_EXGUARAN.GUAPPNAMEN
  is '担保申请人英文名称';
comment on column CFA2.T_CFA_B_EXGUARAN.APPDOCUNO
  is '核准文件号';
comment on column CFA2.T_CFA_B_EXGUARAN.REMARK
  is '备注';
comment on column CFA2.T_CFA_B_EXGUARAN.WABACHANDATE
  is '担保责任余额变动日期';
comment on column CFA2.T_CFA_B_EXGUARAN.BASERE
  is '担保责任余额';
comment on column CFA2.T_CFA_B_EXGUARAN.COMPLIANCENO
  is '履约编号';
comment on column CFA2.T_CFA_B_EXGUARAN.BUSCODE
  is '银行业务参号';
comment on column CFA2.T_CFA_B_EXGUARAN.BENCODE
  is '受益人代码';
comment on column CFA2.T_CFA_B_EXGUARAN.BENAME
  is '受益人中文名称';
comment on column CFA2.T_CFA_B_EXGUARAN.BENAMEN
  is '受益人英文名称';
comment on column CFA2.T_CFA_B_EXGUARAN.GUPERDATE
  is '履约日期';
comment on column CFA2.T_CFA_B_EXGUARAN.GUPERCURR
  is '履约币种';
comment on column CFA2.T_CFA_B_EXGUARAN.GUPERAMOUNT
  is '履约金额';
comment on column CFA2.T_CFA_B_EXGUARAN.PGUPERAMOUNT
  is '购汇履约金额';
comment on column CFA2.T_CFA_B_EXGUARAN.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_B_EXGUARAN.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_B_EXGUARAN.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_B_EXGUARAN.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_B_EXGUARAN.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_B_EXGUARAN.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_B_EXGUARAN.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_B_EXGUARAN.TRADEDATE
  is '交易日期';
comment on column CFA2.T_CFA_B_EXGUARAN.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_B_EXGUARAN.BUSINESSNO
  is '业务编号';
comment on column CFA2.T_CFA_B_EXGUARAN.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column CFA2.T_CFA_B_EXGUARAN.TEAMID
  is '团队ID(记录T_RPT_BUSS_TYPE表业务类型编号)';
alter table CFA2.T_CFA_B_EXGUARAN
  add constraint PK_T_CFA_B_EXGUARAN primary key (BUSINESSID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_BNO_T_CFA_B_EXGUARAN on CFA2.T_CFA_B_EXGUARAN (BUSINESSNO)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_FTYPE_T_CFA_B_EXGUARAN on CFA2.T_CFA_B_EXGUARAN (FILETYPE)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_C_DOFOEXLO
prompt ===============================
prompt
create table CFA2.T_CFA_C_DOFOEXLO
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  DOFOEXLOCODE   VARCHAR2(56),
  CREDITORCODE   VARCHAR2(24),
  DEBTORCODE     VARCHAR2(18),
  DEBTORNAME     VARCHAR2(256),
  DOFOEXLOTYPE   CHAR(4),
  LENPRONAME     VARCHAR2(256),
  LENAGREE       VARCHAR2(256),
  VALUEDATE      VARCHAR2(8),
  MATURITY       CHAR(8),
  CURRENCE       CHAR(3),
  CONTRACTAMOUNT NUMBER(27,2),
  ANNINRATE      NUMBER(21,8),
  REMARK         VARCHAR2(512),
  BUSCODE        VARCHAR2(64),
  CHANGENO       VARCHAR2(8),
  LOANOPENBALAN  NUMBER(27,2),
  CHANGEDATE     VARCHAR2(8),
  WITHCURRENCE   CHAR(3),
  WITHAMOUNT     NUMBER(27,2),
  SETTAMOUNT     NUMBER(27,2),
  USEOFUNDS      CHAR(2),
  PRINCURR       CHAR(3),
  REPAYAMOUNT    NUMBER(27,2),
  PREPAYAMOUNT   NUMBER(27,2),
  INPAYCURR      CHAR(3),
  INPAYAMOUNT    NUMBER(27,2),
  PINPAYAMOUNT   NUMBER(27,2),
  ENDBALAN       NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_C_DOFOEXLO
  is '自身资本项目－国内外汇贷款（含外债转贷款）信息';
comment on column CFA2.T_CFA_C_DOFOEXLO.ACTIONTYPE
  is '操作类型';
comment on column CFA2.T_CFA_C_DOFOEXLO.ACTIONDESC
  is '删除原因';
comment on column CFA2.T_CFA_C_DOFOEXLO.DOFOEXLOCODE
  is '国内外汇贷款编号';
comment on column CFA2.T_CFA_C_DOFOEXLO.CREDITORCODE
  is '债权人代码';
comment on column CFA2.T_CFA_C_DOFOEXLO.DEBTORCODE
  is '债务人代码';
comment on column CFA2.T_CFA_C_DOFOEXLO.DEBTORNAME
  is '债务人中文名称';
comment on column CFA2.T_CFA_C_DOFOEXLO.DOFOEXLOTYPE
  is '国内外汇贷款类型';
comment on column CFA2.T_CFA_C_DOFOEXLO.LENPRONAME
  is '转贷项目名称';
comment on column CFA2.T_CFA_C_DOFOEXLO.LENAGREE
  is '转贷协议号';
comment on column CFA2.T_CFA_C_DOFOEXLO.VALUEDATE
  is '起息日';
comment on column CFA2.T_CFA_C_DOFOEXLO.MATURITY
  is '到期日';
comment on column CFA2.T_CFA_C_DOFOEXLO.CURRENCE
  is '贷款币种';
comment on column CFA2.T_CFA_C_DOFOEXLO.CONTRACTAMOUNT
  is '签约金额';
comment on column CFA2.T_CFA_C_DOFOEXLO.ANNINRATE
  is '年化利率值';
comment on column CFA2.T_CFA_C_DOFOEXLO.REMARK
  is '备注';
comment on column CFA2.T_CFA_C_DOFOEXLO.BUSCODE
  is '银行业务参号';
comment on column CFA2.T_CFA_C_DOFOEXLO.CHANGENO
  is '变动编号';
comment on column CFA2.T_CFA_C_DOFOEXLO.LOANOPENBALAN
  is '期初余额';
comment on column CFA2.T_CFA_C_DOFOEXLO.CHANGEDATE
  is '变动日期';
comment on column CFA2.T_CFA_C_DOFOEXLO.WITHCURRENCE
  is '提款币种';
comment on column CFA2.T_CFA_C_DOFOEXLO.WITHAMOUNT
  is '提款金额';
comment on column CFA2.T_CFA_C_DOFOEXLO.SETTAMOUNT
  is '结汇金额';
comment on column CFA2.T_CFA_C_DOFOEXLO.USEOFUNDS
  is '资金用途';
comment on column CFA2.T_CFA_C_DOFOEXLO.PRINCURR
  is '还本币种';
comment on column CFA2.T_CFA_C_DOFOEXLO.REPAYAMOUNT
  is '还本金额';
comment on column CFA2.T_CFA_C_DOFOEXLO.PREPAYAMOUNT
  is '购汇还本金额';
comment on column CFA2.T_CFA_C_DOFOEXLO.INPAYCURR
  is '付息币种';
comment on column CFA2.T_CFA_C_DOFOEXLO.INPAYAMOUNT
  is '付息金额';
comment on column CFA2.T_CFA_C_DOFOEXLO.PINPAYAMOUNT
  is '购汇付息金额';
comment on column CFA2.T_CFA_C_DOFOEXLO.ENDBALAN
  is '期末余额';
comment on column CFA2.T_CFA_C_DOFOEXLO.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_C_DOFOEXLO.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_C_DOFOEXLO.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_C_DOFOEXLO.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_C_DOFOEXLO.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_C_DOFOEXLO.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_C_DOFOEXLO.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_C_DOFOEXLO.TRADEDATE
  is '交易日期';
comment on column CFA2.T_CFA_C_DOFOEXLO.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_C_DOFOEXLO.BUSINESSNO
  is '业务编号';
comment on column CFA2.T_CFA_C_DOFOEXLO.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column CFA2.T_CFA_C_DOFOEXLO.TEAMID
  is '团队ID(记录T_RPT_BUSS_TYPE表业务类型编号)';
alter table CFA2.T_CFA_C_DOFOEXLO
  add constraint PK_T_CFA_C_DOFOEXLO primary key (BUSINESSID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_BNO_T_CFA_C_DOFOEXLO on CFA2.T_CFA_C_DOFOEXLO (BUSINESSNO)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_FTYPE_T_CFA_C_DOFOEXLO on CFA2.T_CFA_C_DOFOEXLO (FILETYPE)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_D_LOUNEXGU
prompt ===============================
prompt
create table CFA2.T_CFA_D_LOUNEXGU
(
  ACTIONTYPE      CHAR(1),
  ACTIONDESC      VARCHAR2(256),
  LOUNEXGUCODE    VARCHAR2(56),
  CREDITORCODE    VARCHAR2(24),
  DEBTORCODE      VARCHAR2(18),
  DEBTORNAME      VARCHAR2(256),
  DEBTORTYPE      CHAR(8),
  CFEOGUDAD       VARCHAR2(256),
  CFEOGUDCURR     CHAR(3),
  CFEOGUDAMOUNT   NUMBER(27,2),
  CREDCURRCODE    CHAR(3),
  CREDCONAMOUNT   NUMBER(27,2),
  VALUEDATE       VARCHAR2(8),
  MATURITY        VARCHAR2(8),
  DOFOEXLOCODE    VARCHAR2(64),
  REMARK          VARCHAR2(512),
  BUSCODE         VARCHAR2(64),
  CHANGENO        VARCHAR2(8),
  CHANGEDATE      VARCHAR2(8),
  CREDWITHAMOUNT  NUMBER(27,2),
  CREDREPAYAMOUNT NUMBER(27,2),
  PICAMOUNT       NUMBER(27,2),
  CREDPRINBALA    NUMBER(27,2),
  GUARANTLIBALA   NUMBER(27,2),
  GUPERAMOUNT     NUMBER(27,2),
  FILETYPE        CHAR(2),
  INSTCODE        VARCHAR2(50),
  AUDITNAME       VARCHAR2(50),
  AUDITDATE       DATE,
  IMPORTDATE      DATE,
  DATASTATUS      NUMBER(10),
  BUSINESSID      VARCHAR2(64) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(60),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA2
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
comment on table CFA2.T_CFA_D_LOUNEXGU
  is '自身资本项目－境外担保项下境内贷款';
comment on column CFA2.T_CFA_D_LOUNEXGU.ACTIONTYPE
  is '操作类型';
comment on column CFA2.T_CFA_D_LOUNEXGU.ACTIONDESC
  is '删除原因';
comment on column CFA2.T_CFA_D_LOUNEXGU.LOUNEXGUCODE
  is '外保内贷编号';
comment on column CFA2.T_CFA_D_LOUNEXGU.CREDITORCODE
  is '债权人代码';
comment on column CFA2.T_CFA_D_LOUNEXGU.DEBTORCODE
  is '债务人代码';
comment on column CFA2.T_CFA_D_LOUNEXGU.DEBTORNAME
  is '债务人中文名称';
comment on column CFA2.T_CFA_D_LOUNEXGU.DEBTORTYPE
  is '债务人类型';
comment on column CFA2.T_CFA_D_LOUNEXGU.CFEOGUDAD
  is '中资企业境外担保项下贷款业务批准文件号';
comment on column CFA2.T_CFA_D_LOUNEXGU.CFEOGUDCURR
  is '中资企业境外担保项下境内贷款额度币种';
comment on column CFA2.T_CFA_D_LOUNEXGU.CFEOGUDAMOUNT
  is '中资企业境外担保项下境内贷款额度金额';
comment on column CFA2.T_CFA_D_LOUNEXGU.CREDCURRCODE
  is '贷款币种/变动币种';
comment on column CFA2.T_CFA_D_LOUNEXGU.CREDCONAMOUNT
  is '贷款签约金额';
comment on column CFA2.T_CFA_D_LOUNEXGU.VALUEDATE
  is '起息日';
comment on column CFA2.T_CFA_D_LOUNEXGU.MATURITY
  is '到期日';
comment on column CFA2.T_CFA_D_LOUNEXGU.DOFOEXLOCODE
  is '国内外汇贷款编号';
comment on column CFA2.T_CFA_D_LOUNEXGU.REMARK
  is '备注';
comment on column CFA2.T_CFA_D_LOUNEXGU.BUSCODE
  is '银行业务参号';
comment on column CFA2.T_CFA_D_LOUNEXGU.CHANGENO
  is '变动编号';
comment on column CFA2.T_CFA_D_LOUNEXGU.CHANGEDATE
  is '变动日期';
comment on column CFA2.T_CFA_D_LOUNEXGU.CREDWITHAMOUNT
  is '提款金额';
comment on column CFA2.T_CFA_D_LOUNEXGU.CREDREPAYAMOUNT
  is '还本金额';
comment on column CFA2.T_CFA_D_LOUNEXGU.PICAMOUNT
  is '付息费金额';
comment on column CFA2.T_CFA_D_LOUNEXGU.CREDPRINBALA
  is '贷款余额';
comment on column CFA2.T_CFA_D_LOUNEXGU.GUARANTLIBALA
  is '担保责任余额';
comment on column CFA2.T_CFA_D_LOUNEXGU.GUPERAMOUNT
  is '担保履约金额';
comment on column CFA2.T_CFA_D_LOUNEXGU.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_D_LOUNEXGU.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_D_LOUNEXGU.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_D_LOUNEXGU.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_D_LOUNEXGU.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_D_LOUNEXGU.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_D_LOUNEXGU.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_D_LOUNEXGU.TRADEDATE
  is '交易日期';
comment on column CFA2.T_CFA_D_LOUNEXGU.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_D_LOUNEXGU.BUSINESSNO
  is '业务编号';
comment on column CFA2.T_CFA_D_LOUNEXGU.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column CFA2.T_CFA_D_LOUNEXGU.TEAMID
  is '团队ID(记录T_RPT_BUSS_TYPE表业务类型编号)';
alter table CFA2.T_CFA_D_LOUNEXGU
  add constraint PK_T_CFA_D_LOUNEXGU primary key (BUSINESSID)
  using index 
  tablespace CFA2
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
create index CFA2.INDEX_BNO_T_CFA_D_LOUNEXGU on CFA2.T_CFA_D_LOUNEXGU (BUSINESSNO)
  tablespace CFA2
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
create index CFA2.INDEX_CHGENNO on CFA2.T_CFA_D_LOUNEXGU (CHANGENO||BUSINESSNO)
  tablespace CFA2
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
create index CFA2.INDEX_FTYPE_T_CFA_D_LOUNEXGU on CFA2.T_CFA_D_LOUNEXGU (FILETYPE)
  tablespace CFA2
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
grant select, insert, update, delete on CFA2.T_CFA_D_LOUNEXGU to DATACORE;
grant select, insert, update, delete on CFA2.T_CFA_D_LOUNEXGU to DATACOREFF;
grant select, insert, update, delete on CFA2.T_CFA_D_LOUNEXGU to DATACOREOPR;

prompt
prompt Creating table T_CFA_EXDEBT_AS_CHECK
prompt ====================================
prompt
create table CFA2.T_CFA_EXDEBT_AS_CHECK
(
  EXDEBT_INDIC VARCHAR2(12) not null,
  QUERY_SQL    VARCHAR2(2000) not null,
  USE_CD       VARCHAR2(1) not null,
  DES          VARCHAR2(200)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_EXDEBT_AS_CHECK
  is '外债余额核对表';
comment on column CFA2.T_CFA_EXDEBT_AS_CHECK.EXDEBT_INDIC
  is '外债类别标识';
comment on column CFA2.T_CFA_EXDEBT_AS_CHECK.QUERY_SQL
  is '外债余额查询SQL';
comment on column CFA2.T_CFA_EXDEBT_AS_CHECK.USE_CD
  is '启用标识，Y-启用，N-停用';
comment on column CFA2.T_CFA_EXDEBT_AS_CHECK.DES
  is '外债类别描述';
alter table CFA2.T_CFA_EXDEBT_AS_CHECK
  add constraint PK_EXDEBT_AS_CHECK primary key (EXDEBT_INDIC)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_E_EXPLRMBLO
prompt ================================
prompt
create table CFA2.T_CFA_E_EXPLRMBLO
(
  ACTIONTYPE      CHAR(1),
  ACTIONDESC      VARCHAR2(256),
  EXPLRMBLONO     VARCHAR2(56),
  CREDITORCODE    VARCHAR2(24),
  DEBTORCODE      VARCHAR2(18),
  DEBTORNAME      VARCHAR2(256),
  VALUEDATE       VARCHAR2(8),
  CREDCONCURR     CHAR(3),
  CREDCONAMOUNT   NUMBER(27,2),
  MATURITY        VARCHAR2(8),
  REMARK          VARCHAR2(512),
  BUOCMONTH       VARCHAR2(6),
  CHANGENO        VARCHAR2(8),
  MONBELOADBAL    NUMBER(27,2),
  CREDWITHAMOUNT  NUMBER(27,2),
  CREDREPAYAMOUNT NUMBER(27,2),
  PICAMOUNT       NUMBER(27,2),
  MONENLOADBAL    NUMBER(27,2),
  FILETYPE        CHAR(2),
  INSTCODE        VARCHAR2(50),
  AUDITNAME       VARCHAR2(50),
  AUDITDATE       DATE,
  IMPORTDATE      DATE,
  DATASTATUS      NUMBER(10),
  BUSINESSID      VARCHAR2(50) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(60),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_E_EXPLRMBLO
  is '自身资本项目－外汇质押人民币贷款';
comment on column CFA2.T_CFA_E_EXPLRMBLO.ACTIONTYPE
  is '操作类型';
comment on column CFA2.T_CFA_E_EXPLRMBLO.ACTIONDESC
  is '删除原因';
comment on column CFA2.T_CFA_E_EXPLRMBLO.EXPLRMBLONO
  is '外汇质押人民币贷款编号';
comment on column CFA2.T_CFA_E_EXPLRMBLO.CREDITORCODE
  is '债权人代码';
comment on column CFA2.T_CFA_E_EXPLRMBLO.DEBTORCODE
  is '债务人代码';
comment on column CFA2.T_CFA_E_EXPLRMBLO.DEBTORNAME
  is '债务人中文名称';
comment on column CFA2.T_CFA_E_EXPLRMBLO.VALUEDATE
  is '贷款起息日';
comment on column CFA2.T_CFA_E_EXPLRMBLO.CREDCONCURR
  is '贷款签约币种';
comment on column CFA2.T_CFA_E_EXPLRMBLO.CREDCONAMOUNT
  is '贷款签约金额';
comment on column CFA2.T_CFA_E_EXPLRMBLO.MATURITY
  is '贷款到期日';
comment on column CFA2.T_CFA_E_EXPLRMBLO.REMARK
  is '备注';
comment on column CFA2.T_CFA_E_EXPLRMBLO.BUOCMONTH
  is '报告期';
comment on column CFA2.T_CFA_E_EXPLRMBLO.CHANGENO
  is '变动编号';
comment on column CFA2.T_CFA_E_EXPLRMBLO.MONBELOADBAL
  is '月初贷款余额';
comment on column CFA2.T_CFA_E_EXPLRMBLO.CREDWITHAMOUNT
  is '本月提款金额';
comment on column CFA2.T_CFA_E_EXPLRMBLO.CREDREPAYAMOUNT
  is '本月还本金额';
comment on column CFA2.T_CFA_E_EXPLRMBLO.PICAMOUNT
  is '本月付息费金额';
comment on column CFA2.T_CFA_E_EXPLRMBLO.MONENLOADBAL
  is '月末贷款余额';
comment on column CFA2.T_CFA_E_EXPLRMBLO.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_E_EXPLRMBLO.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_E_EXPLRMBLO.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_E_EXPLRMBLO.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_E_EXPLRMBLO.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_E_EXPLRMBLO.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_E_EXPLRMBLO.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_E_EXPLRMBLO.TRADEDATE
  is '交易日期';
comment on column CFA2.T_CFA_E_EXPLRMBLO.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_E_EXPLRMBLO.BUSINESSNO
  is '业务编号';
comment on column CFA2.T_CFA_E_EXPLRMBLO.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column CFA2.T_CFA_E_EXPLRMBLO.TEAMID
  is '团队ID(记录T_RPT_BUSS_TYPE表业务类型编号)';
alter table CFA2.T_CFA_E_EXPLRMBLO
  add constraint PK_T_CFA_E_EXPLRMBLO primary key (BUSINESSID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_BNO_T_CFA_E_EXPLRMBLO on CFA2.T_CFA_E_EXPLRMBLO (BUSINESSNO)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_FTYPE_T_CFA_E_EXPLRMBLO on CFA2.T_CFA_E_EXPLRMBLO (FILETYPE)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_F_STRDE
prompt ============================
prompt
create table CFA2.T_CFA_F_STRDE
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(256),
  STRDECODE      VARCHAR2(56),
  BRANCHCODE     VARCHAR2(24),
  CLIENTCODE     VARCHAR2(18),
  CLIENTNAME     VARCHAR2(256),
  CONTRACTDATE   VARCHAR2(8),
  CONTRACT       VARCHAR2(64),
  CONTRACTAMOUNT NUMBER(27,2),
  MATURITY       VARCHAR2(8),
  LINCAME        VARCHAR2(512),
  LINCAMETHOD    VARCHAR2(512),
  AGINRAUP       NUMBER(21,8),
  AGINRALO       NUMBER(21,8),
  AGINRALOINPAY  VARCHAR2(512),
  REMARK         VARCHAR2(512),
  TERTYPE        CHAR(2),
  TERPAYCODE     VARCHAR2(8),
  TERDATE        VARCHAR2(8),
  TERPAYAMTORMB  NUMBER(27,2),
  TERRMBPAYAM    NUMBER(27,2),
  TERPAYCURR     CHAR(3),
  TERPAYCURRAM   NUMBER(27,2),
  INPAYCODE      VARCHAR2(8),
  INPAYMONTH     VARCHAR2(6),
  INPAYRMBAM     NUMBER(27,2),
  INPAYCURR      CHAR(3),
  INPAYCURRAM    NUMBER(27,2),
  BUOCMONTH      VARCHAR2(6),
  CURRENCY       CHAR(3),
  MOEXAMUSD      NUMBER(27,2),
  MOAMREUSD      NUMBER(27,2),
  MOPFEXAMUSD    NUMBER(27,2),
  MOSETTAMUSD    NUMBER(27,2),
  FILETYPE       CHAR(2),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  DATASTATUS     NUMBER(10),
  BUSINESSID     VARCHAR2(50) not null,
  TRADEDATE      VARCHAR2(8),
  MODIFYUSER     VARCHAR2(30),
  BUSINESSNO     VARCHAR2(60),
  IS_HANDIWORK   CHAR(1),
  TEAMID         VARCHAR2(10)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_F_STRDE
  is '自身资本项目－商业银行人民币结构性存款业务';
comment on column CFA2.T_CFA_F_STRDE.ACTIONTYPE
  is '操作类型';
comment on column CFA2.T_CFA_F_STRDE.ACTIONDESC
  is '删除原因';
comment on column CFA2.T_CFA_F_STRDE.STRDECODE
  is '人民币结构性存款编号';
comment on column CFA2.T_CFA_F_STRDE.BRANCHCODE
  is '金融机构标识码';
comment on column CFA2.T_CFA_F_STRDE.CLIENTCODE
  is '客户代码';
comment on column CFA2.T_CFA_F_STRDE.CLIENTNAME
  is '客户名称';
comment on column CFA2.T_CFA_F_STRDE.CONTRACTDATE
  is '签约日期';
comment on column CFA2.T_CFA_F_STRDE.CONTRACT
  is '合同号';
comment on column CFA2.T_CFA_F_STRDE.CONTRACTAMOUNT
  is '签约金额';
comment on column CFA2.T_CFA_F_STRDE.MATURITY
  is '到期日';
comment on column CFA2.T_CFA_F_STRDE.LINCAME
  is '挂钩指标';
comment on column CFA2.T_CFA_F_STRDE.LINCAMETHOD
  is '挂钩指标计算方法';
comment on column CFA2.T_CFA_F_STRDE.AGINRAUP
  is '约定的利率上限';
comment on column CFA2.T_CFA_F_STRDE.AGINRALO
  is '约定的利率下限';
comment on column CFA2.T_CFA_F_STRDE.AGINRALOINPAY
  is '利息给付方式';
comment on column CFA2.T_CFA_F_STRDE.REMARK
  is '备注';
comment on column CFA2.T_CFA_F_STRDE.TERTYPE
  is '终止类型';
comment on column CFA2.T_CFA_F_STRDE.TERPAYCODE
  is '终止支付编号';
comment on column CFA2.T_CFA_F_STRDE.TERDATE
  is '终止日期';
comment on column CFA2.T_CFA_F_STRDE.TERPAYAMTORMB
  is '终止支付金额合计折人民币';
comment on column CFA2.T_CFA_F_STRDE.TERRMBPAYAM
  is '终止人民币支付金额';
comment on column CFA2.T_CFA_F_STRDE.TERPAYCURR
  is '终止外币支付币种';
comment on column CFA2.T_CFA_F_STRDE.TERPAYCURRAM
  is '终止外币支付金额';
comment on column CFA2.T_CFA_F_STRDE.INPAYCODE
  is '付息编号';
comment on column CFA2.T_CFA_F_STRDE.INPAYMONTH
  is '付息年月';
comment on column CFA2.T_CFA_F_STRDE.INPAYRMBAM
  is '付息人民币支付金额';
comment on column CFA2.T_CFA_F_STRDE.INPAYCURR
  is '付息外币支付币种';
comment on column CFA2.T_CFA_F_STRDE.INPAYCURRAM
  is '付息外币支付金额';
comment on column CFA2.T_CFA_F_STRDE.BUOCMONTH
  is '报告期';
comment on column CFA2.T_CFA_F_STRDE.CURRENCY
  is '币种';
comment on column CFA2.T_CFA_F_STRDE.MOEXAMUSD
  is '本月汇出金额折美元';
comment on column CFA2.T_CFA_F_STRDE.MOAMREUSD
  is '本月汇入金额折美元';
comment on column CFA2.T_CFA_F_STRDE.MOPFEXAMUSD
  is '本月购汇金额折美元';
comment on column CFA2.T_CFA_F_STRDE.MOSETTAMUSD
  is '本月结汇金额折美元';
comment on column CFA2.T_CFA_F_STRDE.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_F_STRDE.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_F_STRDE.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_F_STRDE.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_F_STRDE.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_F_STRDE.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_F_STRDE.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_F_STRDE.TRADEDATE
  is '交易日期';
comment on column CFA2.T_CFA_F_STRDE.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_F_STRDE.BUSINESSNO
  is '业务编号';
comment on column CFA2.T_CFA_F_STRDE.IS_HANDIWORK
  is '是否手工录入(Y)';
comment on column CFA2.T_CFA_F_STRDE.TEAMID
  is '团队ID(记录T_RPT_BUSS_TYPE表业务类型编号)';
alter table CFA2.T_CFA_F_STRDE
  add constraint PK_T_CFA_F_STRDE primary key (BUSINESSID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_BNO_T_CFA_F_STRDE on CFA2.T_CFA_F_STRDE (BUSINESSNO)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;
create index CFA2.INDEX_FTYPE_T_CFA_F_STRDE on CFA2.T_CFA_F_STRDE (FILETYPE)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_QDII_ACCOUNT
prompt =================================
prompt
create table CFA2.T_CFA_QDII_ACCOUNT
(
  BUSINESSID          VARCHAR2(50),
  INSTCODE            VARCHAR2(50),
  INSTNAME            VARCHAR2(128),
  CUSTODIAN_BANK_ID   VARCHAR2(12),
  TRUSTEE_ID          VARCHAR2(12),
  TRUSTEE_NAME        VARCHAR2(128),
  TRUSTEE_ENNAME      VARCHAR2(128),
  PRODUCT_CLIENT_NAME VARCHAR2(128),
  ACCOUNT_TYPE        VARCHAR2(2),
  ACCOUNT             VARCHAR2(64),
  CURRENCE_CODE       VARCHAR2(3),
  OPEN_DATE           CHAR(8),
  CLOSE_DATA          CHAR(8),
  REMARK              VARCHAR2(256),
  FILETYPE            VARCHAR2(2),
  AUDITNAME           VARCHAR2(50),
  AUDITDATE           DATE,
  IMPORTDATE          DATE,
  DATASTATUS          NUMBER(10),
  BUSINESSDATE        VARCHAR2(8),
  MODIFYUSER          VARCHAR2(30),
  INSTCODE_QDII       VARCHAR2(50),
  IS_HANDIWORK        CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QDII_ACCOUNT
  is 'QDII账户信息';
comment on column CFA2.T_CFA_QDII_ACCOUNT.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QDII_ACCOUNT.INSTCODE
  is 'QDII机构代码';
comment on column CFA2.T_CFA_QDII_ACCOUNT.INSTNAME
  is 'QDII机构中文名称';
comment on column CFA2.T_CFA_QDII_ACCOUNT.CUSTODIAN_BANK_ID
  is 'QDII境内托管行代码';
comment on column CFA2.T_CFA_QDII_ACCOUNT.TRUSTEE_ID
  is 'QDII境外托管人代码';
comment on column CFA2.T_CFA_QDII_ACCOUNT.TRUSTEE_NAME
  is 'QDII境外托管人中文名称';
comment on column CFA2.T_CFA_QDII_ACCOUNT.TRUSTEE_ENNAME
  is 'QDII境外托管人英文名称';
comment on column CFA2.T_CFA_QDII_ACCOUNT.PRODUCT_CLIENT_NAME
  is '产品/客户名称';
comment on column CFA2.T_CFA_QDII_ACCOUNT.ACCOUNT_TYPE
  is '账户性质';
comment on column CFA2.T_CFA_QDII_ACCOUNT.ACCOUNT
  is '账号';
comment on column CFA2.T_CFA_QDII_ACCOUNT.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QDII_ACCOUNT.OPEN_DATE
  is '开户日期';
comment on column CFA2.T_CFA_QDII_ACCOUNT.CLOSE_DATA
  is '关户日期';
comment on column CFA2.T_CFA_QDII_ACCOUNT.REMARK
  is '备注';
comment on column CFA2.T_CFA_QDII_ACCOUNT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QDII_ACCOUNT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QDII_ACCOUNT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QDII_ACCOUNT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QDII_ACCOUNT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QDII_ACCOUNT.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QDII_ACCOUNT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QDII_ACCOUNT.INSTCODE_QDII
  is 'QDII机构编号';
comment on column CFA2.T_CFA_QDII_ACCOUNT.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QDII_INVEST
prompt ================================
prompt
create table CFA2.T_CFA_QDII_INVEST
(
  BUSINESSID                 VARCHAR2(50),
  INSTCODE                   VARCHAR2(50),
  INSTNAME                   VARCHAR2(128),
  CUSTODIAN_BANK_ID          VARCHAR2(12),
  PRODUCT_CLIENT_NAME        VARCHAR2(128),
  REPORT_PERIOD              NUMBER(6),
  CURRENCE_CODE              VARCHAR2(3),
  BANK_SAVINGS_BALANCE       NUMBER(22,2),
  CURRENCY_TOOLS_COST        NUMBER(22,2),
  CURRENCY_TOOLS_VALUE       NUMBER(22,2),
  DEBENTURE_COST             NUMBER(22,2),
  DEBENTURE_VALUE            NUMBER(22,2),
  COMPANY_STOCK_COST         NUMBER(22,2),
  COMPANY_STOCK_VALUE        NUMBER(22,2),
  FUND_COST                  NUMBER(22,2),
  FUND_VALUE                 NUMBER(22,2),
  DERIVATIVE_COST            NUMBER(22,2),
  DERIVATIVE_VALUE           NUMBER(22,2),
  OTHER_INVEST_COST          NUMBER(22,2),
  OTHER_INVEST_VALUE         NUMBER(22,2),
  INVEST_VALUE_TOTAL         NUMBER(22,2),
  EXPEND_INVEST_AMOUNT       NUMBER(22,2),
  INVEST_AMOUNT_INCOME       NUMBER(22,2),
  STOCK_PROFIT_AMOUNT_INCOME NUMBER(22,2),
  PROFIT_AMOUNT_INCOME       NUMBER(22,2),
  OTHER_AMOUNT_INCOME        NUMBER(22,2),
  ASSETS_TOTAL               NUMBER(22,2),
  INVEST_AMOUNT_EXPEND       NUMBER(22,2),
  DEPOSIT_AMOUNT_EXPEND      NUMBER(22,2),
  BROKERAGE_AMOUNT_EXPEND    NUMBER(22,2),
  MANAGER_AMOUNT_EXPEND      NUMBER(22,2),
  TAX_AMOUNT_EXPEND          NUMBER(22,2),
  OTHER_AMOUNT_EXPEND        NUMBER(22,2),
  DEBT_TOTAL                 NUMBER(22,2),
  CLEAN_ASSETS               NUMBER(22,2),
  DEPOSIT_RMB_SAVING_BALANCE NUMBER(22,2),
  REMARK                     VARCHAR2(256),
  FILETYPE                   VARCHAR2(2),
  AUDITNAME                  VARCHAR2(50),
  AUDITDATE                  DATE,
  IMPORTDATE                 DATE,
  DATASTATUS                 NUMBER(10),
  BUSINESSDATE               VARCHAR2(8),
  MODIFYUSER                 VARCHAR2(30),
  INSTCODE_QDII              VARCHAR2(50),
  IS_HANDIWORK               CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QDII_INVEST
  is ' QDII境外证券投资信息';
comment on column CFA2.T_CFA_QDII_INVEST.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QDII_INVEST.INSTCODE
  is 'QDII机构代码';
comment on column CFA2.T_CFA_QDII_INVEST.INSTNAME
  is 'QDII机构名称';
comment on column CFA2.T_CFA_QDII_INVEST.CUSTODIAN_BANK_ID
  is 'QDII境内托管行代码';
comment on column CFA2.T_CFA_QDII_INVEST.PRODUCT_CLIENT_NAME
  is '产品/客户名称';
comment on column CFA2.T_CFA_QDII_INVEST.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_QDII_INVEST.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QDII_INVEST.BANK_SAVINGS_BALANCE
  is '银行存款余额';
comment on column CFA2.T_CFA_QDII_INVEST.CURRENCY_TOOLS_COST
  is '货币市场工具成本';
comment on column CFA2.T_CFA_QDII_INVEST.CURRENCY_TOOLS_VALUE
  is '货币市场工具市值';
comment on column CFA2.T_CFA_QDII_INVEST.DEBENTURE_COST
  is '债券成本';
comment on column CFA2.T_CFA_QDII_INVEST.DEBENTURE_VALUE
  is '债券市值';
comment on column CFA2.T_CFA_QDII_INVEST.COMPANY_STOCK_COST
  is '公司股票成本';
comment on column CFA2.T_CFA_QDII_INVEST.COMPANY_STOCK_VALUE
  is '公司股票市值';
comment on column CFA2.T_CFA_QDII_INVEST.FUND_COST
  is '基金成本';
comment on column CFA2.T_CFA_QDII_INVEST.FUND_VALUE
  is '基金市值';
comment on column CFA2.T_CFA_QDII_INVEST.DERIVATIVE_COST
  is '衍生产品成本';
comment on column CFA2.T_CFA_QDII_INVEST.DERIVATIVE_VALUE
  is '衍生产品市值';
comment on column CFA2.T_CFA_QDII_INVEST.OTHER_INVEST_COST
  is '其他投资成本';
comment on column CFA2.T_CFA_QDII_INVEST.OTHER_INVEST_VALUE
  is '其他投资市值';
comment on column CFA2.T_CFA_QDII_INVEST.INVEST_VALUE_TOTAL
  is '投资市值合计';
comment on column CFA2.T_CFA_QDII_INVEST.EXPEND_INVEST_AMOUNT
  is '预付投资款金额';
comment on column CFA2.T_CFA_QDII_INVEST.INVEST_AMOUNT_INCOME
  is '应收投资款金额';
comment on column CFA2.T_CFA_QDII_INVEST.STOCK_PROFIT_AMOUNT_INCOME
  is '应收股利金额';
comment on column CFA2.T_CFA_QDII_INVEST.PROFIT_AMOUNT_INCOME
  is '应收利息金额';
comment on column CFA2.T_CFA_QDII_INVEST.OTHER_AMOUNT_INCOME
  is '其他应收款金额';
comment on column CFA2.T_CFA_QDII_INVEST.ASSETS_TOTAL
  is '资产合计';
comment on column CFA2.T_CFA_QDII_INVEST.INVEST_AMOUNT_EXPEND
  is '应付投资款金额';
comment on column CFA2.T_CFA_QDII_INVEST.DEPOSIT_AMOUNT_EXPEND
  is '应付托管费金额';
comment on column CFA2.T_CFA_QDII_INVEST.BROKERAGE_AMOUNT_EXPEND
  is '应付佣金额';
comment on column CFA2.T_CFA_QDII_INVEST.MANAGER_AMOUNT_EXPEND
  is '应付管理费金额';
comment on column CFA2.T_CFA_QDII_INVEST.TAX_AMOUNT_EXPEND
  is '应纳税款金额';
comment on column CFA2.T_CFA_QDII_INVEST.OTHER_AMOUNT_EXPEND
  is '其他应付款金额';
comment on column CFA2.T_CFA_QDII_INVEST.DEBT_TOTAL
  is '负债合计';
comment on column CFA2.T_CFA_QDII_INVEST.CLEAN_ASSETS
  is '净资产';
comment on column CFA2.T_CFA_QDII_INVEST.DEPOSIT_RMB_SAVING_BALANCE
  is '所托管人民币资金存款余额';
comment on column CFA2.T_CFA_QDII_INVEST.REMARK
  is '备注';
comment on column CFA2.T_CFA_QDII_INVEST.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QDII_INVEST.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QDII_INVEST.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QDII_INVEST.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QDII_INVEST.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QDII_INVEST.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QDII_INVEST.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QDII_INVEST.INSTCODE_QDII
  is 'QDII机构编号';
comment on column CFA2.T_CFA_QDII_INVEST.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QDII_REMIT
prompt ===============================
prompt
create table CFA2.T_CFA_QDII_REMIT
(
  BUSINESSID                   VARCHAR2(50),
  INSTCODE                     VARCHAR2(50),
  INSTNAME                     VARCHAR2(128),
  CUSTODIAN_BANK_ID            VARCHAR2(12),
  PRODUCT_CLIENT_NAME          VARCHAR2(128),
  CHANGE_ID                    VARCHAR2(4),
  EXCHANGE_DATE                CHAR(8),
  ASSETS_EXCHANGE_REASON       CHAR(2),
  ACCOUNT                      VARCHAR2(64),
  BUY_EXCHANGE_AMOUNT_RMB      NUMBER(22,2),
  BUY_EXCHANGE_AMOUNT_DOLLARS  NUMBER(22,2),
  EXPEND_CURR_CODE             VARCHAR2(3),
  EXPEND_AMOUNT                NUMBER(22,2),
  EXPEND_AMOUNT_DOLLARS        NUMBER(22,2),
  INCOME_CURR_CODE             VARCHAR2(3),
  INCOME_AMOUNT                NUMBER(22,2),
  INCOME_AMOUNT_DOLLARS        NUMBER(22,2),
  SELL_EXCHANGE_AMOUNT_DOLLARS NUMBER(22,2),
  SELL_EXCHANGE_AMOUNT_RMB     NUMBER(22,2),
  REMARK                       VARCHAR2(256),
  FILETYPE                     VARCHAR2(2),
  AUDITNAME                    VARCHAR2(50),
  AUDITDATE                    DATE,
  IMPORTDATE                   DATE,
  DATASTATUS                   NUMBER(10),
  BUSINESSDATE                 VARCHAR2(8),
  MODIFYUSER                   VARCHAR2(30),
  INSTCODE_QDII                VARCHAR2(50),
  IS_HANDIWORK                 CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QDII_REMIT
  is 'QDII资金汇出入及结购汇明细信息';
comment on column CFA2.T_CFA_QDII_REMIT.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QDII_REMIT.INSTCODE
  is 'QDII机构代码';
comment on column CFA2.T_CFA_QDII_REMIT.INSTNAME
  is 'QDII机构中文名称';
comment on column CFA2.T_CFA_QDII_REMIT.CUSTODIAN_BANK_ID
  is 'QDII境内托管行代码';
comment on column CFA2.T_CFA_QDII_REMIT.PRODUCT_CLIENT_NAME
  is '产品/客户名称';
comment on column CFA2.T_CFA_QDII_REMIT.CHANGE_ID
  is '变动编号';
comment on column CFA2.T_CFA_QDII_REMIT.EXCHANGE_DATE
  is '汇兑日期';
comment on column CFA2.T_CFA_QDII_REMIT.ASSETS_EXCHANGE_REASON
  is '资金汇兑原因';
comment on column CFA2.T_CFA_QDII_REMIT.ACCOUNT
  is '账号';
comment on column CFA2.T_CFA_QDII_REMIT.BUY_EXCHANGE_AMOUNT_RMB
  is '购汇人民币金额';
comment on column CFA2.T_CFA_QDII_REMIT.BUY_EXCHANGE_AMOUNT_DOLLARS
  is '购汇金额折美元';
comment on column CFA2.T_CFA_QDII_REMIT.EXPEND_CURR_CODE
  is '汇出币种';
comment on column CFA2.T_CFA_QDII_REMIT.EXPEND_AMOUNT
  is '汇出金额';
comment on column CFA2.T_CFA_QDII_REMIT.EXPEND_AMOUNT_DOLLARS
  is '汇出金额折美元';
comment on column CFA2.T_CFA_QDII_REMIT.INCOME_CURR_CODE
  is '汇入币种';
comment on column CFA2.T_CFA_QDII_REMIT.INCOME_AMOUNT
  is '汇入金额';
comment on column CFA2.T_CFA_QDII_REMIT.INCOME_AMOUNT_DOLLARS
  is '汇入金额折美元';
comment on column CFA2.T_CFA_QDII_REMIT.SELL_EXCHANGE_AMOUNT_DOLLARS
  is '结汇金额折美元';
comment on column CFA2.T_CFA_QDII_REMIT.SELL_EXCHANGE_AMOUNT_RMB
  is '结汇所得人民币金额';
comment on column CFA2.T_CFA_QDII_REMIT.REMARK
  is '备注';
comment on column CFA2.T_CFA_QDII_REMIT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QDII_REMIT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QDII_REMIT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QDII_REMIT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QDII_REMIT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QDII_REMIT.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QDII_REMIT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QDII_REMIT.INSTCODE_QDII
  is 'QDII机构编号';
comment on column CFA2.T_CFA_QDII_REMIT.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QDII_TRUSTEE_ACCOUNT
prompt =========================================
prompt
create table CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT
(
  BUSINESSID                     VARCHAR2(50),
  INSTCODE                       VARCHAR2(50),
  INSTNAME                       VARCHAR2(128),
  CUSTODIAN_BANK_ID              VARCHAR2(12),
  PRODUCT_CLIENT_NAME            VARCHAR2(128),
  TRUSTEE_ACCOUNT                VARCHAR2(64),
  REPORT_PERIOD                  NUMBER(6),
  CURRENCE_CODE                  VARCHAR2(3),
  ACCOUNT_BALANCE                NUMBER(22,2),
  ACCOUNT_BALANCE_DOLLAR         NUMBER(22,2),
  BUY_EXCHANGE_AMOUNT            NUMBER(22,2),
  BUY_EXCHANGE_AMOUNT_DOLLAR     NUMBER(22,2),
  ACC_BUY_EXCHANGE_AMOUNT        NUMBER(22,2),
  ACC_BUY_EXCHANGE_AMOUNT_DOLLAR NUMBER(22,2),
  TRUSTEE_ACCOUNT_IN             NUMBER(22,2),
  TRUSTEE_ACCOUNT_IN_DOL         NUMBER(22,2),
  ACC_TRUSTEE_ACCOUNT_IN         NUMBER(22,2),
  ACC_TRUSTEE_ACCOUNT_IN_DOL     NUMBER(22,2),
  ASKFOR_BUY_INCOME              NUMBER(22,2),
  ASKFOR_BUY_IN_DOL              NUMBER(22,2),
  ACC_ASKFOR_BUY_IN              NUMBER(22,2),
  ACC_ASKFOR_BUY_IN_DOL          NUMBER(22,2),
  PROFIT_AMOUNT_INCOME           NUMBER(22,2),
  PROFIT_AMOUNT_INCOME_DOL       NUMBER(22,2),
  ACC_PROFIT_AMOUNT_INCOME       NUMBER(22,2),
  ACC_PROFIT_AMOUNT_INCOME_DOL   NUMBER(22,2),
  OTHER_AMOUNT_INCOME            NUMBER(22,2),
  OTHER_AMOUNT_INCOME_DOL        NUMBER(22,2),
  ACC_OTHER_AMOUNT_INCOME        NUMBER(22,2),
  ACC_OTHER_AMOUNT_INCOME_DOL    NUMBER(22,2),
  INCOME_TOTAL                   NUMBER(22,2),
  INCOME_TOTAL_DOL               NUMBER(22,2),
  ACC_INCOME_TOTAL               NUMBER(22,2),
  ACC_INCOME_TOTAL_DOL           NUMBER(22,2),
  SELL_EXCHANGE_AMOUNT           NUMBER(22,2),
  SELL_EXCHANGE_AMOUNT_DOL       NUMBER(22,2),
  ACC_SELL_EXCHANGE_AMOUNT       NUMBER(22,2),
  ACC_SELL_EXCHANGE_AMOUNT_DOL   NUMBER(22,2),
  TO_OVER_TRUSTEE_ACCOUNT        NUMBER(22,2),
  TO_OVER_TRUSTEE_ACCOUNT_DOL    NUMBER(22,2),
  ACC_TO_OVER_TRUSTEE_ACCOUNT    NUMBER(22,2),
  ACC_TO_OVER_TRUSTEE_DOL        NUMBER(22,2),
  EXPEND_REDEMPTION              NUMBER(22,2),
  EXPEND_REDEMPTION_DOL          NUMBER(22,2),
  ACC_EXPEND_REDEMPTION          NUMBER(22,2),
  ACC_EXPEND_REDEMPTION_DOL      NUMBER(22,2),
  SHARE_BONUS_AMOUNT             NUMBER(22,2),
  SHARE_BONUS_AMOUNT_DOL         NUMBER(22,2),
  ACC_SHARE_BONUS_AMOUNT         NUMBER(22,2),
  ACC_SHARE_BONUS_AMOUNT_DOL     NUMBER(22,2),
  DEPOSIT_AMOUNT_EXPEND          NUMBER(22,2),
  DEPOSIT_AMOUNT_EXPEND_DOL      NUMBER(22,2),
  ACC_DEPOSIT_AMOUNT_EXPEND      NUMBER(22,2),
  ACC_DEPOSIT_AMOUNT_EXPEND_DOL  NUMBER(22,2),
  MANAGER_AMOUNT_EXPEND          NUMBER(22,2),
  MANAGER_AMOUNT_EXPEND_DOL      NUMBER(22,2),
  ACC_MANAGER_AMOUNT_EXPEND      NUMBER(22,2),
  ACC_MANAGER_AMOUNT_EXPEND_DOL  NUMBER(22,2),
  HANDLING_CHARGE_EXPEND         NUMBER(22,2),
  HANDLING_CHARGE_EXPEND_DOL     NUMBER(22,2),
  ACC_HANDLING_CHARGE_EXPEND     NUMBER(22,2),
  ACC_HANDLING_CHARGE_EXPEND_DOL NUMBER(22,2),
  OTHER_AMOUNT_EXPEND            NUMBER(22,2),
  OTHER_AMOUNT_EXPEND_DOL        NUMBER(22,2),
  ACC_OTHER_AMOUNT_EXPEND        NUMBER(22,2),
  ACC_OTHER_AMOUNT_EXPEND_DOL    NUMBER(22,2),
  EXPEND_TOTAL                   NUMBER(22,2),
  EXPEND_TOTAL_DOL               NUMBER(22,2),
  ACC_EXPEND_TOTAL               NUMBER(22,2),
  ACC_EXPEND_TOTAL_DOL           NUMBER(22,2),
  REMARK                         VARCHAR2(256),
  FILETYPE                       VARCHAR2(2),
  AUDITNAME                      VARCHAR2(50),
  AUDITDATE                      DATE,
  IMPORTDATE                     DATE,
  DATASTATUS                     NUMBER(10),
  BUSINESSDATE                   VARCHAR2(8),
  MODIFYUSER                     VARCHAR2(30),
  INSTCODE_QDII                  VARCHAR2(50),
  IS_HANDIWORK                   CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT
  is 'QDII境内外币托管账户信息';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.INSTCODE
  is 'QDII机构代码';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.INSTNAME
  is 'QDII机构中文名称';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.CUSTODIAN_BANK_ID
  is 'QDII境内托管行代码';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.PRODUCT_CLIENT_NAME
  is '产品/客户名称';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.TRUSTEE_ACCOUNT
  is '境内托管账户账号';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACCOUNT_BALANCE
  is '月末账户余额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACCOUNT_BALANCE_DOLLAR
  is '月末账户余额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.BUY_EXCHANGE_AMOUNT
  is '本月购汇金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.BUY_EXCHANGE_AMOUNT_DOLLAR
  is '本月购汇金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_BUY_EXCHANGE_AMOUNT
  is '累计购汇金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_BUY_EXCHANGE_AMOUNT_DOLLAR
  is '累计购汇金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.TRUSTEE_ACCOUNT_IN
  is '本月境外托管账户划入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.TRUSTEE_ACCOUNT_IN_DOL
  is '本月境外托管账户划入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TRUSTEE_ACCOUNT_IN
  is '累计境外托管账户划入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TRUSTEE_ACCOUNT_IN_DOL
  is '累计境外托管账户划入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ASKFOR_BUY_INCOME
  is '本月申购款汇入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ASKFOR_BUY_IN_DOL
  is '本月申购款汇入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_ASKFOR_BUY_IN
  is '累计申购款汇入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_ASKFOR_BUY_IN_DOL
  is '累计申购款汇入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.PROFIT_AMOUNT_INCOME
  is '本月利息收入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.PROFIT_AMOUNT_INCOME_DOL
  is '本月利息收入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_PROFIT_AMOUNT_INCOME
  is '累计利息收入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_PROFIT_AMOUNT_INCOME_DOL
  is '累计利息收入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_INCOME
  is '本月其他收入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_INCOME_DOL
  is '本月其他收入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_INCOME
  is '累计其他收入金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_INCOME_DOL
  is '累计其他收入金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.INCOME_TOTAL
  is '本月收入合计';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.INCOME_TOTAL_DOL
  is '本月收入合计折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_INCOME_TOTAL
  is '累计收入合计';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_INCOME_TOTAL_DOL
  is '累计收入合计折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.SELL_EXCHANGE_AMOUNT
  is '本月结汇金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.SELL_EXCHANGE_AMOUNT_DOL
  is '本月结汇金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SELL_EXCHANGE_AMOUNT
  is '累计结汇金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SELL_EXCHANGE_AMOUNT_DOL
  is '累计结汇金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.TO_OVER_TRUSTEE_ACCOUNT
  is '本月划往境外托管账户金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.TO_OVER_TRUSTEE_ACCOUNT_DOL
  is '本月划往境外托管账户金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TO_OVER_TRUSTEE_ACCOUNT
  is '累计划往境外托管账户金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TO_OVER_TRUSTEE_DOL
  is '累计划往境外托管账户金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_REDEMPTION
  is '本月支付赎回款金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_REDEMPTION_DOL
  is '本月支付赎回款金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_REDEMPTION
  is '累计支付赎回款金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_REDEMPTION_DOL
  is '累计支付赎回款金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.SHARE_BONUS_AMOUNT
  is '本月分红金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.SHARE_BONUS_AMOUNT_DOL
  is '本月分红金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SHARE_BONUS_AMOUNT
  is '累计分红金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SHARE_BONUS_AMOUNT_DOL
  is '累计分红金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.DEPOSIT_AMOUNT_EXPEND
  is '本月托管费支出金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.DEPOSIT_AMOUNT_EXPEND_DOL
  is '本月托管费支出金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_DEPOSIT_AMOUNT_EXPEND
  is '累计托管费支出金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_DEPOSIT_AMOUNT_EXPEND_DOL
  is '累计托管费支出金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.MANAGER_AMOUNT_EXPEND
  is '本月管理费支持金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.MANAGER_AMOUNT_EXPEND_DOL
  is '本月管理费支持金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_MANAGER_AMOUNT_EXPEND
  is '累计管理费支出金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_MANAGER_AMOUNT_EXPEND_DOL
  is '累计管理费支出金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.HANDLING_CHARGE_EXPEND
  is '本月手续费支出金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.HANDLING_CHARGE_EXPEND_DOL
  is '本月手续费支出金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_HANDLING_CHARGE_EXPEND
  is '累计手续费支出金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_HANDLING_CHARGE_EXPEND_DOL
  is '累计手续费支出金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_EXPEND
  is '本月其他支出金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_EXPEND_DOL
  is '本月其他支出金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_EXPEND
  is '累计其他支出金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_EXPEND_DOL
  is '累计其他支出金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_TOTAL
  is '本月支出合计金额';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_TOTAL_DOL
  is '本月支出合计金额折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_TOTAL
  is '累计支出金额合计';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_TOTAL_DOL
  is '累计支出金额合计折美元';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.REMARK
  is '备注';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.INSTCODE_QDII
  is 'QDII机构编号';
comment on column CFA2.T_CFA_QDII_TRUSTEE_ACCOUNT.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QFII_ACCOUNT
prompt =================================
prompt
create table CFA2.T_CFA_QFII_ACCOUNT
(
  BUSINESSID      VARCHAR2(50),
  CUSTODIAN_ID    VARCHAR2(12),
  INSTCODE        VARCHAR2(50),
  INSTNAME        VARCHAR2(128),
  BUSINESS_NUM    VARCHAR2(20),
  PRODUCT_NAME    VARCHAR2(128),
  ACCOUNT_TYPE    VARCHAR2(4),
  ACCOUNT         VARCHAR2(64),
  CURRENCE_CODE   VARCHAR2(3),
  OPEN_DATE       CHAR(8),
  CLOSE_DATA      CHAR(8),
  SH_COMPANY_ID   VARCHAR2(9),
  SH_COMPANY_NAME VARCHAR2(128),
  SZ_COMPANY_ID   VARCHAR2(9),
  SZ_COMPANY_NAME VARCHAR2(128),
  REMARK          VARCHAR2(256),
  FILETYPE        VARCHAR2(2),
  AUDITNAME       VARCHAR2(50),
  AUDITDATE       DATE,
  IMPORTDATE      DATE,
  DATASTATUS      NUMBER(10),
  BUSINESSDATE    VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  INSTCODE_QFII   VARCHAR2(50),
  IS_HANDIWORK    CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QFII_ACCOUNT
  is 'QFII账户开户专有信息';
comment on column CFA2.T_CFA_QFII_ACCOUNT.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QFII_ACCOUNT.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_QFII_ACCOUNT.INSTCODE
  is '机构代码';
comment on column CFA2.T_CFA_QFII_ACCOUNT.INSTNAME
  is '机构名称';
comment on column CFA2.T_CFA_QFII_ACCOUNT.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_QFII_ACCOUNT.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_QFII_ACCOUNT.ACCOUNT_TYPE
  is '账户性质';
comment on column CFA2.T_CFA_QFII_ACCOUNT.ACCOUNT
  is '账号';
comment on column CFA2.T_CFA_QFII_ACCOUNT.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QFII_ACCOUNT.OPEN_DATE
  is '开户日期';
comment on column CFA2.T_CFA_QFII_ACCOUNT.CLOSE_DATA
  is '关户日期';
comment on column CFA2.T_CFA_QFII_ACCOUNT.SH_COMPANY_ID
  is '沪市券商代码';
comment on column CFA2.T_CFA_QFII_ACCOUNT.SH_COMPANY_NAME
  is '沪市券商名称';
comment on column CFA2.T_CFA_QFII_ACCOUNT.SZ_COMPANY_ID
  is '深市券商代码';
comment on column CFA2.T_CFA_QFII_ACCOUNT.SZ_COMPANY_NAME
  is '深市券商名称';
comment on column CFA2.T_CFA_QFII_ACCOUNT.REMARK
  is '备注';
comment on column CFA2.T_CFA_QFII_ACCOUNT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QFII_ACCOUNT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QFII_ACCOUNT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QFII_ACCOUNT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QFII_ACCOUNT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QFII_ACCOUNT.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QFII_ACCOUNT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QFII_ACCOUNT.INSTCODE_QFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_QFII_ACCOUNT.IS_HANDIWORK
  is '是否手工录入(Y)';
create index CFA2.INDEX_T_CFA_QFII_ACCOUNT on CFA2.T_CFA_QFII_ACCOUNT (BUSINESSID)
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_QFII_ASSETS_DEBT
prompt =====================================
prompt
create table CFA2.T_CFA_QFII_ASSETS_DEBT
(
  BUSINESSID                 VARCHAR2(50),
  CUSTODIAN_ID               VARCHAR2(12),
  INSTCODE                   VARCHAR2(50),
  INSTNAME                   VARCHAR2(128),
  BUSINESS_NUM               VARCHAR2(20),
  PRODUCT_NAME               VARCHAR2(32),
  SETTLE_YEAR                NUMBER(4),
  CURRENCE_CODE              VARCHAR2(3),
  SAVING_BALANCE             NUMBER(22,2),
  COMPANY_STOCK_AMOUNT       NUMBER(22,2),
  GOVERNMENT_LOAN_AMOUNT     NUMBER(22,2),
  OTHER_DEBT_AMOUNT          NUMBER(22,2),
  OTHER_INVEST_AMOUNT        NUMBER(22,2),
  ADVANCE_STOCK              NUMBER(22,2),
  STOCK_AMOUNT_INCOME        NUMBER(22,2),
  STOCK_PROFIT_AMOUNT_INCOME NUMBER(22,2),
  PROFIT_AMOUNT_INCOME       NUMBER(22,2),
  OTHER_AMOUNT_INCOME        NUMBER(22,2),
  ASSETS_TOTAL               NUMBER(22,2),
  MANAGER_AMOUNT_EXPEND      NUMBER(22,2),
  DEPOSIT_AMOUNT_EXPEND      NUMBER(22,2),
  TAX_AMOUNT_EXPEND          NUMBER(22,2),
  STOCK_AMOUNT_EXPEND        NUMBER(22,2),
  OTHER_AMOUNT_EXPEND        NUMBER(22,2),
  DEBT_TOTAL                 NUMBER(22,2),
  CLEAN_ASSETS               NUMBER(22,2),
  CAPITAL_CLEAR_INCOME       NUMBER(22,2),
  ACCUMULATE_PROFIT          NUMBER(22,2),
  REMARK                     VARCHAR2(256),
  FILETYPE                   VARCHAR2(2),
  AUDITNAME                  VARCHAR2(50),
  AUDITDATE                  DATE,
  IMPORTDATE                 DATE,
  DATASTATUS                 NUMBER(10),
  BUSINESSDATE               VARCHAR2(8),
  MODIFYUSER                 VARCHAR2(30),
  INSTCODE_QFII              VARCHAR2(50),
  IS_HANDIWORK               CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QFII_ASSETS_DEBT
  is '资产负债表信息';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.BUSINESSID
  is ' 业务id';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.CUSTODIAN_ID
  is ' 托管人代码';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.INSTCODE
  is ' QFII机构代码';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.INSTNAME
  is ' QFII机构名称';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.BUSINESS_NUM
  is ' 业务编号';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.PRODUCT_NAME
  is ' 产品名称';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.SETTLE_YEAR
  is ' 结算年份';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.CURRENCE_CODE
  is ' 币种';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.SAVING_BALANCE
  is ' 银行存款余额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.COMPANY_STOCK_AMOUNT
  is ' 公司股票资产金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.GOVERNMENT_LOAN_AMOUNT
  is ' 国债资产金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.OTHER_DEBT_AMOUNT
  is ' 其他债券资产金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.OTHER_INVEST_AMOUNT
  is ' 其他投资资产金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.ADVANCE_STOCK
  is ' 预付股款';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.STOCK_AMOUNT_INCOME
  is ' 应收股款';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.STOCK_PROFIT_AMOUNT_INCOME
  is ' 应收股利';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.PROFIT_AMOUNT_INCOME
  is ' 应收利息';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.OTHER_AMOUNT_INCOME
  is ' 其他应收款额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.ASSETS_TOTAL
  is ' 资产总额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.MANAGER_AMOUNT_EXPEND
  is ' 应付管理费';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.DEPOSIT_AMOUNT_EXPEND
  is ' 应付托管费';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.TAX_AMOUNT_EXPEND
  is ' 应纳税款';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.STOCK_AMOUNT_EXPEND
  is ' 应付股款';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.OTHER_AMOUNT_EXPEND
  is ' 其他应付款';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.DEBT_TOTAL
  is ' 负债总额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.CLEAN_ASSETS
  is ' 净资产';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.CAPITAL_CLEAR_INCOME
  is ' 汇入本金净值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.ACCUMULATE_PROFIT
  is ' 累计盈余（已实现）';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.REMARK
  is ' 备注';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.INSTCODE_QFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QFII_ASSETS_DEBT_MONTH
prompt ===========================================
prompt
create table CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH
(
  BUSINESSID                 VARCHAR2(50),
  CUSTODIAN_ID               VARCHAR2(12),
  INSTCODE                   VARCHAR2(50),
  INSTNAME                   VARCHAR2(128),
  BUSINESS_NUM               VARCHAR2(20),
  PRODUCT_NAME               VARCHAR2(128),
  REPORT_PERIOD              NUMBER(6),
  SETTLE_ACCOUNTS            CHAR(8),
  CURRENCE_CODE              VARCHAR2(3),
  SAVING_BALANCE             NUMBER(22,2),
  STOCK_COST                 NUMBER(22,2),
  STOCK_VALUE                NUMBER(22,2),
  GOVERNMENT_LOAN_COST       NUMBER(22,2),
  GOVERNMENT_LOAN_VALUE      NUMBER(22,2),
  EXCHANGE_DEBT_COST         NUMBER(22,2),
  EXCHANGE_DEBT_VALUE        NUMBER(22,2),
  COMPANY_DEBT_COST          NUMBER(22,2),
  COMPANY_DEBT_VALUE         NUMBER(22,2),
  CLOSED_FUND_COST           NUMBER(22,2),
  CLOSED_FUND_VALUE          NUMBER(22,2),
  OPEN_FUND_COST             NUMBER(22,2),
  OPEN_FUND_VALUE            NUMBER(22,2),
  SHARE_WARRANT_COST         NUMBER(22,2),
  SHARE_WARRANT_VALUE        NUMBER(22,2),
  SPIF_COST                  NUMBER(22,2),
  SPIF_VALUE                 NUMBER(22,2),
  OTHER_COST                 NUMBER(22,2),
  OTHER_VALUE                NUMBER(22,2),
  INVESTMENT_VALUE_TOTAL     NUMBER(22,2),
  CLEAR_AMOUNT_INCOME        NUMBER(22,2),
  STOCK_PROFIT_AMOUNT_INCOME NUMBER(22,2),
  PROFIT_AMOUNT_INCOME       NUMBER(22,2),
  OTHER_AMOUNT_INCOME        NUMBER(22,2),
  ASSETS_TOTAL               NUMBER(22,2),
  CLEAR_AMOUNT_EXPEND        NUMBER(22,2),
  DEPOSIT_AMOUNT_EXPEND      NUMBER(22,2),
  MANAGER_AMOUNT_EXPEND      NUMBER(22,2),
  TAX_AMOUNT_EXPEND          NUMBER(22,2),
  OTHER_AMOUNT_EXPEND        NUMBER(22,2),
  DEBT_TOTAL                 NUMBER(22,2),
  CLEAN_ASSETS               NUMBER(22,2),
  INCOME_VELOCITY            NUMBER(13,8),
  EXPEND_VELOCITY            NUMBER(13,8),
  AVERAGE_PROFIT             NUMBER(13,8),
  AVERAGE_PROFIT_MOUTH       NUMBER(13,8),
  REMARK                     VARCHAR2(256),
  FILETYPE                   VARCHAR2(2),
  AUDITNAME                  VARCHAR2(50),
  AUDITDATE                  DATE,
  IMPORTDATE                 DATE,
  DATASTATUS                 NUMBER(10),
  BUSINESSDATE               VARCHAR2(8),
  MODIFYUSER                 VARCHAR2(30),
  INSTCODE_QFII              VARCHAR2(50),
  IS_HANDIWORK               CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH
  is 'QFII机构月度资产负债信息';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.INSTCODE
  is 'QFII机构代码';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.INSTNAME
  is 'QFII机构名称';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.SETTLE_ACCOUNTS
  is '结算日';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.SAVING_BALANCE
  is '银行存款余额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.STOCK_COST
  is '股票成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.STOCK_VALUE
  is '股票市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.GOVERNMENT_LOAN_COST
  is '国债成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.GOVERNMENT_LOAN_VALUE
  is '国债市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.EXCHANGE_DEBT_COST
  is '可转债成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.EXCHANGE_DEBT_VALUE
  is '可转债市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.COMPANY_DEBT_COST
  is '公司债成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.COMPANY_DEBT_VALUE
  is '公司债市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.CLOSED_FUND_COST
  is '封闭式基金成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.CLOSED_FUND_VALUE
  is '封闭式基金市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.OPEN_FUND_COST
  is '开放式基金成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.OPEN_FUND_VALUE
  is '开放式基金市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_COST
  is '权证成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_VALUE
  is '权证市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.SPIF_COST
  is '股指期货成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.SPIF_VALUE
  is '股指期货市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_COST
  is '其他投资成本';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_VALUE
  is '其他投资市值';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.INVESTMENT_VALUE_TOTAL
  is '投资市值合计';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_INCOME
  is '应收清算款金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.STOCK_PROFIT_AMOUNT_INCOME
  is '应收股利金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.PROFIT_AMOUNT_INCOME
  is '应收利息金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_INCOME
  is '其他应收款金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.ASSETS_TOTAL
  is '资产合计';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_EXPEND
  is '应付清算款金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.DEPOSIT_AMOUNT_EXPEND
  is '应付托管费金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.MANAGER_AMOUNT_EXPEND
  is '应付管理费金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.TAX_AMOUNT_EXPEND
  is '应纳税款金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_EXPEND
  is '其他应付款金额';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.DEBT_TOTAL
  is '负债合计';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.CLEAN_ASSETS
  is '净资产';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.INCOME_VELOCITY
  is '本月买入周转率';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.EXPEND_VELOCITY
  is '本月卖出周转率';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT
  is '平均获利率';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT_MOUTH
  is '本月平均获利率';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.REMARK
  is '备注';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.INSTCODE_QFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_QFII_ASSETS_DEBT_MONTH.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QFII_CHANGES
prompt =================================
prompt
create table CFA2.T_CFA_QFII_CHANGES
(
  BUSINESSID                     VARCHAR2(50),
  CUSTODIAN_ID                   VARCHAR2(12),
  INSTCODE                       VARCHAR2(50),
  INSTNAME                       VARCHAR2(128),
  BUSINESS_NUM                   VARCHAR2(20),
  PRODUCT_NAME                   VARCHAR2(128),
  REPORT_PERIOD                  NUMBER(6),
  SETTLE_DATE                    CHAR(8),
  CURRENCE_CODE                  VARCHAR2(3),
  ACCOUNT                        VARCHAR2(64),
  CAPITAL_INCOME                 NUMBER(22,2),
  CAPITAL_INCOME_DOLLARS         NUMBER(22,2),
  ACCUMULATE_CAPITAL_INCOME      NUMBER(22,2),
  ACCUMULATE_CAPITAL_INCOME_DOL  NUMBER(22,2),
  INTEREST_INCOME                NUMBER(22,2),
  INTEREST_INCOME_DOLLARS        NUMBER(22,2),
  ACCUMULATE_INTEREST_INCOME     NUMBER(22,2),
  ACCUMULATE_INTEREST_INCOME_DOL NUMBER(22,2),
  RMB_SPE_PURCHASE_AMOUNT        NUMBER(22,2),
  RMB_SPE_PURCHASE_AMOUNT_DOL    NUMBER(22,2),
  ACC_RMB_SPE_PURCHASE_AMOUNT    NUMBER(22,2),
  ACC_RMB_SPE_PURC_AMOUNT_DOL    NUMBER(22,2),
  INCOME_TOTAL                   NUMBER(22,2),
  INCOME_TOTAL_DOLLARS           NUMBER(22,2),
  ACCUMULATE_INCOME_TOTAL        NUMBER(22,2),
  ACCUMULATE_INCOME_TOTAL_DOL    NUMBER(22,2),
  SELL_EXCHANGE_SPECIAL_AMOUNT   NUMBER(22,2),
  SELL_EXCHANGE_SPE_AMOUNT_DOL   NUMBER(22,2),
  ACC_SELL_EXCHANGE_SPE_AMO      NUMBER(22,2),
  ACC_SELL_EXCHANGE_SPE_AMO_DOL  NUMBER(22,2),
  EXPEND_CAPITAL_AMOUNT          NUMBER(22,2),
  EXPEND_CAPITAL_AMOUNT_DOL      NUMBER(22,2),
  ACC_EXPEND_CAPITAL_AMOUNT      NUMBER(22,2),
  ACC_EXPEND_CAPITAL_AMOUNT_DOL  NUMBER(22,2),
  EXPEND_PROFIT_AMOUNT           NUMBER(22,2),
  EXPEND_PROFIT_AMOUNT_DOL       NUMBER(22,2),
  ACC_EXPEND_PROFIT_AMOUNT       NUMBER(22,2),
  ACC_EXPEND_PROFIT_AMOUNT_DOL   NUMBER(22,2),
  PAY_AMOUNT                     NUMBER(22,2),
  PAY_AMOUNT_DOL                 NUMBER(22,2),
  ACCUMULATE_PAY_AMOUNT          NUMBER(22,2),
  ACCUMULATE_PAY_AMOUNT_DOL      NUMBER(22,2),
  INCOME_AMOUNT                  NUMBER(22,2),
  INCOME_AMOUNT_DOL              NUMBER(22,2),
  ACC_INCOME_AMOUNT              NUMBER(22,2),
  ACC_INCOME_AMOUNT_DOL          NUMBER(22,2),
  REMARK                         VARCHAR2(256),
  FILETYPE                       VARCHAR2(2),
  AUDITNAME                      VARCHAR2(50),
  AUDITDATE                      DATE,
  IMPORTDATE                     DATE,
  DATASTATUS                     NUMBER(10),
  BUSINESSDATE                   VARCHAR2(8),
  MODIFYUSER                     VARCHAR2(30),
  INSTCODE_QFII                  VARCHAR2(50),
  IS_HANDIWORK                   CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QFII_CHANGES
  is 'QFII机构外汇账户收支信息';
comment on column CFA2.T_CFA_QFII_CHANGES.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QFII_CHANGES.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_QFII_CHANGES.INSTCODE
  is '机构代码';
comment on column CFA2.T_CFA_QFII_CHANGES.INSTNAME
  is '机构名称';
comment on column CFA2.T_CFA_QFII_CHANGES.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_QFII_CHANGES.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_QFII_CHANGES.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_QFII_CHANGES.SETTLE_DATE
  is '结算日';
comment on column CFA2.T_CFA_QFII_CHANGES.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCOUNT
  is '外汇账户账号';
comment on column CFA2.T_CFA_QFII_CHANGES.CAPITAL_INCOME
  is '本月汇入本金金额';
comment on column CFA2.T_CFA_QFII_CHANGES.CAPITAL_INCOME_DOLLARS
  is '本月汇入本金金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_CAPITAL_INCOME
  is '累计汇入本金金额';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_CAPITAL_INCOME_DOL
  is '累计汇入本金金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.INTEREST_INCOME
  is '本月利息收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES.INTEREST_INCOME_DOLLARS
  is '本月利息收入金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_INTEREST_INCOME
  is '累计利息收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_INTEREST_INCOME_DOL
  is '累计利息收入金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.RMB_SPE_PURCHASE_AMOUNT
  is '本月人民币特殊账户购汇划入金额';
comment on column CFA2.T_CFA_QFII_CHANGES.RMB_SPE_PURCHASE_AMOUNT_DOL
  is '本月人民币特殊账户购汇划入金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_RMB_SPE_PURCHASE_AMOUNT
  is '累计人民币特殊账户购汇划入金额';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_RMB_SPE_PURC_AMOUNT_DOL
  is '累计人民币特殊账户购汇划入金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.INCOME_TOTAL
  is '本月收入合计';
comment on column CFA2.T_CFA_QFII_CHANGES.INCOME_TOTAL_DOLLARS
  is '本月收入合计折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_INCOME_TOTAL
  is '累计收入合计';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_INCOME_TOTAL_DOL
  is '累计收入合计折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.SELL_EXCHANGE_SPECIAL_AMOUNT
  is '本月结汇划入人民币特殊账户金额';
comment on column CFA2.T_CFA_QFII_CHANGES.SELL_EXCHANGE_SPE_AMOUNT_DOL
  is '本月结汇划入人民币特殊账户金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_SELL_EXCHANGE_SPE_AMO
  is '累计结汇划入人民币特殊账户金额';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_SELL_EXCHANGE_SPE_AMO_DOL
  is '累计结汇划入人民币特殊账户金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.EXPEND_CAPITAL_AMOUNT
  is '本月汇出本金金额';
comment on column CFA2.T_CFA_QFII_CHANGES.EXPEND_CAPITAL_AMOUNT_DOL
  is '本月汇出本金金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_EXPEND_CAPITAL_AMOUNT
  is '累计汇出本金金额';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_EXPEND_CAPITAL_AMOUNT_DOL
  is '累计汇出本金金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.EXPEND_PROFIT_AMOUNT
  is '本月汇出收益金额';
comment on column CFA2.T_CFA_QFII_CHANGES.EXPEND_PROFIT_AMOUNT_DOL
  is '本月汇出收益金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_EXPEND_PROFIT_AMOUNT
  is '累计汇出收益金额';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_EXPEND_PROFIT_AMOUNT_DOL
  is '累计汇出收益金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.PAY_AMOUNT
  is '本月支出合计';
comment on column CFA2.T_CFA_QFII_CHANGES.PAY_AMOUNT_DOL
  is '本月支出合计折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_PAY_AMOUNT
  is '累计支出合计';
comment on column CFA2.T_CFA_QFII_CHANGES.ACCUMULATE_PAY_AMOUNT_DOL
  is '累计支出合计折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.INCOME_AMOUNT
  is '本月净汇入金额';
comment on column CFA2.T_CFA_QFII_CHANGES.INCOME_AMOUNT_DOL
  is '本月净汇入金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_INCOME_AMOUNT
  is '累计净汇入金额';
comment on column CFA2.T_CFA_QFII_CHANGES.ACC_INCOME_AMOUNT_DOL
  is '累计净汇入金额折美元';
comment on column CFA2.T_CFA_QFII_CHANGES.REMARK
  is '备注';
comment on column CFA2.T_CFA_QFII_CHANGES.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QFII_CHANGES.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QFII_CHANGES.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QFII_CHANGES.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QFII_CHANGES.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QFII_CHANGES.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QFII_CHANGES.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QFII_CHANGES.INSTCODE_QFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_QFII_CHANGES.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QFII_CHANGES_SPECIAL
prompt =========================================
prompt
create table CFA2.T_CFA_QFII_CHANGES_SPECIAL
(
  BUSINESSID                     VARCHAR2(50),
  CUSTODIAN_ID                   VARCHAR2(12),
  INSTCODE                       VARCHAR2(50),
  INSTNAME                       VARCHAR2(128),
  BUSINESS_NUM                   VARCHAR2(20),
  PRODUCT_NAME                   VARCHAR2(128),
  REPORT_PERIOD                  VARCHAR2(6),
  SETTLE_DATE                    CHAR(8),
  CURRENCE_CODE                  VARCHAR2(3),
  ACCOUNT_SPECIAL                VARCHAR2(64),
  FOREIGN_INCOME                 NUMBER(22,2),
  ACCUMULATE_FOREIGN_INCOME      NUMBER(22,2),
  SELL_SECURITY_AMOUNT           NUMBER(22,2),
  ACCUMULATE_SELL_SECURIT_AMOUNT NUMBER(22,2),
  DIVIDEND_INCOME                NUMBER(22,2),
  ACC_DIVIDEND_INCOME            NUMBER(22,2),
  INTEREST_INCOME                NUMBER(22,2),
  ACCUMULATE_INTEREST_INCOME     NUMBER(22,2),
  OTHER_INCOME                   NUMBER(22,2),
  ACCUMULATE_OTHER_INCOME        NUMBER(22,2),
  INCOME_TOTAL                   NUMBER(22,2),
  ACCUMULATE_INCOME_TOTAL        NUMBER(22,2),
  EXCHANGE_AMOUNT                NUMBER(22,2),
  ACCUMULATE_EXCHANGE_AMOUNT     NUMBER(22,2),
  PAY_SECURITY_AMOUNT            NUMBER(22,2),
  ACCUMULATE_PAY_SECURITY_AMOUNT NUMBER(22,2),
  DEPOSIT_AMOUNT                 NUMBER(22,2),
  ACCUMULATE_DEPOSIT_AMOUNT      NUMBER(22,2),
  MANAGE_AMOUNT                  NUMBER(22,2),
  ACCUMULATE_MANAGE_AMOUNT       NUMBER(22,2),
  OTHER_PAY_AMOUNT               NUMBER(22,2),
  ACCUMULATE_OTHER_PAY_AMOUNT    NUMBER(22,2),
  PAY_AMOUNT                     NUMBER(22,2),
  ACCUMULATE_PAY_AMOUNT          NUMBER(22,2),
  REMARK                         VARCHAR2(256),
  FILETYPE                       VARCHAR2(2),
  AUDITNAME                      VARCHAR2(50),
  AUDITDATE                      DATE,
  IMPORTDATE                     DATE,
  DATASTATUS                     NUMBER(10),
  BUSINESSDATE                   VARCHAR2(8),
  MODIFYUSER                     VARCHAR2(30),
  INSTCODE_QFII                  VARCHAR2(50),
  IS_HANDIWORK                   CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QFII_CHANGES_SPECIAL
  is 'QFII机构人民币特殊账户收支信息';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.INSTCODE
  is '机构代码';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.INSTNAME
  is '机构名称';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.SETTLE_DATE
  is '结算日';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCOUNT_SPECIAL
  is '人民币特殊账户账号';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.FOREIGN_INCOME
  is '本月外汇账户结汇划入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_FOREIGN_INCOME
  is '累计外汇账户结汇划入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.SELL_SECURITY_AMOUNT
  is '本月卖出证券所得价款金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_SELL_SECURIT_AMOUNT
  is '累计卖出证券所得价款金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.DIVIDEND_INCOME
  is '本月股利收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACC_DIVIDEND_INCOME
  is '累计股利收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.INTEREST_INCOME
  is '本月利息收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_INTEREST_INCOME
  is '累计利息收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.OTHER_INCOME
  is '本月其他收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_OTHER_INCOME
  is '累计其他收入金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.INCOME_TOTAL
  is '本月收入合计';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_INCOME_TOTAL
  is '累计收入合计';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.EXCHANGE_AMOUNT
  is '本月购汇划入外汇账户金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_EXCHANGE_AMOUNT
  is '累计购汇划入外汇账户金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.PAY_SECURITY_AMOUNT
  is '本月买入证券支付价款金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_PAY_SECURITY_AMOUNT
  is '累计买入证券支付价款金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.DEPOSIT_AMOUNT
  is '本月托管费支出金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_DEPOSIT_AMOUNT
  is '累计托管费支出金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.MANAGE_AMOUNT
  is '本月管理费支出金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_MANAGE_AMOUNT
  is '累计管理费支出金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.OTHER_PAY_AMOUNT
  is '本月其他支出金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_OTHER_PAY_AMOUNT
  is '累计其他支出金额';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.PAY_AMOUNT
  is '本月支出合计';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_PAY_AMOUNT
  is '累计支出合计';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.REMARK
  is '备注';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.INSTCODE_QFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_QFII_CHANGES_SPECIAL.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QFII_PROFIT_LOSS
prompt =====================================
prompt
create table CFA2.T_CFA_QFII_PROFIT_LOSS
(
  BUSINESSID                     VARCHAR2(50),
  CUSTODIAN_ID                   VARCHAR2(12),
  INSTCODE                       VARCHAR2(50),
  INSTNAME                       VARCHAR2(128),
  BUSINESS_NUM                   VARCHAR2(20),
  PRODUCT_NAME                   VARCHAR2(32),
  SETTLE_YEAR                    NUMBER(4),
  CURRENCE_CODE                  VARCHAR2(3),
  STOCK_PROFIT_AMOUNT_INCOME     NUMBER(22,2),
  PROFIT_AMOUNT_INCOME           NUMBER(22,2),
  OTHER_AMOUNT_INCOME            NUMBER(22,2),
  INCOME_TOTAL                   NUMBER(22,2),
  DEPOSIT_AMOUNT                 NUMBER(22,2),
  MANAGER_AMOUNT                 NUMBER(22,2),
  TAX_AMOUNT                     NUMBER(22,2),
  OTHER_AMOUNT                   NUMBER(22,2),
  EXPEND_TOTAL                   NUMBER(22,2),
  YEAR_ACHIEVE_CAPITAL_AMOUNT    NUMBER(22,2),
  WAIT_ACHIEVE_CAPITAL_AMOUNT    NUMBER(22,2),
  ACCEPT_VALUE_PROFIT_LOSS       NUMBER(22,2),
  YEAR_CLEAR_PROFIT_LOSS         NUMBER(22,2),
  PERIOD_BEGIN_ACCUMULATE_PROFIT NUMBER(22,2),
  PERIOD_END_ACCUMULATE_PROFIT   NUMBER(22,2),
  REMARK                         VARCHAR2(256),
  FILETYPE                       VARCHAR2(2),
  AUDITNAME                      VARCHAR2(50),
  AUDITDATE                      DATE,
  IMPORTDATE                     DATE,
  DATASTATUS                     NUMBER(10),
  BUSINESSDATE                   VARCHAR2(8),
  MODIFYUSER                     VARCHAR2(30),
  INSTCODE_QFII                  VARCHAR2(50),
  IS_HANDIWORK                   CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QFII_PROFIT_LOSS
  is '损益表信息';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.INSTCODE
  is 'QFII机构代码';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.INSTNAME
  is 'QFII机构名称';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.SETTLE_YEAR
  is '结算年份';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.STOCK_PROFIT_AMOUNT_INCOME
  is '股息收入金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.PROFIT_AMOUNT_INCOME
  is '利息收入金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.OTHER_AMOUNT_INCOME
  is '其他收入金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.INCOME_TOTAL
  is '收入合计';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.DEPOSIT_AMOUNT
  is '托管费金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.MANAGER_AMOUNT
  is '管理费金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.TAX_AMOUNT
  is '税款金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.OTHER_AMOUNT
  is '其他费用（税费）金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.EXPEND_TOTAL
  is '费用合计';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.YEAR_ACHIEVE_CAPITAL_AMOUNT
  is '本年度已实现资本利得（亏损）额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.WAIT_ACHIEVE_CAPITAL_AMOUNT
  is '未实现资本利得（亏损）额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.ACCEPT_VALUE_PROFIT_LOSS
  is '公允价值变动损益';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.YEAR_CLEAR_PROFIT_LOSS
  is '本年度净损益金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.PERIOD_BEGIN_ACCUMULATE_PROFIT
  is '期初累计盈余金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.PERIOD_END_ACCUMULATE_PROFIT
  is '期末累计盈余金额';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.REMARK
  is '备注';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.INSTCODE_QFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_QFII_PROFIT_LOSS.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_QFII_REMIT
prompt ===============================
prompt
create table CFA2.T_CFA_QFII_REMIT
(
  BUSINESSID                    VARCHAR2(50),
  CUSTODIAN_ID                  VARCHAR2(12),
  INSTCODE                      VARCHAR2(50),
  INSTNAME                      VARCHAR2(128),
  BUSINESS_NUM                  VARCHAR2(20),
  PRODUCT_NAME                  VARCHAR2(128),
  ACCOUNT                       VARCHAR2(64),
  EXCHANGE_DATE                 CHAR(8),
  CHANGE_ID                     VARCHAR2(4),
  FUND_PROPERTY                 VARCHAR2(2),
  INCOME_CURR_CODE              VARCHAR2(3),
  INCOME_AMOUNT                 NUMBER(22,2),
  INCOME_AMOUNT_DOLLARS         NUMBER(22,2),
  SELL_EXCHANGE_CURR_CODE       VARCHAR2(3),
  SELL_EXCHANGE_AMOUNT          NUMBER(22,2),
  SELL_EXCHANGE_AMOUNT_DOLLARS  NUMBER(22,2),
  SELL_EXCHANGE_AMOUNT_RMB      NUMBER(22,2),
  BUY_EXCHANGE_AMOUNT_RMB       NUMBER(22,2),
  BUY_EXCHANGE_CURR_CODE        VARCHAR2(3),
  BUY_EXCHANGE_AMOUNT           NUMBER(22,2),
  BUY_EXCHANGE_AMOUNT_DOLLARS   NUMBER(22,2),
  EXPEND_CAPITAL_CURR_CODE      VARCHAR2(3),
  EXPEND_CAPITAL_AMOUNT         NUMBER(22,2),
  EXPEND_CAPITAL_AMOUNT_DOLLARS NUMBER(22,2),
  EXPEND_PROFIT_CURR_CODE       VARCHAR2(3),
  EXPEND_PROFIT_AMOUNT          NUMBER(22,2),
  EXPEND_PROFIT_DOLLARS         NUMBER(22,2),
  REMARK                        VARCHAR2(256),
  FILETYPE                      VARCHAR2(2),
  AUDITNAME                     VARCHAR2(50),
  AUDITDATE                     DATE,
  IMPORTDATE                    DATE,
  DATASTATUS                    NUMBER(10),
  BUSINESSDATE                  VARCHAR2(8),
  MODIFYUSER                    VARCHAR2(30),
  INSTCODE_QFII                 VARCHAR2(50),
  IS_HANDIWORK                  CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_QFII_REMIT
  is 'QFII资金汇出入及结购汇明细信息';
comment on column CFA2.T_CFA_QFII_REMIT.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_QFII_REMIT.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_QFII_REMIT.INSTCODE
  is '机构代码';
comment on column CFA2.T_CFA_QFII_REMIT.INSTNAME
  is '机构名称';
comment on column CFA2.T_CFA_QFII_REMIT.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_QFII_REMIT.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_QFII_REMIT.ACCOUNT
  is '账号';
comment on column CFA2.T_CFA_QFII_REMIT.EXCHANGE_DATE
  is '汇兑日期';
comment on column CFA2.T_CFA_QFII_REMIT.CHANGE_ID
  is '变动编号';
comment on column CFA2.T_CFA_QFII_REMIT.FUND_PROPERTY
  is '资金性质';
comment on column CFA2.T_CFA_QFII_REMIT.INCOME_CURR_CODE
  is '汇入币种';
comment on column CFA2.T_CFA_QFII_REMIT.INCOME_AMOUNT
  is '汇入金额';
comment on column CFA2.T_CFA_QFII_REMIT.INCOME_AMOUNT_DOLLARS
  is '汇入金额折美元';
comment on column CFA2.T_CFA_QFII_REMIT.SELL_EXCHANGE_CURR_CODE
  is '结汇币种';
comment on column CFA2.T_CFA_QFII_REMIT.SELL_EXCHANGE_AMOUNT
  is '结汇金额';
comment on column CFA2.T_CFA_QFII_REMIT.SELL_EXCHANGE_AMOUNT_DOLLARS
  is '结汇金额折美元';
comment on column CFA2.T_CFA_QFII_REMIT.SELL_EXCHANGE_AMOUNT_RMB
  is '结汇所得人民币金额';
comment on column CFA2.T_CFA_QFII_REMIT.BUY_EXCHANGE_AMOUNT_RMB
  is '购汇人民币金额';
comment on column CFA2.T_CFA_QFII_REMIT.BUY_EXCHANGE_CURR_CODE
  is '购汇币种';
comment on column CFA2.T_CFA_QFII_REMIT.BUY_EXCHANGE_AMOUNT
  is '购汇所得金额';
comment on column CFA2.T_CFA_QFII_REMIT.BUY_EXCHANGE_AMOUNT_DOLLARS
  is '购汇金额折美元';
comment on column CFA2.T_CFA_QFII_REMIT.EXPEND_CAPITAL_CURR_CODE
  is '汇出本金币种';
comment on column CFA2.T_CFA_QFII_REMIT.EXPEND_CAPITAL_AMOUNT
  is '汇出本金金额';
comment on column CFA2.T_CFA_QFII_REMIT.EXPEND_CAPITAL_AMOUNT_DOLLARS
  is '汇出本金折美元';
comment on column CFA2.T_CFA_QFII_REMIT.EXPEND_PROFIT_CURR_CODE
  is '汇出收益币种';
comment on column CFA2.T_CFA_QFII_REMIT.EXPEND_PROFIT_AMOUNT
  is '汇出收益金额';
comment on column CFA2.T_CFA_QFII_REMIT.EXPEND_PROFIT_DOLLARS
  is '汇出收益折美元';
comment on column CFA2.T_CFA_QFII_REMIT.REMARK
  is '备注';
comment on column CFA2.T_CFA_QFII_REMIT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_QFII_REMIT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_QFII_REMIT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_QFII_REMIT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_QFII_REMIT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_QFII_REMIT.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_QFII_REMIT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_QFII_REMIT.INSTCODE_QFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_QFII_REMIT.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_RQFII_ASSETS_DEBT
prompt ======================================
prompt
create table CFA2.T_CFA_RQFII_ASSETS_DEBT
(
  BUSINESSID                   VARCHAR2(50),
  CUSTODIAN_ID                 VARCHAR2(12),
  INSTCODE                     VARCHAR2(50),
  INSTNAME                     VARCHAR2(128),
  SETTLE_YEAR                  NUMBER(4),
  CURRENCE_CODE                VARCHAR2(3),
  SAVING_BALANCE               NUMBER(22,2),
  COMPANY_STOCK_AMOUNT         NUMBER(22,2),
  DEBT_AMOUNT                  NUMBER(22,2),
  FUND_AMOUNT                  NUMBER(22,2),
  FUND_SUPPORT_AMOUNT          NUMBER(22,2),
  SHARE_WARRANT_AMOUNT         NUMBER(22,2),
  OTHER_INVEST_AMOUNT          NUMBER(22,2),
  ADVANCE_STOCK                NUMBER(22,2),
  STOCK_AMOUNT_INCOME          NUMBER(22,2),
  ASKFOR_BUY_AMOUNT_INCOME     NUMBER(22,2),
  STOCK_PROFIT_AMOUNT_INCOME   NUMBER(22,2),
  PROFIT_AMOUNT_INCOME         NUMBER(22,2),
  SETTLE_RESERVE_AMOUNT        NUMBER(22,2),
  BUYING_BACK_ASSETS_AMOUNT    NUMBER(22,2),
  OTHER_AMOUNT_INCOME          NUMBER(22,2),
  ASSETS_TOTAL                 NUMBER(22,2),
  MANAGER_AMOUNT_EXPEND        NUMBER(22,2),
  DEPOSIT_AMOUNT_EXPEND        NUMBER(22,2),
  TAX_AMOUNT_EXPEND            NUMBER(22,2),
  STOCK_AMOUNT_EXPEND          NUMBER(22,2),
  PROFIT_AMOUNT_EXPEND         NUMBER(22,2),
  SSETS_SOLD_REPURCHASE_AMOUNT NUMBER(22,2),
  REDEMPTION_EXPEND            NUMBER(22,2),
  TRADE_EXPEND                 NUMBER(22,2),
  OTHER_AMOUNT_EXPEND          NUMBER(22,2),
  DEBT_TOTAL                   NUMBER(22,2),
  CLEAN_ASSETS                 NUMBER(22,2),
  CAPITAL_CLEAR_INCOME         NUMBER(22,2),
  YEAR_CLEAR_PROFIT_LOSS       NUMBER(22,2),
  ACCUMULATE_PROFIT            NUMBER(22,2),
  REMARK                       VARCHAR2(256),
  FILETYPE                     VARCHAR2(2),
  AUDITNAME                    VARCHAR2(50),
  AUDITDATE                    DATE,
  IMPORTDATE                   DATE,
  DATASTATUS                   NUMBER(10),
  BUSINESSDATE                 VARCHAR2(8),
  MODIFYUSER                   VARCHAR2(30),
  INSTCODE_RQFII               VARCHAR2(50),
  IS_HANDIWORK                 CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_RQFII_ASSETS_DEBT
  is '资产负债表信息';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.INSTCODE
  is 'RQFII机构代码';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.INSTNAME
  is 'RQFII机构名称';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.SETTLE_YEAR
  is '结算年份';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.SAVING_BALANCE
  is '银行存款余额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.COMPANY_STOCK_AMOUNT
  is '公司股票资产金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.DEBT_AMOUNT
  is '债券资产金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.FUND_AMOUNT
  is '基金资产金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.FUND_SUPPORT_AMOUNT
  is '资产支持证券资产金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.SHARE_WARRANT_AMOUNT
  is '权证资产金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.OTHER_INVEST_AMOUNT
  is '其他投资资产金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.ADVANCE_STOCK
  is '预付股款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.STOCK_AMOUNT_INCOME
  is '应收股款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.ASKFOR_BUY_AMOUNT_INCOME
  is '应收申购款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.STOCK_PROFIT_AMOUNT_INCOME
  is '应收股利额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.PROFIT_AMOUNT_INCOME
  is '应收利息额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.SETTLE_RESERVE_AMOUNT
  is '结算备付金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.BUYING_BACK_ASSETS_AMOUNT
  is '买入返售金融资产余额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.OTHER_AMOUNT_INCOME
  is '其他应收款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.ASSETS_TOTAL
  is '资产总额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.MANAGER_AMOUNT_EXPEND
  is '应付管理费额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.DEPOSIT_AMOUNT_EXPEND
  is '应付托管费额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.TAX_AMOUNT_EXPEND
  is '应纳税款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.STOCK_AMOUNT_EXPEND
  is '应付股款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.PROFIT_AMOUNT_EXPEND
  is '应付利息额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.SSETS_SOLD_REPURCHASE_AMOUNT
  is '卖出回购金融资产款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.REDEMPTION_EXPEND
  is '应付赎回款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.TRADE_EXPEND
  is '应付交易费用额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.OTHER_AMOUNT_EXPEND
  is '其他应付款额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.DEBT_TOTAL
  is '负债总额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.CLEAN_ASSETS
  is '净资产';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.CAPITAL_CLEAR_INCOME
  is '汇入本金净值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.YEAR_CLEAR_PROFIT_LOSS
  is '本年度净损益';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.ACCUMULATE_PROFIT
  is '累计盈余';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.REMARK
  is '备注';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.INSTCODE_RQFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_RQFII_ASSETS_DEBT_MONTH
prompt ============================================
prompt
create table CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH
(
  BUSINESSID                     VARCHAR2(50),
  CUSTODIAN_ID                   VARCHAR2(12),
  INSTCODE                       VARCHAR2(50),
  INSTNAME                       VARCHAR2(128),
  REPORT_PERIOD                  NUMBER(6),
  SETTLE_ACCOUNTS                CHAR(8),
  CURRENCE_CODE                  VARCHAR2(3),
  SAVING_BALANCE                 NUMBER(22,2),
  STOCK_COST                     NUMBER(22,2),
  STOCK_VALUE                    NUMBER(22,2),
  STOCK_FUND_COST                NUMBER(22,2),
  STOCK_FUND_VALUE               NUMBER(22,2),
  REGULAR_PROFIT_FUND_COST       NUMBER(22,2),
  REGULAR_PROFIT_FUND_VALUE      NUMBER(22,2),
  OTHER_FUND_COST                NUMBER(22,2),
  OTHER_FUND_VALUE               NUMBER(22,2),
  SPIF_COST                      NUMBER(22,2),
  SPIF_VALUE                     NUMBER(22,2),
  SHARE_WARRANT_COST             NUMBER(22,2),
  SHARE_WARRANT_VALUE            NUMBER(22,2),
  EXCHANGE_GOVERNMENT_LOAN_COST  NUMBER(22,2),
  EXCHANGE_GOVERNMENT_LOAN_VALUE NUMBER(22,2),
  EXCHANGE_LOCAL_DEBT_COST       NUMBER(22,2),
  EXCHANGE_LOCAL_DEBT_VALUE      NUMBER(22,2),
  EXCHANGE_COMPANY_DEBT_COST     NUMBER(22,2),
  EXCHANGE_COMPANY_DEBT_VALUE    NUMBER(22,2),
  EXCHANGE_EX_DEBT_COST          NUMBER(22,2),
  EXCHANGE_EX_DEBT_VALUE         NUMBER(22,2),
  OTHER_EXCHANGE_DEBT_COST       NUMBER(22,2),
  OTHER_EXCHANGE_DEBT_VALUE      NUMBER(22,2),
  BANK_GOVERNMENT_DEBT_COST      NUMBER(22,2),
  BANK_GOVERNMENT_DEBT_VALUE     NUMBER(22,2),
  BANK_FINANCIAL_DEBT_COST       NUMBER(22,2),
  BANK_FINANCIAL_DEBT_VALUE      NUMBER(22,2),
  BANK_CENTRE_BILL_COST          NUMBER(22,2),
  BANK_CENTRE_BILL_VALUE         NUMBER(22,2),
  BANK_SHORT_FINANCING_COST      NUMBER(22,2),
  BANK_SHORT_FINANCING_VALUE     NUMBER(22,2),
  BANK_INTERIM_BILL_COST         NUMBER(22,2),
  BANK_INTERIM_BILL_VALUE        NUMBER(22,2),
  BANK_COMPANY_LOAN_COST         NUMBER(22,2),
  BANK_COMPANY_LOAN_VALUE        NUMBER(22,2),
  BANK_LOCAL_LOAN_COST           NUMBER(22,2),
  BANK_LOCAL_LOAN_VALUE          NUMBER(22,2),
  BANK_FUND_SUPPORT_COST         NUMBER(22,2),
  BANK_FUND_SUPPORT_VALUE        NUMBER(22,2),
  OTHER_BANK_LOAN_COST           NUMBER(22,2),
  OTHER_BANK_LOAN_VALUE          NUMBER(22,2),
  INVESTMENT_VALUE_TOTAL         NUMBER(22,2),
  CLEAR_AMOUNT_INCOME            NUMBER(22,2),
  STOCK_PROFIT_AMOUNT_INCOME     NUMBER(22,2),
  PROFIT_AMOUNT_INCOME           NUMBER(22,2),
  OTHER_AMOUNT_INCOME            NUMBER(22,2),
  ASSETS_TOTAL                   NUMBER(22,2),
  CLEAR_AMOUNT_EXPEND            NUMBER(22,2),
  DEPOSIT_AMOUNT_EXPEND          NUMBER(22,2),
  MANAGER_AMOUNT_EXPEND          NUMBER(22,2),
  TAX_AMOUNT_EXPEND              NUMBER(22,2),
  OTHER_AMOUNT_EXPEND            NUMBER(22,2),
  DEBT_TOTAL                     NUMBER(22,2),
  CLEAN_ASSETS                   NUMBER(22,2),
  INCOME_VELOCITY                NUMBER(13,8),
  EXPEND_VELOCITY                NUMBER(13,8),
  AVERAGE_PROFIT                 NUMBER(13,8),
  AVERAGE_PROFIT_MOUTH           NUMBER(13,8),
  REMARK                         VARCHAR2(256),
  FILETYPE                       VARCHAR2(2),
  AUDITNAME                      VARCHAR2(50),
  AUDITDATE                      DATE,
  IMPORTDATE                     DATE,
  DATASTATUS                     NUMBER(10),
  BUSINESSDATE                   VARCHAR2(8),
  MODIFYUSER                     VARCHAR2(30),
  INSTCODE_RQFII                 VARCHAR2(50),
  IS_HANDIWORK                   CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH
  is 'RQFII机构月度资产负债信息';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.INSTCODE
  is 'RQFII机构代码';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.INSTNAME
  is 'RQFII机构名称';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.SETTLE_ACCOUNTS
  is '结算日';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.SAVING_BALANCE
  is '银行存款余额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_COST
  is '股票成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_VALUE
  is '股票市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_FUND_COST
  is '股票类基金成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_FUND_VALUE
  is '股票类基金市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.REGULAR_PROFIT_FUND_COST
  is '固定收益类基金成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.REGULAR_PROFIT_FUND_VALUE
  is '固定收益类基金市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_FUND_COST
  is '其他基金成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_FUND_VALUE
  is '其他基金市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.SPIF_COST
  is '股指期货成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.SPIF_VALUE
  is '股指期货市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_COST
  is '权证成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_VALUE
  is '权证市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_GOVERNMENT_LOAN_COST
  is '交易所市场国债成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_GOVERNMENT_LOAN_VALUE
  is '交易所市场国债市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_LOCAL_DEBT_COST
  is '交易所市场地方债成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_LOCAL_DEBT_VALUE
  is '交易所市场地方债市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_COMPANY_DEBT_COST
  is '交易所市场公司债（企业债）成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_COMPANY_DEBT_VALUE
  is '交易所市场公司债（企业债）市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_EX_DEBT_COST
  is '交易所市场可转债成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_EX_DEBT_VALUE
  is '交易所市场可转债市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_EXCHANGE_DEBT_COST
  is '其他交易所市场证券成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_EXCHANGE_DEBT_VALUE
  is '其他交易所市场证券市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_GOVERNMENT_DEBT_COST
  is '银行间市场国债成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_GOVERNMENT_DEBT_VALUE
  is '银行间市场国债市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FINANCIAL_DEBT_COST
  is '银行间市场金融债成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FINANCIAL_DEBT_VALUE
  is '银行间市场金融债市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_CENTRE_BILL_COST
  is '银行间市场央票成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_CENTRE_BILL_VALUE
  is '银行间市场央票市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_SHORT_FINANCING_COST
  is '银行间市场短期融资券成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_SHORT_FINANCING_VALUE
  is '银行间市场短期融资券市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_INTERIM_BILL_COST
  is '银行间市场中期票据成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_INTERIM_BILL_VALUE
  is '银行间市场中期票据市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_COMPANY_LOAN_COST
  is '银行间市场企业债成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_COMPANY_LOAN_VALUE
  is '银行间市场企业债市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_LOCAL_LOAN_COST
  is '银行间市场地方政府债成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_LOCAL_LOAN_VALUE
  is '银行间市场地方政府债市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FUND_SUPPORT_COST
  is '银行间市场资产支持成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FUND_SUPPORT_VALUE
  is '银行间市场资产支持市值';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_BANK_LOAN_COST
  is '其他银行间市场证券成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_BANK_LOAN_VALUE
  is '其他银行间市场证券成本';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.INVESTMENT_VALUE_TOTAL
  is '投资市值合计';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_INCOME
  is '应收清算款金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_PROFIT_AMOUNT_INCOME
  is '应收股利金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.PROFIT_AMOUNT_INCOME
  is '应收利息金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_INCOME
  is '其他应收款金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.ASSETS_TOTAL
  is '资产市值合计';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_EXPEND
  is '应付清算款金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.DEPOSIT_AMOUNT_EXPEND
  is '应付托管费金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.MANAGER_AMOUNT_EXPEND
  is '应付管理费金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.TAX_AMOUNT_EXPEND
  is '应纳税款金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_EXPEND
  is '其他应付款金额';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.DEBT_TOTAL
  is '负债合计';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.CLEAN_ASSETS
  is '净资产';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.INCOME_VELOCITY
  is '本月买入周转率';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXPEND_VELOCITY
  is '本月卖出周转率';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT
  is '平均获利率';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT_MOUTH
  is '本月平均获利率';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.REMARK
  is '备注';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.INSTCODE_RQFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_RQFII_ASSETS_DEBT_MONTH.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_RQFII_CHANGES
prompt ==================================
prompt
create table CFA2.T_CFA_RQFII_CHANGES
(
  BUSINESSID                    VARCHAR2(50),
  CUSTODIAN_ID                  VARCHAR2(12),
  INSTCODE                      VARCHAR2(50),
  INSTNAME                      VARCHAR2(128),
  ACCOUNT_NAME                  VARCHAR2(128),
  ACCOUNT                       VARCHAR2(32),
  REPORT_PERIOD                 NUMBER(6),
  SETTLE_DATE                   CHAR(8),
  CURRENCE_CODE                 VARCHAR2(3),
  INVEST_CAPITAL_INCOME_AMOUNT  NUMBER(22,2),
  ACC_INVEST_CAPITAL_IN_AMOUNT  NUMBER(22,2),
  SELL_SECURITY_AMOUNT          NUMBER(22,2),
  ACC_SELL_SECURITY_AMOUNT      NUMBER(22,2),
  EXCHANGE_SELL_SECURITY_AMOUNT NUMBER(22,2),
  ACC_EX_SELL_SECURITY_AMOUNT   NUMBER(22,2),
  BANK_SELL_SECURITY_AMOUNT     NUMBER(22,2),
  ACC_BANK_SELL_SECURITY_AMOUNT NUMBER(22,2),
  DIVIDEND_INCOME               NUMBER(22,2),
  ACC_DIVIDEND_INCOME           NUMBER(22,2),
  INTEREST_INCOME               NUMBER(22,2),
  ACC_INTEREST_INCOME           NUMBER(22,2),
  OTHER_INCOME                  NUMBER(22,2),
  ACCUMULATE_OTHER_INCOME       NUMBER(22,2),
  INCOME_TOTAL                  NUMBER(22,2),
  ACCUMULATE_INCOME_TOTAL       NUMBER(22,2),
  EXPEND_CAPITAL_AMOUNT         NUMBER(22,2),
  ACC_EXPEND_CAPITAL_AMOUNT     NUMBER(22,2),
  BUY_EXPEND_CAPITAL_AMOUNT     NUMBER(22,2),
  ACC_BUY_EXPEND_CAPITAL_AMOUNT NUMBER(22,2),
  PAY_SECURITY_AMOUNT           NUMBER(22,2),
  ACC_PAY_SECURITY_AMOUNT       NUMBER(22,2),
  EXCHANGE_PAY_SECURITY_AMOUNT  NUMBER(22,2),
  ACC_EX_PAY_SECURITY_AMOUNT    NUMBER(22,2),
  BANK_PAY_SECURITY_AMOUNT      NUMBER(22,2),
  ACC_BANK_PAY_SECURITY_AMOUNT  NUMBER(22,2),
  DEPOSIT_AMOUNT                NUMBER(22,2),
  ACCUMULATE_DEPOSIT_AMOUNT     NUMBER(22,2),
  MANAGE_AMOUNT                 NUMBER(22,2),
  ACCUMULATE_MANAGE_AMOUNT      NUMBER(22,2),
  OTHER_PAY_AMOUNT              NUMBER(22,2),
  ACCUMULATE_OTHER_PAY_AMOUNT   NUMBER(22,2),
  PAY_AMOUNT                    NUMBER(22,2),
  ACCUMULATE_PAY_AMOUNT         NUMBER(22,2),
  REMARK                        VARCHAR2(256),
  FILETYPE                      VARCHAR2(2),
  AUDITNAME                     VARCHAR2(50),
  AUDITDATE                     DATE,
  IMPORTDATE                    DATE,
  DATASTATUS                    NUMBER(10),
  BUSINESSDATE                  VARCHAR2(8),
  MODIFYUSER                    VARCHAR2(30),
  INSTCODE_RQFII                VARCHAR2(50),
  IS_HANDIWORK                  CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_RQFII_CHANGES
  is 'RQFII境内人民币账户收支情况信息';
comment on column CFA2.T_CFA_RQFII_CHANGES.BUSINESSID
  is '业务编号';
comment on column CFA2.T_CFA_RQFII_CHANGES.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_RQFII_CHANGES.INSTCODE
  is 'RQFII机构代码';
comment on column CFA2.T_CFA_RQFII_CHANGES.INSTNAME
  is 'RQFII机构名称';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCOUNT_NAME
  is 'RQFII人民币账户名称';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCOUNT
  is 'RQFII人民币账户账号';
comment on column CFA2.T_CFA_RQFII_CHANGES.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_RQFII_CHANGES.SETTLE_DATE
  is '结算日';
comment on column CFA2.T_CFA_RQFII_CHANGES.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_RQFII_CHANGES.INVEST_CAPITAL_INCOME_AMOUNT
  is '本月投资本金汇入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_INVEST_CAPITAL_IN_AMOUNT
  is '累计投资本金汇入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.SELL_SECURITY_AMOUNT
  is '本月卖出证券所得价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_SELL_SECURITY_AMOUNT
  is '累计卖出证券所得价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.EXCHANGE_SELL_SECURITY_AMOUNT
  is '本月交易所市场卖出证券所得价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_EX_SELL_SECURITY_AMOUNT
  is '累计交易所市场卖出证券所得价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.BANK_SELL_SECURITY_AMOUNT
  is '本月银行间市场卖出证券所得价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_BANK_SELL_SECURITY_AMOUNT
  is '累计银行间市场卖出证券所得价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.DIVIDEND_INCOME
  is '本月股利收入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_DIVIDEND_INCOME
  is '累计股利收入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.INTEREST_INCOME
  is '本月利息收入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_INTEREST_INCOME
  is '累计利息收入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.OTHER_INCOME
  is '本月其他收入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCUMULATE_OTHER_INCOME
  is '累计其他收入金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.INCOME_TOTAL
  is '本月收入合计';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCUMULATE_INCOME_TOTAL
  is '累计收入合计';
comment on column CFA2.T_CFA_RQFII_CHANGES.EXPEND_CAPITAL_AMOUNT
  is '本月汇出资金金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_EXPEND_CAPITAL_AMOUNT
  is '累计汇出资金金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.BUY_EXPEND_CAPITAL_AMOUNT
  is '本月购汇汇出资金金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_BUY_EXPEND_CAPITAL_AMOUNT
  is '累计购汇汇出资金金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.PAY_SECURITY_AMOUNT
  is '本月买入证券支付价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_PAY_SECURITY_AMOUNT
  is '累计买入证券支付价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.EXCHANGE_PAY_SECURITY_AMOUNT
  is '本月交易所市场买入证券支付价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_EX_PAY_SECURITY_AMOUNT
  is '累计交易所市场买入证券支付价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.BANK_PAY_SECURITY_AMOUNT
  is '本月银行间市场买入证券支付价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACC_BANK_PAY_SECURITY_AMOUNT
  is '累计银行间市场买入证券支付价款额';
comment on column CFA2.T_CFA_RQFII_CHANGES.DEPOSIT_AMOUNT
  is '本月托管费支出金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCUMULATE_DEPOSIT_AMOUNT
  is '累计托管费支出金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.MANAGE_AMOUNT
  is '本月管理费支出金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCUMULATE_MANAGE_AMOUNT
  is '累计管理费支出金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.OTHER_PAY_AMOUNT
  is '本月其他支出金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCUMULATE_OTHER_PAY_AMOUNT
  is '累计其他支出金额';
comment on column CFA2.T_CFA_RQFII_CHANGES.PAY_AMOUNT
  is '本月支出合计';
comment on column CFA2.T_CFA_RQFII_CHANGES.ACCUMULATE_PAY_AMOUNT
  is '累计支出合计';
comment on column CFA2.T_CFA_RQFII_CHANGES.REMARK
  is '备注';
comment on column CFA2.T_CFA_RQFII_CHANGES.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_RQFII_CHANGES.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_RQFII_CHANGES.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_RQFII_CHANGES.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_RQFII_CHANGES.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_RQFII_CHANGES.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_RQFII_CHANGES.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_RQFII_CHANGES.INSTCODE_RQFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_RQFII_CHANGES.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_RQFII_INCOME_EXPEND
prompt ========================================
prompt
create table CFA2.T_CFA_RQFII_INCOME_EXPEND
(
  BUSINESSID                    VARCHAR2(50),
  CUSTODIAN_ID                  VARCHAR2(12),
  INSTCODE                      VARCHAR2(50),
  INSTNAME                      VARCHAR2(128),
  BUSINESS_NUM                  VARCHAR2(20),
  PRODUCT_NAME                  VARCHAR2(32),
  ACCOUNT_NAME                  VARCHAR2(128),
  ACCOUNT                       VARCHAR2(32),
  REPORT_PERIOD                 NUMBER(6),
  SETTLE_DATE                   CHAR(8),
  CAPITAL_INCOME                NUMBER(22,2),
  ACC_CAPITAL_INCOME            NUMBER(22,2),
  EXPEND_CAPITAL_AMOUNT         NUMBER(22,2),
  ACC_EXPEND_CAPITAL_AMOUNT     NUMBER(22,2),
  BUY_EXPEND_CAPITAL_AMOUNT     NUMBER(22,2),
  ACC_BUY_EXPEND_CAPITAL_AMOUNT NUMBER(22,2),
  EXPEND_PROFIT_AMOUNT          NUMBER(22,2),
  ACC_EXPEND_PROFIT_AMOUNT      NUMBER(22,2),
  BUY_EXPEND_PROFIT_AMOUNT      NUMBER(22,2),
  ACC_BUY_EXPEND_PROFIT_AMOUNT  NUMBER(22,2),
  CLEAR_INCOME_AMOUNT           NUMBER(22,2),
  ACC_CLEAR_INCOME_AMOUNT       NUMBER(22,2),
  REMARK                        VARCHAR2(256),
  FILETYPE                      VARCHAR2(2),
  AUDITNAME                     VARCHAR2(50),
  AUDITDATE                     DATE,
  IMPORTDATE                    DATE,
  DATASTATUS                    NUMBER(10),
  BUSINESSDATE                  VARCHAR2(8),
  MODIFYUSER                    VARCHAR2(30),
  INSTCODE_RQFII                VARCHAR2(50),
  IS_HANDIWORK                  CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_RQFII_INCOME_EXPEND
  is 'RQFII境内证券投资资金汇出入信息';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.BUSINESSID
  is '业务编号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.INSTCODE
  is 'RQFII机构代码';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.INSTNAME
  is 'RQFII机构名称';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACCOUNT_NAME
  is 'RQFII人民币账户名称';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACCOUNT
  is 'RQFII人民币账户账号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.REPORT_PERIOD
  is '报告期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.SETTLE_DATE
  is '结算日';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.CAPITAL_INCOME
  is '本月汇入本金金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACC_CAPITAL_INCOME
  is '累计汇入本金金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.EXPEND_CAPITAL_AMOUNT
  is '本月汇出本金金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACC_EXPEND_CAPITAL_AMOUNT
  is '累计汇出本金金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.BUY_EXPEND_CAPITAL_AMOUNT
  is '本月购汇汇出本金金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACC_BUY_EXPEND_CAPITAL_AMOUNT
  is '累计购汇汇出本金金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.EXPEND_PROFIT_AMOUNT
  is '本月汇出收益金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACC_EXPEND_PROFIT_AMOUNT
  is '累计汇出收益金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.BUY_EXPEND_PROFIT_AMOUNT
  is '本月购汇汇出收益金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACC_BUY_EXPEND_PROFIT_AMOUNT
  is '累计购汇汇出收益金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.CLEAR_INCOME_AMOUNT
  is '本月净汇入资金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.ACC_CLEAR_INCOME_AMOUNT
  is '累计净汇入资金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.REMARK
  is '备注';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.INSTCODE_RQFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_RQFII_INCOME_EXPEND_BUY
prompt ============================================
prompt
create table CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY
(
  BUSINESSID             VARCHAR2(50),
  CUSTODIAN_ID           VARCHAR2(12),
  INSTCODE               VARCHAR2(50),
  INSTNAME               VARCHAR2(128),
  BUSINESS_NUM           VARCHAR2(20),
  PRODUCT_NAME           VARCHAR2(32),
  ACCOUNT_NAME           VARCHAR2(128),
  ACCOUNT                VARCHAR2(32),
  CHANGE_ID              VARCHAR2(4),
  FUND_PROPERTY          VARCHAR2(2),
  EXCHANGE_DATE          CHAR(8),
  FUND_INCOME_AMOUNT     NUMBER(22,2),
  EXPEND_AMOUNT          NUMBER(22,2),
  BUY_EXPEND_AMOUNT      NUMBER(22,2),
  BUY_EXCHANGE_CURR_CODE VARCHAR2(3),
  BUY_EXCHANGE_AMOUNT    NUMBER(22,2),
  FUND_CLEAR_INCOME      NUMBER(22,2),
  REMARK                 VARCHAR2(256),
  FILETYPE               VARCHAR2(2),
  AUDITNAME              VARCHAR2(50),
  AUDITDATE              DATE,
  IMPORTDATE             DATE,
  DATASTATUS             NUMBER(10),
  BUSINESSDATE           VARCHAR2(8),
  MODIFYUSER             VARCHAR2(30),
  INSTCODE_RQFII         VARCHAR2(50),
  IS_HANDIWORK           CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY
  is '人民币合格境外机构投资者资金汇出入及购汇明细信息';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.BUSINESSID
  is '业务ID';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.INSTCODE
  is '机构编号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.INSTNAME
  is 'RQFII机构名称';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.BUSINESS_NUM
  is '业务编号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.PRODUCT_NAME
  is '产品名称';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.ACCOUNT_NAME
  is '人民币账户名称';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.ACCOUNT
  is '人民币账户账号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.CHANGE_ID
  is '变动编号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.FUND_PROPERTY
  is '账户资金来源性质';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.EXCHANGE_DATE
  is '汇兑日期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.FUND_INCOME_AMOUNT
  is '资金汇入金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.EXPEND_AMOUNT
  is '人民币汇出金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.BUY_EXPEND_AMOUNT
  is '人民币购汇汇出金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.BUY_EXCHANGE_CURR_CODE
  is '购汇币种';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.BUY_EXCHANGE_AMOUNT
  is '购汇所得金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.FUND_CLEAR_INCOME
  is '资金净汇入金额';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.REMARK
  is '备注';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.INSTCODE_RQFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_RQFII_INCOME_EXPEND_BUY.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_RQFII_PROFIT_LOSS
prompt ======================================
prompt
create table CFA2.T_CFA_RQFII_PROFIT_LOSS
(
  BUSINESSID                     VARCHAR2(50),
  CUSTODIAN_ID                   VARCHAR2(12),
  INSTCODE                       VARCHAR2(50),
  INSTNAME                       VARCHAR2(128),
  SETTLE_YEAR                    NUMBER(4),
  CURRENCE_CODE                  VARCHAR2(3),
  STOCK_PROFIT_AMOUNT_INCOME     NUMBER(22,2),
  PROFIT_AMOUNT_INCOME           NUMBER(22,2),
  ACCEPT_VALUE_PROFIT_LOSS       NUMBER(22,2),
  INVEST_PROFIT_LOSS_AMOUNT      NUMBER(22,2),
  OTHER_AMOUNT_INCOME            NUMBER(22,2),
  INCOME_TOTAL                   NUMBER(22,2),
  DEPOSIT_AMOUNT                 NUMBER(22,2),
  MANAGER_AMOUNT                 NUMBER(22,2),
  TAX_AMOUNT                     NUMBER(22,2),
  PROFIT_EXPEND_AMOUNT           NUMBER(22,2),
  OTHER_AMOUNT                   NUMBER(22,2),
  EXPEND_TOTAL                   NUMBER(22,2),
  ACHIEVE_CAPITAL_AMOUNT         NUMBER(22,2),
  WAIT_ACHIEVE_CAPITAL_AMOUNT    NUMBER(22,2),
  YEAR_CLEAR_PROFIT_LOSS         NUMBER(22,2),
  PERIOD_BEGIN_ACCUMULATE_PROFIT NUMBER(22,2),
  PERIOD_END_ACCUMULATE_PROFIT   NUMBER(22,2),
  REMARK                         VARCHAR2(256),
  FILETYPE                       VARCHAR2(2),
  AUDITNAME                      VARCHAR2(50),
  AUDITDATE                      DATE,
  IMPORTDATE                     DATE,
  DATASTATUS                     NUMBER(10),
  BUSINESSDATE                   VARCHAR2(8),
  MODIFYUSER                     VARCHAR2(30),
  INSTCODE_RQFII                 VARCHAR2(50),
  IS_HANDIWORK                   CHAR(1)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_RQFII_PROFIT_LOSS
  is ' 损益表信息';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.BUSINESSID
  is '业务id';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.CUSTODIAN_ID
  is '托管人代码';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.INSTCODE
  is 'RQFII机构代码';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.INSTNAME
  is 'RQFII机构名称';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.SETTLE_YEAR
  is '结算年份';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.CURRENCE_CODE
  is '币种';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.STOCK_PROFIT_AMOUNT_INCOME
  is '股利收入金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.PROFIT_AMOUNT_INCOME
  is '利息收入金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.ACCEPT_VALUE_PROFIT_LOSS
  is '公允价值变动损益金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.INVEST_PROFIT_LOSS_AMOUNT
  is '投资损益金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.OTHER_AMOUNT_INCOME
  is '其他收入金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.INCOME_TOTAL
  is '收入合计';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.DEPOSIT_AMOUNT
  is '托管费金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.MANAGER_AMOUNT
  is '管理费金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.TAX_AMOUNT
  is '税款金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.PROFIT_EXPEND_AMOUNT
  is '利息支出金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.OTHER_AMOUNT
  is '其他费用金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.EXPEND_TOTAL
  is '费用合计';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.ACHIEVE_CAPITAL_AMOUNT
  is '已实现资本利得（亏损）额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.WAIT_ACHIEVE_CAPITAL_AMOUNT
  is '未实现资本利得（亏损）额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.YEAR_CLEAR_PROFIT_LOSS
  is '本年度净损益金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.PERIOD_BEGIN_ACCUMULATE_PROFIT
  is '期初累计盈余金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.PERIOD_END_ACCUMULATE_PROFIT
  is '期末累计盈余金额';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.REMARK
  is '备注';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.AUDITNAME
  is '审核人';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.AUDITDATE
  is '审核日期';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.IMPORTDATE
  is '录入日期';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.DATASTATUS
  is '数据状态';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.BUSINESSDATE
  is '业务日期';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.MODIFYUSER
  is '维护人';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.INSTCODE_RQFII
  is 'QFII机构编号';
comment on column CFA2.T_CFA_RQFII_PROFIT_LOSS.IS_HANDIWORK
  is '是否手工录入(Y)';

prompt
prompt Creating table T_CFA_SUB_BENEFICIARY_INFO
prompt =========================================
prompt
create table CFA2.T_CFA_SUB_BENEFICIARY_INFO
(
  BENCODE        VARCHAR2(64),
  BENAME         VARCHAR2(256),
  BENAMEN        VARCHAR2(256),
  BENTYPE        CHAR(8),
  BENCOUNTRYCODE CHAR(3),
  BUSINESSID     VARCHAR2(50) not null,
  SUBID          VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_BENEFICIARY_INFO
  is '受益人信息表';
comment on column CFA2.T_CFA_SUB_BENEFICIARY_INFO.BENCODE
  is '受益人代码';
comment on column CFA2.T_CFA_SUB_BENEFICIARY_INFO.BENAME
  is '受益人中文名称';
comment on column CFA2.T_CFA_SUB_BENEFICIARY_INFO.BENAMEN
  is '受益人英文名称';
comment on column CFA2.T_CFA_SUB_BENEFICIARY_INFO.BENTYPE
  is '受益人类型';
comment on column CFA2.T_CFA_SUB_BENEFICIARY_INFO.BENCOUNTRYCODE
  is '受益人国别/地区';
comment on column CFA2.T_CFA_SUB_BENEFICIARY_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_BENEFICIARY_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_BENEFICIARY_INFO
  add constraint PK_T_CFA_SUB_BENEFICIARY_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_SUB_CREDITOR_INFO
prompt ======================================
prompt
create table CFA2.T_CFA_SUB_CREDITOR_INFO
(
  CREDITORCODE  VARCHAR2(22),
  CREDITORNAME  VARCHAR2(256),
  CREDITORNAMEN VARCHAR2(256),
  CREDITORCA    NUMBER(27,2),
  CREDITORTYPE  CHAR(8),
  CREHQCODE     CHAR(3),
  OPERCODE      CHAR(3),
  BUSINESSID    VARCHAR2(50) not null,
  SUBID         VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_CREDITOR_INFO
  is '债权人信息表';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.CREDITORCODE
  is '债权人代码';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.CREDITORNAME
  is '债权人中文名称';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.CREDITORNAMEN
  is '债权人英文名称';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.CREDITORCA
  is '债权人签约金额';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.CREDITORTYPE
  is '债权人类型代码';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.CREHQCODE
  is '债权人总部所在国家（地区）代码';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.OPERCODE
  is '债权人经营地所在国家（地区）代码';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_CREDITOR_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_CREDITOR_INFO
  add constraint PK_T_CFA_SUB_CREDITOR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_SUB_EXPLBALA_INFO
prompt ======================================
prompt
create table CFA2.T_CFA_SUB_EXPLBALA_INFO
(
  EXPLCURR      CHAR(3),
  EXPLBALA      NUMBER(27,2),
  EXPLPERAMOUNT NUMBER(27,2),
  PLCOSEAMOUNT  NUMBER(27,2),
  BUSINESSID    VARCHAR2(50) not null,
  SUBID         VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_EXPLBALA_INFO
  is '质押外汇余额信息表';
comment on column CFA2.T_CFA_SUB_EXPLBALA_INFO.EXPLCURR
  is '质押外汇币种';
comment on column CFA2.T_CFA_SUB_EXPLBALA_INFO.EXPLBALA
  is '质押外汇余额';
comment on column CFA2.T_CFA_SUB_EXPLBALA_INFO.EXPLPERAMOUNT
  is '质押外汇履约金额';
comment on column CFA2.T_CFA_SUB_EXPLBALA_INFO.PLCOSEAMOUNT
  is '质押履约结汇金额';
comment on column CFA2.T_CFA_SUB_EXPLBALA_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_EXPLBALA_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_EXPLBALA_INFO
  add constraint PK_T_CFA_SUB_EXPLBALA_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_SUB_EXPLCURR_INFO
prompt ======================================
prompt
create table CFA2.T_CFA_SUB_EXPLCURR_INFO
(
  EXPLCURR   CHAR(3),
  EXPLAMOUNT NUMBER(27,2),
  BUSINESSID VARCHAR2(50) not null,
  SUBID      VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_EXPLCURR_INFO
  is '质押外汇金额信息表';
comment on column CFA2.T_CFA_SUB_EXPLCURR_INFO.EXPLCURR
  is '质押外汇币种';
comment on column CFA2.T_CFA_SUB_EXPLCURR_INFO.EXPLAMOUNT
  is '质押外汇金额';
comment on column CFA2.T_CFA_SUB_EXPLCURR_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_EXPLCURR_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_EXPLCURR_INFO
  add constraint PK_T_CFA_SUB_EXPLCURR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_SUB_FOGUARANTOR_INFO
prompt =========================================
prompt
create table CFA2.T_CFA_SUB_FOGUARANTOR_INFO
(
  FOGUCODE      VARCHAR2(64),
  FOGUNAME      VARCHAR2(256),
  FOGUNAMEN     VARCHAR2(256),
  FOGURECODE    CHAR(3),
  GUARANTEETYPE CHAR(2),
  BUSINESSID    VARCHAR2(50) not null,
  SUBID         VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_FOGUARANTOR_INFO
  is '境外担保人信息表';
comment on column CFA2.T_CFA_SUB_FOGUARANTOR_INFO.FOGUCODE
  is '境外担保人代码';
comment on column CFA2.T_CFA_SUB_FOGUARANTOR_INFO.FOGUNAME
  is '境外担保人中文名称';
comment on column CFA2.T_CFA_SUB_FOGUARANTOR_INFO.FOGUNAMEN
  is '境外担保人英文名称';
comment on column CFA2.T_CFA_SUB_FOGUARANTOR_INFO.FOGURECODE
  is '境外担保人注册地国家/地区代码';
comment on column CFA2.T_CFA_SUB_FOGUARANTOR_INFO.GUARANTEETYPE
  is '担保方式';
comment on column CFA2.T_CFA_SUB_FOGUARANTOR_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_FOGUARANTOR_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_FOGUARANTOR_INFO
  add constraint PK_T_CFA_SUB_FOGUARANTOR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_SUB_GUARANTOR_INFO
prompt =======================================
prompt
create table CFA2.T_CFA_SUB_GUARANTOR_INFO
(
  GUEDCODE     VARCHAR2(64),
  GUEDNAME     VARCHAR2(256),
  GUEDNAMEN    VARCHAR2(256),
  GUEDTYPE     CHAR(8),
  GUEDCOUNCODE CHAR(3),
  BUSINESSID   VARCHAR2(50) not null,
  SUBID        VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_GUARANTOR_INFO
  is '被担保人信息表';
comment on column CFA2.T_CFA_SUB_GUARANTOR_INFO.GUEDCODE
  is '被担保人代码';
comment on column CFA2.T_CFA_SUB_GUARANTOR_INFO.GUEDNAME
  is '被担保人中文名称';
comment on column CFA2.T_CFA_SUB_GUARANTOR_INFO.GUEDNAMEN
  is '被担保人英文名称';
comment on column CFA2.T_CFA_SUB_GUARANTOR_INFO.GUEDTYPE
  is '被担保人类型';
comment on column CFA2.T_CFA_SUB_GUARANTOR_INFO.GUEDCOUNCODE
  is '被担保人国别/地区代码';
comment on column CFA2.T_CFA_SUB_GUARANTOR_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_GUARANTOR_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_GUARANTOR_INFO
  add constraint PK_T_CFA_SUB_GUARANTOR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_SUB_GUPER_INFO
prompt ===================================
prompt
create table CFA2.T_CFA_SUB_GUPER_INFO
(
  GUPERDATE    VARCHAR2(8),
  GUPERCURR    CHAR(3),
  GUPERAMOUNT  NUMBER(27,2),
  PGUPERAMOUNT NUMBER(27,2),
  BUSINESSID   VARCHAR2(50) not null,
  SUBID        VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_GUPER_INFO
  is '履约信息表（废弃）';
comment on column CFA2.T_CFA_SUB_GUPER_INFO.GUPERDATE
  is '履约日期';
comment on column CFA2.T_CFA_SUB_GUPER_INFO.GUPERCURR
  is '履约币种';
comment on column CFA2.T_CFA_SUB_GUPER_INFO.GUPERAMOUNT
  is '履约金额';
comment on column CFA2.T_CFA_SUB_GUPER_INFO.PGUPERAMOUNT
  is '购汇履约金额';
comment on column CFA2.T_CFA_SUB_GUPER_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_GUPER_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_GUPER_INFO
  add constraint PK_T_CFA_SUB_GUPER_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CFA_SUB_PROJECT_INFO
prompt =====================================
prompt
create table CFA2.T_CFA_SUB_PROJECT_INFO
(
  PROJECTNAME VARCHAR2(256),
  BUSINESSID  VARCHAR2(50) not null,
  SUBID       VARCHAR2(50) not null
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_CFA_SUB_PROJECT_INFO
  is '项目信息表';
comment on column CFA2.T_CFA_SUB_PROJECT_INFO.PROJECTNAME
  is '项目名称';
comment on column CFA2.T_CFA_SUB_PROJECT_INFO.BUSINESSID
  is '主表ID';
comment on column CFA2.T_CFA_SUB_PROJECT_INFO.SUBID
  is '本表ID';
alter table CFA2.T_CFA_SUB_PROJECT_INFO
  add constraint PK_T_CFA_SUB_PROJECT_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_CODE_DICTIONARY
prompt ================================
prompt
create table CFA2.T_CODE_DICTIONARY
(
  ID                         NUMBER(10) not null,
  CODE_TYPE                  VARCHAR2(50),
  CODE_VALUE_BANK            VARCHAR2(50),
  CODE_VALUE_STANDARD_LETTER VARCHAR2(50),
  CODE_VALUE_STANDARD_NUM    VARCHAR2(50),
  CODE_NAME                  VARCHAR2(500),
  CODE_TYPE_DESC             VARCHAR2(500),
  CODE_SYM                   VARCHAR2(1000),
  BACKUP_NUM                 CHAR(10),
  BEGINDATE                  CHAR(10),
  ENDDATE                    CHAR(10)
)
tablespace CFA2
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
create index CFA2.IDX_T_CODE_DICT_CODE on CFA2.T_CODE_DICTIONARY (SUBSTR(CODE_NAME,1,3))
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
create unique index CFA2.UNIQUE_T_CODE_DICTIONARY on CFA2.T_CODE_DICTIONARY (CODE_TYPE, CODE_VALUE_STANDARD_NUM, CODE_SYM)
  tablespace CFA2
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
grant select, insert, update, delete on CFA2.T_CODE_DICTIONARY to DATACORE;
grant select, insert, update, delete on CFA2.T_CODE_DICTIONARY to DATACOREFF;
grant select, insert, update, delete on CFA2.T_CODE_DICTIONARY to DATACOREOPR;

prompt
prompt Creating table T_CONFIG_MTS
prompt ===========================
prompt
create table CFA2.T_CONFIG_MTS
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
tablespace CFA2
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
comment on table CFA2.T_CONFIG_MTS
  is 'MTS参数配置表';
comment on column CFA2.T_CONFIG_MTS.RPTTITLE
  is '机构编号';
comment on column CFA2.T_CONFIG_MTS.IP
  is 'IP地址';
comment on column CFA2.T_CONFIG_MTS.PORT
  is '端口号';
comment on column CFA2.T_CONFIG_MTS.LINK
  is '链接方式';
comment on column CFA2.T_CONFIG_MTS.USERNAME
  is '登录用户';
comment on column CFA2.T_CONFIG_MTS.PASSWORD
  is '登录密码';
comment on column CFA2.T_CONFIG_MTS.SENDPATH
  is '上传文件路径';
comment on column CFA2.T_CONFIG_MTS.FEEDBACKPATH
  is '反馈文件路径';
comment on column CFA2.T_CONFIG_MTS.RUNTIME
  is '运行时间';
comment on column CFA2.T_CONFIG_MTS.ENABLED
  is '是否启用';
comment on column CFA2.T_CONFIG_MTS.ERRORFILESPATH
  is '错误文件路径';
comment on column CFA2.T_CONFIG_MTS.HISTORYSENDPATH
  is '发送历史目录';
comment on column CFA2.T_CONFIG_MTS.ERRORFILESENABLED
  is '是否启用错误文件目录';
comment on column CFA2.T_CONFIG_MTS.HISTORYSENDENABLED
  is '是否启用发送历史目录';
comment on column CFA2.T_CONFIG_MTS.MODEL
  is '连接模式';
alter table CFA2.T_CONFIG_MTS
  add constraint PK_T_CONFIG_MTS primary key (RPTTITLE)
  using index 
  tablespace CFA2
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
create table CFA2.T_CONFIG_PARAMETER
(
  CONFIGNAME  VARCHAR2(50) not null,
  CONFIGVALUE VARCHAR2(100),
  CONFIGDESC  VARCHAR2(512),
  CONFIGPROJ  VARCHAR2(256),
  CREATEDATE  VARCHAR2(20)
)
tablespace CFA2
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
comment on table CFA2.T_CONFIG_PARAMETER
  is '参数配置项记录';
comment on column CFA2.T_CONFIG_PARAMETER.CONFIGNAME
  is '配置名';
comment on column CFA2.T_CONFIG_PARAMETER.CONFIGVALUE
  is '配置值';
comment on column CFA2.T_CONFIG_PARAMETER.CONFIGDESC
  is '配置描述';
comment on column CFA2.T_CONFIG_PARAMETER.CONFIGPROJ
  is '适用项目';
comment on column CFA2.T_CONFIG_PARAMETER.CREATEDATE
  is '创建日期';
alter table CFA2.T_CONFIG_PARAMETER
  add constraint PK_T_CONFIG_PARAMETER primary key (CONFIGNAME)
  using index 
  tablespace CFA2
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
create table CFA2.T_ERROR_FEEDBACK
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
  RPT_SEND_FILE_NAME VARCHAR2(50)
)
tablespace CFA2
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
comment on table CFA2.T_ERROR_FEEDBACK
  is '反馈信息';
comment on column CFA2.T_ERROR_FEEDBACK.ID
  is 'ID';
comment on column CFA2.T_ERROR_FEEDBACK.ERROR_TYPE
  is '错误类型(数据错误/文件错误)';
comment on column CFA2.T_ERROR_FEEDBACK.DATA_NO
  is '业务数据主键';
comment on column CFA2.T_ERROR_FEEDBACK.FILE_ID
  is '数据文件tableId';
comment on column CFA2.T_ERROR_FEEDBACK.FILE_NAME
  is '数据文件tableName';
comment on column CFA2.T_ERROR_FEEDBACK.INFO_TYPE
  is '错误文件类型';
comment on column CFA2.T_ERROR_FEEDBACK.DATA_DATE
  is '反馈日期';
comment on column CFA2.T_ERROR_FEEDBACK.DATA_TYPE
  is '错误数据主键名称';
comment on column CFA2.T_ERROR_FEEDBACK.ERROR_DESC
  is '错误描述';
comment on column CFA2.T_ERROR_FEEDBACK.HAS_REJECT
  is '是否被拒';
comment on column CFA2.T_ERROR_FEEDBACK.TOTAL_FILES
  is '包含错误文件数';
comment on column CFA2.T_ERROR_FEEDBACK.RPT_SEND_FILE_NAME
  is '报送文件名';

prompt
prompt Creating table T_FILEM_LOG
prompt ==========================
prompt
create table CFA2.T_FILEM_LOG
(
  ID          NUMBER(10) not null,
  FK_CUSTOMID VARCHAR2(50) not null,
  CUR_DATE    VARCHAR2(50) not null,
  TABLE_ID    VARCHAR2(50) not null
)
tablespace CFA2
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
comment on table CFA2.T_FILEM_LOG
  is '报文生成记录';
comment on column CFA2.T_FILEM_LOG.ID
  is 'ID';
comment on column CFA2.T_FILEM_LOG.FK_CUSTOMID
  is '机构ID';
comment on column CFA2.T_FILEM_LOG.CUR_DATE
  is '生成日期';
comment on column CFA2.T_FILEM_LOG.TABLE_ID
  is '报文类型标识';

prompt
prompt Creating table T_ORG_CONFIG
prompt ===========================
prompt
create table CFA2.T_ORG_CONFIG
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
tablespace CFA2
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
comment on table CFA2.T_ORG_CONFIG
  is '机构对照表';
comment on column CFA2.T_ORG_CONFIG.ORG_ID
  is '机构ID';
comment on column CFA2.T_ORG_CONFIG.ORG_NAME
  is '机构名称';
comment on column CFA2.T_ORG_CONFIG.RPTNO
  is '申报号码';
comment on column CFA2.T_ORG_CONFIG.RPTTITLE
  is '主报告行号码';
comment on column CFA2.T_ORG_CONFIG.SPARE1
  is '预留字段1';
comment on column CFA2.T_ORG_CONFIG.SPARE2
  is '预留字段2';
comment on column CFA2.T_ORG_CONFIG.SPARE3
  is '预留字段3';
comment on column CFA2.T_ORG_CONFIG.SPARE4
  is '预留字段4';
comment on column CFA2.T_ORG_CONFIG.SPARE5
  is '预留字段5';
create index CFA2.IDX_T_ORG_CONFIG_ORGID on CFA2.T_ORG_CONFIG (ORG_ID)
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
grant select, insert, update, delete on CFA2.T_ORG_CONFIG to DATACORE;
grant select, insert, update, delete on CFA2.T_ORG_CONFIG to DATACOREFF;
grant select, insert, update, delete on CFA2.T_ORG_CONFIG to DATACOREOPR;

prompt
prompt Creating table T_REFUSE_RESION
prompt ==============================
prompt
create table CFA2.T_REFUSE_RESION
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
tablespace CFA2
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
comment on table CFA2.T_REFUSE_RESION
  is '审核打回原因表';
comment on column CFA2.T_REFUSE_RESION.BUSINESSID
  is '业务ID';
comment on column CFA2.T_REFUSE_RESION.BUSI_TABLE_ID
  is '报文ID';
comment on column CFA2.T_REFUSE_RESION.REASION
  is '文字描述';
comment on column CFA2.T_REFUSE_RESION.BUSI_TYPE
  is '业务类型（1-审核/2-打回）';
comment on column CFA2.T_REFUSE_RESION.SPARE1
  is '预留字段1';
comment on column CFA2.T_REFUSE_RESION.SPARE2
  is '预留字段2';
comment on column CFA2.T_REFUSE_RESION.SPARE3
  is '预留字段3';
comment on column CFA2.T_REFUSE_RESION.SPARE4
  is '预留字段4';
comment on column CFA2.T_REFUSE_RESION.SPARE5
  is '预留字段5';
alter table CFA2.T_REFUSE_RESION
  add constraint PK_REFUSE_RESION primary key (BUSINESSID, BUSI_TABLE_ID, BUSI_TYPE)
  using index 
  tablespace CFA2
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
create table CFA2.T_RELA_TABLES
(
  OBJID    VARCHAR2(50) not null,
  TABLEID  VARCHAR2(50) not null,
  FILETYPE VARCHAR2(10) not null,
  OBJTYPE  VARCHAR2(50) not null,
  SPARE1   VARCHAR2(128),
  SPARE2   VARCHAR2(128),
  SPARE3   VARCHAR2(128),
  SPARE4   VARCHAR2(128),
  SPARE5   VARCHAR2(128)
)
tablespace CFA2
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
comment on table CFA2.T_RELA_TABLES
  is '用户角色报文对应表';
comment on column CFA2.T_RELA_TABLES.OBJID
  is '对象ID';
comment on column CFA2.T_RELA_TABLES.TABLEID
  is '报文名称ID';
comment on column CFA2.T_RELA_TABLES.FILETYPE
  is '报文类型';
comment on column CFA2.T_RELA_TABLES.OBJTYPE
  is '对象类型 R角色 U用户';
comment on column CFA2.T_RELA_TABLES.SPARE1
  is '预留字段1';
comment on column CFA2.T_RELA_TABLES.SPARE2
  is '预留字段2';
comment on column CFA2.T_RELA_TABLES.SPARE3
  is '预留字段3';
comment on column CFA2.T_RELA_TABLES.SPARE4
  is '预留字段4';
comment on column CFA2.T_RELA_TABLES.SPARE5
  is '预留字段5';
alter table CFA2.T_RELA_TABLES
  add constraint PK_RELA_TABLES primary key (OBJID, TABLEID, FILETYPE, OBJTYPE)
  using index 
  tablespace CFA2
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
prompt Creating table T_RPT_BUSIDATA_INFO
prompt ==================================
prompt
create table CFA2.T_RPT_BUSIDATA_INFO
(
  BUSI_DATA_TYPE CHAR(1),
  BUSI_INFO_ID   VARCHAR2(10),
  BUSI_INFO_NAME VARCHAR2(100),
  IS_SHOW        CHAR(1),
  IS_ENABLED     CHAR(1)
)
tablespace CFA2
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
comment on table CFA2.T_RPT_BUSIDATA_INFO
  is '数据采集范围信息';
comment on column CFA2.T_RPT_BUSIDATA_INFO.BUSI_DATA_TYPE
  is '数据采集范围（自身业务/代客业务）';
comment on column CFA2.T_RPT_BUSIDATA_INFO.BUSI_INFO_ID
  is '业务类型ID';
comment on column CFA2.T_RPT_BUSIDATA_INFO.BUSI_INFO_NAME
  is '业务类型名称';
comment on column CFA2.T_RPT_BUSIDATA_INFO.IS_SHOW
  is '是否展示';
comment on column CFA2.T_RPT_BUSIDATA_INFO.IS_ENABLED
  is '是否激活：1-已激活，0-未激活';
create unique index CFA2.UQ_T_RPT_BUSIDATA_INFO on CFA2.T_RPT_BUSIDATA_INFO (BUSI_DATA_TYPE, BUSI_INFO_ID)
  tablespace CFA2
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
prompt Creating table T_RPT_BUSS_TYPE
prompt ==============================
prompt
create table CFA2.T_RPT_BUSS_TYPE
(
  BUSS_TYPE_CODE VARCHAR2(80) not null,
  BUSS_TYPE_NAME VARCHAR2(120) not null,
  IS_ENABLED     CHAR(1) default '1' not null
)
tablespace CFA2
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
comment on table CFA2.T_RPT_BUSS_TYPE
  is '业务类型表';
comment on column CFA2.T_RPT_BUSS_TYPE.BUSS_TYPE_CODE
  is '业务类型编号';
comment on column CFA2.T_RPT_BUSS_TYPE.BUSS_TYPE_NAME
  is '业务类型名称';
comment on column CFA2.T_RPT_BUSS_TYPE.IS_ENABLED
  is '是否激活';
alter table CFA2.T_RPT_BUSS_TYPE
  add constraint P_PK_T_RPT_BUSS_TYPE primary key (BUSS_TYPE_CODE)
  using index 
  tablespace CFA2
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
create table CFA2.T_RPT_COLUMN_INFO
(
  COLUMN_ID          VARCHAR2(50) not null,
  TABLE_ID           VARCHAR2(50) not null,
  COLUMN_NAME        VARCHAR2(100),
  order              NUMBER(10),
  POSITION           VARCHAR2(50),
  DATA_TYPE          VARCHAR2(50),
  DATA_TYPE_DESC     VARCHAR2(300),
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
  IS_KEYWORD         CHAR(1),
  IS_ENABLED         CHAR(1),
  FILETYPE           VARCHAR2(10) not null,
  CAN_INPUT          CHAR(1),
  IS_REPORT          CHAR(1)
)
tablespace CFA2
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
comment on table CFA2.T_RPT_COLUMN_INFO
  is '列配置信息';
comment on column CFA2.T_RPT_COLUMN_INFO.COLUMN_ID
  is '列名ID';
comment on column CFA2.T_RPT_COLUMN_INFO.TABLE_ID
  is '表名ID';
comment on column CFA2.T_RPT_COLUMN_INFO.COLUMN_NAME
  is '列名称';
comment on column CFA2.T_RPT_COLUMN_INFO.order
  is '排序';
comment on column CFA2.T_RPT_COLUMN_INFO.POSITION
  is '位置';
comment on column CFA2.T_RPT_COLUMN_INFO.DATA_TYPE
  is '数据类型';
comment on column CFA2.T_RPT_COLUMN_INFO.DATA_TYPE_DESC
  is '数据类型描述';
comment on column CFA2.T_RPT_COLUMN_INFO.DICTIONARY_TYPE_ID
  is '对应字典项ID';
comment on column CFA2.T_RPT_COLUMN_INFO.CONS_RULE
  is '提交规则';
comment on column CFA2.T_RPT_COLUMN_INFO.CONS_DESC
  is '提交规则描述';
comment on column CFA2.T_RPT_COLUMN_INFO.IS_SHOW
  is '是否展示';
comment on column CFA2.T_RPT_COLUMN_INFO.TAG_TYPE
  is '控件类型';
comment on column CFA2.T_RPT_COLUMN_INFO.CAN_MODIFY
  is '是否可维护';
comment on column CFA2.T_RPT_COLUMN_INFO.HAS_INNER_TABLE
  is '是否含子表';
comment on column CFA2.T_RPT_COLUMN_INFO.LOG_COLUMN_ID
  is '是否为关键字段';
comment on column CFA2.T_RPT_COLUMN_INFO.IS_KEYWORD
  is '是否关键字';
comment on column CFA2.T_RPT_COLUMN_INFO.IS_ENABLED
  is '是否激活：1-已激活，0-未激活';
comment on column CFA2.T_RPT_COLUMN_INFO.FILETYPE
  is '文件接口类型';
comment on column CFA2.T_RPT_COLUMN_INFO.CAN_INPUT
  is '是否可录入';
comment on column CFA2.T_RPT_COLUMN_INFO.IS_REPORT
  is '是否为报文中字段 1-是';
alter table CFA2.T_RPT_COLUMN_INFO
  add constraint PK_T_RPT_COLUMN_INFO primary key (TABLE_ID, COLUMN_ID, FILETYPE)
  using index 
  tablespace CFA2
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
create table CFA2.T_RPT_LOG_INFO
(
  LOGTYPE    VARCHAR2(10) not null,
  TABLEID    VARCHAR2(30) not null,
  FILETYPE   VARCHAR2(10),
  USERID     VARCHAR2(50) not null,
  UPDATETIME VARCHAR2(20) not null,
  BUSINESSNO VARCHAR2(60),
  BUSINESSID VARCHAR2(50) not null,
  SUBID      VARCHAR2(50),
  DATASTATUS NUMBER(10),
  COLUMN01   VARCHAR2(50),
  COLUMN02   VARCHAR2(50),
  COLUMN03   VARCHAR2(50),
  COLUMN04   VARCHAR2(50),
  COLUMN05   VARCHAR2(50),
  COLUMN06   VARCHAR2(50),
  COLUMN07   VARCHAR2(50),
  COLUMN08   VARCHAR2(50),
  COLUMN09   VARCHAR2(50),
  COLUMN10   VARCHAR2(50),
  COLUMN11   VARCHAR2(50),
  COLUMN12   VARCHAR2(50),
  COLUMN13   VARCHAR2(50),
  COLUMN14   VARCHAR2(50),
  COLUMN15   VARCHAR2(50),
  COLUMN16   VARCHAR2(50),
  COLUMN17   VARCHAR2(50),
  COLUMN18   VARCHAR2(50),
  COLUMN19   VARCHAR2(50),
  COLUMN20   VARCHAR2(50),
  COLUMN21   VARCHAR2(50),
  COLUMN22   VARCHAR2(50),
  COLUMN23   VARCHAR2(50),
  COLUMN24   VARCHAR2(50),
  COLUMN25   VARCHAR2(50),
  COLUMN26   VARCHAR2(50),
  COLUMN27   VARCHAR2(50),
  COLUMN28   VARCHAR2(50),
  COLUMN29   VARCHAR2(50),
  COLUMN30   VARCHAR2(50),
  COLUMN31   VARCHAR2(50),
  COLUMN32   VARCHAR2(50),
  COLUMN33   VARCHAR2(50),
  COLUMN34   VARCHAR2(50),
  COLUMN35   VARCHAR2(50),
  COLUMN36   VARCHAR2(50),
  COLUMN37   VARCHAR2(50),
  COLUMN38   VARCHAR2(50),
  COLUMN39   VARCHAR2(50),
  COLUMN40   VARCHAR2(50),
  COLUMN41   VARCHAR2(50),
  COLUMN42   VARCHAR2(50),
  COLUMN43   VARCHAR2(50),
  COLUMN44   VARCHAR2(50),
  COLUMN45   VARCHAR2(50),
  COLUMN46   VARCHAR2(50),
  COLUMN47   VARCHAR2(50),
  COLUMN48   VARCHAR2(50),
  COLUMN49   VARCHAR2(50),
  COLUMN50   VARCHAR2(50),
  COLUMN51   VARCHAR2(50),
  COLUMN52   VARCHAR2(50),
  COLUMN53   VARCHAR2(50),
  COLUMN54   VARCHAR2(50),
  COLUMN55   VARCHAR2(50),
  COLUMN56   VARCHAR2(50),
  COLUMN57   VARCHAR2(50),
  COLUMN58   VARCHAR2(50),
  COLUMN59   VARCHAR2(50),
  COLUMN60   VARCHAR2(50),
  COLUMN61   VARCHAR2(50),
  COLUMN62   VARCHAR2(50),
  COLUMN63   VARCHAR2(50),
  COLUMN64   VARCHAR2(50),
  COLUMN65   VARCHAR2(50),
  COLUMN66   VARCHAR2(50),
  COLUMN67   VARCHAR2(50),
  COLUMN68   VARCHAR2(50),
  COLUMN69   VARCHAR2(50),
  COLUMN70   VARCHAR2(50),
  COLUMNM01  VARCHAR2(256),
  COLUMNM02  VARCHAR2(256),
  COLUMNM03  VARCHAR2(256),
  COLUMNM04  VARCHAR2(256),
  COLUMNM05  VARCHAR2(256),
  COLUMNM11  VARCHAR2(512),
  COLUMNM12  VARCHAR2(512),
  COLUMNM13  VARCHAR2(512),
  COLUMNM14  VARCHAR2(512),
  COLUMNM15  VARCHAR2(512)
)
tablespace CFA2
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
comment on table CFA2.T_RPT_LOG_INFO
  is '报文修改记录';
comment on column CFA2.T_RPT_LOG_INFO.LOGTYPE
  is '操作类型(insert/update/delete)';
comment on column CFA2.T_RPT_LOG_INFO.TABLEID
  is '所属表名';
comment on column CFA2.T_RPT_LOG_INFO.FILETYPE
  is '接口文件类型';
comment on column CFA2.T_RPT_LOG_INFO.USERID
  is '用户ID';
comment on column CFA2.T_RPT_LOG_INFO.UPDATETIME
  is '修改时间';
comment on column CFA2.T_RPT_LOG_INFO.BUSINESSNO
  is '业务编号';
comment on column CFA2.T_RPT_LOG_INFO.BUSINESSID
  is '主表业务ID';
comment on column CFA2.T_RPT_LOG_INFO.SUBID
  is '子表业务ID';
comment on column CFA2.T_RPT_LOG_INFO.DATASTATUS
  is '数据状态';

prompt
prompt Creating table T_RPT_RECIEVE
prompt ============================
prompt
create table CFA2.T_RPT_RECIEVE
(
  PACKNAME VARCHAR2(50),
  FILENAME VARCHAR2(50),
  PACKTYPE VARCHAR2(3)
)
tablespace CFA2
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
comment on table CFA2.T_RPT_RECIEVE
  is '反馈文件接收记录';
comment on column CFA2.T_RPT_RECIEVE.PACKNAME
  is '接受包名';
comment on column CFA2.T_RPT_RECIEVE.FILENAME
  is '接受文件名';
comment on column CFA2.T_RPT_RECIEVE.PACKTYPE
  is '接受文件夹类型REC/ERR/HIS';

prompt
prompt Creating table T_RPT_RECIEVE_20141030
prompt =====================================
prompt
create table CFA2.T_RPT_RECIEVE_20141030
(
  PACKNAME VARCHAR2(50),
  FILENAME VARCHAR2(50),
  PACKTYPE VARCHAR2(3)
)
tablespace CFA2
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
prompt Creating table T_RPT_SEND_COMMIT
prompt ================================
prompt
create table CFA2.T_RPT_SEND_COMMIT
(
  TABLEID    VARCHAR2(50) not null,
  BUSINESSID VARCHAR2(50) not null,
  PACKNAME   VARCHAR2(50),
  FILENAME   VARCHAR2(50) not null,
  IS_RECEIVE CHAR(1),
  IS_SENDMTS CHAR(1)
)
tablespace CFA2
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
comment on table CFA2.T_RPT_SEND_COMMIT
  is '报文发送记录';
comment on column CFA2.T_RPT_SEND_COMMIT.TABLEID
  is '报文表名';
comment on column CFA2.T_RPT_SEND_COMMIT.BUSINESSID
  is '业务ID';
comment on column CFA2.T_RPT_SEND_COMMIT.PACKNAME
  is '报送包名';
comment on column CFA2.T_RPT_SEND_COMMIT.FILENAME
  is '报送文件名';
comment on column CFA2.T_RPT_SEND_COMMIT.IS_RECEIVE
  is '是否收到反馈';
create index CFA2.INDEX_ID_T_RPT_SEND_COMMIT on CFA2.T_RPT_SEND_COMMIT (TABLEID, BUSINESSID)
  tablespace CFA2
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
grant select on CFA2.T_RPT_SEND_COMMIT to DATACORE;
grant select on CFA2.T_RPT_SEND_COMMIT to DATACOREFF;
grant select on CFA2.T_RPT_SEND_COMMIT to DATACOREOPR;

prompt
prompt Creating table T_RPT_SEND_COMMIT_20141030
prompt =========================================
prompt
create table CFA2.T_RPT_SEND_COMMIT_20141030
(
  TABLEID    VARCHAR2(50) not null,
  BUSINESSID VARCHAR2(50) not null,
  PACKNAME   VARCHAR2(50),
  FILENAME   VARCHAR2(50) not null,
  IS_RECEIVE CHAR(1),
  IS_SENDMTS CHAR(1)
)
tablespace CFA2
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
prompt Creating table T_RPT_TABLE_INFO
prompt ===============================
prompt
create table CFA2.T_RPT_TABLE_INFO
(
  ID            NUMBER(10) not null,
  INFO_TYPE     VARCHAR2(50),
  BUSI_TABLE_ID VARCHAR2(50),
  BUSI_NAME     VARCHAR2(50),
  IS_SHOW       NUMBER(10),
  ORDERBY       NUMBER(10),
  PBULICDATA    VARCHAR2(50),
  PRIVATEDATA   VARCHAR2(50),
  FILETYPE      VARCHAR2(10),
  IS_ENABLED    CHAR(1),
  SAFE_TABLE_ID VARCHAR2(50),
  CAN_INPUT     CHAR(1) default '1'
)
tablespace CFA2
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
comment on table CFA2.T_RPT_TABLE_INFO
  is '表配置信息';
comment on column CFA2.T_RPT_TABLE_INFO.ID
  is 'ID';
comment on column CFA2.T_RPT_TABLE_INFO.INFO_TYPE
  is '信息类型';
comment on column CFA2.T_RPT_TABLE_INFO.BUSI_TABLE_ID
  is '业务数据表名';
comment on column CFA2.T_RPT_TABLE_INFO.BUSI_NAME
  is '业务表名称';
comment on column CFA2.T_RPT_TABLE_INFO.IS_SHOW
  is '是否展示';
comment on column CFA2.T_RPT_TABLE_INFO.ORDERBY
  is '排序';
comment on column CFA2.T_RPT_TABLE_INFO.PBULICDATA
  is '对公数据';
comment on column CFA2.T_RPT_TABLE_INFO.PRIVATEDATA
  is '对私数据';
comment on column CFA2.T_RPT_TABLE_INFO.FILETYPE
  is '文件接口类型';
comment on column CFA2.T_RPT_TABLE_INFO.IS_ENABLED
  is '是否激活：1-已激活，0-未激活';
comment on column CFA2.T_RPT_TABLE_INFO.CAN_INPUT
  is '是否可录入 1/0 默认1';
create index CFA2.UNIQUE_T_RPT_TABLE_INFO on CFA2.T_RPT_TABLE_INFO (BUSI_TABLE_ID)
  tablespace CFA2
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
prompt Creating table T_RPT_TABLE_RELA
prompt ===============================
prompt
create table CFA2.T_RPT_TABLE_RELA
(
  SUB_TABLE_ID VARCHAR2(50) not null,
  TABLE_ID     VARCHAR2(50) not null,
  TABLE_COLUMN VARCHAR2(50),
  SUBRELA      NUMBER(10)
)
tablespace CFA2
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
prompt Creating table T_RPT_TEMPLATE
prompt =============================
prompt
create table CFA2.T_RPT_TEMPLATE
(
  TEMPLATE_ID      VARCHAR2(100) not null,
  TEMPLATE_NAME    VARCHAR2(100),
  TEMPLATE_CONTENT BLOB,
  SAFE_TABLE_ID    VARCHAR2(200)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CFA2.T_RPT_TEMPLATE
  is '报表模板信息表';
comment on column CFA2.T_RPT_TEMPLATE.TEMPLATE_ID
  is '模板id';
comment on column CFA2.T_RPT_TEMPLATE.TEMPLATE_NAME
  is '模板中文名称';
comment on column CFA2.T_RPT_TEMPLATE.TEMPLATE_CONTENT
  is '摸板内容';
comment on column CFA2.T_RPT_TEMPLATE.SAFE_TABLE_ID
  is '关联报表信息';
alter table CFA2.T_RPT_TEMPLATE
  add constraint PK_T_RPT_TEMPLATE primary key (TEMPLATE_ID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_TASK_LOCK
prompt ==========================
prompt
create table CFA2.T_TASK_LOCK
(
  TASK_ID   VARCHAR2(50) not null,
  TASK_INFO VARCHAR2(50),
  TASK_TYPE VARCHAR2(20)
)
tablespace CFA2
  pctfree 10
  initrans 1
  maxtrans 255;
alter table CFA2.T_TASK_LOCK
  add constraint PK_T_TASK_LOCK primary key (TASK_ID)
  using index 
  tablespace CFA2
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table T_TASK_LOCK_INFO
prompt ===============================
prompt
create table CFA2.T_TASK_LOCK_INFO
(
  ID       VARCHAR2(12) not null,
  TYPE     VARCHAR2(20) not null,
  END_DATE VARCHAR2(12),
  STEP     VARCHAR2(50),
  INFO     VARCHAR2(1000),
  RPTTITLE VARCHAR2(50)
)
tablespace CFA2
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
comment on table CFA2.T_TASK_LOCK_INFO
  is '监控信息表';
comment on column CFA2.T_TASK_LOCK_INFO.RPTTITLE
  is '主报告行号';
create unique index CFA2.PK_T_TASK_LOCK_INFO on CFA2.T_TASK_LOCK_INFO (ID, TYPE, RPTTITLE)
  tablespace CFA2
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
create table CFA2.U_BASE_FORM_NO
(
  FORM_TYPE  VARCHAR2(5) not null,
  CURRENT_ID NUMBER(19) not null
)
tablespace CFA2
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
comment on table CFA2.U_BASE_FORM_NO
  is '用于系统不同类型编号';
comment on column CFA2.U_BASE_FORM_NO.FORM_TYPE
  is '编号值
	和字典表进行关联';
comment on column CFA2.U_BASE_FORM_NO.CURRENT_ID
  is '当前编号';
alter table CFA2.U_BASE_FORM_NO
  add constraint PK_U_BASE_FORM_NO primary key (FORM_TYPE, CURRENT_ID)
  using index 
  tablespace CFA2
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
create table CFA2.U_BASE_SYS_LOG
(
  LOG_ID      NUMBER(19) not null,
  USER_ID     VARCHAR2(20) not null,
  USER_ENAME  VARCHAR2(20),
  USER_CNAME  VARCHAR2(30),
  INST_ID     VARCHAR2(20) not null,
  INST_CNAME  VARCHAR2(30),
  MENU_ID     VARCHAR2(20),
  MENU_NAME   VARCHAR2(100),
  IP          VARCHAR2(20),
  BROWSE      VARCHAR2(200),
  LOG_TYPE    VARCHAR2(10),
  EXEC_TIME   DATE,
  DESCRIPTION VARCHAR2(200),
  STATUS      VARCHAR2(10)
)
tablespace CFA2
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
comment on table CFA2.U_BASE_SYS_LOG
  is '系统日志表';
comment on column CFA2.U_BASE_SYS_LOG.LOG_ID
  is '日志编号';
comment on column CFA2.U_BASE_SYS_LOG.USER_ID
  is '用户编号';
comment on column CFA2.U_BASE_SYS_LOG.USER_ENAME
  is '用户登录名';
comment on column CFA2.U_BASE_SYS_LOG.USER_CNAME
  is '用户中文';
comment on column CFA2.U_BASE_SYS_LOG.INST_ID
  is '机构编号';
comment on column CFA2.U_BASE_SYS_LOG.INST_CNAME
  is '机构名称';
comment on column CFA2.U_BASE_SYS_LOG.MENU_ID
  is '栏目编号';
comment on column CFA2.U_BASE_SYS_LOG.MENU_NAME
  is '栏目名称';
comment on column CFA2.U_BASE_SYS_LOG.IP
  is '用户IP';
comment on column CFA2.U_BASE_SYS_LOG.BROWSE
  is '用户浏览器';
comment on column CFA2.U_BASE_SYS_LOG.LOG_TYPE
  is '日志类型';
comment on column CFA2.U_BASE_SYS_LOG.EXEC_TIME
  is '执行时间';
comment on column CFA2.U_BASE_SYS_LOG.DESCRIPTION
  is '描述';
comment on column CFA2.U_BASE_SYS_LOG.STATUS
  is '状态';
alter table CFA2.U_BASE_SYS_LOG
  add constraint PK_U_BASE_SYS_LOG primary key (LOG_ID)
  using index 
  tablespace CFA2
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
prompt Creating sequence S_AML_ENTRIES_ISIS
prompt ====================================
prompt
create sequence CFA2.S_AML_ENTRIES_ISIS
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_AML_ENTRIES_ISIS_BAK
prompt ========================================
prompt
create sequence CFA2.S_AML_ENTRIES_ISIS_BAK
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_APIS
prompt ========================
prompt
create sequence CFA2.S_APIS
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_DTPROPERTIES
prompt ================================
prompt
create sequence CFA2.S_DTPROPERTIES
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_RAND_DATA
prompt =============================
prompt
create sequence CFA2.S_RAND_DATA
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_AUTHORITY
prompt ===============================
prompt
create sequence CFA2.S_T_AUTHORITY
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_CODE_DICTIONARY
prompt =====================================
prompt
create sequence CFA2.S_T_CODE_DICTIONARY
minvalue 1
maxvalue 999999999999999999999999999
start with 4604
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_CODE_DICTIONARY_CURR
prompt ==========================================
prompt
create sequence CFA2.S_T_CODE_DICTIONARY_CURR
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_DTS_IMPORT_REPEATRECORD
prompt =============================================
prompt
create sequence CFA2.S_T_DTS_IMPORT_REPEATRECORD
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_ERROR_FEEDBACK
prompt ====================================
prompt
create sequence CFA2.S_T_ERROR_FEEDBACK
minvalue 1
maxvalue 999999999999999999999999999
start with 19677
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_FILEM_LOG
prompt ===============================
prompt
create sequence CFA2.S_T_FILEM_LOG
minvalue 1
maxvalue 999999999999999999999999999
start with 30895
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_LOAD_DATA
prompt ===============================
prompt
create sequence CFA2.S_T_LOAD_DATA
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_RPT_TABLE_INFO
prompt ====================================
prompt
create sequence CFA2.S_T_RPT_TABLE_INFO
minvalue 1
maxvalue 999999999999999999999999999
start with 1060
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_RPT_TABLE_INFO_RZB
prompt ========================================
prompt
create sequence CFA2.S_T_RPT_TABLE_INFO_RZB
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_USERINTERFACE
prompt ===================================
prompt
create sequence CFA2.S_T_USERINTERFACE
minvalue 1
maxvalue 999999999999999999999999999
start with 110
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_USER_AUTHORITY
prompt ====================================
prompt
create sequence CFA2.S_T_USER_AUTHORITY
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_USER_ORG
prompt ==============================
prompt
create sequence CFA2.S_T_USER_ORG
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating synonym TB_ORG
prompt =======================
prompt
create or replace synonym CFA2.TB_ORG
  for UPRR.U_BASE_INST@DB2LINK.REGRESS.RDBMS.DEV.US.ORACLE.COM;

prompt
prompt Creating synonym TB_USER
prompt ========================
prompt
create or replace synonym CFA2.TB_USER
  for UPRR.U_BASE_USER;

prompt
prompt Creating synonym TB_USER_ORG
prompt ============================
prompt
create or replace synonym CFA2.TB_USER_ORG
  for UPRR.VU_USER_ORG;

prompt
prompt Creating synonym U_USER_THEME
prompt =============================
prompt
create or replace synonym CFA2.U_USER_THEME
  for UPRR.U_USER_THEME;

prompt
prompt Creating view T_ORG
prompt ===================
prompt
CREATE OR REPLACE VIEW CFA2.T_ORG AS
SELECT INST_ID AS ID,
       INST_NAME as NAME,
       INST_SMP_NAME AS SHORTNAME,
       case when t2.rptno is null then t1.inst_id else t2.rptno end as CUSTOMID,
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
CREATE OR REPLACE VIEW CFA2.T_USER AS
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
create or replace view cfa2.t_user_org as
select
       1 as ID,
       user_id as FK_USERID,
       inst_id as FK_ORGID
from UPRR.v_Inst_Author_For_CFA2
/

prompt
prompt Creating view V_REPORT_DATASTATUS
prompt =================================
prompt
CREATE OR REPLACE VIEW CFA2.V_REPORT_DATASTATUS AS
SELECT
    t.tableId      AS tableId,
    t.fileType   AS fileType,
    t.modifyuser AS modifyuser,
    t.datastatus AS datastatus,
    t.instcode   AS instcode,
    t.cfileType  AS cFileType,
    t.teamid
FROM
    (
        SELECT
            'T_CFA_A_EXDEBT' AS tableId,
            fileType,
            modifyuser,
            datastatus,
            instcode,
            (
                SELECT
                    MIN(c.filetype)
                FROM
                    T_CFA_A_EXDEBT c
                WHERE
                    c.businessno = a.businessno
                AND c.filetype <> a.filetype
                AND a.filetype IN ('AR',
                                   'AS')) AS cFileType,
            teamid
        FROM
            T_CFA_A_EXDEBT a
        UNION ALL
        SELECT
            'T_CFA_B_EXGUARAN' AS tableId,
            fileType,
            modifyuser,
            datastatus,
            instcode,
            '' AS cFileType,
            teamid
        FROM
            T_CFA_B_EXGUARAN
        UNION ALL
        SELECT
            'T_CFA_C_DOFOEXLO' AS tableId,
            fileType,
            modifyuser,
            datastatus,
            instcode,
            '' AS cFileType,
            teamid
        FROM
            T_CFA_C_DOFOEXLO
        UNION ALL
        SELECT
            'T_CFA_D_LOUNEXGU' AS tableId,
            fileType,
            modifyuser,
            datastatus,
            instcode,
            '' AS cFileType,
            teamid
        FROM
            T_CFA_D_LOUNEXGU
        UNION ALL
        SELECT
            'T_CFA_E_EXPLRMBLO' AS tableId,
            fileType,
            modifyuser,
            datastatus,
            instcode,
            '' AS cFileType,
            teamid
        FROM
            T_CFA_E_EXPLRMBLO
        UNION ALL
        SELECT
            'T_CFA_F_STRDE' AS tableId,
            fileType,
            modifyuser,
            datastatus,
            instcode,
            '' AS cFileType,
            teamid
        FROM
            T_CFA_F_STRDE ) t
/

prompt
prompt Creating view V_ROLE_USER
prompt =========================
prompt
create or replace view cfa2.v_role_user as
select r.role_id, r.role_name, r.enabled, r.system_id, ru.user_id
from uprr.u_auth_role r
left join uprr.u_auth_role_user ru on r.role_id = ru.role_id
/

prompt
prompt Creating view V_RPT_BUSS_TYPE
prompt =============================
prompt
create or replace view cfa2.v_rpt_buss_type as
select buss_type_code, buss_type_name
  from t_rpt_buss_type
 where is_enabled = '1'
/

prompt
prompt Creating view V_UPRR_HOLIDAY
prompt ============================
prompt
create or replace view cfa2.v_uprr_holiday as
select HOLIDAY_TYPE,
       HOLIDAY_NAME,
       ENABLE,
       REMARK,
       HOLIDAY_VALUE,
       DESCRIPTION
  from uprr.v_holiday
/

prompt
prompt Creating view V_USER_RESOURCE_FROM_UPRR
prompt =======================================
prompt
create or replace view cfa2.v_user_resource_from_uprr as
select distinct t1.res_id           as RES_ID,
                t1.RES_DETAIL_VALUE as RES_DETAIL_VALUE,
                t1.RES_DETAIL_NAME  as RES_DETAIL_NAME,
                t2.user_id          as USER_ID
  from uprr.U_AUTH_ROLE_RESOURCE t1, uprr.U_AUTH_ROLE_USER t2
 where t1.system_id = '00117'
   and t2.role_id = t1.OBJECT_ID
/

prompt
prompt Creating view V_USER_BUSS_TYPE_FROM_UPRR
prompt ========================================
prompt
CREATE OR REPLACE VIEW CFA2.V_USER_BUSS_TYPE_FROM_UPRR AS
SELECT USER_ID, res_detail_value
  from v_user_resource_from_uprr
 WHERE RES_ID = '-10101'
/

prompt
prompt Creating function JGID_VERIFY
prompt =============================
prompt
CREATE OR REPLACE FUNCTION CFA2."JGID_VERIFY" (Pid VARCHAR2) RETURN VARCHAR2 IS
RESULT VARCHAR2(58);
TYPE Char_Tabletype IS TABLE OF VARCHAR2(1) NOT NULL INDEX BY BINARY_INTEGER;
TYPE Num_Tabletype IS TABLE OF NUMBER NOT NULL INDEX BY BINARY_INTEGER;
Tab_a Char_Tabletype;
Tab_w Num_Tabletype;
Tab_i Char_Tabletype;
i NUMBER(2) := 0;
Len NUMBER(2) := Length(Rtrim(Ltrim(Pid)));
Sigma NUMBER(4) := 0;
BEGIN

IF Len = 9 THEN
-- C9 = 11 - MOD ( ∑Ci * Wi ，11) … (2)
FOR i IN 1 .. 8 LOOP
Tab_w(i) := MOD(Power(2, ((10 - i) - 1)), 11);
--Tab_w(i) := MOD(Power(2, ((10 - i) - 1)), 11); 就是加权算法值
Tab_a(i) := Substr(Pid, i, 1);
Sigma := Sigma + Tab_w(i) * Tab_a(i);
END LOOP;
IF MOD(Sigma, 11) = 1 THEN
RESULT := Substr(Pid, 1, 8) || 'X';
ELSE
RESULT := Substr(Pid, 1, 8) || To_Char(11 - MOD(Sigma, 11));
END IF;
END IF;
IF RESULT = Pid THEN
RETURN('正确');
ELSE
RETURN('错误,应该是：' || RESULT);
END IF;
EXCEPTION
WHEN OTHERS THEN
BEGIN
RETURN('错误');
Dbms_Output.Put_Line('发生了异常的错误');
END;
END Jgid_Verify;
/

prompt
prompt Creating procedure DATA_CFA2_TO_CFA
prompt ===================================
prompt
CREATE OR REPLACE PROCEDURE CFA2.data_cfa2_to_cfa(resMsg Out Varchar2)

/*------------------------------------------------------------------------------------------------------------
-- 程序名      RUN_EXD_TO_EXDEBT，如采用公司产品同步功能，建议用现逻辑覆盖公司后台存储过程
-- 用途        通过EXD外债部分的数据打包后，将数据同步cfa的外债模块进行并行报送
-- 参数        无，根据系统时间执行间隔性触发跑批；建议20分钟执行一次，支持手动跑批
-- 规则描述
-- 版本        v2.0
-- 开发人      朱龙芳   2014-09-27
-- 修改说明    本过程用于处理EXD与CFA外债部分数据的并行报送同步，前提是EXD已经打包生成外债编号
-- 修改原因
-- 改后版本
-- 版权        中软融鑫
-------------------------------------------------------------------------------------------------------------*/

IS

  logid       NUMBER;
  run_date  VARCHAR2(8) := subStr(to_char(sysdate,'yyyyMMdd'),3);       --同步数据日期（6位数据打包日期）
  pakg_date VARCHAR2(10):= to_char(sysdate,'yyyy-MM-dd');               --10位数据打包日期

BEGIN


  insert into datacore.main_control_log values (run_date, 'cfa2.data_cfa2_to_cfa', sysdate, '', '97');
  commit;
  /*\*进行任务日志信息记录*\
  logid := datacore.fun_insert_log('RUN_EXD_TO_EXDEBT',
                                   'EXD外债数据执行RUN_EXD_TO_EXDEBT同步CFA并行报送' || to_char(sysdate,'yyyy-MM-dd') ,
                                   '运行中',
                                   '',
                                   '');*/
  ----------------------------EXD数据同步CFA开始--------------------------------------
  merge into cfa.t_cfa_a_exdebt z
  using(
        select --此处选择的字段以目标表cfa.t_cfa_a_exdebt的字段为提取范围
           actiontype,
           actiondesc, 
           exdebtcode, 
           limittype, 
           debtorcode, 
           debtype, 
           debtyperema, 
           contractdate, 
           valuedate, 
           contractcurr, 
           contractamount, 
           maturity, 
           floatrate, 
           anninrate, 
           inpriamount, 
           creditorcode, 
           creditorname, 
           creditornamen, 
           creditortype, 
           crehqcode, 
           opercode, 
           inprterm, 
           spapfeboindex, 
           appcode, 
           appname, 
           inltcabuscode, 
           isincode, 
           projectname, 
           remark, 
           buscode, 
           changeno, 
           changtype, 
           chdate, 
           chcurrency, 
           chamount, 
           fairvalue, 
           accoamount, 
           filetype, 
           instcode, 
           auditname, 
           auditdate, 
           importdate, 
           datastatus, 
           businessid, 
           tradedate, 
           modifyuser, 
           businessno, 
          is_handiwork
         from cfa2.t_cfa_a_exdebt ex
        where exists (
          select 1 from cfa2.t_rpt_send_commit e
           where e.tableid = 'T_CFA_A_EXDEBT'        --限定EXD外债业务表
             and subStr(e.packname,18,6) = run_date  --限定当日打包的数据报文 格式：140912
             and e.businessid = ex.businessid        --定位同步数据主键
             and not exists (
               select 1 from cfa2.exdebt_syn_record syn  --记录已经同步过的数据包，避免重复同步问题
                where syn.package_date = pakg_date       --已经同步过的数据包日期
                  and syn.pachage_name = e.packname      --标识已经同步过的数据包名称
                  and syn.is_syn = 'Y')
           )  
          and not exists(  --排除首次补报的那部分数据，避免EXD同步操作类型为A历史数据到CFA库
              select 1 from cfa2.exd_bubao_record tx  --建议先检查下exd_bubao_record表中是否存在非A的数据
               where tx.businessid = ex.businessid
                 and tx.actiontype = ex.actiontype          
          )  
  ) a
  on (z.businessid = a.businessid)  
  when matched then
  update    
       set  z.ACTIONTYPE    =  a.ACTIONTYPE  ,   
            z.ACTIONDESC    =  a.ACTIONDESC    ,  
            z.EXDEBTCODE    =  a.EXDEBTCODE    ,  
            z.LIMITTYPE     =  a.LIMITTYPE     ,  
            z.DEBTORCODE    =  a.DEBTORCODE    ,  
            z.DEBTYPE       =  a.DEBTYPE       ,  
            z.DEBTYPEREMA   =  a.DEBTYPEREMA   ,  
            z.CONTRACTDATE  =  a.CONTRACTDATE  ,  
            z.VALUEDATE     =  a.VALUEDATE     ,  
            z.CONTRACTCURR  =  a.CONTRACTCURR  ,  
            z.CONTRACTAMOUNT=  a.CONTRACTAMOUNT,  
            z.MATURITY      =  a.MATURITY      ,  
            z.FLOATRATE     =  a.FLOATRATE     ,  
            z.ANNINRATE     =  a.ANNINRATE     ,  
            z.INPRIAMOUNT   =  a.INPRIAMOUNT   ,  
            z.CREDITORCODE  =  a.CREDITORCODE  ,  
            z.CREDITORNAME  =  a.CREDITORNAME  ,  
            z.CREDITORNAMEN =  a.CREDITORNAMEN ,  
            z.CREDITORTYPE  =  a.CREDITORTYPE  ,  
            z.CREHQCODE     =  a.CREHQCODE     ,  
            z.OPERCODE      =  a.OPERCODE      ,  
            z.INPRTERM      =  a.INPRTERM      ,  
            z.SPAPFEBOINDEX =  a.SPAPFEBOINDEX ,  
            z.APPCODE       =  a.APPCODE       ,  
            z.APPNAME       =  a.APPNAME       ,  
            z.INLTCABUSCODE =  a.INLTCABUSCODE ,  
            z.ISINCODE      =  a.ISINCODE      ,  
            z.PROJECTNAME   =  a.PROJECTNAME   ,  
            z.REMARK        =  a.REMARK        ,  
            z.BUSCODE       =  a.BUSCODE       ,  
            z.CHANGENO      =  a.CHANGENO      ,  
            z.CHANGTYPE     =  a.CHANGTYPE     ,  
            z.CHDATE        =  a.CHDATE        ,  
            z.CHCURRENCY    =  a.CHCURRENCY    ,  
            z.CHAMOUNT      =  a.CHAMOUNT      ,  
            z.FAIRVALUE     =  a.FAIRVALUE     ,  
            z.ACCOAMOUNT    =  a.ACCOAMOUNT    ,  
            z.FILETYPE      =  a.FILETYPE      ,  
            z.INSTCODE      =  a.INSTCODE      ,  
            z.AUDITNAME     =  a.AUDITNAME     ,  
            z.AUDITDATE     =  a.AUDITDATE     ,  
            z.IMPORTDATE    =  a.IMPORTDATE    ,  
            z.DATASTATUS    =  '6'             , --将目标表数据状态置为审核通过，直接用于打包即可
            z.TRADEDATE     =  a.TRADEDATE     ,  
            z.MODIFYUSER    =  a.MODIFYUSER    ,  
            z.BUSINESSNO    =  a.BUSINESSNO    ,  
            z.IS_HANDIWORK  =  a.IS_HANDIWORK  ---,  
           -- z.BALANCE_TYPE  =  a.BALANCE_TYPE      

  when not matched then
  insert( z.actiontype,
          z.actiondesc, 
          z.exdebtcode, 
          z.limittype, 
          z.debtorcode, 
          z.debtype, 
          z.debtyperema, 
          z.contractdate, 
          z.valuedate, 
          z.contractcurr, 
          z.contractamount, 
          z.maturity, 
          z.floatrate, 
          z.anninrate, 
          z.inpriamount, 
          z.creditorcode, 
          z.creditorname, 
          z.creditornamen, 
          z.creditortype, 
          z.crehqcode, 
          z.opercode, 
          z.inprterm, 
          z.spapfeboindex, 
          z.appcode, 
          z.appname, 
          z.inltcabuscode, 
          z.isincode, 
          z.projectname, 
          z.remark, 
          z.buscode, 
          z.changeno, 
          z.changtype, 
          z.chdate, 
          z.chcurrency, 
          z.chamount, 
          z.fairvalue, 
          z.accoamount, 
          z.filetype, 
          z.instcode, 
          z.auditname, 
          z.auditdate, 
          z.importdate, 
          z.datastatus, 
          z.businessid, 
          z.tradedate, 
          z.modifyuser, 
          z.businessno, 
          z.is_handiwork)
       Values(a.actiontype,
          a.actiondesc, 
          a.exdebtcode, 
          a.limittype, 
          a.debtorcode, 
          a.debtype, 
          a.debtyperema, 
          a.contractdate, 
          a.valuedate, 
          a.contractcurr, 
          a.contractamount, 
          a.maturity, 
          a.floatrate, 
          a.anninrate, 
          a.inpriamount, 
          a.creditorcode, 
          a.creditorname, 
          a.creditornamen, 
          a.creditortype, 
          a.crehqcode, 
          a.opercode, 
          a.inprterm, 
          a.spapfeboindex, 
          a.appcode, 
          a.appname, 
          a.inltcabuscode, 
          a.isincode, 
          a.projectname, 
          a.remark, 
          a.buscode, 
          a.changeno, 
          a.changtype, 
          a.chdate, 
          a.chcurrency, 
          a.chamount, 
          a.fairvalue, 
          a.accoamount, 
          a.filetype, 
          a.instcode, 
          a.auditname, 
          a.auditdate, 
          a.importdate, 
          '6', 
          a.businessid, 
          a.tradedate, 
          a.modifyuser, 
          a.businessno, 
          a.is_handiwork);
  commit;
  ----------------------------EXD数据同步CFA结束--------------------------------------
  ----记录EXD已经同步的数据包信息
  insert into cfa2.exdebt_syn_record
  select pakg_date,rpt.packname,'Y',count(*) from cfa2.t_rpt_send_commit rpt
   where rpt.tableid = 'T_CFA_A_EXDEBT'
     and subStr(rpt.packname,18,6) = run_date
     and not exists(
       select 1 from cfa2.exdebt_syn_record syn1
        where syn1.package_date = pakg_date       
          and syn1.pachage_name = rpt.packname      --标识已经同步过的数据包名称
          and syn1.is_syn = 'Y')
    group by rpt.packname;

  commit;
  ---------------------------------------------------sp_app_da---------------------------



  update datacore.main_control_log
     set end_date = sysdate
   where step = '97'
     and data_date = run_date;
  commit;
 
 
End data_cfa2_to_cfa;
/


spool off
