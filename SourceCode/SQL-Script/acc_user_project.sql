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
  is '��Ӧ�ֵ������';
comment on column ACC.PUB_HOME_CELL.CELL_TITLE
  is '����';
comment on column ACC.PUB_HOME_CELL.CELL_TARGET
  is 'target';
comment on column ACC.PUB_HOME_CELL.CELL_URL
  is 'url';
comment on column ACC.PUB_HOME_CELL.CELL_KEYID
  is '����';
comment on column ACC.PUB_HOME_CELL.CELL_DATE
  is '��������';
comment on column ACC.PUB_HOME_CELL.CELL_DESC
  is '����';
comment on column ACC.PUB_HOME_CELL.CELL_USERID
  is '�û�id';
comment on column ACC.PUB_HOME_CELL.DATA_TIME
  is '���ݲ�������';

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
  is '�ֵ�id';
comment on column ACC.PUB_HOME_DIC.DIC_TYPE
  is '�ֵ�����';
comment on column ACC.PUB_HOME_DIC.DIC_TYPENAME
  is '������';
comment on column ACC.PUB_HOME_DIC.DIC_NAME
  is 'ֵ��';
comment on column ACC.PUB_HOME_DIC.DIC_VALUE
  is 'ֵ';
comment on column ACC.PUB_HOME_DIC.DIC_LIST_TARGET
  is '��Ӧ���б�����';
comment on column ACC.PUB_HOME_DIC.DIC_EDIT_TARGET
  is '��Ӧ�ı༭����';
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
  is '�ű�ִ�м�¼';
comment on column ACC.SQL_HISTORY.SQL_MARK
  is '�ű�����';
comment on column ACC.SQL_HISTORY.SYSTEM_ID
  is '��ϵͳid';
comment on column ACC.SQL_HISTORY.SYSTEM_NAME
  is '��ģ������';
comment on column ACC.SQL_HISTORY.EXECUTE_TIME
  is 'ִ������';
comment on column ACC.SQL_HISTORY.DESCR
  is '����';
comment on column ACC.SQL_HISTORY.P_VERSION
  is '����汾��';
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
  is '�˻�������Ϣ��';
comment on column ACC.T_BASE_ACCOUNT.ACTIONTYPE
  is '��������';
comment on column ACC.T_BASE_ACCOUNT.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column ACC.T_BASE_ACCOUNT.BRANCH_CODE
  is '���ڻ�����ʶ��';
comment on column ACC.T_BASE_ACCOUNT.BRANCH_NAME
  is '���ڻ�������';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT
  is '�˺�';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNTSTAT
  is '�˻�״̬';
comment on column ACC.T_BASE_ACCOUNT.AMTYPE
  is '������������';
comment on column ACC.T_BASE_ACCOUNT.EN_CODE
  is '�����������';
comment on column ACC.T_BASE_ACCOUNT.CHINESE_NAME
  is '������������';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT_TYPE
  is '�˻����ʴ���';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT_CATA
  is '�˻����';
comment on column ACC.T_BASE_ACCOUNT.CURRENCE_CODE
  is '����';
comment on column ACC.T_BASE_ACCOUNT.OPEN_DATE
  is 'ҵ��������';
comment on column ACC.T_BASE_ACCOUNT.FILE_NUMBER
  is '����������/�������/ҵ����';
comment on column ACC.T_BASE_ACCOUNT.LIMIT_TYPE
  is '�޶�����';
comment on column ACC.T_BASE_ACCOUNT.ACCOUNT_LIMIT
  is '�˻��޶�';
comment on column ACC.T_BASE_ACCOUNT.REMARK
  is '��ע';
comment on column ACC.T_BASE_ACCOUNT.INSTCODE
  is '��������';
comment on column ACC.T_BASE_ACCOUNT.DATASTATUS
  is '����״̬';
comment on column ACC.T_BASE_ACCOUNT.AUDITNAME
  is '�����';
comment on column ACC.T_BASE_ACCOUNT.AUDITDATE
  is '�������';
comment on column ACC.T_BASE_ACCOUNT.IMPORTDATE
  is '��������';
comment on column ACC.T_BASE_ACCOUNT.BUSINESSID
  is 'ҵ��ID';
comment on column ACC.T_BASE_ACCOUNT.MODIFYUSER
  is '���ά����';
comment on column ACC.T_BASE_ACCOUNT.ISCOMMIT
  is '�Ƿ��ύ';
comment on column ACC.T_BASE_ACCOUNT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column ACC.T_BASE_ACCOUNT.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_BASE_ACCOUNT.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_BASE_ACCOUNT.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_BASE_ACCOUNT.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_BASE_ACCOUNT.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '�˻���֧��䶯���ݱ�';
comment on column ACC.T_BASE_CHANGES.ACTIONTYPE
  is '��������';
comment on column ACC.T_BASE_CHANGES.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column ACC.T_BASE_CHANGES.BRANCH_CODE
  is '���ڻ�����ʶ��';
comment on column ACC.T_BASE_CHANGES.ACCOUNT
  is '�˺�';
comment on column ACC.T_BASE_CHANGES.DEAL_DATE
  is '��������';
comment on column ACC.T_BASE_CHANGES.CURRENCE_CODE
  is '����';
comment on column ACC.T_BASE_CHANGES.CREDIT
  is '���մ���������';
comment on column ACC.T_BASE_CHANGES.DEBT
  is '���ս跽������';
comment on column ACC.T_BASE_CHANGES.BALANCE
  is '�˻����';
comment on column ACC.T_BASE_CHANGES.REMARK
  is '��ע';
comment on column ACC.T_BASE_CHANGES.INSTCODE
  is '��������';
comment on column ACC.T_BASE_CHANGES.DATASTATUS
  is '����״̬';
comment on column ACC.T_BASE_CHANGES.DATASTATUSCV
  is '��ֵ����״̬';
comment on column ACC.T_BASE_CHANGES.AUDITNAME
  is '�����';
comment on column ACC.T_BASE_CHANGES.AUDITDATE
  is '�������';
comment on column ACC.T_BASE_CHANGES.IMPORTDATE
  is '��������';
comment on column ACC.T_BASE_CHANGES.BUSINESSID
  is 'ҵ��ID';
comment on column ACC.T_BASE_CHANGES.MODIFYUSER
  is '���ά����';
comment on column ACC.T_BASE_CHANGES.ISCOMMIT
  is '�Ƿ��ύ';
comment on column ACC.T_BASE_CHANGES.ISETLBALANCE
  is '����Ƿ�ֱ�Ӵ�ETL�г�ȡ';
comment on column ACC.T_BASE_CHANGES.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column ACC.T_BASE_CHANGES.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_BASE_CHANGES.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_BASE_CHANGES.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_BASE_CHANGES.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_BASE_CHANGES.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '�˻�֧����ϸ��';
comment on column ACC.T_BASE_EXPENDITURE.REF_NUMBER
  is 'ҵ��κ�';
comment on column ACC.T_BASE_EXPENDITURE.DEAL_DATE
  is '��������';
comment on column ACC.T_BASE_EXPENDITURE.OP_BANK
  is '�տ�����';
comment on column ACC.T_BASE_EXPENDITURE.OP_NAME
  is '�տ�������';
comment on column ACC.T_BASE_EXPENDITURE.OP_ACCOUNT
  is '�տ����˻�';
comment on column ACC.T_BASE_EXPENDITURE.EN_NAME
  is '����������';
comment on column ACC.T_BASE_EXPENDITURE.EN_CODE
  is '�����˴���';
comment on column ACC.T_BASE_EXPENDITURE.ACCOUNT
  is '�������˻�';
comment on column ACC.T_BASE_EXPENDITURE.CURRENCE_CODE
  is '���ִ���';
comment on column ACC.T_BASE_EXPENDITURE.AMOUNT
  is '���';
comment on column ACC.T_BASE_EXPENDITURE.PAYMETHOD
  is '���㷽ʽ';
comment on column ACC.T_BASE_EXPENDITURE.TRANSACTCODE
  is '���ױ���';
comment on column ACC.T_BASE_EXPENDITURE.AUTHORITY_CODE
  is '���������';
comment on column ACC.T_BASE_EXPENDITURE.AP_NUMBER
  is '�������';
comment on column ACC.T_BASE_EXPENDITURE.COUNTRY_CODE
  is '�տ��˹���';
comment on column ACC.T_BASE_EXPENDITURE.INSTCODE
  is '��������';
comment on column ACC.T_BASE_EXPENDITURE.DATASTATUS
  is '����״̬';
comment on column ACC.T_BASE_EXPENDITURE.AUDITDATE
  is '�������';
comment on column ACC.T_BASE_EXPENDITURE.IMPORTDATE
  is '��������';
comment on column ACC.T_BASE_EXPENDITURE.BUSINESSID
  is 'ҵ��ID';
comment on column ACC.T_BASE_EXPENDITURE.AUDITNAME
  is '�����';
comment on column ACC.T_BASE_EXPENDITURE.MODIFYUSER
  is '���ά����';
comment on column ACC.T_BASE_EXPENDITURE.DATASTATUSCV
  is '��ֵ����״̬';
comment on column ACC.T_BASE_EXPENDITURE.ISCOMMIT
  is '�Ƿ��ύ';
comment on column ACC.T_BASE_EXPENDITURE.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column ACC.T_BASE_EXPENDITURE.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_BASE_EXPENDITURE.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_BASE_EXPENDITURE.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_BASE_EXPENDITURE.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_BASE_EXPENDITURE.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '�˻�������ϸ��';
comment on column ACC.T_BASE_INCOME.REF_NUMBER
  is 'ҵ��κ�';
comment on column ACC.T_BASE_INCOME.DEAL_DATE
  is '��������';
comment on column ACC.T_BASE_INCOME.OP_BANK
  is '��������';
comment on column ACC.T_BASE_INCOME.OP_NAME
  is '����������';
comment on column ACC.T_BASE_INCOME.OP_ACCOUNT
  is '�������˻�';
comment on column ACC.T_BASE_INCOME.EN_NAME
  is '�տ�������';
comment on column ACC.T_BASE_INCOME.EN_CODE
  is '�տ��˴���';
comment on column ACC.T_BASE_INCOME.ACCOUNT
  is '�տ����˻�';
comment on column ACC.T_BASE_INCOME.CURRENCE_CODE
  is '���ִ���';
comment on column ACC.T_BASE_INCOME.AMOUNT
  is '���';
comment on column ACC.T_BASE_INCOME.PAYMETHOD
  is '���㷽ʽ';
comment on column ACC.T_BASE_INCOME.TRANSACTCODE
  is '���ױ���';
comment on column ACC.T_BASE_INCOME.AUTHORITY_CODE
  is '���������';
comment on column ACC.T_BASE_INCOME.AP_NUMBER
  is '�������';
comment on column ACC.T_BASE_INCOME.COUNTRY_CODE
  is '�����˹���';
comment on column ACC.T_BASE_INCOME.INSTCODE
  is '��������';
comment on column ACC.T_BASE_INCOME.DATASTATUS
  is '����״̬';
comment on column ACC.T_BASE_INCOME.AUDITDATE
  is '�������';
comment on column ACC.T_BASE_INCOME.IMPORTDATE
  is '��������';
comment on column ACC.T_BASE_INCOME.BUSINESSID
  is 'ҵ��ID';
comment on column ACC.T_BASE_INCOME.AUDITNAME
  is '�����';
comment on column ACC.T_BASE_INCOME.MODIFYUSER
  is '���ά����';
comment on column ACC.T_BASE_INCOME.DATASTATUSCV
  is '��ֵ����״̬';
comment on column ACC.T_BASE_INCOME.ISCOMMIT
  is '�Ƿ��ύ';
comment on column ACC.T_BASE_INCOME.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column ACC.T_BASE_INCOME.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_BASE_INCOME.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_BASE_INCOME.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_BASE_INCOME.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_BASE_INCOME.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '��������';
comment on column ACC.T_CODE_DICTIONARY.ENDDATE
  is 'ͣ������';
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
  is 'MTS�������ñ�';
comment on column ACC.T_CONFIG_MTS.RPTTITLE
  is '�������';
comment on column ACC.T_CONFIG_MTS.IP
  is 'IP��ַ';
comment on column ACC.T_CONFIG_MTS.PORT
  is '�˿ں�';
comment on column ACC.T_CONFIG_MTS.LINK
  is '���ӷ�ʽ';
comment on column ACC.T_CONFIG_MTS.USERNAME
  is '��¼�û�';
comment on column ACC.T_CONFIG_MTS.PASSWORD
  is '��¼����';
comment on column ACC.T_CONFIG_MTS.SENDPATH
  is '�ϴ��ļ�·��';
comment on column ACC.T_CONFIG_MTS.FEEDBACKPATH
  is '�����ļ�·��';
comment on column ACC.T_CONFIG_MTS.RUNTIME
  is '����ʱ��';
comment on column ACC.T_CONFIG_MTS.ENABLED
  is '�Ƿ�����';
comment on column ACC.T_CONFIG_MTS.ERRORFILESPATH
  is '�����ļ�·��';
comment on column ACC.T_CONFIG_MTS.HISTORYSENDPATH
  is '������ʷĿ¼';
comment on column ACC.T_CONFIG_MTS.ERRORFILESENABLED
  is '�Ƿ����ô����ļ�Ŀ¼';
comment on column ACC.T_CONFIG_MTS.HISTORYSENDENABLED
  is '�Ƿ����÷�����ʷĿ¼';
comment on column ACC.T_CONFIG_MTS.MODEL
  is '����ģʽ';
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
  is '�����������¼';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGNAME
  is '������';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGVALUE
  is '����ֵ';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGDESC
  is '��������';
comment on column ACC.T_CONFIG_PARAMETER.CONFIGPROJ
  is '������Ŀ';
comment on column ACC.T_CONFIG_PARAMETER.CREATEDATE
  is '��������';
comment on column ACC.T_CONFIG_PARAMETER.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_CONFIG_PARAMETER.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_CONFIG_PARAMETER.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_CONFIG_PARAMETER.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_CONFIG_PARAMETER.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '������Ϣ';
comment on column ACC.T_ERROR_FEEDBACK.ID
  is 'ID';
comment on column ACC.T_ERROR_FEEDBACK.ERROR_TYPE
  is '��������(���ݴ���/�ļ�����)';
comment on column ACC.T_ERROR_FEEDBACK.DATA_NO
  is 'ҵ����������';
comment on column ACC.T_ERROR_FEEDBACK.FILE_ID
  is '�����ļ�tableId';
comment on column ACC.T_ERROR_FEEDBACK.FILE_NAME
  is '�����ļ�tableName';
comment on column ACC.T_ERROR_FEEDBACK.INFO_TYPE
  is '�����ļ�����';
comment on column ACC.T_ERROR_FEEDBACK.DATA_DATE
  is '��������';
comment on column ACC.T_ERROR_FEEDBACK.DATA_TYPE
  is '����������������';
comment on column ACC.T_ERROR_FEEDBACK.ERROR_DESC
  is '��������';
comment on column ACC.T_ERROR_FEEDBACK.HAS_REJECT
  is '�Ƿ񱻾�';
comment on column ACC.T_ERROR_FEEDBACK.TOTAL_FILES
  is '���������ļ���';
comment on column ACC.T_ERROR_FEEDBACK.RPT_SEND_FILE_NAME
  is '�����ļ���';
comment on column ACC.T_ERROR_FEEDBACK.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_ERROR_FEEDBACK.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_ERROR_FEEDBACK.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_ERROR_FEEDBACK.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_ERROR_FEEDBACK.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '�������ɼ�¼';
comment on column ACC.T_FILEM_LOG.ID
  is 'ID';
comment on column ACC.T_FILEM_LOG.FK_CUSTOMID
  is '����ID';
comment on column ACC.T_FILEM_LOG.CUR_DATE
  is '��������';
comment on column ACC.T_FILEM_LOG.TABLE_ID
  is '�������ͱ�ʶ';
comment on column ACC.T_FILEM_LOG.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_FILEM_LOG.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_FILEM_LOG.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_FILEM_LOG.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_FILEM_LOG.SPARE5
  is 'Ԥ���ֶ�5';

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
  is '�������ձ�';
comment on column ACC.T_ORG_CONFIG.ORG_ID
  is '����ID';
comment on column ACC.T_ORG_CONFIG.ORG_NAME
  is '��������';
comment on column ACC.T_ORG_CONFIG.RPTNO
  is '�걨����';
comment on column ACC.T_ORG_CONFIG.RPTTITLE
  is '�������к���';
comment on column ACC.T_ORG_CONFIG.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_ORG_CONFIG.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_ORG_CONFIG.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_ORG_CONFIG.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_ORG_CONFIG.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '��˴��ԭ���';
comment on column ACC.T_REFUSE_RESION.BUSINESSID
  is 'ҵ��ID';
comment on column ACC.T_REFUSE_RESION.BUSI_TABLE_ID
  is '����ID';
comment on column ACC.T_REFUSE_RESION.REASION
  is '��������';
comment on column ACC.T_REFUSE_RESION.BUSI_TYPE
  is 'ҵ�����ͣ�1-���/2-��أ�';
comment on column ACC.T_REFUSE_RESION.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_REFUSE_RESION.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_REFUSE_RESION.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_REFUSE_RESION.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_REFUSE_RESION.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '�û���ɫ���Ķ�Ӧ��';
comment on column ACC.T_RELA_TABLES.OBJID
  is '����ID';
comment on column ACC.T_RELA_TABLES.TABLEID
  is '��������ID';
comment on column ACC.T_RELA_TABLES.OBJTYPE
  is '�������� R��ɫ U�û�';
comment on column ACC.T_RELA_TABLES.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_RELA_TABLES.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_RELA_TABLES.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_RELA_TABLES.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_RELA_TABLES.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '��������Ϣ��';
comment on column ACC.T_RPT_COLUMN_INFO.COLUMN_ID
  is '����ID';
comment on column ACC.T_RPT_COLUMN_INFO.TABLE_ID
  is '����ID';
comment on column ACC.T_RPT_COLUMN_INFO.COLUMN_NAME
  is '������';
comment on column ACC.T_RPT_COLUMN_INFO.order
  is '����';
comment on column ACC.T_RPT_COLUMN_INFO.POSITION
  is 'λ��';
comment on column ACC.T_RPT_COLUMN_INFO.DATA_TYPE
  is '��������';
comment on column ACC.T_RPT_COLUMN_INFO.DATA_TYPE_DESC
  is '������������';
comment on column ACC.T_RPT_COLUMN_INFO.DICTIONARY_TYPE_ID
  is '��Ӧ�ֵ���ID';
comment on column ACC.T_RPT_COLUMN_INFO.CONS_RULE
  is '�ύ����';
comment on column ACC.T_RPT_COLUMN_INFO.CONS_DESC
  is '�ύ��������';
comment on column ACC.T_RPT_COLUMN_INFO.IS_SHOW
  is '�Ƿ�չʾ';
comment on column ACC.T_RPT_COLUMN_INFO.TAG_TYPE
  is '�ؼ�����';
comment on column ACC.T_RPT_COLUMN_INFO.CAN_MODIFY
  is '�Ƿ��ά��';
comment on column ACC.T_RPT_COLUMN_INFO.HAS_INNER_TABLE
  is '�Ƿ��ӱ�';
comment on column ACC.T_RPT_COLUMN_INFO.LOG_COLUMN_ID
  is '��Ӧ�޸ļ�¼���ֶ�ID';
comment on column ACC.T_RPT_COLUMN_INFO.IS_ENABLED
  is '�Ƿ񼤻1-�Ѽ��0-δ����';
comment on column ACC.T_RPT_COLUMN_INFO.CAN_INPUT
  is '�Ƿ��¼��';
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
  is '�����޸ļ�¼';
comment on column ACC.T_RPT_LOG_INFO.LOGTYPE
  is '��������(insert/update/delete)';
comment on column ACC.T_RPT_LOG_INFO.TABLEID
  is '��������';
comment on column ACC.T_RPT_LOG_INFO.USERID
  is '�û�ID';
comment on column ACC.T_RPT_LOG_INFO.UPDATETIME
  is '�޸�ʱ��';
comment on column ACC.T_RPT_LOG_INFO.BUSINESSID
  is '����ҵ��ID';
comment on column ACC.T_RPT_LOG_INFO.SUBID
  is '�ӱ�ҵ��ID';
comment on column ACC.T_RPT_LOG_INFO.DATASTATUS
  is '����״̬';
comment on column ACC.T_RPT_LOG_INFO.DATASTATUSCV
  is '��ֵ����״̬';

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
  is '�����ļ����ռ�¼';
comment on column ACC.T_RPT_RECIEVE.PACKNAME
  is '���ܰ���';
comment on column ACC.T_RPT_RECIEVE.FILENAME
  is '�����ļ���';
comment on column ACC.T_RPT_RECIEVE.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_RPT_RECIEVE.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_RPT_RECIEVE.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_RPT_RECIEVE.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_RPT_RECIEVE.SPARE5
  is 'Ԥ���ֶ�5';
comment on column ACC.T_RPT_RECIEVE.PACKTYPE
  is '�����ļ�������REC/ERR/HIS';

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
  is '���ķ��ͼ�¼';
comment on column ACC.T_RPT_SEND_COMMIT.TABLEID
  is '���ı���';
comment on column ACC.T_RPT_SEND_COMMIT.BUSINESSID
  is 'ҵ��ID';
comment on column ACC.T_RPT_SEND_COMMIT.PACKNAME
  is '���Ͱ���';
comment on column ACC.T_RPT_SEND_COMMIT.FILENAME
  is '�����ļ���';
comment on column ACC.T_RPT_SEND_COMMIT.IS_RECEIVE
  is '�Ƿ��յ�����';
comment on column ACC.T_RPT_SEND_COMMIT.IS_SENDMTS
  is '�Ƿ���MTSĿ¼';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE1
  is 'Ԥ���ֶ�1';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE2
  is 'Ԥ���ֶ�2';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE3
  is 'Ԥ���ֶ�3';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE4
  is 'Ԥ���ֶ�4';
comment on column ACC.T_RPT_SEND_COMMIT.SPARE5
  is 'Ԥ���ֶ�5';
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
  is '�����Ϣ��';
comment on column ACC.T_TASK_LOCK_INFO.RPTTITLE
  is '�������к�';
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
  is '��ǰ��Ч�˻���Ϣ��';
comment on column ACC.T_VALID_ACCOUNT.ACCOUNT
  is '�˺�';
comment on column ACC.T_VALID_ACCOUNT.CURRENCE_CODE
  is '����';
comment on column ACC.T_VALID_ACCOUNT.INSTCODE
  is '��������';

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
  is '����ϵͳ��ͬ���ͱ��';
comment on column ACC.U_BASE_FORM_NO.FORM_TYPE
  is '���ֵ
	���ֵ����й���';
comment on column ACC.U_BASE_FORM_NO.CURRENT_ID
  is '��ǰ���';
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
  is 'ϵͳ��־��';
comment on column ACC.U_BASE_SYS_LOG.LOG_ID
  is '��־���';
comment on column ACC.U_BASE_SYS_LOG.USER_ID
  is '�û����';
comment on column ACC.U_BASE_SYS_LOG.USER_ENAME
  is '�û���¼��';
comment on column ACC.U_BASE_SYS_LOG.USER_CNAME
  is '�û�����';
comment on column ACC.U_BASE_SYS_LOG.INST_ID
  is '�������';
comment on column ACC.U_BASE_SYS_LOG.INST_CNAME
  is '��������';
comment on column ACC.U_BASE_SYS_LOG.MENU_ID
  is '��Ŀ���';
comment on column ACC.U_BASE_SYS_LOG.MENU_NAME
  is '��Ŀ����';
comment on column ACC.U_BASE_SYS_LOG.IP
  is '�û�IP';
comment on column ACC.U_BASE_SYS_LOG.BROWSE
  is '�û������';
comment on column ACC.U_BASE_SYS_LOG.LOG_TYPE
  is '��־����
00001--�û���¼��־';
comment on column ACC.U_BASE_SYS_LOG.EXEC_TIME
  is 'ִ��ʱ��';
comment on column ACC.U_BASE_SYS_LOG.DESCRIPTION
  is '����';
comment on column ACC.U_BASE_SYS_LOG.STATUS
  is '״̬';
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
