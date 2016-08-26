------------------------------------------------
-- Export file for user CFA                   --
-- Created by 43631009 on 2016/8/18, 14:58:52 --
------------------------------------------------

spool cfa_user_project.log

prompt
prompt Creating table C_DOFOEXLO_20141023
prompt ==================================
prompt
create table CFA.C_DOFOEXLO_20141023
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table D_LOUNEXGU_20141023
prompt ==================================
prompt
create table CFA.D_LOUNEXGU_20141023
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
  BUSINESSID      VARCHAR2(50) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(60),
  IS_HANDIWORK    CHAR(1)
)
tablespace CFA
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
prompt Creating table MAIL_SYS_CONFIG
prompt ==============================
prompt
create table CFA.MAIL_SYS_CONFIG
(
  MSC_KEY   VARCHAR2(100) not null,
  MSC_NAME  VARCHAR2(100) not null,
  MSC_VALUE VARCHAR2(4000),
  MSC_DESCR VARCHAR2(1000)
)
tablespace CFA
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
prompt Creating table MAIL_SYS_LOG
prompt ===========================
prompt
create table CFA.MAIL_SYS_LOG
(
  MSL_SEND_RESULT     VARCHAR2(1),
  MSL_SEND_ERROR      VARCHAR2(4000),
  MSL_RECEIVER        VARCHAR2(4000),
  MSL_RECEIVER_NAME   VARCHAR2(4000),
  MSL_RECEIVER_ADDR   VARCHAR2(4000),
  MSL_SEND_START_TIME VARCHAR2(20),
  MSL_SEND_END_TIME   VARCHAR2(20)
)
tablespace CFA
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

prompt
prompt Creating table MAIL_SYS_LOG_CZF0712
prompt ===================================
prompt
create table CFA.MAIL_SYS_LOG_CZF0712
(
  MSL_SEND_RESULT     VARCHAR2(1),
  MSL_SEND_ERROR      VARCHAR2(4000),
  MSL_RECEIVER        VARCHAR2(200),
  MSL_RECEIVER_NAME   VARCHAR2(200),
  MSL_RECEIVER_ADDR   VARCHAR2(100),
  MSL_SEND_START_TIME VARCHAR2(20),
  MSL_SEND_END_TIME   VARCHAR2(20)
)
tablespace CFA
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
prompt Creating table PUB_HOME_CELL
prompt ============================
prompt
create table CFA.PUB_HOME_CELL
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
  );
comment on column CFA.PUB_HOME_CELL.CELL_TYPE
  is '��Ӧ�ֵ������';
comment on column CFA.PUB_HOME_CELL.CELL_TITLE
  is '����';
comment on column CFA.PUB_HOME_CELL.CELL_TARGET
  is 'target';
comment on column CFA.PUB_HOME_CELL.CELL_URL
  is 'url';
comment on column CFA.PUB_HOME_CELL.CELL_KEYID
  is '����';
comment on column CFA.PUB_HOME_CELL.CELL_DATE
  is '��������';
comment on column CFA.PUB_HOME_CELL.CELL_DESC
  is '����';
comment on column CFA.PUB_HOME_CELL.CELL_USERID
  is '�û�id';
comment on column CFA.PUB_HOME_CELL.DATA_TIME
  is '���ݲ�������';

prompt
prompt Creating table PUB_HOME_DIC
prompt ===========================
prompt
create table CFA.PUB_HOME_DIC
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
tablespace CFA
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
comment on column CFA.PUB_HOME_DIC.DIC_ID
  is '�ֵ�id';
comment on column CFA.PUB_HOME_DIC.DIC_TYPE
  is '�ֵ�����';
comment on column CFA.PUB_HOME_DIC.DIC_TYPENAME
  is '������';
comment on column CFA.PUB_HOME_DIC.DIC_NAME
  is 'ֵ��';
comment on column CFA.PUB_HOME_DIC.DIC_VALUE
  is 'ֵ';
comment on column CFA.PUB_HOME_DIC.DIC_LIST_TARGET
  is '��Ӧ���б�����';
comment on column CFA.PUB_HOME_DIC.DIC_EDIT_TARGET
  is '��Ӧ�ı༭����';
alter table CFA.PUB_HOME_DIC
  add constraint PK_PUB_HOME_DIC primary key (DIC_ID)
  using index 
  tablespace CFA
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
create table CFA.PUB_HOME_NOTE
(
  NOTE_TYPE   VARCHAR2(20),
  NOTE_NAME   VARCHAR2(100),
  NOTE_NUM    NUMBER,
  NOTE_URL    VARCHAR2(200),
  NOTE_USERID VARCHAR2(20),
  NOTE_TIME   DATE,
  NOTE_MENUID VARCHAR2(200)
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.PUB_HOME_NOTE
  is '��ҳ��ʾ��Ϣ';
comment on column CFA.PUB_HOME_NOTE.NOTE_TYPE
  is '��ʾ��Ϣ���';
comment on column CFA.PUB_HOME_NOTE.NOTE_NAME
  is '��ʾ��Ϣ����';
comment on column CFA.PUB_HOME_NOTE.NOTE_NUM
  is '��ʾ��Ϣ����';
comment on column CFA.PUB_HOME_NOTE.NOTE_URL
  is 'url';
comment on column CFA.PUB_HOME_NOTE.NOTE_USERID
  is '�û�id';
comment on column CFA.PUB_HOME_NOTE.NOTE_TIME
  is '����ʱ��';
comment on column CFA.PUB_HOME_NOTE.NOTE_MENUID
  is 'menuid';

prompt
prompt Creating table SQL_HISTORY
prompt ==========================
prompt
create table CFA.SQL_HISTORY
(
  SQL_MARK     VARCHAR2(100) not null,
  SYSTEM_ID    VARCHAR2(10) not null,
  SYSTEM_NAME  VARCHAR2(10),
  EXECUTE_TIME VARCHAR2(10),
  DESCR        VARCHAR2(100),
  P_VERSION    VARCHAR2(10)
)
tablespace CFA
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
comment on table CFA.SQL_HISTORY
  is '�ű�ִ�м�¼';
comment on column CFA.SQL_HISTORY.SQL_MARK
  is '�ű�����';
comment on column CFA.SQL_HISTORY.SYSTEM_ID
  is '��ϵͳid';
comment on column CFA.SQL_HISTORY.SYSTEM_NAME
  is '��ģ������';
comment on column CFA.SQL_HISTORY.EXECUTE_TIME
  is 'ִ������';
comment on column CFA.SQL_HISTORY.DESCR
  is '����';
comment on column CFA.SQL_HISTORY.P_VERSION
  is '����汾��';
alter table CFA.SQL_HISTORY
  add constraint PK_SQL_HISTORY primary key (SQL_MARK, SYSTEM_ID)
  using index 
  tablespace CFA
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
prompt Creating table T_BASE_ACCOUNT_1008
prompt ==================================
prompt
create table CFA.T_BASE_ACCOUNT_1008
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_BASE_DOM_PAY
prompt =============================
prompt
create table CFA.T_BASE_DOM_PAY
(
  ACTIONTYPE   CHAR(1),
  ACTIONDESC   VARCHAR2(128),
  RPTNO        VARCHAR2(22),
  CUSTYPE      CHAR(1),
  IDCODE       VARCHAR2(32),
  CUSTCOD      VARCHAR2(18),
  CUSTNM       VARCHAR2(128),
  OPPUSER      VARCHAR2(128),
  TXCCY        VARCHAR2(3),
  TXAMT        NUMBER(22),
  EXRATE       NUMBER(22,8),
  LCYAMT       NUMBER(22),
  LCYACC       VARCHAR2(32),
  FCYAMT       NUMBER(22),
  FCYACC       VARCHAR2(32),
  OTHAMT       NUMBER(22),
  OTHACC       VARCHAR2(32),
  METHOD       CHAR(1),
  BUSCODE      VARCHAR2(22),
  ACTUCCY      VARCHAR2(3),
  ACTUAMT      NUMBER(22),
  OUTCHARGECCY VARCHAR2(3),
  OUTCHARGEAMT NUMBER(22),
  LCBGNO       VARCHAR2(20),
  ISSDATE      CHAR(8),
  TENOR        NUMBER(10),
  INSTCODE     VARCHAR2(50),
  AUDITNAME    VARCHAR2(50),
  DATASTATUS   NUMBER(10),
  AUDITDATE    DATE,
  IMPORTDATE   DATE,
  BUSINESSID   VARCHAR2(50) not null,
  TRADEDATE    VARCHAR2(8),
  BATCHNO      VARCHAR2(50),
  MODIFYUSER   VARCHAR2(30),
  ISCOMMIT     NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_BASE_DOM_PAY
  is '������Ϣ�����ڸ���/�ж�֪ͨ��';
comment on column CFA.T_BASE_DOM_PAY.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_DOM_PAY.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_DOM_PAY.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_DOM_PAY.CUSTYPE
  is '����������';
comment on column CFA.T_BASE_DOM_PAY.IDCODE
  is '�������֤������';
comment on column CFA.T_BASE_DOM_PAY.CUSTCOD
  is '��֯��������';
comment on column CFA.T_BASE_DOM_PAY.CUSTNM
  is '����������';
comment on column CFA.T_BASE_DOM_PAY.OPPUSER
  is '�տ�������';
comment on column CFA.T_BASE_DOM_PAY.TXCCY
  is '�������';
comment on column CFA.T_BASE_DOM_PAY.TXAMT
  is '������';
comment on column CFA.T_BASE_DOM_PAY.EXRATE
  is '�������';
comment on column CFA.T_BASE_DOM_PAY.LCYAMT
  is '������';
comment on column CFA.T_BASE_DOM_PAY.LCYACC
  is '������ʺ�/���п���';
comment on column CFA.T_BASE_DOM_PAY.FCYAMT
  is '�ֻ���';
comment on column CFA.T_BASE_DOM_PAY.FCYACC
  is '����ʺ�/���п���';
comment on column CFA.T_BASE_DOM_PAY.OTHAMT
  is '�������';
comment on column CFA.T_BASE_DOM_PAY.OTHACC
  is '�����ʺ�/���п���';
comment on column CFA.T_BASE_DOM_PAY.METHOD
  is '���㷽ʽ';
comment on column CFA.T_BASE_DOM_PAY.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_DOM_PAY.ACTUCCY
  is 'ʵ�ʸ������';
comment on column CFA.T_BASE_DOM_PAY.ACTUAMT
  is 'ʵ�ʸ�����';
comment on column CFA.T_BASE_DOM_PAY.OUTCHARGECCY
  is '�۷ѱ���';
comment on column CFA.T_BASE_DOM_PAY.OUTCHARGEAMT
  is '�۷ѽ��';
comment on column CFA.T_BASE_DOM_PAY.LCBGNO
  is '����֤���';
comment on column CFA.T_BASE_DOM_PAY.ISSDATE
  is '��֤����';
comment on column CFA.T_BASE_DOM_PAY.TENOR
  is '����';
comment on column CFA.T_BASE_DOM_PAY.INSTCODE
  is '�������';
comment on column CFA.T_BASE_DOM_PAY.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_DOM_PAY.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_DOM_PAY.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_DOM_PAY.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_DOM_PAY.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_DOM_PAY.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_DOM_PAY.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_DOM_PAY.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_DOM_PAY.ISCOMMIT
  is '�Ƿ��ύ';
create unique index CFA.UNIQUE_T_BASE_DOM_PAY on CFA.T_BASE_DOM_PAY (BUSINESSID)
  tablespace CFA
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
prompt Creating table T_BASE_DOM_REMIT
prompt ===============================
prompt
create table CFA.T_BASE_DOM_REMIT
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  CUSTYPE    CHAR(1),
  IDCODE     VARCHAR2(32),
  CUSTCOD    VARCHAR2(18),
  CUSTNM     VARCHAR2(128),
  OPPUSER    VARCHAR2(128),
  TXCCY      VARCHAR2(3),
  TXAMT      NUMBER(22),
  EXRATE     NUMBER(22,8),
  LCYAMT     NUMBER(22),
  LCYACC     VARCHAR2(32),
  FCYAMT     NUMBER(22),
  FCYACC     VARCHAR2(32),
  OTHAMT     NUMBER(22),
  OTHACC     VARCHAR2(32),
  METHOD     CHAR(1),
  BUSCODE    VARCHAR2(22),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  DATASTATUS NUMBER(10),
  AUDITDATE  DATE,
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  TRADEDATE  VARCHAR2(8),
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0,
  OPPACC     VARCHAR2(32)
)
tablespace CFA
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
comment on table CFA.T_BASE_DOM_REMIT
  is '������Ϣ�����ڻ��������';
comment on column CFA.T_BASE_DOM_REMIT.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_DOM_REMIT.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_DOM_REMIT.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_DOM_REMIT.CUSTYPE
  is '���������';
comment on column CFA.T_BASE_DOM_REMIT.IDCODE
  is '�������֤������';
comment on column CFA.T_BASE_DOM_REMIT.CUSTCOD
  is '��֯��������';
comment on column CFA.T_BASE_DOM_REMIT.CUSTNM
  is '���������';
comment on column CFA.T_BASE_DOM_REMIT.OPPUSER
  is '�տ�������';
comment on column CFA.T_BASE_DOM_REMIT.TXCCY
  is '������';
comment on column CFA.T_BASE_DOM_REMIT.TXAMT
  is '�����';
comment on column CFA.T_BASE_DOM_REMIT.EXRATE
  is '�������';
comment on column CFA.T_BASE_DOM_REMIT.LCYAMT
  is '������';
comment on column CFA.T_BASE_DOM_REMIT.LCYACC
  is '������ʺ�/���п���';
comment on column CFA.T_BASE_DOM_REMIT.FCYAMT
  is '�ֻ���';
comment on column CFA.T_BASE_DOM_REMIT.FCYACC
  is '����ʺ�/���п���';
comment on column CFA.T_BASE_DOM_REMIT.OTHAMT
  is '�������';
comment on column CFA.T_BASE_DOM_REMIT.OTHACC
  is '�����ʺ�/���п���';
comment on column CFA.T_BASE_DOM_REMIT.METHOD
  is '���㷽ʽ';
comment on column CFA.T_BASE_DOM_REMIT.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_DOM_REMIT.INSTCODE
  is '�������';
comment on column CFA.T_BASE_DOM_REMIT.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_DOM_REMIT.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_DOM_REMIT.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_DOM_REMIT.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_DOM_REMIT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_DOM_REMIT.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_DOM_REMIT.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_DOM_REMIT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_DOM_REMIT.ISCOMMIT
  is '�Ƿ��ύ';
comment on column CFA.T_BASE_DOM_REMIT.OPPACC
  is '�տ����ʺ�';
create unique index CFA.UNIQUE_T_BASE_DOM_REMIT on CFA.T_BASE_DOM_REMIT (BUSINESSID)
  tablespace CFA
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
prompt Creating table T_BASE_EXPORT
prompt ============================
prompt
create table CFA.T_BASE_EXPORT
(
  ACTIONTYPE  CHAR(1),
  ACTIONDESC  VARCHAR2(128),
  RPTNO       VARCHAR2(22),
  CUSTYPE     CHAR(1),
  IDCODE      VARCHAR2(32),
  CUSTCOD     VARCHAR2(18),
  CUSTNM      VARCHAR2(128),
  OPPUSER     VARCHAR2(128),
  TXCCY       VARCHAR2(3),
  TXAMT       NUMBER(22),
  EXRATE      NUMBER(22,8),
  LCYAMT      NUMBER(22),
  LCYACC      VARCHAR2(32),
  FCYAMT      NUMBER(22),
  FCYACC      VARCHAR2(32),
  OTHAMT      NUMBER(22),
  OTHACC      VARCHAR2(32),
  METHOD      CHAR(1),
  BUSCODE     VARCHAR2(22),
  INCHARGECCY VARCHAR2(3),
  INCHARGEAMT NUMBER(22),
  INSTCODE    VARCHAR2(50),
  AUDITNAME   VARCHAR2(50),
  DATASTATUS  NUMBER(10),
  AUDITDATE   DATE,
  IMPORTDATE  DATE,
  BUSINESSID  VARCHAR2(50) not null,
  TRADEDATE   VARCHAR2(8),
  BATCHNO     VARCHAR2(50),
  MODIFYUSER  VARCHAR2(30),
  ISCOMMIT    NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_BASE_EXPORT
  is '������Ϣ�����������걨��';
comment on column CFA.T_BASE_EXPORT.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_EXPORT.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_EXPORT.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_EXPORT.CUSTYPE
  is '�տ�������';
comment on column CFA.T_BASE_EXPORT.IDCODE
  is '�������֤������';
comment on column CFA.T_BASE_EXPORT.CUSTCOD
  is '��֯��������';
comment on column CFA.T_BASE_EXPORT.CUSTNM
  is '�տ�������';
comment on column CFA.T_BASE_EXPORT.OPPUSER
  is '����������';
comment on column CFA.T_BASE_EXPORT.TXCCY
  is '��������';
comment on column CFA.T_BASE_EXPORT.TXAMT
  is '�������';
comment on column CFA.T_BASE_EXPORT.EXRATE
  is '������';
comment on column CFA.T_BASE_EXPORT.LCYAMT
  is '�����';
comment on column CFA.T_BASE_EXPORT.LCYACC
  is '������ʺ�/���п���';
comment on column CFA.T_BASE_EXPORT.FCYAMT
  is '�ֻ���';
comment on column CFA.T_BASE_EXPORT.FCYACC
  is '����ʺ�/���п���';
comment on column CFA.T_BASE_EXPORT.OTHAMT
  is '�������';
comment on column CFA.T_BASE_EXPORT.OTHACC
  is '�����ʺ�/���п���';
comment on column CFA.T_BASE_EXPORT.METHOD
  is '���㷽ʽ';
comment on column CFA.T_BASE_EXPORT.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_EXPORT.INCHARGECCY
  is '�������п۷ѱ���';
comment on column CFA.T_BASE_EXPORT.INCHARGEAMT
  is '�������п۷ѽ��';
comment on column CFA.T_BASE_EXPORT.INSTCODE
  is '�������';
comment on column CFA.T_BASE_EXPORT.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_EXPORT.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_EXPORT.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_EXPORT.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_EXPORT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_EXPORT.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_EXPORT.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_EXPORT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_EXPORT.ISCOMMIT
  is '�Ƿ��ύ';
create unique index CFA.UNIQUE_T_BASE_EXPORT on CFA.T_BASE_EXPORT (BUSINESSID)
  tablespace CFA
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
create table CFA.T_BASE_INCOME
(
  ACTIONTYPE   CHAR(1),
  ACTIONDESC   VARCHAR2(128),
  RPTNO        VARCHAR2(22),
  CUSTYPE      CHAR(1),
  IDCODE       VARCHAR2(32),
  CUSTCOD      VARCHAR2(18),
  CUSTNM       VARCHAR2(128),
  OPPUSER      VARCHAR2(128),
  TXCCY        VARCHAR2(3),
  TXAMT        NUMBER(22),
  EXRATE       NUMBER(22,8),
  LCYAMT       NUMBER(22),
  LCYACC       VARCHAR2(32),
  FCYAMT       NUMBER(22),
  FCYACC       VARCHAR2(32),
  OTHAMT       NUMBER(22),
  OTHACC       VARCHAR2(32),
  METHOD       CHAR(1),
  BUSCODE      VARCHAR2(22),
  INCHARGECCY  CHAR(3),
  INCHARGEAMT  NUMBER(22),
  OUTCHARGECCY CHAR(3),
  OUTCHARGEAMT NUMBER(22),
  INSTCODE     VARCHAR2(50),
  AUDITNAME    VARCHAR2(50),
  DATASTATUS   NUMBER(10),
  AUDITDATE    DATE,
  IMPORTDATE   DATE,
  BUSINESSID   VARCHAR2(50) not null,
  TRADEDATE    VARCHAR2(8),
  BATCHNO      VARCHAR2(50),
  MODIFYUSER   VARCHAR2(30),
  ISCOMMIT     NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_BASE_INCOME
  is '������Ϣ�����������걨��';
comment on column CFA.T_BASE_INCOME.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_INCOME.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_INCOME.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_INCOME.CUSTYPE
  is '�տ�������';
comment on column CFA.T_BASE_INCOME.IDCODE
  is '�������֤������';
comment on column CFA.T_BASE_INCOME.CUSTCOD
  is '��֯��������';
comment on column CFA.T_BASE_INCOME.CUSTNM
  is '�տ�������';
comment on column CFA.T_BASE_INCOME.OPPUSER
  is '����������';
comment on column CFA.T_BASE_INCOME.TXCCY
  is '��������';
comment on column CFA.T_BASE_INCOME.TXAMT
  is '�������';
comment on column CFA.T_BASE_INCOME.EXRATE
  is '������';
comment on column CFA.T_BASE_INCOME.LCYAMT
  is '�����';
comment on column CFA.T_BASE_INCOME.LCYACC
  is '������ʺ�/���п���';
comment on column CFA.T_BASE_INCOME.FCYAMT
  is '�ֻ���';
comment on column CFA.T_BASE_INCOME.FCYACC
  is '����ʺ�/���п���';
comment on column CFA.T_BASE_INCOME.OTHAMT
  is '�������';
comment on column CFA.T_BASE_INCOME.OTHACC
  is '�����ʺ�/���п���';
comment on column CFA.T_BASE_INCOME.METHOD
  is '���㷽ʽ';
comment on column CFA.T_BASE_INCOME.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_INCOME.INCHARGECCY
  is '�������п۷ѱ���';
comment on column CFA.T_BASE_INCOME.INCHARGEAMT
  is '�������п۷ѽ��';
comment on column CFA.T_BASE_INCOME.OUTCHARGECCY
  is '�������п۷ѱ���';
comment on column CFA.T_BASE_INCOME.OUTCHARGEAMT
  is '�������п۷ѽ��';
comment on column CFA.T_BASE_INCOME.INSTCODE
  is '�������';
comment on column CFA.T_BASE_INCOME.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_INCOME.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_INCOME.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_INCOME.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_INCOME.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_INCOME.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_INCOME.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_INCOME.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_INCOME.ISCOMMIT
  is '�Ƿ��ύ';
create unique index CFA.UNIQUE_T_BASE_INCOME on CFA.T_BASE_INCOME (BUSINESSID)
  tablespace CFA
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
prompt Creating table T_BASE_PAYMENT
prompt =============================
prompt
create table CFA.T_BASE_PAYMENT
(
  ACTIONTYPE   CHAR(1),
  ACTIONDESC   VARCHAR2(128),
  RPTNO        VARCHAR2(22),
  CUSTYPE      CHAR(1),
  IDCODE       VARCHAR2(32),
  CUSTCOD      VARCHAR2(18),
  CUSTNM       VARCHAR2(128),
  OPPUSER      VARCHAR2(128),
  TXCCY        VARCHAR2(3),
  TXAMT        NUMBER(22),
  EXRATE       NUMBER(22,8),
  LCYAMT       NUMBER(22),
  LCYACC       VARCHAR2(32),
  FCYAMT       NUMBER(22),
  FCYACC       VARCHAR2(32),
  OTHAMT       NUMBER(22),
  OTHACC       VARCHAR2(32),
  METHOD       CHAR(1),
  BUSCODE      VARCHAR2(22),
  ACTUCCY      VARCHAR2(3),
  ACTUAMT      NUMBER(22),
  OUTCHARGECCY VARCHAR2(3),
  OUTCHARGEAMT NUMBER(22),
  LCBGNO       VARCHAR2(20),
  ISSDATE      CHAR(10),
  TENOR        NUMBER(10),
  INSTCODE     VARCHAR2(50),
  AUDITNAME    VARCHAR2(50),
  DATASTATUS   NUMBER(10),
  AUDITDATE    DATE,
  IMPORTDATE   DATE,
  BUSINESSID   VARCHAR2(50) not null,
  TRADEDATE    VARCHAR2(8),
  BATCHNO      VARCHAR2(50),
  MODIFYUSER   VARCHAR2(30),
  ISCOMMIT     NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_BASE_PAYMENT
  is '������Ϣ�����⸶��/�ж�֪ͨ��';
comment on column CFA.T_BASE_PAYMENT.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_PAYMENT.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_PAYMENT.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_PAYMENT.CUSTYPE
  is '����������';
comment on column CFA.T_BASE_PAYMENT.IDCODE
  is '�������֤������';
comment on column CFA.T_BASE_PAYMENT.CUSTCOD
  is '��֯��������';
comment on column CFA.T_BASE_PAYMENT.CUSTNM
  is '����������';
comment on column CFA.T_BASE_PAYMENT.OPPUSER
  is '�տ�������';
comment on column CFA.T_BASE_PAYMENT.TXCCY
  is '�������';
comment on column CFA.T_BASE_PAYMENT.TXAMT
  is '������';
comment on column CFA.T_BASE_PAYMENT.EXRATE
  is '�������';
comment on column CFA.T_BASE_PAYMENT.LCYAMT
  is '������';
comment on column CFA.T_BASE_PAYMENT.LCYACC
  is '������ʺ�/���п���';
comment on column CFA.T_BASE_PAYMENT.FCYAMT
  is '�ֻ���';
comment on column CFA.T_BASE_PAYMENT.FCYACC
  is '����ʺ�/���п���';
comment on column CFA.T_BASE_PAYMENT.OTHAMT
  is '�������';
comment on column CFA.T_BASE_PAYMENT.OTHACC
  is '�����ʺ�/���п���';
comment on column CFA.T_BASE_PAYMENT.METHOD
  is '���㷽ʽ';
comment on column CFA.T_BASE_PAYMENT.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_PAYMENT.ACTUCCY
  is 'ʵ�ʸ������';
comment on column CFA.T_BASE_PAYMENT.ACTUAMT
  is 'ʵ�ʸ�����';
comment on column CFA.T_BASE_PAYMENT.OUTCHARGECCY
  is '�۷ѱ���';
comment on column CFA.T_BASE_PAYMENT.OUTCHARGEAMT
  is '�۷ѽ��';
comment on column CFA.T_BASE_PAYMENT.LCBGNO
  is '����֤/�������';
comment on column CFA.T_BASE_PAYMENT.ISSDATE
  is '��֤����';
comment on column CFA.T_BASE_PAYMENT.TENOR
  is '����';
comment on column CFA.T_BASE_PAYMENT.INSTCODE
  is '�������';
comment on column CFA.T_BASE_PAYMENT.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_PAYMENT.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_PAYMENT.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_PAYMENT.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_PAYMENT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_PAYMENT.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_PAYMENT.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_PAYMENT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_PAYMENT.ISCOMMIT
  is '�Ƿ��ύ';
create unique index CFA.UNIQUE_T_BASE_PAYMENT on CFA.T_BASE_PAYMENT (BUSINESSID)
  tablespace CFA
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
prompt Creating table T_BASE_PURCHASE
prompt ==============================
prompt
create table CFA.T_BASE_PURCHASE
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  BUSCODE    VARCHAR2(22),
  CUSTYPE    CHAR(1),
  CUSTCOD    VARCHAR2(18),
  IDCODE     VARCHAR2(32),
  CUSTNM     VARCHAR2(128),
  LCYACC     VARCHAR2(32),
  FCYACC     VARCHAR2(32),
  OPPUSER    VARCHAR2(128),
  OPPBANK    VARCHAR2(256),
  LCYAMT     NUMBER(22),
  LCYCCY     VARCHAR2(3),
  EXRATE     NUMBER(22,8),
  TRADEDATE  VARCHAR2(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  AUDITDATE  DATE,
  DATASTATUS NUMBER(10),
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_BASE_PURCHASE
  is '������Ϣ������˻��ڹ���';
comment on column CFA.T_BASE_PURCHASE.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_PURCHASE.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_PURCHASE.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_PURCHASE.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_PURCHASE.CUSTYPE
  is '������������������';
comment on column CFA.T_BASE_PURCHASE.CUSTCOD
  is '������������֯��������';
comment on column CFA.T_BASE_PURCHASE.IDCODE
  is '���������˸������֤������';
comment on column CFA.T_BASE_PURCHASE.CUSTNM
  is '��������������';
comment on column CFA.T_BASE_PURCHASE.LCYACC
  is '������˻��˺�';
comment on column CFA.T_BASE_PURCHASE.FCYACC
  is '����˻��˺�';
comment on column CFA.T_BASE_PURCHASE.OPPUSER
  is '����տ�������';
comment on column CFA.T_BASE_PURCHASE.OPPBANK
  is '����˻�������';
comment on column CFA.T_BASE_PURCHASE.LCYAMT
  is '������';
comment on column CFA.T_BASE_PURCHASE.LCYCCY
  is '����ұ�';
comment on column CFA.T_BASE_PURCHASE.EXRATE
  is '����';
comment on column CFA.T_BASE_PURCHASE.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_PURCHASE.INSTCODE
  is '�������';
comment on column CFA.T_BASE_PURCHASE.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_PURCHASE.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_PURCHASE.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_PURCHASE.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_PURCHASE.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_PURCHASE.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_PURCHASE.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_PURCHASE.ISCOMMIT
  is '�Ƿ��ύ';
alter table CFA.T_BASE_PURCHASE
  add constraint PK_T_BASE_PURCHASE primary key (BUSINESSID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table T_BASE_REMIT
prompt ===========================
prompt
create table CFA.T_BASE_REMIT
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  CUSTYPE    CHAR(1),
  IDCODE     VARCHAR2(32),
  CUSTCOD    VARCHAR2(18),
  CUSTNM     VARCHAR2(128),
  OPPUSER    VARCHAR2(128),
  TXCCY      VARCHAR2(3),
  TXAMT      NUMBER(22),
  EXRATE     NUMBER(22,8),
  LCYAMT     NUMBER(22),
  LCYACC     VARCHAR2(32),
  FCYAMT     NUMBER(22),
  FCYACC     VARCHAR2(32),
  OTHAMT     NUMBER(22),
  OTHACC     VARCHAR2(32),
  METHOD     CHAR(1),
  BUSCODE    VARCHAR2(22),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  DATASTATUS NUMBER(10),
  AUDITDATE  DATE,
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  TRADEDATE  VARCHAR2(8),
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_BASE_REMIT
  is '������Ϣ��������������';
comment on column CFA.T_BASE_REMIT.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_REMIT.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_REMIT.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_REMIT.CUSTYPE
  is '���������';
comment on column CFA.T_BASE_REMIT.IDCODE
  is '�������֤������';
comment on column CFA.T_BASE_REMIT.CUSTCOD
  is '��֯��������';
comment on column CFA.T_BASE_REMIT.CUSTNM
  is '���������';
comment on column CFA.T_BASE_REMIT.OPPUSER
  is '�տ�������';
comment on column CFA.T_BASE_REMIT.TXCCY
  is '������';
comment on column CFA.T_BASE_REMIT.TXAMT
  is '�����';
comment on column CFA.T_BASE_REMIT.EXRATE
  is '�������';
comment on column CFA.T_BASE_REMIT.LCYAMT
  is '������';
comment on column CFA.T_BASE_REMIT.LCYACC
  is '������ʺ�/���п���';
comment on column CFA.T_BASE_REMIT.FCYAMT
  is '�ֻ���';
comment on column CFA.T_BASE_REMIT.FCYACC
  is '����ʺ�/���п���';
comment on column CFA.T_BASE_REMIT.OTHAMT
  is '�������';
comment on column CFA.T_BASE_REMIT.OTHACC
  is '�����ʺ�/���п���';
comment on column CFA.T_BASE_REMIT.METHOD
  is '���㷽ʽ';
comment on column CFA.T_BASE_REMIT.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_REMIT.INSTCODE
  is '�������';
comment on column CFA.T_BASE_REMIT.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_REMIT.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_REMIT.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_REMIT.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_REMIT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_REMIT.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_REMIT.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_REMIT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_REMIT.ISCOMMIT
  is '�Ƿ��ύ';
create unique index CFA.UNIQUE_T_BASE_REMIT on CFA.T_BASE_REMIT (BUSINESSID)
  tablespace CFA
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
prompt Creating table T_BASE_SETTLEMENT
prompt ================================
prompt
create table CFA.T_BASE_SETTLEMENT
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  BUSCODE    VARCHAR2(22),
  CUSTYPE    CHAR(1),
  CUSTCOD    VARCHAR2(18),
  IDCODE     VARCHAR2(32),
  CUSTNM     VARCHAR2(128),
  FCYACC     VARCHAR2(32),
  LCYACC     VARCHAR2(32),
  OPPUSER    VARCHAR2(128),
  OPPBANK    VARCHAR2(256),
  FCYAMT     NUMBER(22),
  FCYCCY     VARCHAR2(3),
  EXRATE     NUMBER(22,8),
  TRADEDATE  VARCHAR2(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  AUDITDATE  DATE,
  DATASTATUS NUMBER(10),
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_BASE_SETTLEMENT
  is '������Ϣ������˻��ڽ��';
comment on column CFA.T_BASE_SETTLEMENT.ACTIONTYPE
  is '��������';
comment on column CFA.T_BASE_SETTLEMENT.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_BASE_SETTLEMENT.RPTNO
  is '�걨����';
comment on column CFA.T_BASE_SETTLEMENT.BUSCODE
  is '����ҵ����';
comment on column CFA.T_BASE_SETTLEMENT.CUSTYPE
  is '�����������������';
comment on column CFA.T_BASE_SETTLEMENT.CUSTCOD
  is '�����������֯��������';
comment on column CFA.T_BASE_SETTLEMENT.IDCODE
  is '��������˸������֤������';
comment on column CFA.T_BASE_SETTLEMENT.CUSTNM
  is '�������������';
comment on column CFA.T_BASE_SETTLEMENT.FCYACC
  is '����˻��˺�';
comment on column CFA.T_BASE_SETTLEMENT.LCYACC
  is '������˻��˺�';
comment on column CFA.T_BASE_SETTLEMENT.OPPUSER
  is '������տ�������';
comment on column CFA.T_BASE_SETTLEMENT.OPPBANK
  is '������˻�������';
comment on column CFA.T_BASE_SETTLEMENT.FCYAMT
  is '�����';
comment on column CFA.T_BASE_SETTLEMENT.FCYCCY
  is '�ұ�';
comment on column CFA.T_BASE_SETTLEMENT.EXRATE
  is '����';
comment on column CFA.T_BASE_SETTLEMENT.TRADEDATE
  is '��������';
comment on column CFA.T_BASE_SETTLEMENT.INSTCODE
  is '�������';
comment on column CFA.T_BASE_SETTLEMENT.AUDITNAME
  is '�����';
comment on column CFA.T_BASE_SETTLEMENT.AUDITDATE
  is '�������';
comment on column CFA.T_BASE_SETTLEMENT.DATASTATUS
  is '����״̬';
comment on column CFA.T_BASE_SETTLEMENT.IMPORTDATE
  is '¼������';
comment on column CFA.T_BASE_SETTLEMENT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_BASE_SETTLEMENT.BATCHNO
  is '���κ�';
comment on column CFA.T_BASE_SETTLEMENT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_BASE_SETTLEMENT.ISCOMMIT
  is '�Ƿ��ύ';
alter table CFA.T_BASE_SETTLEMENT
  add constraint PK_T_BASE_SETTLEMENT primary key (BUSINESSID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table T_CFA_A_EXDEBT
prompt =============================
prompt
create table CFA.T_CFA_A_EXDEBT
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
  ANNINRATE      NUMBER(21,8) default 0,
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
  TEAMID         VARCHAR2(10)
)
tablespace CFA
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
comment on table CFA.T_CFA_A_EXDEBT
  is '�����ʱ���Ŀ����ծ��Ϣ';
comment on column CFA.T_CFA_A_EXDEBT.ACTIONTYPE
  is '��������';
comment on column CFA.T_CFA_A_EXDEBT.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column CFA.T_CFA_A_EXDEBT.EXDEBTCODE
  is '��ծ���';
comment on column CFA.T_CFA_A_EXDEBT.LIMITTYPE
  is '�˻�����';
comment on column CFA.T_CFA_A_EXDEBT.DEBTORCODE
  is 'ծ���˴���';
comment on column CFA.T_CFA_A_EXDEBT.DEBTYPE
  is 'ծ������';
comment on column CFA.T_CFA_A_EXDEBT.DEBTYPEREMA
  is 'ծ�����ͱ�ע';
comment on column CFA.T_CFA_A_EXDEBT.CONTRACTDATE
  is 'ǩԼ����';
comment on column CFA.T_CFA_A_EXDEBT.VALUEDATE
  is '��Ϣ��';
comment on column CFA.T_CFA_A_EXDEBT.CONTRACTCURR
  is 'ǩԼ����';
comment on column CFA.T_CFA_A_EXDEBT.CONTRACTAMOUNT
  is 'ǩԼ���';
comment on column CFA.T_CFA_A_EXDEBT.MATURITY
  is '������';
comment on column CFA.T_CFA_A_EXDEBT.FLOATRATE
  is '�Ƿ񸡶�����';
comment on column CFA.T_CFA_A_EXDEBT.ANNINRATE
  is '�껯����ֵ';
comment on column CFA.T_CFA_A_EXDEBT.INPRIAMOUNT
  is '��Ϣ���𻯽��';
comment on column CFA.T_CFA_A_EXDEBT.CREDITORCODE
  is 'ծȨ�˴���';
comment on column CFA.T_CFA_A_EXDEBT.CREDITORNAME
  is 'ծȨ����������';
comment on column CFA.T_CFA_A_EXDEBT.CREDITORNAMEN
  is 'ծȨ��Ӣ������';
comment on column CFA.T_CFA_A_EXDEBT.CREDITORTYPE
  is 'ծȨ�����ʹ���';
comment on column CFA.T_CFA_A_EXDEBT.CREHQCODE
  is 'ծȨ���ܲ����ڹ��ң�����������';
comment on column CFA.T_CFA_A_EXDEBT.OPERCODE
  is 'ծȨ�˾�Ӫ�����ڹ��ң�����������';
comment on column CFA.T_CFA_A_EXDEBT.INPRTERM
  is '�Ƿ�����Ϣ��������';
comment on column CFA.T_CFA_A_EXDEBT.SPAPFEBOINDEX
  is '�Ƿ�������������ռ��ָ��';
comment on column CFA.T_CFA_A_EXDEBT.APPCODE
  is '�����˴���';
comment on column CFA.T_CFA_A_EXDEBT.APPNAME
  is '����������';
comment on column CFA.T_CFA_A_EXDEBT.INLTCABUSCODE
  is '�м̵�Զ������֤�ж�����ҵ��κ�';
comment on column CFA.T_CFA_A_EXDEBT.ISINCODE
  is '����֤ȯʶ�����';
comment on column CFA.T_CFA_A_EXDEBT.PROJECTNAME
  is '��Ŀ����';
comment on column CFA.T_CFA_A_EXDEBT.REMARK
  is '��ע';
comment on column CFA.T_CFA_A_EXDEBT.BUSCODE
  is '����ҵ��κ�';
comment on column CFA.T_CFA_A_EXDEBT.CHANGENO
  is '�䶯���';
comment on column CFA.T_CFA_A_EXDEBT.CHANGTYPE
  is '�䶯����';
comment on column CFA.T_CFA_A_EXDEBT.CHDATE
  is '�䶯����';
comment on column CFA.T_CFA_A_EXDEBT.CHCURRENCY
  is '�䶯����';
comment on column CFA.T_CFA_A_EXDEBT.CHAMOUNT
  is '�䶯���';
comment on column CFA.T_CFA_A_EXDEBT.FAIRVALUE
  is '���ʼ�ֵ';
comment on column CFA.T_CFA_A_EXDEBT.ACCOAMOUNT
  is '��ծ���';
comment on column CFA.T_CFA_A_EXDEBT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_A_EXDEBT.INSTCODE
  is '�������';
comment on column CFA.T_CFA_A_EXDEBT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_A_EXDEBT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_A_EXDEBT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_A_EXDEBT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_A_EXDEBT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_A_EXDEBT.TRADEDATE
  is '��������';
comment on column CFA.T_CFA_A_EXDEBT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_A_EXDEBT.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_CFA_A_EXDEBT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column CFA.T_CFA_A_EXDEBT.TEAMID
  is '�Ŷ�ID(��¼T_RPT_BUSS_TYPE��ҵ�����ͱ��)';
alter table CFA.T_CFA_A_EXDEBT
  add constraint PK_T_CFA_A_EXDEBT primary key (BUSINESSID)
  using index 
  tablespace CFA
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
create index CFA.INDEX_BNO_T_CFA_A_EXDEBT on CFA.T_CFA_A_EXDEBT (BUSINESSNO)
  tablespace CFA
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
create index CFA.INDEX_CFA_D on CFA.T_CFA_A_EXDEBT (INSTCODE, DATASTATUS, FILETYPE)
  tablespace CFA
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
create index CFA.T_CFA_A_BUSINESSNO on CFA.T_CFA_A_EXDEBT (BUSINESSNO, FILETYPE, INSTCODE, DATASTATUS)
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_A_EXDEBT to CFA2;
grant select, insert, update, delete on CFA.T_CFA_A_EXDEBT to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_A_EXDEBT to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_A_EXDEBT to DATACOREOPR;

prompt
prompt Creating table T_CFA_A_EXDEBT_1008
prompt ==================================
prompt
create table CFA.T_CFA_A_EXDEBT_1008
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_A_EXDEBT_11082
prompt ===================================
prompt
create table CFA.T_CFA_A_EXDEBT_11082
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
create table CFA.T_CFA_A_EXDEBT_20141010
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
create table CFA.T_CFA_A_EXDEBT_20141011
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_A_EXDEBT_20141013
prompt ======================================
prompt
create table CFA.T_CFA_A_EXDEBT_20141013
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_A_EXDEBT_20151229_AP
prompt =========================================
prompt
create table CFA.T_CFA_A_EXDEBT_20151229_AP
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
  TEAMID         VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_A_EXDEBT_20160630
prompt ======================================
prompt
create table CFA.T_CFA_A_EXDEBT_20160630
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
  TEAMID         VARCHAR2(10)
)
tablespace CFA
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
create table CFA.T_CFA_BESTIR_ACCOUNT_CLOESD
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_BESTIR_ACCOUNT_CLOESD
  is ' ����ר������˻��ػ��ʽ�����Ϣ';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.OPEN_BANK_ID
  is '�������д���';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.OPEN_AGENCY_INST_ID
  is '�������ڴ����������';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.DEDICATED_ACCOUNT
  is '����ר������˻��˺�';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.CLOSE_DATA
  is '�ػ�����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.CLOSE_REASON
  is '�ػ�ԭ��';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.CLOSED_ASSETS_DEAL_TYPE
  is '�ػ����ʽ�������';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.SETTLEMENT_TO_ACCOUNT_BANK_ID
  is '�������������ʽ������˻������д���';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.SETTLEMENT_TO_ACCOUNT_NAME
  is '�������������ʽ������˻�����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.SETTLEMENT_TO_ACCOUNT
  is '�������������ʽ������˻��˺�';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.TO_ACCOUNT_BANK_ID
  is '������������˻������д���';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.TO_ACCOUNT_NAME
  is '������������˻�����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.TO_ACCOUNT
  is '������������˻��˺�';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.EXPEND_OVER_ACCOUNT_BANK_ID
  is '��������տ��˻������д���';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.EXPEND_OVER_ACCOUNT_NAME
  is '��������տ��˻�����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.EXPEND_OVER_ACCOUNT
  is '��������տ��˻��˺�';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.REMARK
  is '��ע';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.INSTCODE
  is '�������';
comment on column CFA.T_CFA_BESTIR_ACCOUNT_CLOESD.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_BESTIR_CHANGES
prompt ===================================
prompt
create table CFA.T_CFA_BESTIR_CHANGES
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_BESTIR_CHANGES
  is '����ר������˻���֧��Ϣ';
comment on column CFA.T_CFA_BESTIR_CHANGES.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_BESTIR_CHANGES.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_BESTIR_CHANGES.OPEN_BANK_ID
  is '�������д���';
comment on column CFA.T_CFA_BESTIR_CHANGES.OPEN_AGENCY_INST_ID
  is '�������ڴ����������';
comment on column CFA.T_CFA_BESTIR_CHANGES.OPEN_AGENCY_INST_NAME
  is '�������ڴ����������';
comment on column CFA.T_CFA_BESTIR_CHANGES.DEDICATED_ACCOUNT
  is '����ר������˻��˺�';
comment on column CFA.T_CFA_BESTIR_CHANGES.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_BESTIR_CHANGES.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_BESTIR_CHANGES.MONTH_BEGIN_BALANCE
  is '�³����';
comment on column CFA.T_CFA_BESTIR_CHANGES.INCOME_AMOUNT
  is '������';
comment on column CFA.T_CFA_BESTIR_CHANGES.BUY_INCOME_AMOUNT
  is '���������';
comment on column CFA.T_CFA_BESTIR_CHANGES.PERSON_SAVING_ACCOUNT_INCOME
  is '������㴢���˻�������';
comment on column CFA.T_CFA_BESTIR_CHANGES.OVER_INVEST_PROFIT_BACK
  is '����Ͷ�ʱ��������ؽ��';
comment on column CFA.T_CFA_BESTIR_CHANGES.EXPEND_AMOUNT
  is '������';
comment on column CFA.T_CFA_BESTIR_CHANGES.EXPEND_OVERSEAS_AMOUNT
  is '����������';
comment on column CFA.T_CFA_BESTIR_CHANGES.SETTLEMENT_AMOUNT
  is '�����';
comment on column CFA.T_CFA_BESTIR_CHANGES.TO_PERSON_ACCOUNT_AMOUNT
  is '���������㴢���˻����';
comment on column CFA.T_CFA_BESTIR_CHANGES.MONTH_END_BALANCE
  is '��ĩ�˻����';
comment on column CFA.T_CFA_BESTIR_CHANGES.OTHER_CLEAR_CHANGES_AMOUNT
  is '������֧����';
comment on column CFA.T_CFA_BESTIR_CHANGES.REMARK
  is '��ע';
comment on column CFA.T_CFA_BESTIR_CHANGES.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_BESTIR_CHANGES.INSTCODE
  is '�������';
comment on column CFA.T_CFA_BESTIR_CHANGES.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_BESTIR_CHANGES.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_BESTIR_CHANGES.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_BESTIR_CHANGES.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_BESTIR_CHANGES.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_BESTIR_CHANGES.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_BESTIR_CHANGES.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_B_EXGUARAN
prompt ===============================
prompt
create table CFA.T_CFA_B_EXGUARAN
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
tablespace CFA
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
comment on table CFA.T_CFA_B_EXGUARAN
  is '�����ʱ���Ŀ�����ⵣ����Ϣ';
comment on column CFA.T_CFA_B_EXGUARAN.ACTIONTYPE
  is '��������';
comment on column CFA.T_CFA_B_EXGUARAN.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column CFA.T_CFA_B_EXGUARAN.EXGUARANCODE
  is '���ⵣ�����';
comment on column CFA.T_CFA_B_EXGUARAN.GUARANTORCODE
  is '�����˴���';
comment on column CFA.T_CFA_B_EXGUARAN.CONTRACTDATE
  is 'ǩԼ����';
comment on column CFA.T_CFA_B_EXGUARAN.GUARANAMOUNT
  is '�������';
comment on column CFA.T_CFA_B_EXGUARAN.GUARANCURR
  is '��������';
comment on column CFA.T_CFA_B_EXGUARAN.MATURITY
  is '������';
comment on column CFA.T_CFA_B_EXGUARAN.GUARANTYPE
  is '��������';
comment on column CFA.T_CFA_B_EXGUARAN.MAINDEBTCURR
  is '��ծ�����';
comment on column CFA.T_CFA_B_EXGUARAN.MAINDEBTAMOUNT
  is '��ծ����';
comment on column CFA.T_CFA_B_EXGUARAN.BENEFICIARYS
  is '��������Ϣ';
comment on column CFA.T_CFA_B_EXGUARAN.GUARANTORES
  is '����������Ϣ';
comment on column CFA.T_CFA_B_EXGUARAN.GUAPPCODE
  is '���������˴���';
comment on column CFA.T_CFA_B_EXGUARAN.GUAPPNAME
  is '������������������';
comment on column CFA.T_CFA_B_EXGUARAN.GUAPPNAMEN
  is '����������Ӣ������';
comment on column CFA.T_CFA_B_EXGUARAN.APPDOCUNO
  is '��׼�ļ���';
comment on column CFA.T_CFA_B_EXGUARAN.REMARK
  is '��ע';
comment on column CFA.T_CFA_B_EXGUARAN.WABACHANDATE
  is '�����������䶯����';
comment on column CFA.T_CFA_B_EXGUARAN.BASERE
  is '�����������';
comment on column CFA.T_CFA_B_EXGUARAN.COMPLIANCENO
  is '��Լ���';
comment on column CFA.T_CFA_B_EXGUARAN.BUSCODE
  is '����ҵ��κ�';
comment on column CFA.T_CFA_B_EXGUARAN.BENCODE
  is '�����˴���';
comment on column CFA.T_CFA_B_EXGUARAN.BENAME
  is '��������������';
comment on column CFA.T_CFA_B_EXGUARAN.BENAMEN
  is '������Ӣ������';
comment on column CFA.T_CFA_B_EXGUARAN.GUPERDATE
  is '��Լ����';
comment on column CFA.T_CFA_B_EXGUARAN.GUPERCURR
  is '��Լ����';
comment on column CFA.T_CFA_B_EXGUARAN.GUPERAMOUNT
  is '��Լ���';
comment on column CFA.T_CFA_B_EXGUARAN.PGUPERAMOUNT
  is '������Լ���';
comment on column CFA.T_CFA_B_EXGUARAN.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_B_EXGUARAN.INSTCODE
  is '�������';
comment on column CFA.T_CFA_B_EXGUARAN.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_B_EXGUARAN.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_B_EXGUARAN.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_B_EXGUARAN.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_B_EXGUARAN.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_B_EXGUARAN.TRADEDATE
  is '��������';
comment on column CFA.T_CFA_B_EXGUARAN.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_B_EXGUARAN.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_CFA_B_EXGUARAN.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column CFA.T_CFA_B_EXGUARAN.TEAMID
  is '�Ŷ�ID(��¼T_RPT_BUSS_TYPE��ҵ�����ͱ��)';
alter table CFA.T_CFA_B_EXGUARAN
  add constraint PK_T_CFA_B_EXGUARAN primary key (BUSINESSID)
  using index 
  tablespace CFA
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
create index CFA.INDEX_BNO_T_CFA_B_EXGUARAN on CFA.T_CFA_B_EXGUARAN (BUSINESSNO)
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_B_EXGUARAN to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_B_EXGUARAN to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_B_EXGUARAN to DATACOREOPR;

prompt
prompt Creating table T_CFA_B_EXGUARAN_1008
prompt ====================================
prompt
create table CFA.T_CFA_B_EXGUARAN_1008
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_B_EXGUARAN_20160630
prompt ========================================
prompt
create table CFA.T_CFA_B_EXGUARAN_20160630
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
tablespace CFA
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
prompt Creating table T_CFA_C_DOFOEXLO
prompt ===============================
prompt
create table CFA.T_CFA_C_DOFOEXLO
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
tablespace CFA
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
comment on table CFA.T_CFA_C_DOFOEXLO
  is '�����ʱ���Ŀ���������������ծת�����Ϣ';
comment on column CFA.T_CFA_C_DOFOEXLO.ACTIONTYPE
  is '��������';
comment on column CFA.T_CFA_C_DOFOEXLO.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column CFA.T_CFA_C_DOFOEXLO.DOFOEXLOCODE
  is '������������';
comment on column CFA.T_CFA_C_DOFOEXLO.CREDITORCODE
  is 'ծȨ�˴���';
comment on column CFA.T_CFA_C_DOFOEXLO.DEBTORCODE
  is 'ծ���˴���';
comment on column CFA.T_CFA_C_DOFOEXLO.DEBTORNAME
  is 'ծ������������';
comment on column CFA.T_CFA_C_DOFOEXLO.DOFOEXLOTYPE
  is '��������������';
comment on column CFA.T_CFA_C_DOFOEXLO.LENPRONAME
  is 'ת����Ŀ����';
comment on column CFA.T_CFA_C_DOFOEXLO.LENAGREE
  is 'ת��Э���';
comment on column CFA.T_CFA_C_DOFOEXLO.VALUEDATE
  is '��Ϣ��';
comment on column CFA.T_CFA_C_DOFOEXLO.MATURITY
  is '������';
comment on column CFA.T_CFA_C_DOFOEXLO.CURRENCE
  is '�������';
comment on column CFA.T_CFA_C_DOFOEXLO.CONTRACTAMOUNT
  is 'ǩԼ���';
comment on column CFA.T_CFA_C_DOFOEXLO.ANNINRATE
  is '�껯����ֵ';
comment on column CFA.T_CFA_C_DOFOEXLO.REMARK
  is '��ע';
comment on column CFA.T_CFA_C_DOFOEXLO.BUSCODE
  is '����ҵ��κ�';
comment on column CFA.T_CFA_C_DOFOEXLO.CHANGENO
  is '�䶯���';
comment on column CFA.T_CFA_C_DOFOEXLO.LOANOPENBALAN
  is '�ڳ����';
comment on column CFA.T_CFA_C_DOFOEXLO.CHANGEDATE
  is '�䶯����';
comment on column CFA.T_CFA_C_DOFOEXLO.WITHCURRENCE
  is '������';
comment on column CFA.T_CFA_C_DOFOEXLO.WITHAMOUNT
  is '�����';
comment on column CFA.T_CFA_C_DOFOEXLO.SETTAMOUNT
  is '�����';
comment on column CFA.T_CFA_C_DOFOEXLO.USEOFUNDS
  is '�ʽ���;';
comment on column CFA.T_CFA_C_DOFOEXLO.PRINCURR
  is '��������';
comment on column CFA.T_CFA_C_DOFOEXLO.REPAYAMOUNT
  is '�������';
comment on column CFA.T_CFA_C_DOFOEXLO.PREPAYAMOUNT
  is '���㻹�����';
comment on column CFA.T_CFA_C_DOFOEXLO.INPAYCURR
  is '��Ϣ����';
comment on column CFA.T_CFA_C_DOFOEXLO.INPAYAMOUNT
  is '��Ϣ���';
comment on column CFA.T_CFA_C_DOFOEXLO.PINPAYAMOUNT
  is '���㸶Ϣ���';
comment on column CFA.T_CFA_C_DOFOEXLO.ENDBALAN
  is '��ĩ���';
comment on column CFA.T_CFA_C_DOFOEXLO.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_C_DOFOEXLO.INSTCODE
  is '�������';
comment on column CFA.T_CFA_C_DOFOEXLO.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_C_DOFOEXLO.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_C_DOFOEXLO.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_C_DOFOEXLO.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_C_DOFOEXLO.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_C_DOFOEXLO.TRADEDATE
  is '��������';
comment on column CFA.T_CFA_C_DOFOEXLO.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_C_DOFOEXLO.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_CFA_C_DOFOEXLO.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column CFA.T_CFA_C_DOFOEXLO.TEAMID
  is '�Ŷ�ID(��¼T_RPT_BUSS_TYPE��ҵ�����ͱ��)';
alter table CFA.T_CFA_C_DOFOEXLO
  add constraint PK_T_CFA_C_DOFOEXLO primary key (BUSINESSID)
  using index 
  tablespace CFA
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
create index CFA.INDEX_BNO_T_CFA_C_DOFOEXLO on CFA.T_CFA_C_DOFOEXLO (BUSINESSNO)
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_C_DOFOEXLO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_C_DOFOEXLO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_C_DOFOEXLO to DATACOREOPR;

prompt
prompt Creating table T_CFA_C_DOFOEXLO_1008
prompt ====================================
prompt
create table CFA.T_CFA_C_DOFOEXLO_1008
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_C_DOFOEXLO_20141029
prompt ========================================
prompt
create table CFA.T_CFA_C_DOFOEXLO_20141029
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_C_DOFOEXLO_20141029 to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_C_DOFOEXLO_20141029 to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_C_DOFOEXLO_20141029 to DATACOREOPR;

prompt
prompt Creating table T_CFA_C_DOFOEXLO_20141029_1
prompt ==========================================
prompt
create table CFA.T_CFA_C_DOFOEXLO_20141029_1
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_C_DOFOEXLO_20160630
prompt ========================================
prompt
create table CFA.T_CFA_C_DOFOEXLO_20160630
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
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU
prompt ===============================
prompt
create table CFA.T_CFA_D_LOUNEXGU
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
comment on table CFA.T_CFA_D_LOUNEXGU
  is '�����ʱ���Ŀ�����ⵣ�����¾��ڴ���';
comment on column CFA.T_CFA_D_LOUNEXGU.ACTIONTYPE
  is '��������';
comment on column CFA.T_CFA_D_LOUNEXGU.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column CFA.T_CFA_D_LOUNEXGU.LOUNEXGUCODE
  is '�Ᵽ�ڴ����';
comment on column CFA.T_CFA_D_LOUNEXGU.CREDITORCODE
  is 'ծȨ�˴���';
comment on column CFA.T_CFA_D_LOUNEXGU.DEBTORCODE
  is 'ծ���˴���';
comment on column CFA.T_CFA_D_LOUNEXGU.DEBTORNAME
  is 'ծ������������';
comment on column CFA.T_CFA_D_LOUNEXGU.DEBTORTYPE
  is 'ծ��������';
comment on column CFA.T_CFA_D_LOUNEXGU.CFEOGUDAD
  is '������ҵ���ⵣ�����´���ҵ����׼�ļ���';
comment on column CFA.T_CFA_D_LOUNEXGU.CFEOGUDCURR
  is '������ҵ���ⵣ�����¾��ڴ����ȱ���';
comment on column CFA.T_CFA_D_LOUNEXGU.CFEOGUDAMOUNT
  is '������ҵ���ⵣ�����¾��ڴ����Ƚ��';
comment on column CFA.T_CFA_D_LOUNEXGU.CREDCURRCODE
  is '�������/�䶯����';
comment on column CFA.T_CFA_D_LOUNEXGU.CREDCONAMOUNT
  is '����ǩԼ���';
comment on column CFA.T_CFA_D_LOUNEXGU.VALUEDATE
  is '��Ϣ��';
comment on column CFA.T_CFA_D_LOUNEXGU.MATURITY
  is '������';
comment on column CFA.T_CFA_D_LOUNEXGU.DOFOEXLOCODE
  is '������������';
comment on column CFA.T_CFA_D_LOUNEXGU.REMARK
  is '��ע';
comment on column CFA.T_CFA_D_LOUNEXGU.BUSCODE
  is '����ҵ��κ�';
comment on column CFA.T_CFA_D_LOUNEXGU.CHANGENO
  is '�䶯���';
comment on column CFA.T_CFA_D_LOUNEXGU.CHANGEDATE
  is '�䶯����';
comment on column CFA.T_CFA_D_LOUNEXGU.CREDWITHAMOUNT
  is '�����';
comment on column CFA.T_CFA_D_LOUNEXGU.CREDREPAYAMOUNT
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU.PICAMOUNT
  is '��Ϣ�ѽ��';
comment on column CFA.T_CFA_D_LOUNEXGU.CREDPRINBALA
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU.GUARANTLIBALA
  is '�����������';
comment on column CFA.T_CFA_D_LOUNEXGU.GUPERAMOUNT
  is '������Լ���';
comment on column CFA.T_CFA_D_LOUNEXGU.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_D_LOUNEXGU.INSTCODE
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_D_LOUNEXGU.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_D_LOUNEXGU.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_D_LOUNEXGU.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_D_LOUNEXGU.TRADEDATE
  is '��������';
comment on column CFA.T_CFA_D_LOUNEXGU.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_D_LOUNEXGU.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_CFA_D_LOUNEXGU.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column CFA.T_CFA_D_LOUNEXGU.TEAMID
  is '�Ŷ�ID(��¼T_RPT_BUSS_TYPE��ҵ�����ͱ��)';
alter table CFA.T_CFA_D_LOUNEXGU
  add constraint PK_T_CFA_D_LOUNEXGU primary key (BUSINESSID)
  using index 
  tablespace CFA
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
create index CFA.INDEX_BNO_T_CFA_D_LOUNEXGU on CFA.T_CFA_D_LOUNEXGU (BUSINESSNO)
  tablespace CFA
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
create index CFA.T_CFA_D_BUSCODE on CFA.T_CFA_D_LOUNEXGU (BUSCODE)
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_D_LOUNEXGU to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_D_LOUNEXGU to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_D_LOUNEXGU to DATACOREOPR;

prompt
prompt Creating table T_CFA_D_LOUNEXGU_001120070
prompt =========================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_001120070
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_1008
prompt ====================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_1008
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
  BUSINESSID      VARCHAR2(50) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(60),
  IS_HANDIWORK    CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_111
prompt ===================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_111
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_20160516
prompt ========================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_20160516
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_20160630
prompt ========================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_20160630
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_7BK
prompt ===================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_7BK
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_CZF0624
prompt =======================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_CZF0624
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_D1
prompt ==================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_D1
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_HZ
prompt ==================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_HZ
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
prompt Creating table T_CFA_D_LOUNEXGU_OLD
prompt ===================================
prompt
create table CFA.T_CFA_D_LOUNEXGU_OLD
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
  BUSINESSID      VARCHAR2(200) not null,
  TRADEDATE       VARCHAR2(8),
  MODIFYUSER      VARCHAR2(30),
  BUSINESSNO      VARCHAR2(200),
  IS_HANDIWORK    CHAR(1),
  TEAMID          VARCHAR2(10)
)
tablespace CFA
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
comment on table CFA.T_CFA_D_LOUNEXGU_OLD
  is '�����ʱ���Ŀ�����ⵣ�����¾��ڴ���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.ACTIONTYPE
  is '��������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.LOUNEXGUCODE
  is '�Ᵽ�ڴ����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CREDITORCODE
  is 'ծȨ�˴���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.DEBTORCODE
  is 'ծ���˴���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.DEBTORNAME
  is 'ծ������������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.DEBTORTYPE
  is 'ծ��������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CFEOGUDAD
  is '������ҵ���ⵣ�����´���ҵ����׼�ļ���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CFEOGUDCURR
  is '������ҵ���ⵣ�����¾��ڴ����ȱ���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CFEOGUDAMOUNT
  is '������ҵ���ⵣ�����¾��ڴ����Ƚ��';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CREDCURRCODE
  is '�������/�䶯����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CREDCONAMOUNT
  is '����ǩԼ���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.VALUEDATE
  is '��Ϣ��';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.MATURITY
  is '������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.DOFOEXLOCODE
  is '������������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.REMARK
  is '��ע';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.BUSCODE
  is '����ҵ��κ�';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CHANGENO
  is '�䶯���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CHANGEDATE
  is '�䶯����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CREDWITHAMOUNT
  is '�����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CREDREPAYAMOUNT
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.PICAMOUNT
  is '��Ϣ�ѽ��';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.CREDPRINBALA
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.GUARANTLIBALA
  is '�����������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.GUPERAMOUNT
  is '������Լ���';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.INSTCODE
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.TRADEDATE
  is '��������';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column CFA.T_CFA_D_LOUNEXGU_OLD.TEAMID
  is '�Ŷ�ID(��¼T_RPT_BUSS_TYPE��ҵ�����ͱ��)';
alter table CFA.T_CFA_D_LOUNEXGU_OLD
  add constraint PK_T_CFA_D_LOUNEXGU_OLD primary key (BUSINESSID)
  using index 
  tablespace CFA
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
create index CFA.INDEX_BNO_T_CFA_D_LOUNEXGU_OLD on CFA.T_CFA_D_LOUNEXGU_OLD (BUSINESSNO)
  tablespace CFA
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
create index CFA.T_CFA_D_BUSCODE_OLD on CFA.T_CFA_D_LOUNEXGU_OLD (BUSCODE)
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_D_LOUNEXGU_OLD to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_D_LOUNEXGU_OLD to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_D_LOUNEXGU_OLD to DATACOREOPR;

prompt
prompt Creating table T_CFA_E_EXPLRMBLO
prompt ================================
prompt
create table CFA.T_CFA_E_EXPLRMBLO
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
tablespace CFA
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
comment on table CFA.T_CFA_E_EXPLRMBLO
  is '�����ʱ���Ŀ�������Ѻ����Ҵ���';
comment on column CFA.T_CFA_E_EXPLRMBLO.ACTIONTYPE
  is '��������';
comment on column CFA.T_CFA_E_EXPLRMBLO.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column CFA.T_CFA_E_EXPLRMBLO.EXPLRMBLONO
  is '�����Ѻ����Ҵ�����';
comment on column CFA.T_CFA_E_EXPLRMBLO.CREDITORCODE
  is 'ծȨ�˴���';
comment on column CFA.T_CFA_E_EXPLRMBLO.DEBTORCODE
  is 'ծ���˴���';
comment on column CFA.T_CFA_E_EXPLRMBLO.DEBTORNAME
  is 'ծ������������';
comment on column CFA.T_CFA_E_EXPLRMBLO.VALUEDATE
  is '������Ϣ��';
comment on column CFA.T_CFA_E_EXPLRMBLO.CREDCONCURR
  is '����ǩԼ����';
comment on column CFA.T_CFA_E_EXPLRMBLO.CREDCONAMOUNT
  is '����ǩԼ���';
comment on column CFA.T_CFA_E_EXPLRMBLO.MATURITY
  is '�������';
comment on column CFA.T_CFA_E_EXPLRMBLO.REMARK
  is '��ע';
comment on column CFA.T_CFA_E_EXPLRMBLO.BUOCMONTH
  is '������';
comment on column CFA.T_CFA_E_EXPLRMBLO.CHANGENO
  is '�䶯���';
comment on column CFA.T_CFA_E_EXPLRMBLO.MONBELOADBAL
  is '�³��������';
comment on column CFA.T_CFA_E_EXPLRMBLO.CREDWITHAMOUNT
  is '���������';
comment on column CFA.T_CFA_E_EXPLRMBLO.CREDREPAYAMOUNT
  is '���»������';
comment on column CFA.T_CFA_E_EXPLRMBLO.PICAMOUNT
  is '���¸�Ϣ�ѽ��';
comment on column CFA.T_CFA_E_EXPLRMBLO.MONENLOADBAL
  is '��ĩ�������';
comment on column CFA.T_CFA_E_EXPLRMBLO.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_E_EXPLRMBLO.INSTCODE
  is '�������';
comment on column CFA.T_CFA_E_EXPLRMBLO.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_E_EXPLRMBLO.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_E_EXPLRMBLO.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_E_EXPLRMBLO.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_E_EXPLRMBLO.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_E_EXPLRMBLO.TRADEDATE
  is '��������';
comment on column CFA.T_CFA_E_EXPLRMBLO.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_E_EXPLRMBLO.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_CFA_E_EXPLRMBLO.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column CFA.T_CFA_E_EXPLRMBLO.TEAMID
  is '�Ŷ�ID(��¼T_RPT_BUSS_TYPE��ҵ�����ͱ��)';
alter table CFA.T_CFA_E_EXPLRMBLO
  add constraint PK_T_CFA_E_EXPLRMBLO primary key (BUSINESSID)
  using index 
  tablespace CFA
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
create index CFA.INDEX_BNO_T_CFA_E_EXPLRMBLO on CFA.T_CFA_E_EXPLRMBLO (BUSINESSNO)
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_E_EXPLRMBLO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_E_EXPLRMBLO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_E_EXPLRMBLO to DATACOREOPR;

prompt
prompt Creating table T_CFA_E_EXPLRMBLO_1008
prompt =====================================
prompt
create table CFA.T_CFA_E_EXPLRMBLO_1008
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
  IS_HANDIWORK    CHAR(1)
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table T_CFA_F_STRDE
prompt ============================
prompt
create table CFA.T_CFA_F_STRDE
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
tablespace CFA
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
comment on table CFA.T_CFA_F_STRDE
  is '�����ʱ���Ŀ����ҵ��������ҽṹ�Դ��ҵ��';
comment on column CFA.T_CFA_F_STRDE.ACTIONTYPE
  is '��������';
comment on column CFA.T_CFA_F_STRDE.ACTIONDESC
  is 'ɾ��ԭ��';
comment on column CFA.T_CFA_F_STRDE.STRDECODE
  is '����ҽṹ�Դ����';
comment on column CFA.T_CFA_F_STRDE.BRANCHCODE
  is '���ڻ�����ʶ��';
comment on column CFA.T_CFA_F_STRDE.CLIENTCODE
  is '�ͻ�����';
comment on column CFA.T_CFA_F_STRDE.CLIENTNAME
  is '�ͻ�����';
comment on column CFA.T_CFA_F_STRDE.CONTRACTDATE
  is 'ǩԼ����';
comment on column CFA.T_CFA_F_STRDE.CONTRACT
  is '��ͬ��';
comment on column CFA.T_CFA_F_STRDE.CONTRACTAMOUNT
  is 'ǩԼ���';
comment on column CFA.T_CFA_F_STRDE.MATURITY
  is '������';
comment on column CFA.T_CFA_F_STRDE.LINCAME
  is '�ҹ�ָ��';
comment on column CFA.T_CFA_F_STRDE.LINCAMETHOD
  is '�ҹ�ָ����㷽��';
comment on column CFA.T_CFA_F_STRDE.AGINRAUP
  is 'Լ������������';
comment on column CFA.T_CFA_F_STRDE.AGINRALO
  is 'Լ������������';
comment on column CFA.T_CFA_F_STRDE.AGINRALOINPAY
  is '��Ϣ������ʽ';
comment on column CFA.T_CFA_F_STRDE.REMARK
  is '��ע';
comment on column CFA.T_CFA_F_STRDE.TERTYPE
  is '��ֹ����';
comment on column CFA.T_CFA_F_STRDE.TERPAYCODE
  is '��ֹ֧�����';
comment on column CFA.T_CFA_F_STRDE.TERDATE
  is '��ֹ����';
comment on column CFA.T_CFA_F_STRDE.TERPAYAMTORMB
  is '��ֹ֧�����ϼ��������';
comment on column CFA.T_CFA_F_STRDE.TERRMBPAYAM
  is '��ֹ�����֧�����';
comment on column CFA.T_CFA_F_STRDE.TERPAYCURR
  is '��ֹ���֧������';
comment on column CFA.T_CFA_F_STRDE.TERPAYCURRAM
  is '��ֹ���֧�����';
comment on column CFA.T_CFA_F_STRDE.INPAYCODE
  is '��Ϣ���';
comment on column CFA.T_CFA_F_STRDE.INPAYMONTH
  is '��Ϣ����';
comment on column CFA.T_CFA_F_STRDE.INPAYRMBAM
  is '��Ϣ�����֧�����';
comment on column CFA.T_CFA_F_STRDE.INPAYCURR
  is '��Ϣ���֧������';
comment on column CFA.T_CFA_F_STRDE.INPAYCURRAM
  is '��Ϣ���֧�����';
comment on column CFA.T_CFA_F_STRDE.BUOCMONTH
  is '������';
comment on column CFA.T_CFA_F_STRDE.CURRENCY
  is '����';
comment on column CFA.T_CFA_F_STRDE.MOEXAMUSD
  is '���»���������Ԫ';
comment on column CFA.T_CFA_F_STRDE.MOAMREUSD
  is '���»���������Ԫ';
comment on column CFA.T_CFA_F_STRDE.MOPFEXAMUSD
  is '���¹���������Ԫ';
comment on column CFA.T_CFA_F_STRDE.MOSETTAMUSD
  is '���½��������Ԫ';
comment on column CFA.T_CFA_F_STRDE.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_F_STRDE.INSTCODE
  is '�������';
comment on column CFA.T_CFA_F_STRDE.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_F_STRDE.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_F_STRDE.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_F_STRDE.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_F_STRDE.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_F_STRDE.TRADEDATE
  is '��������';
comment on column CFA.T_CFA_F_STRDE.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_F_STRDE.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_CFA_F_STRDE.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
comment on column CFA.T_CFA_F_STRDE.TEAMID
  is '�Ŷ�ID(��¼T_RPT_BUSS_TYPE��ҵ�����ͱ��)';
alter table CFA.T_CFA_F_STRDE
  add constraint PK_T_CFA_F_STRDE primary key (BUSINESSID)
  using index 
  tablespace CFA
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
create index CFA.INDEX_BNO_T_CFA_F_STRDE on CFA.T_CFA_F_STRDE (BUSINESSNO)
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_F_STRDE to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_F_STRDE to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_F_STRDE to DATACOREOPR;

prompt
prompt Creating table T_CFA_F_STRDE_1008
prompt =================================
prompt
create table CFA.T_CFA_F_STRDE_1008
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_F_STRDE_BAK1010
prompt ====================================
prompt
create table CFA.T_CFA_F_STRDE_BAK1010
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
  IS_HANDIWORK   CHAR(1)
)
tablespace CFA
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
prompt Creating table T_CFA_QDII_ACCOUNT
prompt =================================
prompt
create table CFA.T_CFA_QDII_ACCOUNT
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QDII_ACCOUNT
  is 'QDII�˻���Ϣ';
comment on column CFA.T_CFA_QDII_ACCOUNT.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QDII_ACCOUNT.INSTCODE
  is 'QDII��������';
comment on column CFA.T_CFA_QDII_ACCOUNT.INSTNAME
  is 'QDII������������';
comment on column CFA.T_CFA_QDII_ACCOUNT.CUSTODIAN_BANK_ID
  is 'QDII�����й��д���';
comment on column CFA.T_CFA_QDII_ACCOUNT.TRUSTEE_ID
  is 'QDII�����й��˴���';
comment on column CFA.T_CFA_QDII_ACCOUNT.TRUSTEE_NAME
  is 'QDII�����й�����������';
comment on column CFA.T_CFA_QDII_ACCOUNT.TRUSTEE_ENNAME
  is 'QDII�����й���Ӣ������';
comment on column CFA.T_CFA_QDII_ACCOUNT.PRODUCT_CLIENT_NAME
  is '��Ʒ/�ͻ�����';
comment on column CFA.T_CFA_QDII_ACCOUNT.ACCOUNT_TYPE
  is '�˻�����';
comment on column CFA.T_CFA_QDII_ACCOUNT.ACCOUNT
  is '�˺�';
comment on column CFA.T_CFA_QDII_ACCOUNT.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QDII_ACCOUNT.OPEN_DATE
  is '��������';
comment on column CFA.T_CFA_QDII_ACCOUNT.CLOSE_DATA
  is '�ػ�����';
comment on column CFA.T_CFA_QDII_ACCOUNT.REMARK
  is '��ע';
comment on column CFA.T_CFA_QDII_ACCOUNT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QDII_ACCOUNT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QDII_ACCOUNT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QDII_ACCOUNT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QDII_ACCOUNT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QDII_ACCOUNT.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QDII_ACCOUNT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QDII_ACCOUNT.INSTCODE_QDII
  is 'QDII�������';
comment on column CFA.T_CFA_QDII_ACCOUNT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QDII_INVEST
prompt ================================
prompt
create table CFA.T_CFA_QDII_INVEST
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QDII_INVEST
  is ' QDII����֤ȯͶ����Ϣ';
comment on column CFA.T_CFA_QDII_INVEST.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QDII_INVEST.INSTCODE
  is 'QDII��������';
comment on column CFA.T_CFA_QDII_INVEST.INSTNAME
  is 'QDII��������';
comment on column CFA.T_CFA_QDII_INVEST.CUSTODIAN_BANK_ID
  is 'QDII�����й��д���';
comment on column CFA.T_CFA_QDII_INVEST.PRODUCT_CLIENT_NAME
  is '��Ʒ/�ͻ�����';
comment on column CFA.T_CFA_QDII_INVEST.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_QDII_INVEST.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QDII_INVEST.BANK_SAVINGS_BALANCE
  is '���д�����';
comment on column CFA.T_CFA_QDII_INVEST.CURRENCY_TOOLS_COST
  is '�����г����߳ɱ�';
comment on column CFA.T_CFA_QDII_INVEST.CURRENCY_TOOLS_VALUE
  is '�����г�������ֵ';
comment on column CFA.T_CFA_QDII_INVEST.DEBENTURE_COST
  is 'ծȯ�ɱ�';
comment on column CFA.T_CFA_QDII_INVEST.DEBENTURE_VALUE
  is 'ծȯ��ֵ';
comment on column CFA.T_CFA_QDII_INVEST.COMPANY_STOCK_COST
  is '��˾��Ʊ�ɱ�';
comment on column CFA.T_CFA_QDII_INVEST.COMPANY_STOCK_VALUE
  is '��˾��Ʊ��ֵ';
comment on column CFA.T_CFA_QDII_INVEST.FUND_COST
  is '����ɱ�';
comment on column CFA.T_CFA_QDII_INVEST.FUND_VALUE
  is '������ֵ';
comment on column CFA.T_CFA_QDII_INVEST.DERIVATIVE_COST
  is '������Ʒ�ɱ�';
comment on column CFA.T_CFA_QDII_INVEST.DERIVATIVE_VALUE
  is '������Ʒ��ֵ';
comment on column CFA.T_CFA_QDII_INVEST.OTHER_INVEST_COST
  is '����Ͷ�ʳɱ�';
comment on column CFA.T_CFA_QDII_INVEST.OTHER_INVEST_VALUE
  is '����Ͷ����ֵ';
comment on column CFA.T_CFA_QDII_INVEST.INVEST_VALUE_TOTAL
  is 'Ͷ����ֵ�ϼ�';
comment on column CFA.T_CFA_QDII_INVEST.EXPEND_INVEST_AMOUNT
  is 'Ԥ��Ͷ�ʿ���';
comment on column CFA.T_CFA_QDII_INVEST.INVEST_AMOUNT_INCOME
  is 'Ӧ��Ͷ�ʿ���';
comment on column CFA.T_CFA_QDII_INVEST.STOCK_PROFIT_AMOUNT_INCOME
  is 'Ӧ�չ������';
comment on column CFA.T_CFA_QDII_INVEST.PROFIT_AMOUNT_INCOME
  is 'Ӧ����Ϣ���';
comment on column CFA.T_CFA_QDII_INVEST.OTHER_AMOUNT_INCOME
  is '����Ӧ�տ���';
comment on column CFA.T_CFA_QDII_INVEST.ASSETS_TOTAL
  is '�ʲ��ϼ�';
comment on column CFA.T_CFA_QDII_INVEST.INVEST_AMOUNT_EXPEND
  is 'Ӧ��Ͷ�ʿ���';
comment on column CFA.T_CFA_QDII_INVEST.DEPOSIT_AMOUNT_EXPEND
  is 'Ӧ���йܷѽ��';
comment on column CFA.T_CFA_QDII_INVEST.BROKERAGE_AMOUNT_EXPEND
  is 'Ӧ��Ӷ���';
comment on column CFA.T_CFA_QDII_INVEST.MANAGER_AMOUNT_EXPEND
  is 'Ӧ������ѽ��';
comment on column CFA.T_CFA_QDII_INVEST.TAX_AMOUNT_EXPEND
  is 'Ӧ��˰����';
comment on column CFA.T_CFA_QDII_INVEST.OTHER_AMOUNT_EXPEND
  is '����Ӧ������';
comment on column CFA.T_CFA_QDII_INVEST.DEBT_TOTAL
  is '��ծ�ϼ�';
comment on column CFA.T_CFA_QDII_INVEST.CLEAN_ASSETS
  is '���ʲ�';
comment on column CFA.T_CFA_QDII_INVEST.DEPOSIT_RMB_SAVING_BALANCE
  is '���й�������ʽ������';
comment on column CFA.T_CFA_QDII_INVEST.REMARK
  is '��ע';
comment on column CFA.T_CFA_QDII_INVEST.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QDII_INVEST.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QDII_INVEST.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QDII_INVEST.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QDII_INVEST.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QDII_INVEST.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QDII_INVEST.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QDII_INVEST.INSTCODE_QDII
  is 'QDII�������';
comment on column CFA.T_CFA_QDII_INVEST.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QDII_REMIT
prompt ===============================
prompt
create table CFA.T_CFA_QDII_REMIT
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QDII_REMIT
  is 'QDII�ʽ����뼰�Ṻ����ϸ��Ϣ';
comment on column CFA.T_CFA_QDII_REMIT.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QDII_REMIT.INSTCODE
  is 'QDII��������';
comment on column CFA.T_CFA_QDII_REMIT.INSTNAME
  is 'QDII������������';
comment on column CFA.T_CFA_QDII_REMIT.CUSTODIAN_BANK_ID
  is 'QDII�����й��д���';
comment on column CFA.T_CFA_QDII_REMIT.PRODUCT_CLIENT_NAME
  is '��Ʒ/�ͻ�����';
comment on column CFA.T_CFA_QDII_REMIT.CHANGE_ID
  is '�䶯���';
comment on column CFA.T_CFA_QDII_REMIT.EXCHANGE_DATE
  is '�������';
comment on column CFA.T_CFA_QDII_REMIT.ASSETS_EXCHANGE_REASON
  is '�ʽ���ԭ��';
comment on column CFA.T_CFA_QDII_REMIT.ACCOUNT
  is '�˺�';
comment on column CFA.T_CFA_QDII_REMIT.BUY_EXCHANGE_AMOUNT_RMB
  is '��������ҽ��';
comment on column CFA.T_CFA_QDII_REMIT.BUY_EXCHANGE_AMOUNT_DOLLARS
  is '����������Ԫ';
comment on column CFA.T_CFA_QDII_REMIT.EXPEND_CURR_CODE
  is '�������';
comment on column CFA.T_CFA_QDII_REMIT.EXPEND_AMOUNT
  is '������';
comment on column CFA.T_CFA_QDII_REMIT.EXPEND_AMOUNT_DOLLARS
  is '����������Ԫ';
comment on column CFA.T_CFA_QDII_REMIT.INCOME_CURR_CODE
  is '�������';
comment on column CFA.T_CFA_QDII_REMIT.INCOME_AMOUNT
  is '������';
comment on column CFA.T_CFA_QDII_REMIT.INCOME_AMOUNT_DOLLARS
  is '����������Ԫ';
comment on column CFA.T_CFA_QDII_REMIT.SELL_EXCHANGE_AMOUNT_DOLLARS
  is '���������Ԫ';
comment on column CFA.T_CFA_QDII_REMIT.SELL_EXCHANGE_AMOUNT_RMB
  is '�����������ҽ��';
comment on column CFA.T_CFA_QDII_REMIT.REMARK
  is '��ע';
comment on column CFA.T_CFA_QDII_REMIT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QDII_REMIT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QDII_REMIT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QDII_REMIT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QDII_REMIT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QDII_REMIT.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QDII_REMIT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QDII_REMIT.INSTCODE_QDII
  is 'QDII�������';
comment on column CFA.T_CFA_QDII_REMIT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QDII_TRUSTEE_ACCOUNT
prompt =========================================
prompt
create table CFA.T_CFA_QDII_TRUSTEE_ACCOUNT
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QDII_TRUSTEE_ACCOUNT
  is 'QDII��������й��˻���Ϣ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.INSTCODE
  is 'QDII��������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.INSTNAME
  is 'QDII������������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.CUSTODIAN_BANK_ID
  is 'QDII�����й��д���';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.PRODUCT_CLIENT_NAME
  is '��Ʒ/�ͻ�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.TRUSTEE_ACCOUNT
  is '��������й��˻��˺�';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACCOUNT_BALANCE
  is '��ĩ�˻����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACCOUNT_BALANCE_DOLLAR
  is '��ĩ�˻��������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.BUY_EXCHANGE_AMOUNT
  is '���¹�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.BUY_EXCHANGE_AMOUNT_DOLLAR
  is '���¹���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_BUY_EXCHANGE_AMOUNT
  is '�ۼƹ�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_BUY_EXCHANGE_AMOUNT_DOLLAR
  is '�ۼƹ���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.TRUSTEE_ACCOUNT_IN
  is '���¾����й��˻�������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.TRUSTEE_ACCOUNT_IN_DOL
  is '���¾����й��˻�����������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TRUSTEE_ACCOUNT_IN
  is '�ۼƾ����й��˻�������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TRUSTEE_ACCOUNT_IN_DOL
  is '�ۼƾ����й��˻�����������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ASKFOR_BUY_INCOME
  is '�����깺�������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ASKFOR_BUY_IN_DOL
  is '�����깺�����������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_ASKFOR_BUY_IN
  is '�ۼ��깺�������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_ASKFOR_BUY_IN_DOL
  is '�ۼ��깺�����������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.PROFIT_AMOUNT_INCOME
  is '������Ϣ������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.PROFIT_AMOUNT_INCOME_DOL
  is '������Ϣ����������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_PROFIT_AMOUNT_INCOME
  is '�ۼ���Ϣ������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_PROFIT_AMOUNT_INCOME_DOL
  is '�ۼ���Ϣ����������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_INCOME
  is '��������������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_INCOME_DOL
  is '������������������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_INCOME
  is '�ۼ�����������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_INCOME_DOL
  is '�ۼ���������������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.INCOME_TOTAL
  is '��������ϼ�';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.INCOME_TOTAL_DOL
  is '��������ϼ�����Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_INCOME_TOTAL
  is '�ۼ�����ϼ�';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_INCOME_TOTAL_DOL
  is '�ۼ�����ϼ�����Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.SELL_EXCHANGE_AMOUNT
  is '���½����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.SELL_EXCHANGE_AMOUNT_DOL
  is '���½��������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SELL_EXCHANGE_AMOUNT
  is '�ۼƽ����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SELL_EXCHANGE_AMOUNT_DOL
  is '�ۼƽ��������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.TO_OVER_TRUSTEE_ACCOUNT
  is '���»��������й��˻����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.TO_OVER_TRUSTEE_ACCOUNT_DOL
  is '���»��������й��˻��������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TO_OVER_TRUSTEE_ACCOUNT
  is '�ۼƻ��������й��˻����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_TO_OVER_TRUSTEE_DOL
  is '�ۼƻ��������й��˻��������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_REDEMPTION
  is '����֧����ؿ���';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_REDEMPTION_DOL
  is '����֧����ؿ�������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_REDEMPTION
  is '�ۼ�֧����ؿ���';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_REDEMPTION_DOL
  is '�ۼ�֧����ؿ�������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.SHARE_BONUS_AMOUNT
  is '���·ֺ���';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.SHARE_BONUS_AMOUNT_DOL
  is '���·ֺ�������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SHARE_BONUS_AMOUNT
  is '�ۼƷֺ���';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_SHARE_BONUS_AMOUNT_DOL
  is '�ۼƷֺ�������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.DEPOSIT_AMOUNT_EXPEND
  is '�����йܷ�֧�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.DEPOSIT_AMOUNT_EXPEND_DOL
  is '�����йܷ�֧���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_DEPOSIT_AMOUNT_EXPEND
  is '�ۼ��йܷ�֧�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_DEPOSIT_AMOUNT_EXPEND_DOL
  is '�ۼ��йܷ�֧���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.MANAGER_AMOUNT_EXPEND
  is '���¹����֧�ֽ��';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.MANAGER_AMOUNT_EXPEND_DOL
  is '���¹����֧�ֽ������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_MANAGER_AMOUNT_EXPEND
  is '�ۼƹ����֧�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_MANAGER_AMOUNT_EXPEND_DOL
  is '�ۼƹ����֧���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.HANDLING_CHARGE_EXPEND
  is '����������֧�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.HANDLING_CHARGE_EXPEND_DOL
  is '����������֧���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_HANDLING_CHARGE_EXPEND
  is '�ۼ�������֧�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_HANDLING_CHARGE_EXPEND_DOL
  is '�ۼ�������֧���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_EXPEND
  is '��������֧�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.OTHER_AMOUNT_EXPEND_DOL
  is '��������֧���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_EXPEND
  is '�ۼ�����֧�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_OTHER_AMOUNT_EXPEND_DOL
  is '�ۼ�����֧���������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_TOTAL
  is '����֧���ϼƽ��';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.EXPEND_TOTAL_DOL
  is '����֧���ϼƽ������Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_TOTAL
  is '�ۼ�֧�����ϼ�';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.ACC_EXPEND_TOTAL_DOL
  is '�ۼ�֧�����ϼ�����Ԫ';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.REMARK
  is '��ע';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.INSTCODE_QDII
  is 'QDII�������';
comment on column CFA.T_CFA_QDII_TRUSTEE_ACCOUNT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QFII_ACCOUNT
prompt =================================
prompt
create table CFA.T_CFA_QFII_ACCOUNT
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QFII_ACCOUNT
  is 'QFII�˻�����ר����Ϣ';
comment on column CFA.T_CFA_QFII_ACCOUNT.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QFII_ACCOUNT.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_QFII_ACCOUNT.INSTCODE
  is '��������';
comment on column CFA.T_CFA_QFII_ACCOUNT.INSTNAME
  is '��������';
comment on column CFA.T_CFA_QFII_ACCOUNT.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_QFII_ACCOUNT.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_QFII_ACCOUNT.ACCOUNT_TYPE
  is '�˻�����';
comment on column CFA.T_CFA_QFII_ACCOUNT.ACCOUNT
  is '�˺�';
comment on column CFA.T_CFA_QFII_ACCOUNT.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QFII_ACCOUNT.OPEN_DATE
  is '��������';
comment on column CFA.T_CFA_QFII_ACCOUNT.CLOSE_DATA
  is '�ػ�����';
comment on column CFA.T_CFA_QFII_ACCOUNT.SH_COMPANY_ID
  is '����ȯ�̴���';
comment on column CFA.T_CFA_QFII_ACCOUNT.SH_COMPANY_NAME
  is '����ȯ������';
comment on column CFA.T_CFA_QFII_ACCOUNT.SZ_COMPANY_ID
  is '����ȯ�̴���';
comment on column CFA.T_CFA_QFII_ACCOUNT.SZ_COMPANY_NAME
  is '����ȯ������';
comment on column CFA.T_CFA_QFII_ACCOUNT.REMARK
  is '��ע';
comment on column CFA.T_CFA_QFII_ACCOUNT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QFII_ACCOUNT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QFII_ACCOUNT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QFII_ACCOUNT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QFII_ACCOUNT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QFII_ACCOUNT.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QFII_ACCOUNT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QFII_ACCOUNT.INSTCODE_QFII
  is 'QFII�������';
comment on column CFA.T_CFA_QFII_ACCOUNT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';
create index CFA.INDEX_T_CFA_QFII_ACCOUNT on CFA.T_CFA_QFII_ACCOUNT (BUSINESSID)
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table T_CFA_QFII_ASSETS_DEBT
prompt =====================================
prompt
create table CFA.T_CFA_QFII_ASSETS_DEBT
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QFII_ASSETS_DEBT
  is '�ʲ���ծ����Ϣ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.BUSINESSID
  is ' ҵ��id';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.CUSTODIAN_ID
  is ' �й��˴���';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.INSTCODE
  is ' QFII��������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.INSTNAME
  is ' QFII��������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.BUSINESS_NUM
  is ' ҵ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.PRODUCT_NAME
  is ' ��Ʒ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.SETTLE_YEAR
  is ' �������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.CURRENCE_CODE
  is ' ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.SAVING_BALANCE
  is ' ���д�����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.COMPANY_STOCK_AMOUNT
  is ' ��˾��Ʊ�ʲ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.GOVERNMENT_LOAN_AMOUNT
  is ' ��ծ�ʲ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.OTHER_DEBT_AMOUNT
  is ' ����ծȯ�ʲ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.OTHER_INVEST_AMOUNT
  is ' ����Ͷ���ʲ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.ADVANCE_STOCK
  is ' Ԥ���ɿ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.STOCK_AMOUNT_INCOME
  is ' Ӧ�չɿ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.STOCK_PROFIT_AMOUNT_INCOME
  is ' Ӧ�չ���';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.PROFIT_AMOUNT_INCOME
  is ' Ӧ����Ϣ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.OTHER_AMOUNT_INCOME
  is ' ����Ӧ�տ��';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.ASSETS_TOTAL
  is ' �ʲ��ܶ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.MANAGER_AMOUNT_EXPEND
  is ' Ӧ�������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.DEPOSIT_AMOUNT_EXPEND
  is ' Ӧ���йܷ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.TAX_AMOUNT_EXPEND
  is ' Ӧ��˰��';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.STOCK_AMOUNT_EXPEND
  is ' Ӧ���ɿ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.OTHER_AMOUNT_EXPEND
  is ' ����Ӧ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.DEBT_TOTAL
  is ' ��ծ�ܶ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.CLEAN_ASSETS
  is ' ���ʲ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.CAPITAL_CLEAR_INCOME
  is ' ���뱾��ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.ACCUMULATE_PROFIT
  is ' �ۼ�ӯ�ࣨ��ʵ�֣�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.REMARK
  is ' ��ע';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.INSTCODE_QFII
  is 'QFII�������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QFII_ASSETS_DEBT_MONTH
prompt ===========================================
prompt
create table CFA.T_CFA_QFII_ASSETS_DEBT_MONTH
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QFII_ASSETS_DEBT_MONTH
  is 'QFII�����¶��ʲ���ծ��Ϣ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.INSTCODE
  is 'QFII��������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.INSTNAME
  is 'QFII��������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.SETTLE_ACCOUNTS
  is '������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.SAVING_BALANCE
  is '���д�����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.STOCK_COST
  is '��Ʊ�ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.STOCK_VALUE
  is '��Ʊ��ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.GOVERNMENT_LOAN_COST
  is '��ծ�ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.GOVERNMENT_LOAN_VALUE
  is '��ծ��ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.EXCHANGE_DEBT_COST
  is '��תծ�ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.EXCHANGE_DEBT_VALUE
  is '��תծ��ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.COMPANY_DEBT_COST
  is '��˾ծ�ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.COMPANY_DEBT_VALUE
  is '��˾ծ��ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.CLOSED_FUND_COST
  is '���ʽ����ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.CLOSED_FUND_VALUE
  is '���ʽ������ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.OPEN_FUND_COST
  is '����ʽ����ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.OPEN_FUND_VALUE
  is '����ʽ������ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_COST
  is 'Ȩ֤�ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_VALUE
  is 'Ȩ֤��ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.SPIF_COST
  is '��ָ�ڻ��ɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.SPIF_VALUE
  is '��ָ�ڻ���ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_COST
  is '����Ͷ�ʳɱ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_VALUE
  is '����Ͷ����ֵ';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.INVESTMENT_VALUE_TOTAL
  is 'Ͷ����ֵ�ϼ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_INCOME
  is 'Ӧ���������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.STOCK_PROFIT_AMOUNT_INCOME
  is 'Ӧ�չ������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.PROFIT_AMOUNT_INCOME
  is 'Ӧ����Ϣ���';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_INCOME
  is '����Ӧ�տ���';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.ASSETS_TOTAL
  is '�ʲ��ϼ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_EXPEND
  is 'Ӧ���������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.DEPOSIT_AMOUNT_EXPEND
  is 'Ӧ���йܷѽ��';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.MANAGER_AMOUNT_EXPEND
  is 'Ӧ������ѽ��';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.TAX_AMOUNT_EXPEND
  is 'Ӧ��˰����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_EXPEND
  is '����Ӧ������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.DEBT_TOTAL
  is '��ծ�ϼ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.CLEAN_ASSETS
  is '���ʲ�';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.INCOME_VELOCITY
  is '����������ת��';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.EXPEND_VELOCITY
  is '����������ת��';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT
  is 'ƽ��������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT_MOUTH
  is '����ƽ��������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.REMARK
  is '��ע';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.INSTCODE_QFII
  is 'QFII�������';
comment on column CFA.T_CFA_QFII_ASSETS_DEBT_MONTH.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QFII_CHANGES
prompt =================================
prompt
create table CFA.T_CFA_QFII_CHANGES
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QFII_CHANGES
  is 'QFII��������˻���֧��Ϣ';
comment on column CFA.T_CFA_QFII_CHANGES.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QFII_CHANGES.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_QFII_CHANGES.INSTCODE
  is '��������';
comment on column CFA.T_CFA_QFII_CHANGES.INSTNAME
  is '��������';
comment on column CFA.T_CFA_QFII_CHANGES.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_QFII_CHANGES.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_QFII_CHANGES.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_QFII_CHANGES.SETTLE_DATE
  is '������';
comment on column CFA.T_CFA_QFII_CHANGES.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QFII_CHANGES.ACCOUNT
  is '����˻��˺�';
comment on column CFA.T_CFA_QFII_CHANGES.CAPITAL_INCOME
  is '���»��뱾����';
comment on column CFA.T_CFA_QFII_CHANGES.CAPITAL_INCOME_DOLLARS
  is '���»��뱾��������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_CAPITAL_INCOME
  is '�ۼƻ��뱾����';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_CAPITAL_INCOME_DOL
  is '�ۼƻ��뱾��������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.INTEREST_INCOME
  is '������Ϣ������';
comment on column CFA.T_CFA_QFII_CHANGES.INTEREST_INCOME_DOLLARS
  is '������Ϣ����������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_INTEREST_INCOME
  is '�ۼ���Ϣ������';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_INTEREST_INCOME_DOL
  is '�ۼ���Ϣ����������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.RMB_SPE_PURCHASE_AMOUNT
  is '��������������˻����㻮����';
comment on column CFA.T_CFA_QFII_CHANGES.RMB_SPE_PURCHASE_AMOUNT_DOL
  is '��������������˻����㻮��������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_RMB_SPE_PURCHASE_AMOUNT
  is '�ۼ�����������˻����㻮����';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_RMB_SPE_PURC_AMOUNT_DOL
  is '�ۼ�����������˻����㻮��������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.INCOME_TOTAL
  is '��������ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES.INCOME_TOTAL_DOLLARS
  is '��������ϼ�����Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_INCOME_TOTAL
  is '�ۼ�����ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_INCOME_TOTAL_DOL
  is '�ۼ�����ϼ�����Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.SELL_EXCHANGE_SPECIAL_AMOUNT
  is '���½�㻮������������˻����';
comment on column CFA.T_CFA_QFII_CHANGES.SELL_EXCHANGE_SPE_AMOUNT_DOL
  is '���½�㻮������������˻��������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_SELL_EXCHANGE_SPE_AMO
  is '�ۼƽ�㻮������������˻����';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_SELL_EXCHANGE_SPE_AMO_DOL
  is '�ۼƽ�㻮������������˻��������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.EXPEND_CAPITAL_AMOUNT
  is '���»��������';
comment on column CFA.T_CFA_QFII_CHANGES.EXPEND_CAPITAL_AMOUNT_DOL
  is '���»������������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_EXPEND_CAPITAL_AMOUNT
  is '�ۼƻ��������';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_EXPEND_CAPITAL_AMOUNT_DOL
  is '�ۼƻ������������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.EXPEND_PROFIT_AMOUNT
  is '���»��������';
comment on column CFA.T_CFA_QFII_CHANGES.EXPEND_PROFIT_AMOUNT_DOL
  is '���»������������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_EXPEND_PROFIT_AMOUNT
  is '�ۼƻ��������';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_EXPEND_PROFIT_AMOUNT_DOL
  is '�ۼƻ������������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.PAY_AMOUNT
  is '����֧���ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES.PAY_AMOUNT_DOL
  is '����֧���ϼ�����Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_PAY_AMOUNT
  is '�ۼ�֧���ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES.ACCUMULATE_PAY_AMOUNT_DOL
  is '�ۼ�֧���ϼ�����Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.INCOME_AMOUNT
  is '���¾�������';
comment on column CFA.T_CFA_QFII_CHANGES.INCOME_AMOUNT_DOL
  is '���¾�����������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_INCOME_AMOUNT
  is '�ۼƾ�������';
comment on column CFA.T_CFA_QFII_CHANGES.ACC_INCOME_AMOUNT_DOL
  is '�ۼƾ�����������Ԫ';
comment on column CFA.T_CFA_QFII_CHANGES.REMARK
  is '��ע';
comment on column CFA.T_CFA_QFII_CHANGES.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QFII_CHANGES.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QFII_CHANGES.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QFII_CHANGES.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QFII_CHANGES.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QFII_CHANGES.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QFII_CHANGES.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QFII_CHANGES.INSTCODE_QFII
  is 'QFII�������';
comment on column CFA.T_CFA_QFII_CHANGES.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QFII_CHANGES_SPECIAL
prompt =========================================
prompt
create table CFA.T_CFA_QFII_CHANGES_SPECIAL
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QFII_CHANGES_SPECIAL
  is 'QFII��������������˻���֧��Ϣ';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.INSTCODE
  is '��������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.INSTNAME
  is '��������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.SETTLE_DATE
  is '������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCOUNT_SPECIAL
  is '����������˻��˺�';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.FOREIGN_INCOME
  is '��������˻���㻮����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_FOREIGN_INCOME
  is '�ۼ�����˻���㻮����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.SELL_SECURITY_AMOUNT
  is '��������֤ȯ���üۿ���';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_SELL_SECURIT_AMOUNT
  is '�ۼ�����֤ȯ���üۿ���';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.DIVIDEND_INCOME
  is '���¹���������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACC_DIVIDEND_INCOME
  is '�ۼƹ���������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.INTEREST_INCOME
  is '������Ϣ������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_INTEREST_INCOME
  is '�ۼ���Ϣ������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.OTHER_INCOME
  is '��������������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_OTHER_INCOME
  is '�ۼ�����������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.INCOME_TOTAL
  is '��������ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_INCOME_TOTAL
  is '�ۼ�����ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.EXCHANGE_AMOUNT
  is '���¹��㻮������˻����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_EXCHANGE_AMOUNT
  is '�ۼƹ��㻮������˻����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.PAY_SECURITY_AMOUNT
  is '��������֤ȯ֧���ۿ���';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_PAY_SECURITY_AMOUNT
  is '�ۼ�����֤ȯ֧���ۿ���';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.DEPOSIT_AMOUNT
  is '�����йܷ�֧�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_DEPOSIT_AMOUNT
  is '�ۼ��йܷ�֧�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.MANAGE_AMOUNT
  is '���¹����֧�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_MANAGE_AMOUNT
  is '�ۼƹ����֧�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.OTHER_PAY_AMOUNT
  is '��������֧�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_OTHER_PAY_AMOUNT
  is '�ۼ�����֧�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.PAY_AMOUNT
  is '����֧���ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.ACCUMULATE_PAY_AMOUNT
  is '�ۼ�֧���ϼ�';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.REMARK
  is '��ע';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.INSTCODE_QFII
  is 'QFII�������';
comment on column CFA.T_CFA_QFII_CHANGES_SPECIAL.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QFII_PROFIT_LOSS
prompt =====================================
prompt
create table CFA.T_CFA_QFII_PROFIT_LOSS
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QFII_PROFIT_LOSS
  is '�������Ϣ';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.INSTCODE
  is 'QFII��������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.INSTNAME
  is 'QFII��������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.SETTLE_YEAR
  is '�������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.STOCK_PROFIT_AMOUNT_INCOME
  is '��Ϣ������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.PROFIT_AMOUNT_INCOME
  is '��Ϣ������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.OTHER_AMOUNT_INCOME
  is '����������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.INCOME_TOTAL
  is '����ϼ�';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.DEPOSIT_AMOUNT
  is '�йܷѽ��';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.MANAGER_AMOUNT
  is '����ѽ��';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.TAX_AMOUNT
  is '˰����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.OTHER_AMOUNT
  is '�������ã�˰�ѣ����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.EXPEND_TOTAL
  is '���úϼ�';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.YEAR_ACHIEVE_CAPITAL_AMOUNT
  is '�������ʵ���ʱ����ã����𣩶�';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.WAIT_ACHIEVE_CAPITAL_AMOUNT
  is 'δʵ���ʱ����ã����𣩶�';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.ACCEPT_VALUE_PROFIT_LOSS
  is '���ʼ�ֵ�䶯����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.YEAR_CLEAR_PROFIT_LOSS
  is '����Ⱦ�������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.PERIOD_BEGIN_ACCUMULATE_PROFIT
  is '�ڳ��ۼ�ӯ����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.PERIOD_END_ACCUMULATE_PROFIT
  is '��ĩ�ۼ�ӯ����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.REMARK
  is '��ע';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.INSTCODE_QFII
  is 'QFII�������';
comment on column CFA.T_CFA_QFII_PROFIT_LOSS.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_QFII_REMIT
prompt ===============================
prompt
create table CFA.T_CFA_QFII_REMIT
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_QFII_REMIT
  is 'QFII�ʽ����뼰�Ṻ����ϸ��Ϣ';
comment on column CFA.T_CFA_QFII_REMIT.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_QFII_REMIT.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_QFII_REMIT.INSTCODE
  is '��������';
comment on column CFA.T_CFA_QFII_REMIT.INSTNAME
  is '��������';
comment on column CFA.T_CFA_QFII_REMIT.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_QFII_REMIT.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_QFII_REMIT.ACCOUNT
  is '�˺�';
comment on column CFA.T_CFA_QFII_REMIT.EXCHANGE_DATE
  is '�������';
comment on column CFA.T_CFA_QFII_REMIT.CHANGE_ID
  is '�䶯���';
comment on column CFA.T_CFA_QFII_REMIT.FUND_PROPERTY
  is '�ʽ�����';
comment on column CFA.T_CFA_QFII_REMIT.INCOME_CURR_CODE
  is '�������';
comment on column CFA.T_CFA_QFII_REMIT.INCOME_AMOUNT
  is '������';
comment on column CFA.T_CFA_QFII_REMIT.INCOME_AMOUNT_DOLLARS
  is '����������Ԫ';
comment on column CFA.T_CFA_QFII_REMIT.SELL_EXCHANGE_CURR_CODE
  is '������';
comment on column CFA.T_CFA_QFII_REMIT.SELL_EXCHANGE_AMOUNT
  is '�����';
comment on column CFA.T_CFA_QFII_REMIT.SELL_EXCHANGE_AMOUNT_DOLLARS
  is '���������Ԫ';
comment on column CFA.T_CFA_QFII_REMIT.SELL_EXCHANGE_AMOUNT_RMB
  is '�����������ҽ��';
comment on column CFA.T_CFA_QFII_REMIT.BUY_EXCHANGE_AMOUNT_RMB
  is '��������ҽ��';
comment on column CFA.T_CFA_QFII_REMIT.BUY_EXCHANGE_CURR_CODE
  is '�������';
comment on column CFA.T_CFA_QFII_REMIT.BUY_EXCHANGE_AMOUNT
  is '�������ý��';
comment on column CFA.T_CFA_QFII_REMIT.BUY_EXCHANGE_AMOUNT_DOLLARS
  is '����������Ԫ';
comment on column CFA.T_CFA_QFII_REMIT.EXPEND_CAPITAL_CURR_CODE
  is '����������';
comment on column CFA.T_CFA_QFII_REMIT.EXPEND_CAPITAL_AMOUNT
  is '���������';
comment on column CFA.T_CFA_QFII_REMIT.EXPEND_CAPITAL_AMOUNT_DOLLARS
  is '�����������Ԫ';
comment on column CFA.T_CFA_QFII_REMIT.EXPEND_PROFIT_CURR_CODE
  is '����������';
comment on column CFA.T_CFA_QFII_REMIT.EXPEND_PROFIT_AMOUNT
  is '���������';
comment on column CFA.T_CFA_QFII_REMIT.EXPEND_PROFIT_DOLLARS
  is '�����������Ԫ';
comment on column CFA.T_CFA_QFII_REMIT.REMARK
  is '��ע';
comment on column CFA.T_CFA_QFII_REMIT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_QFII_REMIT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_QFII_REMIT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_QFII_REMIT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_QFII_REMIT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_QFII_REMIT.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_QFII_REMIT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_QFII_REMIT.INSTCODE_QFII
  is 'QFII�������';
comment on column CFA.T_CFA_QFII_REMIT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_RQFII_ASSETS_DEBT
prompt ======================================
prompt
create table CFA.T_CFA_RQFII_ASSETS_DEBT
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_RQFII_ASSETS_DEBT
  is '�ʲ���ծ����Ϣ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.INSTCODE
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.INSTNAME
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.SETTLE_YEAR
  is '�������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.SAVING_BALANCE
  is '���д�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.COMPANY_STOCK_AMOUNT
  is '��˾��Ʊ�ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.DEBT_AMOUNT
  is 'ծȯ�ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.FUND_AMOUNT
  is '�����ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.FUND_SUPPORT_AMOUNT
  is '�ʲ�֧��֤ȯ�ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.SHARE_WARRANT_AMOUNT
  is 'Ȩ֤�ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.OTHER_INVEST_AMOUNT
  is '����Ͷ���ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.ADVANCE_STOCK
  is 'Ԥ���ɿ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.STOCK_AMOUNT_INCOME
  is 'Ӧ�չɿ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.ASKFOR_BUY_AMOUNT_INCOME
  is 'Ӧ���깺���';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.STOCK_PROFIT_AMOUNT_INCOME
  is 'Ӧ�չ�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.PROFIT_AMOUNT_INCOME
  is 'Ӧ����Ϣ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.SETTLE_RESERVE_AMOUNT
  is '���㱸�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.BUYING_BACK_ASSETS_AMOUNT
  is '���뷵�۽����ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.OTHER_AMOUNT_INCOME
  is '����Ӧ�տ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.ASSETS_TOTAL
  is '�ʲ��ܶ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.MANAGER_AMOUNT_EXPEND
  is 'Ӧ������Ѷ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.DEPOSIT_AMOUNT_EXPEND
  is 'Ӧ���йܷѶ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.TAX_AMOUNT_EXPEND
  is 'Ӧ��˰���';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.STOCK_AMOUNT_EXPEND
  is 'Ӧ���ɿ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.PROFIT_AMOUNT_EXPEND
  is 'Ӧ����Ϣ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.SSETS_SOLD_REPURCHASE_AMOUNT
  is '�����ع������ʲ����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.REDEMPTION_EXPEND
  is 'Ӧ����ؿ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.TRADE_EXPEND
  is 'Ӧ�����׷��ö�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.OTHER_AMOUNT_EXPEND
  is '����Ӧ�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.DEBT_TOTAL
  is '��ծ�ܶ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.CLEAN_ASSETS
  is '���ʲ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.CAPITAL_CLEAR_INCOME
  is '���뱾��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.YEAR_CLEAR_PROFIT_LOSS
  is '����Ⱦ�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.ACCUMULATE_PROFIT
  is '�ۼ�ӯ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.REMARK
  is '��ע';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.INSTCODE_RQFII
  is 'QFII�������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_RQFII_ASSETS_DEBT_MONTH
prompt ============================================
prompt
create table CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH
  is 'RQFII�����¶��ʲ���ծ��Ϣ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.INSTCODE
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.INSTNAME
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.SETTLE_ACCOUNTS
  is '������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.SAVING_BALANCE
  is '���д�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_COST
  is '��Ʊ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_VALUE
  is '��Ʊ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_FUND_COST
  is '��Ʊ�����ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_FUND_VALUE
  is '��Ʊ�������ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.REGULAR_PROFIT_FUND_COST
  is '�̶����������ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.REGULAR_PROFIT_FUND_VALUE
  is '�̶������������ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_FUND_COST
  is '��������ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_FUND_VALUE
  is '����������ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.SPIF_COST
  is '��ָ�ڻ��ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.SPIF_VALUE
  is '��ָ�ڻ���ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_COST
  is 'Ȩ֤�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.SHARE_WARRANT_VALUE
  is 'Ȩ֤��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_GOVERNMENT_LOAN_COST
  is '�������г���ծ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_GOVERNMENT_LOAN_VALUE
  is '�������г���ծ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_LOCAL_DEBT_COST
  is '�������г��ط�ծ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_LOCAL_DEBT_VALUE
  is '�������г��ط�ծ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_COMPANY_DEBT_COST
  is '�������г���˾ծ����ҵծ���ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_COMPANY_DEBT_VALUE
  is '�������г���˾ծ����ҵծ����ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_EX_DEBT_COST
  is '�������г���תծ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXCHANGE_EX_DEBT_VALUE
  is '�������г���תծ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_EXCHANGE_DEBT_COST
  is '�����������г�֤ȯ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_EXCHANGE_DEBT_VALUE
  is '�����������г�֤ȯ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_GOVERNMENT_DEBT_COST
  is '���м��г���ծ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_GOVERNMENT_DEBT_VALUE
  is '���м��г���ծ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FINANCIAL_DEBT_COST
  is '���м��г�����ծ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FINANCIAL_DEBT_VALUE
  is '���м��г�����ծ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_CENTRE_BILL_COST
  is '���м��г���Ʊ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_CENTRE_BILL_VALUE
  is '���м��г���Ʊ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_SHORT_FINANCING_COST
  is '���м��г���������ȯ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_SHORT_FINANCING_VALUE
  is '���м��г���������ȯ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_INTERIM_BILL_COST
  is '���м��г�����Ʊ�ݳɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_INTERIM_BILL_VALUE
  is '���м��г�����Ʊ����ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_COMPANY_LOAN_COST
  is '���м��г���ҵծ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_COMPANY_LOAN_VALUE
  is '���м��г���ҵծ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_LOCAL_LOAN_COST
  is '���м��г��ط�����ծ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_LOCAL_LOAN_VALUE
  is '���м��г��ط�����ծ��ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FUND_SUPPORT_COST
  is '���м��г��ʲ�֧�ֳɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BANK_FUND_SUPPORT_VALUE
  is '���м��г��ʲ�֧����ֵ';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_BANK_LOAN_COST
  is '�������м��г�֤ȯ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_BANK_LOAN_VALUE
  is '�������м��г�֤ȯ�ɱ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.INVESTMENT_VALUE_TOTAL
  is 'Ͷ����ֵ�ϼ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_INCOME
  is 'Ӧ���������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.STOCK_PROFIT_AMOUNT_INCOME
  is 'Ӧ�չ������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.PROFIT_AMOUNT_INCOME
  is 'Ӧ����Ϣ���';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_INCOME
  is '����Ӧ�տ���';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.ASSETS_TOTAL
  is '�ʲ���ֵ�ϼ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.CLEAR_AMOUNT_EXPEND
  is 'Ӧ���������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.DEPOSIT_AMOUNT_EXPEND
  is 'Ӧ���йܷѽ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.MANAGER_AMOUNT_EXPEND
  is 'Ӧ������ѽ��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.TAX_AMOUNT_EXPEND
  is 'Ӧ��˰����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.OTHER_AMOUNT_EXPEND
  is '����Ӧ������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.DEBT_TOTAL
  is '��ծ�ϼ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.CLEAN_ASSETS
  is '���ʲ�';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.INCOME_VELOCITY
  is '����������ת��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.EXPEND_VELOCITY
  is '����������ת��';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT
  is 'ƽ��������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.AVERAGE_PROFIT_MOUTH
  is '����ƽ��������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.REMARK
  is '��ע';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.INSTCODE_RQFII
  is 'QFII�������';
comment on column CFA.T_CFA_RQFII_ASSETS_DEBT_MONTH.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_RQFII_CHANGES
prompt ==================================
prompt
create table CFA.T_CFA_RQFII_CHANGES
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_RQFII_CHANGES
  is 'RQFII����������˻���֧�����Ϣ';
comment on column CFA.T_CFA_RQFII_CHANGES.BUSINESSID
  is 'ҵ����';
comment on column CFA.T_CFA_RQFII_CHANGES.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_RQFII_CHANGES.INSTCODE
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_CHANGES.INSTNAME
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCOUNT_NAME
  is 'RQFII������˻�����';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCOUNT
  is 'RQFII������˻��˺�';
comment on column CFA.T_CFA_RQFII_CHANGES.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_RQFII_CHANGES.SETTLE_DATE
  is '������';
comment on column CFA.T_CFA_RQFII_CHANGES.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_RQFII_CHANGES.INVEST_CAPITAL_INCOME_AMOUNT
  is '����Ͷ�ʱ��������';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_INVEST_CAPITAL_IN_AMOUNT
  is '�ۼ�Ͷ�ʱ��������';
comment on column CFA.T_CFA_RQFII_CHANGES.SELL_SECURITY_AMOUNT
  is '��������֤ȯ���üۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_SELL_SECURITY_AMOUNT
  is '�ۼ�����֤ȯ���üۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.EXCHANGE_SELL_SECURITY_AMOUNT
  is '���½������г�����֤ȯ���üۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_EX_SELL_SECURITY_AMOUNT
  is '�ۼƽ������г�����֤ȯ���üۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.BANK_SELL_SECURITY_AMOUNT
  is '�������м��г�����֤ȯ���üۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_BANK_SELL_SECURITY_AMOUNT
  is '�ۼ����м��г�����֤ȯ���üۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.DIVIDEND_INCOME
  is '���¹���������';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_DIVIDEND_INCOME
  is '�ۼƹ���������';
comment on column CFA.T_CFA_RQFII_CHANGES.INTEREST_INCOME
  is '������Ϣ������';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_INTEREST_INCOME
  is '�ۼ���Ϣ������';
comment on column CFA.T_CFA_RQFII_CHANGES.OTHER_INCOME
  is '��������������';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCUMULATE_OTHER_INCOME
  is '�ۼ�����������';
comment on column CFA.T_CFA_RQFII_CHANGES.INCOME_TOTAL
  is '��������ϼ�';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCUMULATE_INCOME_TOTAL
  is '�ۼ�����ϼ�';
comment on column CFA.T_CFA_RQFII_CHANGES.EXPEND_CAPITAL_AMOUNT
  is '���»���ʽ���';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_EXPEND_CAPITAL_AMOUNT
  is '�ۼƻ���ʽ���';
comment on column CFA.T_CFA_RQFII_CHANGES.BUY_EXPEND_CAPITAL_AMOUNT
  is '���¹������ʽ���';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_BUY_EXPEND_CAPITAL_AMOUNT
  is '�ۼƹ������ʽ���';
comment on column CFA.T_CFA_RQFII_CHANGES.PAY_SECURITY_AMOUNT
  is '��������֤ȯ֧���ۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_PAY_SECURITY_AMOUNT
  is '�ۼ�����֤ȯ֧���ۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.EXCHANGE_PAY_SECURITY_AMOUNT
  is '���½������г�����֤ȯ֧���ۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_EX_PAY_SECURITY_AMOUNT
  is '�ۼƽ������г�����֤ȯ֧���ۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.BANK_PAY_SECURITY_AMOUNT
  is '�������м��г�����֤ȯ֧���ۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.ACC_BANK_PAY_SECURITY_AMOUNT
  is '�ۼ����м��г�����֤ȯ֧���ۿ��';
comment on column CFA.T_CFA_RQFII_CHANGES.DEPOSIT_AMOUNT
  is '�����йܷ�֧�����';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCUMULATE_DEPOSIT_AMOUNT
  is '�ۼ��йܷ�֧�����';
comment on column CFA.T_CFA_RQFII_CHANGES.MANAGE_AMOUNT
  is '���¹����֧�����';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCUMULATE_MANAGE_AMOUNT
  is '�ۼƹ����֧�����';
comment on column CFA.T_CFA_RQFII_CHANGES.OTHER_PAY_AMOUNT
  is '��������֧�����';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCUMULATE_OTHER_PAY_AMOUNT
  is '�ۼ�����֧�����';
comment on column CFA.T_CFA_RQFII_CHANGES.PAY_AMOUNT
  is '����֧���ϼ�';
comment on column CFA.T_CFA_RQFII_CHANGES.ACCUMULATE_PAY_AMOUNT
  is '�ۼ�֧���ϼ�';
comment on column CFA.T_CFA_RQFII_CHANGES.REMARK
  is '��ע';
comment on column CFA.T_CFA_RQFII_CHANGES.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_RQFII_CHANGES.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_RQFII_CHANGES.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_RQFII_CHANGES.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_RQFII_CHANGES.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_RQFII_CHANGES.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_RQFII_CHANGES.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_RQFII_CHANGES.INSTCODE_RQFII
  is 'QFII�������';
comment on column CFA.T_CFA_RQFII_CHANGES.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_RQFII_INCOME_EXPEND
prompt ========================================
prompt
create table CFA.T_CFA_RQFII_INCOME_EXPEND
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_RQFII_INCOME_EXPEND
  is 'RQFII����֤ȯͶ���ʽ�������Ϣ';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.BUSINESSID
  is 'ҵ����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.INSTCODE
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.INSTNAME
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACCOUNT_NAME
  is 'RQFII������˻�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACCOUNT
  is 'RQFII������˻��˺�';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.REPORT_PERIOD
  is '������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.SETTLE_DATE
  is '������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.CAPITAL_INCOME
  is '���»��뱾����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACC_CAPITAL_INCOME
  is '�ۼƻ��뱾����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.EXPEND_CAPITAL_AMOUNT
  is '���»��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACC_EXPEND_CAPITAL_AMOUNT
  is '�ۼƻ��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.BUY_EXPEND_CAPITAL_AMOUNT
  is '���¹�����������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACC_BUY_EXPEND_CAPITAL_AMOUNT
  is '�ۼƹ�����������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.EXPEND_PROFIT_AMOUNT
  is '���»��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACC_EXPEND_PROFIT_AMOUNT
  is '�ۼƻ��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.BUY_EXPEND_PROFIT_AMOUNT
  is '���¹�����������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACC_BUY_EXPEND_PROFIT_AMOUNT
  is '�ۼƹ�����������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.CLEAR_INCOME_AMOUNT
  is '���¾������ʽ��';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.ACC_CLEAR_INCOME_AMOUNT
  is '�ۼƾ������ʽ��';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.REMARK
  is '��ע';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.INSTCODE_RQFII
  is 'QFII�������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_RQFII_INCOME_EXPEND_BUY
prompt ============================================
prompt
create table CFA.T_CFA_RQFII_INCOME_EXPEND_BUY
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_RQFII_INCOME_EXPEND_BUY
  is '����Һϸ������Ͷ�����ʽ����뼰������ϸ��Ϣ';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.INSTCODE
  is '�������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.INSTNAME
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.BUSINESS_NUM
  is 'ҵ����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.PRODUCT_NAME
  is '��Ʒ����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.ACCOUNT_NAME
  is '������˻�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.ACCOUNT
  is '������˻��˺�';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.CHANGE_ID
  is '�䶯���';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.FUND_PROPERTY
  is '�˻��ʽ���Դ����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.EXCHANGE_DATE
  is '�������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.FUND_INCOME_AMOUNT
  is '�ʽ������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.EXPEND_AMOUNT
  is '����һ�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.BUY_EXPEND_AMOUNT
  is '����ҹ��������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.BUY_EXCHANGE_CURR_CODE
  is '�������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.BUY_EXCHANGE_AMOUNT
  is '�������ý��';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.FUND_CLEAR_INCOME
  is '�ʽ𾻻�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.REMARK
  is '��ע';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.INSTCODE_RQFII
  is 'QFII�������';
comment on column CFA.T_CFA_RQFII_INCOME_EXPEND_BUY.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_RQFII_PROFIT_LOSS
prompt ======================================
prompt
create table CFA.T_CFA_RQFII_PROFIT_LOSS
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_RQFII_PROFIT_LOSS
  is ' �������Ϣ';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.BUSINESSID
  is 'ҵ��id';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.CUSTODIAN_ID
  is '�й��˴���';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.INSTCODE
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.INSTNAME
  is 'RQFII��������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.SETTLE_YEAR
  is '�������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.CURRENCE_CODE
  is '����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.STOCK_PROFIT_AMOUNT_INCOME
  is '����������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.PROFIT_AMOUNT_INCOME
  is '��Ϣ������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.ACCEPT_VALUE_PROFIT_LOSS
  is '���ʼ�ֵ�䶯������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.INVEST_PROFIT_LOSS_AMOUNT
  is 'Ͷ��������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.OTHER_AMOUNT_INCOME
  is '����������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.INCOME_TOTAL
  is '����ϼ�';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.DEPOSIT_AMOUNT
  is '�йܷѽ��';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.MANAGER_AMOUNT
  is '����ѽ��';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.TAX_AMOUNT
  is '˰����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.PROFIT_EXPEND_AMOUNT
  is '��Ϣ֧�����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.OTHER_AMOUNT
  is '�������ý��';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.EXPEND_TOTAL
  is '���úϼ�';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.ACHIEVE_CAPITAL_AMOUNT
  is '��ʵ���ʱ����ã����𣩶�';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.WAIT_ACHIEVE_CAPITAL_AMOUNT
  is 'δʵ���ʱ����ã����𣩶�';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.YEAR_CLEAR_PROFIT_LOSS
  is '����Ⱦ�������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.PERIOD_BEGIN_ACCUMULATE_PROFIT
  is '�ڳ��ۼ�ӯ����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.PERIOD_END_ACCUMULATE_PROFIT
  is '��ĩ�ۼ�ӯ����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.REMARK
  is '��ע';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.AUDITNAME
  is '�����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.AUDITDATE
  is '�������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.IMPORTDATE
  is '¼������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.DATASTATUS
  is '����״̬';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.BUSINESSDATE
  is 'ҵ������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.MODIFYUSER
  is 'ά����';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.INSTCODE_RQFII
  is 'QFII�������';
comment on column CFA.T_CFA_RQFII_PROFIT_LOSS.IS_HANDIWORK
  is '�Ƿ��ֹ�¼��(Y)';

prompt
prompt Creating table T_CFA_SUB_BENEFICIARY_INFO
prompt =========================================
prompt
create table CFA.T_CFA_SUB_BENEFICIARY_INFO
(
  BENCODE        VARCHAR2(64),
  BENAME         VARCHAR2(256),
  BENAMEN        VARCHAR2(256),
  BENTYPE        CHAR(8),
  BENCOUNTRYCODE CHAR(3),
  BUSINESSID     VARCHAR2(50) not null,
  SUBID          VARCHAR2(50) not null
)
tablespace CFA
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
comment on table CFA.T_CFA_SUB_BENEFICIARY_INFO
  is '��������Ϣ��';
comment on column CFA.T_CFA_SUB_BENEFICIARY_INFO.BENCODE
  is '�����˴���';
comment on column CFA.T_CFA_SUB_BENEFICIARY_INFO.BENAME
  is '��������������';
comment on column CFA.T_CFA_SUB_BENEFICIARY_INFO.BENAMEN
  is '������Ӣ������';
comment on column CFA.T_CFA_SUB_BENEFICIARY_INFO.BENTYPE
  is '����������';
comment on column CFA.T_CFA_SUB_BENEFICIARY_INFO.BENCOUNTRYCODE
  is '�����˹���/����';
comment on column CFA.T_CFA_SUB_BENEFICIARY_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_BENEFICIARY_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_BENEFICIARY_INFO
  add constraint PK_T_CFA_SUB_BENEFICIARY_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_SUB_BENEFICIARY_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_BENEFICIARY_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_BENEFICIARY_INFO to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_CREDITOR_INFO
prompt ======================================
prompt
create table CFA.T_CFA_SUB_CREDITOR_INFO
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_SUB_CREDITOR_INFO
  is 'ծȨ����Ϣ��';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.CREDITORCODE
  is 'ծȨ�˴���';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.CREDITORNAME
  is 'ծȨ����������';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.CREDITORNAMEN
  is 'ծȨ��Ӣ������';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.CREDITORCA
  is 'ծȨ��ǩԼ���';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.CREDITORTYPE
  is 'ծȨ�����ʹ���';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.CREHQCODE
  is 'ծȨ���ܲ����ڹ��ң�����������';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.OPERCODE
  is 'ծȨ�˾�Ӫ�����ڹ��ң�����������';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_CREDITOR_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_CREDITOR_INFO
  add constraint PK_T_CFA_SUB_CREDITOR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
grant select, insert, update, delete on CFA.T_CFA_SUB_CREDITOR_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_CREDITOR_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_CREDITOR_INFO to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_EXPLBALA_INFO
prompt ======================================
prompt
create table CFA.T_CFA_SUB_EXPLBALA_INFO
(
  EXPLCURR      CHAR(3),
  EXPLBALA      NUMBER(27,2),
  EXPLPERAMOUNT NUMBER(27,2),
  PLCOSEAMOUNT  NUMBER(27,2),
  BUSINESSID    VARCHAR2(50) not null,
  SUBID         VARCHAR2(50) not null
)
tablespace CFA
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
comment on table CFA.T_CFA_SUB_EXPLBALA_INFO
  is '��Ѻ��������Ϣ��';
comment on column CFA.T_CFA_SUB_EXPLBALA_INFO.EXPLCURR
  is '��Ѻ������';
comment on column CFA.T_CFA_SUB_EXPLBALA_INFO.EXPLBALA
  is '��Ѻ������';
comment on column CFA.T_CFA_SUB_EXPLBALA_INFO.EXPLPERAMOUNT
  is '��Ѻ�����Լ���';
comment on column CFA.T_CFA_SUB_EXPLBALA_INFO.PLCOSEAMOUNT
  is '��Ѻ��Լ�����';
comment on column CFA.T_CFA_SUB_EXPLBALA_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_EXPLBALA_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_EXPLBALA_INFO
  add constraint PK_T_CFA_SUB_EXPLBALA_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_SUB_EXPLBALA_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_EXPLBALA_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_EXPLBALA_INFO to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_EXPLCURR_INFO
prompt ======================================
prompt
create table CFA.T_CFA_SUB_EXPLCURR_INFO
(
  EXPLCURR   CHAR(3),
  EXPLAMOUNT NUMBER(27,2),
  BUSINESSID VARCHAR2(50) not null,
  SUBID      VARCHAR2(70) not null
)
tablespace CFA
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
comment on table CFA.T_CFA_SUB_EXPLCURR_INFO
  is '��Ѻ�������Ϣ��';
comment on column CFA.T_CFA_SUB_EXPLCURR_INFO.EXPLCURR
  is '��Ѻ������';
comment on column CFA.T_CFA_SUB_EXPLCURR_INFO.EXPLAMOUNT
  is '��Ѻ�����';
comment on column CFA.T_CFA_SUB_EXPLCURR_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_EXPLCURR_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_EXPLCURR_INFO
  add constraint PK_T_CFA_SUB_EXPLCURR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_SUB_EXPLCURR_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_EXPLCURR_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_EXPLCURR_INFO to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_FOGUARANTOR_INFO
prompt =========================================
prompt
create table CFA.T_CFA_SUB_FOGUARANTOR_INFO
(
  FOGUCODE      VARCHAR2(64),
  FOGUNAME      VARCHAR2(256),
  FOGUNAMEN     VARCHAR2(256),
  FOGURECODE    CHAR(3),
  GUARANTEETYPE CHAR(2),
  BUSINESSID    VARCHAR2(50) not null,
  SUBID         VARCHAR2(70) not null
)
tablespace CFA
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
comment on table CFA.T_CFA_SUB_FOGUARANTOR_INFO
  is '���ⵣ������Ϣ��';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO.FOGUCODE
  is '���ⵣ���˴���';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO.FOGUNAME
  is '���ⵣ������������';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO.FOGUNAMEN
  is '���ⵣ����Ӣ������';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO.FOGURECODE
  is '���ⵣ����ע��ع���/��������';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO.GUARANTEETYPE
  is '������ʽ';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_FOGUARANTOR_INFO
  add constraint PK_T_CFA_SUB_FOGUARANTOR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_SUB_FOGUARANTOR_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_FOGUARANTOR_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_FOGUARANTOR_INFO to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_FOGUARANTOR_INFO_OLD
prompt =============================================
prompt
create table CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD
(
  FOGUCODE      VARCHAR2(64),
  FOGUNAME      VARCHAR2(256),
  FOGUNAMEN     VARCHAR2(256),
  FOGURECODE    CHAR(3),
  GUARANTEETYPE CHAR(2),
  BUSINESSID    VARCHAR2(50) not null,
  SUBID         VARCHAR2(70) not null
)
tablespace CFA
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
comment on table CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD
  is '���ⵣ������Ϣ��';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD.FOGUCODE
  is '���ⵣ���˴���';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD.FOGUNAME
  is '���ⵣ������������';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD.FOGUNAMEN
  is '���ⵣ����Ӣ������';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD.FOGURECODE
  is '���ⵣ����ע��ع���/��������';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD.GUARANTEETYPE
  is '������ʽ';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD
  add constraint PK_T_CFA_SUB_FOGUARANTOR_IN_O primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_FOGUARANTOR_INFO_OLD to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_GUARANTOR_INFO
prompt =======================================
prompt
create table CFA.T_CFA_SUB_GUARANTOR_INFO
(
  GUEDCODE     VARCHAR2(64),
  GUEDNAME     VARCHAR2(256),
  GUEDNAMEN    VARCHAR2(256),
  GUEDTYPE     CHAR(8),
  GUEDCOUNCODE CHAR(3),
  BUSINESSID   VARCHAR2(50) not null,
  SUBID        VARCHAR2(50) not null
)
tablespace CFA
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
comment on table CFA.T_CFA_SUB_GUARANTOR_INFO
  is '����������Ϣ��';
comment on column CFA.T_CFA_SUB_GUARANTOR_INFO.GUEDCODE
  is '�������˴���';
comment on column CFA.T_CFA_SUB_GUARANTOR_INFO.GUEDNAME
  is '����������������';
comment on column CFA.T_CFA_SUB_GUARANTOR_INFO.GUEDNAMEN
  is '��������Ӣ������';
comment on column CFA.T_CFA_SUB_GUARANTOR_INFO.GUEDTYPE
  is '������������';
comment on column CFA.T_CFA_SUB_GUARANTOR_INFO.GUEDCOUNCODE
  is '�������˹���/��������';
comment on column CFA.T_CFA_SUB_GUARANTOR_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_GUARANTOR_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_GUARANTOR_INFO
  add constraint PK_T_CFA_SUB_GUARANTOR_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
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
grant select, insert, update, delete on CFA.T_CFA_SUB_GUARANTOR_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_GUARANTOR_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_GUARANTOR_INFO to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_GUPER_INFO
prompt ===================================
prompt
create table CFA.T_CFA_SUB_GUPER_INFO
(
  GUPERDATE    VARCHAR2(8),
  GUPERCURR    CHAR(3),
  GUPERAMOUNT  NUMBER(27,2),
  PGUPERAMOUNT NUMBER(27,2),
  BUSINESSID   VARCHAR2(50) not null,
  SUBID        VARCHAR2(50) not null
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_SUB_GUPER_INFO
  is '��Լ��Ϣ��������';
comment on column CFA.T_CFA_SUB_GUPER_INFO.GUPERDATE
  is '��Լ����';
comment on column CFA.T_CFA_SUB_GUPER_INFO.GUPERCURR
  is '��Լ����';
comment on column CFA.T_CFA_SUB_GUPER_INFO.GUPERAMOUNT
  is '��Լ���';
comment on column CFA.T_CFA_SUB_GUPER_INFO.PGUPERAMOUNT
  is '������Լ���';
comment on column CFA.T_CFA_SUB_GUPER_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_GUPER_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_GUPER_INFO
  add constraint PK_T_CFA_SUB_GUPER_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
grant select, insert, update, delete on CFA.T_CFA_SUB_GUPER_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_GUPER_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_GUPER_INFO to DATACOREOPR;

prompt
prompt Creating table T_CFA_SUB_PROJECT_INFO
prompt =====================================
prompt
create table CFA.T_CFA_SUB_PROJECT_INFO
(
  PROJECTNAME VARCHAR2(256),
  BUSINESSID  VARCHAR2(50) not null,
  SUBID       VARCHAR2(50) not null
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_CFA_SUB_PROJECT_INFO
  is '��Ŀ��Ϣ��';
comment on column CFA.T_CFA_SUB_PROJECT_INFO.PROJECTNAME
  is '��Ŀ����';
comment on column CFA.T_CFA_SUB_PROJECT_INFO.BUSINESSID
  is '����ID';
comment on column CFA.T_CFA_SUB_PROJECT_INFO.SUBID
  is '����ID';
alter table CFA.T_CFA_SUB_PROJECT_INFO
  add constraint PK_T_CFA_SUB_PROJECT_INFO primary key (BUSINESSID, SUBID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
grant select, insert, update, delete on CFA.T_CFA_SUB_PROJECT_INFO to DATACORE;
grant select, insert, update, delete on CFA.T_CFA_SUB_PROJECT_INFO to DATACOREFF;
grant select, insert, update, delete on CFA.T_CFA_SUB_PROJECT_INFO to DATACOREOPR;

prompt
prompt Creating table T_CODE_DICTIONARY
prompt ================================
prompt
create table CFA.T_CODE_DICTIONARY
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column CFA.T_CODE_DICTIONARY.BEGINDATE
  is '��������';
comment on column CFA.T_CODE_DICTIONARY.ENDDATE
  is 'ͣ������';
create unique index CFA.UNIQUE_T_CODE_DICTIONARY on CFA.T_CODE_DICTIONARY (CODE_TYPE, CODE_VALUE_STANDARD_NUM, CODE_SYM)
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 896K
    next 1M
    minextents 1
    maxextents unlimited
  );
grant select on CFA.T_CODE_DICTIONARY to DATACORE;
grant select on CFA.T_CODE_DICTIONARY to DATACOREFF;
grant select on CFA.T_CODE_DICTIONARY to DATACOREOPR;

prompt
prompt Creating table T_COMPANY_INFO
prompt =============================
prompt
create table CFA.T_COMPANY_INFO
(
  RPTNO                 VARCHAR2(50),
  ACTIONTYPE            VARCHAR2(50),
  ACTIONDESC            VARCHAR2(50),
  CUSTCODE              VARCHAR2(18),
  CUSTNAME              VARCHAR2(128),
  AREACODE              VARCHAR2(6),
  CUSTADDR              VARCHAR2(512),
  POSTCODE              VARCHAR2(6),
  INDUSTRYCODE          VARCHAR2(4),
  ATTRCODE              VARCHAR2(3),
  COUNTRYCODE           VARCHAR2(3),
  ISTAXFREE             VARCHAR2(128),
  TAXFREECODE           VARCHAR2(2),
  T_INVCOUNTRYCODE_INFO VARCHAR2(50),
  EMAIL                 VARCHAR2(128),
  RPTMETHOD             VARCHAR2(1),
  ECEXADDR              VARCHAR2(128),
  REMARKS               VARCHAR2(256),
  T_COMPANY_OPENINFO    VARCHAR2(50),
  INSTCODE              VARCHAR2(50),
  AUDITNAME             VARCHAR2(50),
  DATASTATUS            NUMBER(10),
  AUDITDATE             DATE,
  IMPORTDATE            DATE,
  BUSINESSID            VARCHAR2(50) not null,
  BATCHNO               VARCHAR2(50),
  MODIFYUSER            VARCHAR2(30),
  ISCOMMIT              NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_COMPANY_INFO
  is '��λ������Ϣ����λ���������';
comment on column CFA.T_COMPANY_INFO.CUSTCODE
  is '��֯��������';
comment on column CFA.T_COMPANY_INFO.CUSTNAME
  is '��֯��������';
comment on column CFA.T_COMPANY_INFO.AREACODE
  is 'ס��/Ӫҵ����';
comment on column CFA.T_COMPANY_INFO.CUSTADDR
  is '��λ��ַ';
comment on column CFA.T_COMPANY_INFO.POSTCODE
  is '��������';
comment on column CFA.T_COMPANY_INFO.INDUSTRYCODE
  is '��ҵ���Դ���';
comment on column CFA.T_COMPANY_INFO.ATTRCODE
  is '�������ʹ���';
comment on column CFA.T_COMPANY_INFO.COUNTRYCODE
  is '��פ���Ҵ���';
comment on column CFA.T_COMPANY_INFO.ISTAXFREE
  is '�Ƿ����⾭��������ҵ';
comment on column CFA.T_COMPANY_INFO.TAXFREECODE
  is '���⾭��������ҵ����';
comment on column CFA.T_COMPANY_INFO.T_INVCOUNTRYCODE_INFO
  is 'Ͷ�ʹ������';
comment on column CFA.T_COMPANY_INFO.EMAIL
  is '������ϵ��eMail ';
comment on column CFA.T_COMPANY_INFO.RPTMETHOD
  is '�걨��ʽ';
comment on column CFA.T_COMPANY_INFO.ECEXADDR
  is '������eMail ';
comment on column CFA.T_COMPANY_INFO.REMARKS
  is '��ע';
comment on column CFA.T_COMPANY_INFO.T_COMPANY_OPENINFO
  is '������Ϣ';
comment on column CFA.T_COMPANY_INFO.INSTCODE
  is '�������';
comment on column CFA.T_COMPANY_INFO.AUDITNAME
  is '�����';
comment on column CFA.T_COMPANY_INFO.DATASTATUS
  is '����״̬';
comment on column CFA.T_COMPANY_INFO.AUDITDATE
  is '�������';
comment on column CFA.T_COMPANY_INFO.IMPORTDATE
  is '¼������';
comment on column CFA.T_COMPANY_INFO.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_COMPANY_INFO.BATCHNO
  is '���κ�';
comment on column CFA.T_COMPANY_INFO.MODIFYUSER
  is 'ά����';
comment on column CFA.T_COMPANY_INFO.ISCOMMIT
  is '�Ƿ��ύ';
create unique index CFA.UNIQUE_T_COMPANY_INFO on CFA.T_COMPANY_INFO (BUSINESSID)
  tablespace CFA
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
prompt Creating table T_CONFIG_MTS
prompt ===========================
prompt
create table CFA.T_CONFIG_MTS
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
tablespace CFA
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
comment on table CFA.T_CONFIG_MTS
  is 'MTS�������ñ�';
comment on column CFA.T_CONFIG_MTS.RPTTITLE
  is '�������';
comment on column CFA.T_CONFIG_MTS.IP
  is 'IP��ַ';
comment on column CFA.T_CONFIG_MTS.PORT
  is '�˿ں�';
comment on column CFA.T_CONFIG_MTS.LINK
  is '���ӷ�ʽ';
comment on column CFA.T_CONFIG_MTS.USERNAME
  is '��¼�û�';
comment on column CFA.T_CONFIG_MTS.PASSWORD
  is '��¼����';
comment on column CFA.T_CONFIG_MTS.SENDPATH
  is '�ϴ��ļ�·��';
comment on column CFA.T_CONFIG_MTS.FEEDBACKPATH
  is '�����ļ�·��';
comment on column CFA.T_CONFIG_MTS.RUNTIME
  is '����ʱ��';
comment on column CFA.T_CONFIG_MTS.ENABLED
  is '�Ƿ�����';
comment on column CFA.T_CONFIG_MTS.ERRORFILESPATH
  is '�����ļ�·��';
comment on column CFA.T_CONFIG_MTS.HISTORYSENDPATH
  is '������ʷĿ¼';
comment on column CFA.T_CONFIG_MTS.ERRORFILESENABLED
  is '�Ƿ����ô����ļ�Ŀ¼';
comment on column CFA.T_CONFIG_MTS.HISTORYSENDENABLED
  is '�Ƿ����÷�����ʷĿ¼';
comment on column CFA.T_CONFIG_MTS.MODEL
  is '����ģʽ';
alter table CFA.T_CONFIG_MTS
  add constraint PK_T_CONFIG_MTS primary key (RPTTITLE)
  using index 
  tablespace CFA
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
create table CFA.T_CONFIG_PARAMETER
(
  CONFIGNAME  VARCHAR2(50) not null,
  CONFIGVALUE VARCHAR2(100),
  CONFIGDESC  VARCHAR2(512),
  CONFIGPROJ  VARCHAR2(256),
  CREATEDATE  VARCHAR2(20)
)
tablespace CFA
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
comment on table CFA.T_CONFIG_PARAMETER
  is '�����������¼';
comment on column CFA.T_CONFIG_PARAMETER.CONFIGNAME
  is '������';
comment on column CFA.T_CONFIG_PARAMETER.CONFIGVALUE
  is '����ֵ';
comment on column CFA.T_CONFIG_PARAMETER.CONFIGDESC
  is '��������';
comment on column CFA.T_CONFIG_PARAMETER.CONFIGPROJ
  is '������Ŀ';
comment on column CFA.T_CONFIG_PARAMETER.CREATEDATE
  is '��������';
alter table CFA.T_CONFIG_PARAMETER
  add constraint PK_T_CONFIG_PARAMETER primary key (CONFIGNAME)
  using index 
  tablespace CFA
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
prompt Creating table T_CUSTOMER_CONFIG
prompt ================================
prompt
create table CFA.T_CUSTOMER_CONFIG
(
  CUSTID     VARCHAR2(50),
  CUSTCOD    VARCHAR2(9),
  CUSTNM     VARCHAR2(128),
  INSTCODE   VARCHAR2(50),
  USERNAME   VARCHAR2(50),
  MODIFYTIME VARCHAR2(20)
)
tablespace CFA
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
comment on table CFA.T_CUSTOMER_CONFIG
  is '��֯�����������ƶ��ձ�';
comment on column CFA.T_CUSTOMER_CONFIG.CUSTID
  is 'Customer ID';
comment on column CFA.T_CUSTOMER_CONFIG.CUSTCOD
  is '��֯��������';
comment on column CFA.T_CUSTOMER_CONFIG.CUSTNM
  is '��֯��������';
comment on column CFA.T_CUSTOMER_CONFIG.INSTCODE
  is '��������';
comment on column CFA.T_CUSTOMER_CONFIG.USERNAME
  is 'ά����Ա����';
comment on column CFA.T_CUSTOMER_CONFIG.MODIFYTIME
  is 'ά��ʱ��';

prompt
prompt Creating table T_DECL_INCOME
prompt ============================
prompt
create table CFA.T_DECL_INCOME
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  COUNTRY    VARCHAR2(3),
  PAYTYPE    CHAR(1),
  TXCODE     VARCHAR2(6),
  TC1AMT     NUMBER(22),
  TXREM      VARCHAR2(200),
  TXCODE2    VARCHAR2(6),
  TC2AMT     NUMBER(22),
  TX2REM     VARCHAR2(200),
  ISREF      CHAR(1),
  BILLNO     VARCHAR2(50),
  CRTUSER    VARCHAR2(20),
  INPTELC    VARCHAR2(20),
  RPTDATE    CHAR(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  DATASTATUS NUMBER(10),
  AUDITDATE  DATE,
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50),
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0,
  PAYATTR    CHAR(1)
)
tablespace CFA
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
comment on table CFA.T_DECL_INCOME
  is '�걨��Ϣ�����������걨��';
comment on column CFA.T_DECL_INCOME.ACTIONTYPE
  is '��������';
comment on column CFA.T_DECL_INCOME.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_DECL_INCOME.RPTNO
  is '�걨����';
comment on column CFA.T_DECL_INCOME.COUNTRY
  is '�����˳�פ����/��������';
comment on column CFA.T_DECL_INCOME.PAYTYPE
  is '�տ�����';
comment on column CFA.T_DECL_INCOME.TXCODE
  is '���ױ���1';
comment on column CFA.T_DECL_INCOME.TC1AMT
  is '��Ӧ���1';
comment on column CFA.T_DECL_INCOME.TXREM
  is '���׸���1';
comment on column CFA.T_DECL_INCOME.TXCODE2
  is '���ױ���2';
comment on column CFA.T_DECL_INCOME.TC2AMT
  is '��Ӧ���2';
comment on column CFA.T_DECL_INCOME.TX2REM
  is '���׸���2';
comment on column CFA.T_DECL_INCOME.ISREF
  is '�Ƿ�Ϊ��˰������������';
comment on column CFA.T_DECL_INCOME.BILLNO
  is '����������/�������/ҵ����';
comment on column CFA.T_DECL_INCOME.CRTUSER
  is '���';
comment on column CFA.T_DECL_INCOME.INPTELC
  is '��˵绰';
comment on column CFA.T_DECL_INCOME.RPTDATE
  is '�걨����';
comment on column CFA.T_DECL_INCOME.INSTCODE
  is '�������';
comment on column CFA.T_DECL_INCOME.AUDITNAME
  is '�����';
comment on column CFA.T_DECL_INCOME.DATASTATUS
  is '����״̬';
comment on column CFA.T_DECL_INCOME.AUDITDATE
  is '�������';
comment on column CFA.T_DECL_INCOME.IMPORTDATE
  is '¼������';
comment on column CFA.T_DECL_INCOME.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_DECL_INCOME.BATCHNO
  is '���κ�';
comment on column CFA.T_DECL_INCOME.MODIFYUSER
  is 'ά����';
comment on column CFA.T_DECL_INCOME.ISCOMMIT
  is '�Ƿ��ύ';
comment on column CFA.T_DECL_INCOME.PAYATTR
  is '��������';

prompt
prompt Creating table T_DECL_PAYMENT
prompt =============================
prompt
create table CFA.T_DECL_PAYMENT
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  COUNTRY    VARCHAR2(3),
  PAYTYPE    CHAR(1),
  TXCODE     VARCHAR2(6),
  TC1AMT     NUMBER(22),
  TXREM      VARCHAR2(200),
  TXCODE2    VARCHAR2(6),
  TC2AMT     NUMBER(22),
  TX2REM     VARCHAR2(200),
  ISREF      CHAR(1),
  CRTUSER    VARCHAR2(20),
  INPTELC    VARCHAR2(20),
  RPTDATE    CHAR(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  DATASTATUS NUMBER(10),
  AUDITDATE  DATE,
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0,
  REGNO      VARCHAR2(40)
)
tablespace CFA
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
comment on table CFA.T_DECL_PAYMENT
  is '�걨��Ϣ�����⸶��/�ж�֪ͨ��';
comment on column CFA.T_DECL_PAYMENT.ACTIONTYPE
  is '��������';
comment on column CFA.T_DECL_PAYMENT.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_DECL_PAYMENT.RPTNO
  is '�걨����';
comment on column CFA.T_DECL_PAYMENT.COUNTRY
  is '�տ��˳�פ����/��������';
comment on column CFA.T_DECL_PAYMENT.PAYTYPE
  is '��������';
comment on column CFA.T_DECL_PAYMENT.TXCODE
  is '���ױ���1';
comment on column CFA.T_DECL_PAYMENT.TC1AMT
  is '��Ӧ���1';
comment on column CFA.T_DECL_PAYMENT.TXREM
  is '���׸���1';
comment on column CFA.T_DECL_PAYMENT.TXCODE2
  is '���ױ���2';
comment on column CFA.T_DECL_PAYMENT.TC2AMT
  is '��Ӧ���2';
comment on column CFA.T_DECL_PAYMENT.TX2REM
  is '���׸���2';
comment on column CFA.T_DECL_PAYMENT.ISREF
  is '�Ƿ�Ϊ��˰�������¸���';
comment on column CFA.T_DECL_PAYMENT.CRTUSER
  is '��ϵ��';
comment on column CFA.T_DECL_PAYMENT.INPTELC
  is '��ϵ�˵绰';
comment on column CFA.T_DECL_PAYMENT.RPTDATE
  is '�걨����';
comment on column CFA.T_DECL_PAYMENT.INSTCODE
  is '�������';
comment on column CFA.T_DECL_PAYMENT.AUDITNAME
  is '�����';
comment on column CFA.T_DECL_PAYMENT.DATASTATUS
  is '����״̬';
comment on column CFA.T_DECL_PAYMENT.AUDITDATE
  is '�������';
comment on column CFA.T_DECL_PAYMENT.IMPORTDATE
  is '¼������';
comment on column CFA.T_DECL_PAYMENT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_DECL_PAYMENT.BATCHNO
  is '���κ�';
comment on column CFA.T_DECL_PAYMENT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_DECL_PAYMENT.ISCOMMIT
  is '�Ƿ��ύ';
comment on column CFA.T_DECL_PAYMENT.REGNO
  is '����������/�������/ҵ����';

prompt
prompt Creating table T_DECL_REMIT
prompt ===========================
prompt
create table CFA.T_DECL_REMIT
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  COUNTRY    VARCHAR2(3),
  PAYTYPE    CHAR(1),
  TXCODE     VARCHAR2(6),
  TC1AMT     NUMBER(22),
  TXREM      VARCHAR2(200),
  TXCODE2    VARCHAR2(6),
  TC2AMT     NUMBER(22),
  TX2REM     VARCHAR2(200),
  ISREF      CHAR(1),
  CRTUSER    VARCHAR2(20),
  INPTELC    VARCHAR2(20),
  RPTDATE    CHAR(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  DATASTATUS NUMBER(10),
  AUDITDATE  DATE,
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0,
  REGNO      VARCHAR2(40)
)
tablespace CFA
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
comment on table CFA.T_DECL_REMIT
  is '�걨��Ϣ��������������';
comment on column CFA.T_DECL_REMIT.ACTIONTYPE
  is '��������';
comment on column CFA.T_DECL_REMIT.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_DECL_REMIT.RPTNO
  is '�걨����';
comment on column CFA.T_DECL_REMIT.COUNTRY
  is '�տ��˳�פ����/��������';
comment on column CFA.T_DECL_REMIT.PAYTYPE
  is '��������';
comment on column CFA.T_DECL_REMIT.TXCODE
  is '���ױ���1';
comment on column CFA.T_DECL_REMIT.TC1AMT
  is '��Ӧ���1';
comment on column CFA.T_DECL_REMIT.TXREM
  is '���׸���1';
comment on column CFA.T_DECL_REMIT.TXCODE2
  is '���ױ���2';
comment on column CFA.T_DECL_REMIT.TC2AMT
  is '��Ӧ���2';
comment on column CFA.T_DECL_REMIT.TX2REM
  is '���׸���2';
comment on column CFA.T_DECL_REMIT.ISREF
  is '�Ƿ�Ϊ��˰�������¸���';
comment on column CFA.T_DECL_REMIT.CRTUSER
  is '������';
comment on column CFA.T_DECL_REMIT.INPTELC
  is '�����˵绰';
comment on column CFA.T_DECL_REMIT.RPTDATE
  is '�걨����';
comment on column CFA.T_DECL_REMIT.INSTCODE
  is '�������';
comment on column CFA.T_DECL_REMIT.AUDITNAME
  is '�����';
comment on column CFA.T_DECL_REMIT.DATASTATUS
  is '����״̬';
comment on column CFA.T_DECL_REMIT.AUDITDATE
  is '�������';
comment on column CFA.T_DECL_REMIT.IMPORTDATE
  is '¼������';
comment on column CFA.T_DECL_REMIT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_DECL_REMIT.BATCHNO
  is '���κ�';
comment on column CFA.T_DECL_REMIT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_DECL_REMIT.ISCOMMIT
  is '�Ƿ��ύ';
comment on column CFA.T_DECL_REMIT.REGNO
  is '����������/�������/ҵ����';

prompt
prompt Creating table T_ERROR_FEEDBACK
prompt ===============================
prompt
create table CFA.T_ERROR_FEEDBACK
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
tablespace CFA
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
comment on table CFA.T_ERROR_FEEDBACK
  is '������Ϣ';
comment on column CFA.T_ERROR_FEEDBACK.ID
  is 'ID';
comment on column CFA.T_ERROR_FEEDBACK.ERROR_TYPE
  is '��������(���ݴ���/�ļ�����)';
comment on column CFA.T_ERROR_FEEDBACK.DATA_NO
  is 'ҵ����������';
comment on column CFA.T_ERROR_FEEDBACK.FILE_ID
  is '�����ļ�tableId';
comment on column CFA.T_ERROR_FEEDBACK.FILE_NAME
  is '�����ļ�tableName';
comment on column CFA.T_ERROR_FEEDBACK.INFO_TYPE
  is '�����ļ�����';
comment on column CFA.T_ERROR_FEEDBACK.DATA_DATE
  is '��������';
comment on column CFA.T_ERROR_FEEDBACK.DATA_TYPE
  is '����������������';
comment on column CFA.T_ERROR_FEEDBACK.ERROR_DESC
  is '��������';
comment on column CFA.T_ERROR_FEEDBACK.HAS_REJECT
  is '�Ƿ񱻾�';
comment on column CFA.T_ERROR_FEEDBACK.TOTAL_FILES
  is '���������ļ���';
comment on column CFA.T_ERROR_FEEDBACK.RPT_SEND_FILE_NAME
  is '�����ļ���';

prompt
prompt Creating table T_FILEM_LOG
prompt ==========================
prompt
create table CFA.T_FILEM_LOG
(
  ID          NUMBER(10) not null,
  FK_CUSTOMID VARCHAR2(50) not null,
  CUR_DATE    VARCHAR2(50) not null,
  TABLE_ID    VARCHAR2(50) not null
)
tablespace CFA
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
comment on table CFA.T_FILEM_LOG
  is '�������ɼ�¼';
comment on column CFA.T_FILEM_LOG.ID
  is 'ID';
comment on column CFA.T_FILEM_LOG.FK_CUSTOMID
  is '����ID';
comment on column CFA.T_FILEM_LOG.CUR_DATE
  is '��������';
comment on column CFA.T_FILEM_LOG.TABLE_ID
  is '�������ͱ�ʶ';

prompt
prompt Creating table T_FINI_DOM_EXPORT
prompt ================================
prompt
create table CFA.T_FINI_DOM_EXPORT
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(128),
  RPTNO         VARCHAR2(22),
  ISREF         CHAR(1),
  PAYATTR       CHAR(1),
  PAYTYPE       CHAR(1),
  TXCODE        VARCHAR2(6),
  TC1AMT        NUMBER(22),
  TXREM         VARCHAR2(200),
  TXCODE2       VARCHAR2(6),
  TC2AMT        NUMBER(22),
  TX2REM        VARCHAR2(200),
  T_EXPORT_INFO VARCHAR2(50),
  CHKAMT        NUMBER(22),
  CRTUSER       VARCHAR2(20),
  INPTELC       VARCHAR2(20),
  RPTDATE       CHAR(8),
  INSTCODE      VARCHAR2(50),
  AUDITNAME     VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  BATCHNO       VARCHAR2(50),
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2) default 0,
  REGNO         VARCHAR2(40)
)
tablespace CFA
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
comment on table CFA.T_FINI_DOM_EXPORT
  is '������Ϣ�����������걨��';
comment on column CFA.T_FINI_DOM_EXPORT.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_DOM_EXPORT.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_FINI_DOM_EXPORT.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_DOM_EXPORT.ISREF
  is '�Ƿ�Ϊ��˰������������';
comment on column CFA.T_FINI_DOM_EXPORT.PAYATTR
  is '������������';
comment on column CFA.T_FINI_DOM_EXPORT.PAYTYPE
  is '�տ�����';
comment on column CFA.T_FINI_DOM_EXPORT.TXCODE
  is '���ױ���1';
comment on column CFA.T_FINI_DOM_EXPORT.TC1AMT
  is '��Ӧ���1';
comment on column CFA.T_FINI_DOM_EXPORT.TXREM
  is '���׸���1';
comment on column CFA.T_FINI_DOM_EXPORT.TXCODE2
  is '���ױ���2';
comment on column CFA.T_FINI_DOM_EXPORT.TC2AMT
  is '��Ӧ���2';
comment on column CFA.T_FINI_DOM_EXPORT.TX2REM
  is '���׸���2';
comment on column CFA.T_FINI_DOM_EXPORT.T_EXPORT_INFO
  is '�����ջ����������';
comment on column CFA.T_FINI_DOM_EXPORT.CHKAMT
  is '�ջ��ܽ�������ڳ��ں����Ľ��';
comment on column CFA.T_FINI_DOM_EXPORT.CRTUSER
  is '���';
comment on column CFA.T_FINI_DOM_EXPORT.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_DOM_EXPORT.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_DOM_EXPORT.INSTCODE
  is '�������';
comment on column CFA.T_FINI_DOM_EXPORT.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_DOM_EXPORT.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_DOM_EXPORT.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_DOM_EXPORT.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_DOM_EXPORT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_DOM_EXPORT.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_DOM_EXPORT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_DOM_EXPORT.ISCOMMIT
  is '�Ƿ��ύ';
comment on column CFA.T_FINI_DOM_EXPORT.REGNO
  is '����������/�ǼǱ��/ҵ����';

prompt
prompt Creating table T_FINI_DOM_PAY
prompt =============================
prompt
create table CFA.T_FINI_DOM_PAY
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  ISREF      CHAR(1),
  COUNTRY    VARCHAR2(3),
  PAYTYPE    CHAR(1),
  PAYATTR    CHAR(1),
  TXCODE     VARCHAR2(6),
  TC1AMT     NUMBER(22),
  TXCODE2    VARCHAR2(6),
  TC2AMT     NUMBER(22),
  IMPDATE    CHAR(8),
  CONTRNO    VARCHAR2(20),
  INVOINO    VARCHAR2(35),
  BILLNO     VARCHAR2(20),
  CONTAMT    NUMBER(22),
  REGNO      VARCHAR2(20),
  CRTUSER    VARCHAR2(20),
  INPTELC    VARCHAR2(20),
  RPTDATE    CHAR(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  DATASTATUS NUMBER(10),
  AUDITDATE  DATE,
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_FINI_DOM_PAY
  is '������Ϣ�����ڸ���/�ж�֪ͨ��';
comment on column CFA.T_FINI_DOM_PAY.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_DOM_PAY.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_FINI_DOM_PAY.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_DOM_PAY.ISREF
  is '�Ƿ�Ϊ��˰�������¸���';
comment on column CFA.T_FINI_DOM_PAY.COUNTRY
  is '�տ��˳�פ����/��������';
comment on column CFA.T_FINI_DOM_PAY.PAYTYPE
  is '��������';
comment on column CFA.T_FINI_DOM_PAY.PAYATTR
  is '��������';
comment on column CFA.T_FINI_DOM_PAY.TXCODE
  is '���ױ���1';
comment on column CFA.T_FINI_DOM_PAY.TC1AMT
  is '��Ӧ���1';
comment on column CFA.T_FINI_DOM_PAY.TXCODE2
  is '���ױ���2';
comment on column CFA.T_FINI_DOM_PAY.TC2AMT
  is '��Ӧ���2';
comment on column CFA.T_FINI_DOM_PAY.IMPDATE
  is '���װ������';
comment on column CFA.T_FINI_DOM_PAY.CONTRNO
  is '��ͬ��';
comment on column CFA.T_FINI_DOM_PAY.INVOINO
  is '��Ʊ��';
comment on column CFA.T_FINI_DOM_PAY.BILLNO
  is '���˵���';
comment on column CFA.T_FINI_DOM_PAY.CONTAMT
  is '��ͬ���';
comment on column CFA.T_FINI_DOM_PAY.REGNO
  is '����������/�������/ҵ����';
comment on column CFA.T_FINI_DOM_PAY.CRTUSER
  is '���';
comment on column CFA.T_FINI_DOM_PAY.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_DOM_PAY.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_DOM_PAY.INSTCODE
  is '�������';
comment on column CFA.T_FINI_DOM_PAY.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_DOM_PAY.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_DOM_PAY.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_DOM_PAY.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_DOM_PAY.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_DOM_PAY.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_DOM_PAY.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_DOM_PAY.ISCOMMIT
  is '�Ƿ��ύ';

prompt
prompt Creating table T_FINI_DOM_REMIT
prompt ===============================
prompt
create table CFA.T_FINI_DOM_REMIT
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(128),
  RPTNO          VARCHAR2(22),
  COUNTRY        VARCHAR2(3),
  ISREF          CHAR(1),
  PAYTYPE        CHAR(1),
  PAYATTR        CHAR(1),
  TXCODE         VARCHAR2(6),
  TC1AMT         NUMBER(22),
  TXCODE2        VARCHAR2(6),
  TC2AMT         NUMBER(22),
  IMPDATE        CHAR(8),
  CONTRNO        VARCHAR2(20),
  INVOINO        VARCHAR2(35),
  REGNO          VARCHAR2(20),
  CUSMNO         VARCHAR2(24),
  T_CUSTOMS_DECL VARCHAR2(50),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  DATASTATUS     NUMBER(10),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  BUSINESSID     VARCHAR2(50) not null,
  CRTUSER        VARCHAR2(20),
  INPTELC        VARCHAR2(20),
  RPTDATE        VARCHAR2(8),
  BATCHNO        VARCHAR2(50),
  MODIFYUSER     VARCHAR2(30),
  ISCOMMIT       NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_FINI_DOM_REMIT
  is '������Ϣ�����ڻ��������';
comment on column CFA.T_FINI_DOM_REMIT.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_DOM_REMIT.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_FINI_DOM_REMIT.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_DOM_REMIT.COUNTRY
  is '�տ��˳�פ����/��������';
comment on column CFA.T_FINI_DOM_REMIT.ISREF
  is '�Ƿ�Ϊ��˰�������¸���';
comment on column CFA.T_FINI_DOM_REMIT.PAYTYPE
  is '��������';
comment on column CFA.T_FINI_DOM_REMIT.PAYATTR
  is '��������';
comment on column CFA.T_FINI_DOM_REMIT.TXCODE
  is '���ױ���1';
comment on column CFA.T_FINI_DOM_REMIT.TC1AMT
  is '��Ӧ���1';
comment on column CFA.T_FINI_DOM_REMIT.TXCODE2
  is '���ױ���2';
comment on column CFA.T_FINI_DOM_REMIT.TC2AMT
  is '��Ӧ���2';
comment on column CFA.T_FINI_DOM_REMIT.IMPDATE
  is '���װ������';
comment on column CFA.T_FINI_DOM_REMIT.CONTRNO
  is '��ͬ��';
comment on column CFA.T_FINI_DOM_REMIT.INVOINO
  is '��Ʊ��';
comment on column CFA.T_FINI_DOM_REMIT.REGNO
  is '����������/�������/ҵ����';
comment on column CFA.T_FINI_DOM_REMIT.CUSMNO
  is '���ص���Ӫ��λ����';
comment on column CFA.T_FINI_DOM_REMIT.T_CUSTOMS_DECL
  is '���ص���Ϣ';
comment on column CFA.T_FINI_DOM_REMIT.INSTCODE
  is '�������';
comment on column CFA.T_FINI_DOM_REMIT.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_DOM_REMIT.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_DOM_REMIT.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_DOM_REMIT.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_DOM_REMIT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_DOM_REMIT.CRTUSER
  is '���';
comment on column CFA.T_FINI_DOM_REMIT.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_DOM_REMIT.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_DOM_REMIT.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_DOM_REMIT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_DOM_REMIT.ISCOMMIT
  is '�Ƿ��ύ';

prompt
prompt Creating table T_FINI_EXPORT
prompt ============================
prompt
create table CFA.T_FINI_EXPORT
(
  ACTIONTYPE    CHAR(1),
  ACTIONDESC    VARCHAR2(128),
  RPTNO         VARCHAR2(22),
  PAYATTR       CHAR(1),
  CHKPRTD       CHAR(1),
  OSAMT         NUMBER(22),
  T_EXPORT_INFO VARCHAR2(50),
  CHKAMT        NUMBER(22),
  CRTUSER       VARCHAR2(20),
  INPTELC       VARCHAR2(20),
  RPTDATE       CHAR(8),
  INSTCODE      VARCHAR2(50),
  AUDITNAME     VARCHAR2(50),
  DATASTATUS    NUMBER(10),
  AUDITDATE     DATE,
  IMPORTDATE    DATE,
  BUSINESSID    VARCHAR2(50) not null,
  BATCHNO       VARCHAR2(50),
  MODIFYUSER    VARCHAR2(30),
  ISCOMMIT      NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_FINI_EXPORT
  is '������Ϣ�������ջ����ר�������������룩';
comment on column CFA.T_FINI_EXPORT.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_EXPORT.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_FINI_EXPORT.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_EXPORT.PAYATTR
  is '�ջ�����';
comment on column CFA.T_FINI_EXPORT.CHKPRTD
  is '�ѳ��߳����ջ����ר����';
comment on column CFA.T_FINI_EXPORT.OSAMT
  is '�����';
comment on column CFA.T_FINI_EXPORT.T_EXPORT_INFO
  is '�����ջ����������';
comment on column CFA.T_FINI_EXPORT.CHKAMT
  is '�ջ��ܽ�������ڳ��ں����Ľ��';
comment on column CFA.T_FINI_EXPORT.CRTUSER
  is '���';
comment on column CFA.T_FINI_EXPORT.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_EXPORT.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_EXPORT.INSTCODE
  is '�������';
comment on column CFA.T_FINI_EXPORT.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_EXPORT.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_EXPORT.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_EXPORT.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_EXPORT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_EXPORT.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_EXPORT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_EXPORT.ISCOMMIT
  is '�Ƿ��ύ';

prompt
prompt Creating table T_FINI_PAYMENT
prompt =============================
prompt
create table CFA.T_FINI_PAYMENT
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  IMPDATE    CHAR(8),
  CONTRNO    VARCHAR2(20),
  INVOINO    VARCHAR2(35),
  BILLNO     VARCHAR2(20),
  CONTAMT    NUMBER(22),
  REGNO      VARCHAR2(20),
  CRTUSER    VARCHAR2(20),
  INPTELC    VARCHAR2(20),
  RPTDATE    CHAR(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  DATASTATUS NUMBER(10),
  AUDITDATE  DATE,
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_FINI_PAYMENT
  is '������Ϣ�����⸶��/�ж�֪ͨ��';
comment on column CFA.T_FINI_PAYMENT.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_PAYMENT.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_FINI_PAYMENT.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_PAYMENT.IMPDATE
  is '���װ������';
comment on column CFA.T_FINI_PAYMENT.CONTRNO
  is '��ͬ��';
comment on column CFA.T_FINI_PAYMENT.INVOINO
  is '��Ʊ��';
comment on column CFA.T_FINI_PAYMENT.BILLNO
  is '���˵���';
comment on column CFA.T_FINI_PAYMENT.CONTAMT
  is '��ͬ���';
comment on column CFA.T_FINI_PAYMENT.REGNO
  is '��������/�ǼǱ��';
comment on column CFA.T_FINI_PAYMENT.CRTUSER
  is '���';
comment on column CFA.T_FINI_PAYMENT.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_PAYMENT.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_PAYMENT.INSTCODE
  is '�������';
comment on column CFA.T_FINI_PAYMENT.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_PAYMENT.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_PAYMENT.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_PAYMENT.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_PAYMENT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_PAYMENT.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_PAYMENT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_PAYMENT.ISCOMMIT
  is '�Ƿ��ύ';

prompt
prompt Creating table T_FINI_PURCHASE
prompt ==============================
prompt
create table CFA.T_FINI_PURCHASE
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  REGNO      VARCHAR2(20),
  TXCODE     CHAR(6),
  CRTUSER    VARCHAR2(20),
  INPTELC    VARCHAR2(20),
  RPTDATE    CHAR(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  AUDITDATE  DATE,
  DATASTATUS NUMBER(10),
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_FINI_PURCHASE
  is '������Ϣ������˻��ڹ���';
comment on column CFA.T_FINI_PURCHASE.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_PURCHASE.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_FINI_PURCHASE.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_PURCHASE.REGNO
  is '����������/�������/ҵ����';
comment on column CFA.T_FINI_PURCHASE.TXCODE
  is '���ױ���';
comment on column CFA.T_FINI_PURCHASE.CRTUSER
  is '���';
comment on column CFA.T_FINI_PURCHASE.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_PURCHASE.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_PURCHASE.INSTCODE
  is '�������';
comment on column CFA.T_FINI_PURCHASE.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_PURCHASE.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_PURCHASE.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_PURCHASE.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_PURCHASE.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_PURCHASE.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_PURCHASE.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_PURCHASE.ISCOMMIT
  is '�Ƿ��ύ';
alter table CFA.T_FINI_PURCHASE
  add constraint PK_T_FINI_PURCHASE primary key (BUSINESSID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table T_FINI_REMIT
prompt ===========================
prompt
create table CFA.T_FINI_REMIT
(
  ACTIONTYPE     CHAR(1),
  ACTIONDESC     VARCHAR2(128),
  RPTNO          VARCHAR2(22),
  IMPDATE        CHAR(8),
  CONTRNO        VARCHAR2(20),
  INVOINO        VARCHAR2(35),
  REGNO          VARCHAR2(20),
  CUSMNO         VARCHAR2(12),
  T_CUSTOMS_DECL VARCHAR2(50),
  INSTCODE       VARCHAR2(50),
  AUDITNAME      VARCHAR2(50),
  DATASTATUS     NUMBER(10),
  AUDITDATE      DATE,
  IMPORTDATE     DATE,
  BUSINESSID     VARCHAR2(50) not null,
  CRTUSER        VARCHAR2(20),
  INPTELC        VARCHAR2(20),
  RPTDATE        VARCHAR2(8),
  BATCHNO        VARCHAR2(50),
  MODIFYUSER     VARCHAR2(30),
  ISCOMMIT       NUMBER(2) default 0
)
tablespace CFA
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
comment on table CFA.T_FINI_REMIT
  is '������Ϣ��������������';
comment on column CFA.T_FINI_REMIT.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_REMIT.ACTIONDESC
  is '�޸�/ɾ��ԭ��';
comment on column CFA.T_FINI_REMIT.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_REMIT.IMPDATE
  is '���װ������';
comment on column CFA.T_FINI_REMIT.CONTRNO
  is '��ͬ��';
comment on column CFA.T_FINI_REMIT.INVOINO
  is '��Ʊ��';
comment on column CFA.T_FINI_REMIT.REGNO
  is '��������/�ǼǱ��';
comment on column CFA.T_FINI_REMIT.CUSMNO
  is '���ص���Ӫ��λ����';
comment on column CFA.T_FINI_REMIT.T_CUSTOMS_DECL
  is '���ص���Ϣ';
comment on column CFA.T_FINI_REMIT.INSTCODE
  is '�������';
comment on column CFA.T_FINI_REMIT.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_REMIT.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_REMIT.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_REMIT.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_REMIT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_REMIT.CRTUSER
  is '���';
comment on column CFA.T_FINI_REMIT.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_REMIT.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_REMIT.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_REMIT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_REMIT.ISCOMMIT
  is '�Ƿ��ύ';

prompt
prompt Creating table T_FINI_SETTLEMENT
prompt ================================
prompt
create table CFA.T_FINI_SETTLEMENT
(
  ACTIONTYPE CHAR(1),
  ACTIONDESC VARCHAR2(128),
  RPTNO      VARCHAR2(22),
  REGNO      VARCHAR2(20),
  TXCODE     CHAR(6),
  USETYPE    CHAR(3),
  USEDETAIL  VARCHAR2(100),
  CRTUSER    VARCHAR2(20),
  INPTELC    VARCHAR2(20),
  RPTDATE    CHAR(8),
  INSTCODE   VARCHAR2(50),
  AUDITNAME  VARCHAR2(50),
  AUDITDATE  DATE,
  DATASTATUS NUMBER(10),
  IMPORTDATE DATE,
  BUSINESSID VARCHAR2(50) not null,
  BATCHNO    VARCHAR2(50),
  MODIFYUSER VARCHAR2(30),
  ISCOMMIT   NUMBER(2) default 0
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table CFA.T_FINI_SETTLEMENT
  is '������Ϣ������˻��ڽ��';
comment on column CFA.T_FINI_SETTLEMENT.ACTIONTYPE
  is '��������';
comment on column CFA.T_FINI_SETTLEMENT.ACTIONDESC
  is '�޸�/ɾ��ԭ����걨��������';
comment on column CFA.T_FINI_SETTLEMENT.RPTNO
  is '�걨����';
comment on column CFA.T_FINI_SETTLEMENT.REGNO
  is '����������/�������/ҵ����';
comment on column CFA.T_FINI_SETTLEMENT.TXCODE
  is '���ױ���';
comment on column CFA.T_FINI_SETTLEMENT.USETYPE
  is '�����;';
comment on column CFA.T_FINI_SETTLEMENT.USEDETAIL
  is '�����ϸ��;';
comment on column CFA.T_FINI_SETTLEMENT.CRTUSER
  is '���';
comment on column CFA.T_FINI_SETTLEMENT.INPTELC
  is '��˵绰';
comment on column CFA.T_FINI_SETTLEMENT.RPTDATE
  is '�걨����';
comment on column CFA.T_FINI_SETTLEMENT.INSTCODE
  is '�������';
comment on column CFA.T_FINI_SETTLEMENT.AUDITNAME
  is '�����';
comment on column CFA.T_FINI_SETTLEMENT.AUDITDATE
  is '�������';
comment on column CFA.T_FINI_SETTLEMENT.DATASTATUS
  is '����״̬';
comment on column CFA.T_FINI_SETTLEMENT.IMPORTDATE
  is '¼������';
comment on column CFA.T_FINI_SETTLEMENT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_FINI_SETTLEMENT.BATCHNO
  is '���κ�';
comment on column CFA.T_FINI_SETTLEMENT.MODIFYUSER
  is 'ά����';
comment on column CFA.T_FINI_SETTLEMENT.ISCOMMIT
  is '�Ƿ��ύ';
alter table CFA.T_FINI_SETTLEMENT
  add constraint PK_T_FINI_SETTLEMENT primary key (BUSINESSID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table T_LOAD_DATA
prompt ==========================
prompt
create table CFA.T_LOAD_DATA
(
  ID         NUMBER(10) not null,
  LOADDATE   DATE,
  LOADINST   VARCHAR2(50),
  LOADTXT    NUMBER(10),
  LOADSTATUS NUMBER(10)
)
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table T_ORG_CONFIG
prompt ===========================
prompt
create table CFA.T_ORG_CONFIG
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
tablespace CFA
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
comment on table CFA.T_ORG_CONFIG
  is '�������ձ�';
comment on column CFA.T_ORG_CONFIG.ORG_ID
  is '����ID';
comment on column CFA.T_ORG_CONFIG.ORG_NAME
  is '��������';
comment on column CFA.T_ORG_CONFIG.RPTNO
  is '�걨����';
comment on column CFA.T_ORG_CONFIG.RPTTITLE
  is '�������к���';
comment on column CFA.T_ORG_CONFIG.SPARE1
  is 'Ԥ���ֶ�1';
comment on column CFA.T_ORG_CONFIG.SPARE2
  is 'Ԥ���ֶ�2';
comment on column CFA.T_ORG_CONFIG.SPARE3
  is 'Ԥ���ֶ�3';
comment on column CFA.T_ORG_CONFIG.SPARE4
  is 'Ԥ���ֶ�4';
comment on column CFA.T_ORG_CONFIG.SPARE5
  is 'Ԥ���ֶ�5';
create index CFA.IDX_T_ORG_CONFIG on CFA.T_ORG_CONFIG (ORG_ID)
  tablespace CFA
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
grant select on CFA.T_ORG_CONFIG to DATACORE;
grant select on CFA.T_ORG_CONFIG to DATACOREFF;
grant select on CFA.T_ORG_CONFIG to DATACOREOPR;

prompt
prompt Creating table T_REFUSE_RESION
prompt ==============================
prompt
create table CFA.T_REFUSE_RESION
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
tablespace CFA
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
comment on table CFA.T_REFUSE_RESION
  is '��˴��ԭ���';
comment on column CFA.T_REFUSE_RESION.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_REFUSE_RESION.BUSI_TABLE_ID
  is '����ID';
comment on column CFA.T_REFUSE_RESION.REASION
  is '��������';
comment on column CFA.T_REFUSE_RESION.BUSI_TYPE
  is 'ҵ�����ͣ�1-���/2-��أ�';
comment on column CFA.T_REFUSE_RESION.SPARE1
  is 'Ԥ���ֶ�1';
comment on column CFA.T_REFUSE_RESION.SPARE2
  is 'Ԥ���ֶ�2';
comment on column CFA.T_REFUSE_RESION.SPARE3
  is 'Ԥ���ֶ�3';
comment on column CFA.T_REFUSE_RESION.SPARE4
  is 'Ԥ���ֶ�4';
comment on column CFA.T_REFUSE_RESION.SPARE5
  is 'Ԥ���ֶ�5';
alter table CFA.T_REFUSE_RESION
  add constraint PK_REFUSE_RESION primary key (BUSINESSID, BUSI_TABLE_ID, BUSI_TYPE)
  using index 
  tablespace CFA
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
create table CFA.T_RELA_TABLES
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
tablespace CFA
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
comment on table CFA.T_RELA_TABLES
  is '�û���ɫ���Ķ�Ӧ��';
comment on column CFA.T_RELA_TABLES.OBJID
  is '����ID';
comment on column CFA.T_RELA_TABLES.TABLEID
  is '��������ID';
comment on column CFA.T_RELA_TABLES.FILETYPE
  is '��������';
comment on column CFA.T_RELA_TABLES.OBJTYPE
  is '�������� R��ɫ U�û�';
comment on column CFA.T_RELA_TABLES.SPARE1
  is 'Ԥ���ֶ�1';
comment on column CFA.T_RELA_TABLES.SPARE2
  is 'Ԥ���ֶ�2';
comment on column CFA.T_RELA_TABLES.SPARE3
  is 'Ԥ���ֶ�3';
comment on column CFA.T_RELA_TABLES.SPARE4
  is 'Ԥ���ֶ�4';
comment on column CFA.T_RELA_TABLES.SPARE5
  is 'Ԥ���ֶ�5';
alter table CFA.T_RELA_TABLES
  add constraint PK_RELA_TABLES primary key (OBJID, TABLEID, FILETYPE, OBJTYPE)
  using index 
  tablespace CFA
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
create table CFA.T_RPT_BUSIDATA_INFO
(
  BUSI_DATA_TYPE CHAR(1),
  BUSI_INFO_ID   VARCHAR2(10),
  BUSI_INFO_NAME VARCHAR2(100),
  IS_SHOW        CHAR(1),
  IS_ENABLED     CHAR(1)
)
tablespace CFA
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
comment on table CFA.T_RPT_BUSIDATA_INFO
  is '���ݲɼ���Χ��Ϣ';
comment on column CFA.T_RPT_BUSIDATA_INFO.BUSI_DATA_TYPE
  is '���ݲɼ���Χ������ҵ��/����ҵ��';
comment on column CFA.T_RPT_BUSIDATA_INFO.BUSI_INFO_ID
  is 'ҵ������ID';
comment on column CFA.T_RPT_BUSIDATA_INFO.BUSI_INFO_NAME
  is 'ҵ����������';
comment on column CFA.T_RPT_BUSIDATA_INFO.IS_SHOW
  is '�Ƿ�չʾ';
comment on column CFA.T_RPT_BUSIDATA_INFO.IS_ENABLED
  is '�Ƿ񼤻1-�Ѽ��0-δ����';
create unique index CFA.UQ_T_RPT_BUSIDATA_INFO on CFA.T_RPT_BUSIDATA_INFO (BUSI_DATA_TYPE, BUSI_INFO_ID)
  tablespace CFA
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
create table CFA.T_RPT_BUSS_TYPE
(
  BUSS_TYPE_CODE VARCHAR2(80) not null,
  BUSS_TYPE_NAME VARCHAR2(120) not null,
  IS_ENABLED     CHAR(1) default '1' not null
)
tablespace CFA
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
comment on table CFA.T_RPT_BUSS_TYPE
  is 'ҵ�����ͱ�';
comment on column CFA.T_RPT_BUSS_TYPE.BUSS_TYPE_CODE
  is 'ҵ�����ͱ��';
comment on column CFA.T_RPT_BUSS_TYPE.BUSS_TYPE_NAME
  is 'ҵ����������';
comment on column CFA.T_RPT_BUSS_TYPE.IS_ENABLED
  is '�Ƿ񼤻�';
alter table CFA.T_RPT_BUSS_TYPE
  add constraint P_PK_T_RPT_BUSS_TYPE primary key (BUSS_TYPE_CODE)
  using index 
  tablespace CFA
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
create table CFA.T_RPT_COLUMN_INFO
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
tablespace CFA
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
comment on table CFA.T_RPT_COLUMN_INFO
  is '��������Ϣ';
comment on column CFA.T_RPT_COLUMN_INFO.COLUMN_ID
  is '����ID';
comment on column CFA.T_RPT_COLUMN_INFO.TABLE_ID
  is '����ID';
comment on column CFA.T_RPT_COLUMN_INFO.COLUMN_NAME
  is '������';
comment on column CFA.T_RPT_COLUMN_INFO.order
  is '����';
comment on column CFA.T_RPT_COLUMN_INFO.POSITION
  is 'λ��';
comment on column CFA.T_RPT_COLUMN_INFO.DATA_TYPE
  is '��������';
comment on column CFA.T_RPT_COLUMN_INFO.DATA_TYPE_DESC
  is '������������';
comment on column CFA.T_RPT_COLUMN_INFO.DICTIONARY_TYPE_ID
  is '��Ӧ�ֵ���ID';
comment on column CFA.T_RPT_COLUMN_INFO.CONS_RULE
  is '�ύ����';
comment on column CFA.T_RPT_COLUMN_INFO.CONS_DESC
  is '�ύ��������';
comment on column CFA.T_RPT_COLUMN_INFO.IS_SHOW
  is '�Ƿ�չʾ';
comment on column CFA.T_RPT_COLUMN_INFO.TAG_TYPE
  is '�ؼ�����';
comment on column CFA.T_RPT_COLUMN_INFO.CAN_MODIFY
  is '�Ƿ��ά��';
comment on column CFA.T_RPT_COLUMN_INFO.HAS_INNER_TABLE
  is '�Ƿ��ӱ�';
comment on column CFA.T_RPT_COLUMN_INFO.LOG_COLUMN_ID
  is '�Ƿ�Ϊ�ؼ��ֶ�';
comment on column CFA.T_RPT_COLUMN_INFO.IS_KEYWORD
  is '�Ƿ�ؼ���';
comment on column CFA.T_RPT_COLUMN_INFO.IS_ENABLED
  is '�Ƿ񼤻1-�Ѽ��0-δ����';
comment on column CFA.T_RPT_COLUMN_INFO.FILETYPE
  is '�ļ��ӿ�����';
comment on column CFA.T_RPT_COLUMN_INFO.CAN_INPUT
  is '�Ƿ��¼��';
comment on column CFA.T_RPT_COLUMN_INFO.IS_REPORT
  is '�Ƿ�Ϊ�������ֶ� 1-��';
alter table CFA.T_RPT_COLUMN_INFO
  add constraint PK_T_RPT_COLUMN_INFO primary key (TABLE_ID, COLUMN_ID, FILETYPE)
  using index 
  tablespace CFA
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
prompt Creating table T_RPT_KEYWORD_CHANGE
prompt ===================================
prompt
create table CFA.T_RPT_KEYWORD_CHANGE
(
  TABLEID    VARCHAR2(30) not null,
  BUSINESSID VARCHAR2(50) not null,
  UPDATETIME VARCHAR2(30)
)
tablespace CFA
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
comment on table CFA.T_RPT_KEYWORD_CHANGE
  is '���Ĺؼ��ֱ����¼';
comment on column CFA.T_RPT_KEYWORD_CHANGE.TABLEID
  is '��������';
comment on column CFA.T_RPT_KEYWORD_CHANGE.BUSINESSID
  is '����ҵ��ID';
comment on column CFA.T_RPT_KEYWORD_CHANGE.UPDATETIME
  is '�޸�ʱ��';

prompt
prompt Creating table T_RPT_KEYWORD_SENDLOG
prompt ====================================
prompt
create table CFA.T_RPT_KEYWORD_SENDLOG
(
  TABLEID     VARCHAR2(30) not null,
  BUSINESSID  VARCHAR2(50) not null,
  COLUMNID    VARCHAR2(50) not null,
  COLUMNVALUE VARCHAR2(512) not null
)
tablespace CFA
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
comment on table CFA.T_RPT_KEYWORD_SENDLOG
  is '���ı��Ĺؼ��ֱ��ͼ�¼��';
comment on column CFA.T_RPT_KEYWORD_SENDLOG.TABLEID
  is '��������';
comment on column CFA.T_RPT_KEYWORD_SENDLOG.BUSINESSID
  is '����ҵ��ID';
comment on column CFA.T_RPT_KEYWORD_SENDLOG.COLUMNID
  is '�ؼ�������';
comment on column CFA.T_RPT_KEYWORD_SENDLOG.COLUMNVALUE
  is '�ؼ���ֵ';

prompt
prompt Creating table T_RPT_LOG_INFO
prompt =============================
prompt
create table CFA.T_RPT_LOG_INFO
(
  LOGTYPE    VARCHAR2(10) not null,
  TABLEID    VARCHAR2(30) not null,
  FILETYPE   VARCHAR2(10),
  USERID     VARCHAR2(50) not null,
  UPDATETIME VARCHAR2(20) not null,
  BUSINESSNO VARCHAR2(60),
  BUSINESSID VARCHAR2(50) not null,
  SUBID      VARCHAR2(70),
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
tablespace CFA
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
comment on table CFA.T_RPT_LOG_INFO
  is '�����޸ļ�¼';
comment on column CFA.T_RPT_LOG_INFO.LOGTYPE
  is '��������(insert/update/delete)';
comment on column CFA.T_RPT_LOG_INFO.TABLEID
  is '��������';
comment on column CFA.T_RPT_LOG_INFO.FILETYPE
  is '�ӿ��ļ�����';
comment on column CFA.T_RPT_LOG_INFO.USERID
  is '�û�ID';
comment on column CFA.T_RPT_LOG_INFO.UPDATETIME
  is '�޸�ʱ��';
comment on column CFA.T_RPT_LOG_INFO.BUSINESSNO
  is 'ҵ����';
comment on column CFA.T_RPT_LOG_INFO.BUSINESSID
  is '����ҵ��ID';
comment on column CFA.T_RPT_LOG_INFO.SUBID
  is '�ӱ�ҵ��ID';
comment on column CFA.T_RPT_LOG_INFO.DATASTATUS
  is '����״̬';
create index CFA.IDX_T_RPT_LOG_INFO on CFA.T_RPT_LOG_INFO (BUSINESSID, TABLEID)
  tablespace CFA
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

prompt
prompt Creating table T_RPT_RECIEVE
prompt ============================
prompt
create table CFA.T_RPT_RECIEVE
(
  PACKNAME VARCHAR2(50),
  FILENAME VARCHAR2(50),
  PACKTYPE VARCHAR2(3)
)
tablespace CFA
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
comment on table CFA.T_RPT_RECIEVE
  is '�����ļ����ռ�¼';
comment on column CFA.T_RPT_RECIEVE.PACKNAME
  is '���ܰ���';
comment on column CFA.T_RPT_RECIEVE.FILENAME
  is '�����ļ���';
comment on column CFA.T_RPT_RECIEVE.PACKTYPE
  is '�����ļ�������REC/ERR/HIS';

prompt
prompt Creating table T_RPT_SEND_COMMIT
prompt ================================
prompt
create table CFA.T_RPT_SEND_COMMIT
(
  TABLEID    VARCHAR2(50) not null,
  BUSINESSID VARCHAR2(50) not null,
  PACKNAME   VARCHAR2(50),
  FILENAME   VARCHAR2(50) not null,
  IS_RECEIVE CHAR(1),
  IS_SENDMTS CHAR(1)
)
tablespace CFA
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
comment on table CFA.T_RPT_SEND_COMMIT
  is '���ķ��ͼ�¼';
comment on column CFA.T_RPT_SEND_COMMIT.TABLEID
  is '���ı���';
comment on column CFA.T_RPT_SEND_COMMIT.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_RPT_SEND_COMMIT.PACKNAME
  is '���Ͱ���';
comment on column CFA.T_RPT_SEND_COMMIT.FILENAME
  is '�����ļ���';
comment on column CFA.T_RPT_SEND_COMMIT.IS_RECEIVE
  is '�Ƿ��յ�����';
create index CFA.IDX_PKN_RPT_SEND_COMMIT on CFA.T_RPT_SEND_COMMIT (PACKNAME)
  tablespace CFA
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
create index CFA.INDEX_ID_T_RPT_SEND_COMMIT on CFA.T_RPT_SEND_COMMIT (TABLEID, BUSINESSID)
  tablespace CFA
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
grant select, update on CFA.T_RPT_SEND_COMMIT to DATACORE;
grant select, update on CFA.T_RPT_SEND_COMMIT to DATACOREFF;
grant select, update on CFA.T_RPT_SEND_COMMIT to DATACOREOPR;

prompt
prompt Creating table T_RPT_SEND_COMMIT_1009
prompt =====================================
prompt
create table CFA.T_RPT_SEND_COMMIT_1009
(
  TABLEID    VARCHAR2(50) not null,
  BUSINESSID VARCHAR2(50) not null,
  PACKNAME   VARCHAR2(50),
  FILENAME   VARCHAR2(50) not null,
  IS_RECEIVE CHAR(1),
  IS_SENDMTS CHAR(1)
)
tablespace CFA
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
prompt Creating table T_RPT_SEND_COMMIT_OLD
prompt ====================================
prompt
create table CFA.T_RPT_SEND_COMMIT_OLD
(
  TABLEID    VARCHAR2(50) not null,
  BUSINESSID VARCHAR2(50) not null,
  PACKNAME   VARCHAR2(50),
  FILENAME   VARCHAR2(50) not null,
  IS_RECEIVE CHAR(1),
  IS_SENDMTS CHAR(1)
)
tablespace CFA
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
comment on table CFA.T_RPT_SEND_COMMIT_OLD
  is '���ķ��ͼ�¼';
comment on column CFA.T_RPT_SEND_COMMIT_OLD.TABLEID
  is '���ı���';
comment on column CFA.T_RPT_SEND_COMMIT_OLD.BUSINESSID
  is 'ҵ��ID';
comment on column CFA.T_RPT_SEND_COMMIT_OLD.PACKNAME
  is '���Ͱ���';
comment on column CFA.T_RPT_SEND_COMMIT_OLD.FILENAME
  is '�����ļ���';
comment on column CFA.T_RPT_SEND_COMMIT_OLD.IS_RECEIVE
  is '�Ƿ��յ�����';
create index CFA.IDX_PKN_RPT_SEND_COMMIT_OLD on CFA.T_RPT_SEND_COMMIT_OLD (PACKNAME)
  tablespace CFA
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
create index CFA.INDEX_ID_T_RPT_SEND_COMMIT_OLD on CFA.T_RPT_SEND_COMMIT_OLD (TABLEID, BUSINESSID)
  tablespace CFA
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
grant select, update on CFA.T_RPT_SEND_COMMIT_OLD to DATACORE;
grant select, update on CFA.T_RPT_SEND_COMMIT_OLD to DATACOREFF;
grant select, update on CFA.T_RPT_SEND_COMMIT_OLD to DATACOREOPR;

prompt
prompt Creating table T_RPT_TABLE_INFO
prompt ===============================
prompt
create table CFA.T_RPT_TABLE_INFO
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
  CAN_INPUT     CHAR(1) default 1
)
tablespace CFA
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
comment on table CFA.T_RPT_TABLE_INFO
  is '��������Ϣ';
comment on column CFA.T_RPT_TABLE_INFO.ID
  is 'ID';
comment on column CFA.T_RPT_TABLE_INFO.INFO_TYPE
  is '��Ϣ����';
comment on column CFA.T_RPT_TABLE_INFO.BUSI_TABLE_ID
  is 'ҵ�����ݱ���';
comment on column CFA.T_RPT_TABLE_INFO.BUSI_NAME
  is 'ҵ�������';
comment on column CFA.T_RPT_TABLE_INFO.IS_SHOW
  is '�Ƿ�չʾ';
comment on column CFA.T_RPT_TABLE_INFO.ORDERBY
  is '����';
comment on column CFA.T_RPT_TABLE_INFO.PBULICDATA
  is '�Թ�����';
comment on column CFA.T_RPT_TABLE_INFO.PRIVATEDATA
  is '��˽����';
comment on column CFA.T_RPT_TABLE_INFO.FILETYPE
  is '�ļ��ӿ�����';
comment on column CFA.T_RPT_TABLE_INFO.IS_ENABLED
  is '�Ƿ񼤻1-�Ѽ��0-δ����';
comment on column CFA.T_RPT_TABLE_INFO.CAN_INPUT
  is '�Ƿ��¼�� 1/0 Ĭ��1';
create index CFA.UNIQUE_T_RPT_TABLE_INFO on CFA.T_RPT_TABLE_INFO (BUSI_TABLE_ID)
  tablespace CFA
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
create table CFA.T_RPT_TABLE_RELA
(
  SUB_TABLE_ID VARCHAR2(50) not null,
  TABLE_ID     VARCHAR2(50) not null,
  TABLE_COLUMN VARCHAR2(50),
  SUBRELA      NUMBER(10)
)
tablespace CFA
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
create table CFA.T_RPT_TEMPLATE
(
  TEMPLATE_ID      VARCHAR2(100) not null,
  TEMPLATE_NAME    VARCHAR2(100),
  TEMPLATE_CONTENT BLOB,
  SAFE_TABLE_ID    VARCHAR2(200)
)
tablespace CFA
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
comment on table CFA.T_RPT_TEMPLATE
  is '����ģ����Ϣ��';
comment on column CFA.T_RPT_TEMPLATE.TEMPLATE_ID
  is 'ģ��id';
comment on column CFA.T_RPT_TEMPLATE.TEMPLATE_NAME
  is 'ģ����������';
comment on column CFA.T_RPT_TEMPLATE.TEMPLATE_CONTENT
  is '��������';
comment on column CFA.T_RPT_TEMPLATE.SAFE_TABLE_ID
  is '����������Ϣ';
alter table CFA.T_RPT_TEMPLATE
  add constraint PK_T_RPT_TEMPLATE primary key (TEMPLATE_ID)
  using index 
  tablespace CFA
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
create table CFA.T_TASK_LOCK
(
  TASK_ID   VARCHAR2(50) not null,
  TASK_INFO VARCHAR2(50),
  TASK_TYPE VARCHAR2(20)
)
tablespace CFA
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
alter table CFA.T_TASK_LOCK
  add constraint PK_T_TASK_LOCK primary key (TASK_ID)
  using index 
  tablespace CFA
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
create table CFA.T_TASK_LOCK_INFO
(
  ID       VARCHAR2(14) not null,
  TYPE     VARCHAR2(20) not null,
  END_DATE VARCHAR2(14),
  STEP     VARCHAR2(50),
  INFO     VARCHAR2(1000),
  RPTTITLE VARCHAR2(12) not null
)
tablespace CFA
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
comment on table CFA.T_TASK_LOCK_INFO
  is '�����Ϣ��';
comment on column CFA.T_TASK_LOCK_INFO.RPTTITLE
  is '�������к�';
alter table CFA.T_TASK_LOCK_INFO
  add constraint PK_T_TASK_LOCK_INFO primary key (ID, TYPE, RPTTITLE)
  using index 
  tablespace CFA
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
prompt Creating table T_USER_AUTHORITY
prompt ===============================
prompt
create table CFA.T_USER_AUTHORITY
(
  ID             NUMBER(10) not null,
  FK_USERID      VARCHAR2(50),
  FK_AUTHORITYID NUMBER(10)
)
tablespace CFA
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
prompt Creating table U_BASE_FORM_NO
prompt =============================
prompt
create table CFA.U_BASE_FORM_NO
(
  FORM_TYPE  VARCHAR2(5) not null,
  CURRENT_ID NUMBER(19) not null
)
tablespace CFA
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
comment on table CFA.U_BASE_FORM_NO
  is '����ϵͳ��ͬ���ͱ��';
comment on column CFA.U_BASE_FORM_NO.FORM_TYPE
  is '���ֵ
	���ֵ����й���';
comment on column CFA.U_BASE_FORM_NO.CURRENT_ID
  is '��ǰ���';
alter table CFA.U_BASE_FORM_NO
  add constraint PK_U_BASE_FORM_NO primary key (FORM_TYPE, CURRENT_ID)
  using index 
  tablespace CFA
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
create table CFA.U_BASE_SYS_LOG
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
tablespace CFA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 3M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table CFA.U_BASE_SYS_LOG
  is 'ϵͳ��־��';
comment on column CFA.U_BASE_SYS_LOG.LOG_ID
  is '��־���';
comment on column CFA.U_BASE_SYS_LOG.USER_ID
  is '�û����';
comment on column CFA.U_BASE_SYS_LOG.USER_ENAME
  is '�û���¼��';
comment on column CFA.U_BASE_SYS_LOG.USER_CNAME
  is '�û�����';
comment on column CFA.U_BASE_SYS_LOG.INST_ID
  is '�������';
comment on column CFA.U_BASE_SYS_LOG.INST_CNAME
  is '��������';
comment on column CFA.U_BASE_SYS_LOG.MENU_ID
  is '��Ŀ���';
comment on column CFA.U_BASE_SYS_LOG.MENU_NAME
  is '��Ŀ����';
comment on column CFA.U_BASE_SYS_LOG.IP
  is '�û�IP';
comment on column CFA.U_BASE_SYS_LOG.BROWSE
  is '�û������';
comment on column CFA.U_BASE_SYS_LOG.LOG_TYPE
  is '��־����';
comment on column CFA.U_BASE_SYS_LOG.EXEC_TIME
  is 'ִ��ʱ��';
comment on column CFA.U_BASE_SYS_LOG.DESCRIPTION
  is '����';
comment on column CFA.U_BASE_SYS_LOG.STATUS
  is '״̬';
alter table CFA.U_BASE_SYS_LOG
  add constraint PK_U_BASE_SYS_LOG primary key (LOG_ID)
  using index 
  tablespace CFA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 256K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence S_AML_ENTRIES_ISIS
prompt ====================================
prompt
create sequence CFA.S_AML_ENTRIES_ISIS
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_AML_ENTRIES_ISIS_BAK
prompt ========================================
prompt
create sequence CFA.S_AML_ENTRIES_ISIS_BAK
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_APIS
prompt ========================
prompt
create sequence CFA.S_APIS
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_DTPROPERTIES
prompt ================================
prompt
create sequence CFA.S_DTPROPERTIES
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_RAND_DATA
prompt =============================
prompt
create sequence CFA.S_RAND_DATA
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_AUTHORITY
prompt ===============================
prompt
create sequence CFA.S_T_AUTHORITY
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_CODE_DICTIONARY
prompt =====================================
prompt
create sequence CFA.S_T_CODE_DICTIONARY
minvalue 1
maxvalue 999999999999999999999999999
start with 4604
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_CODE_DICTIONARY_CURR
prompt ==========================================
prompt
create sequence CFA.S_T_CODE_DICTIONARY_CURR
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_DTS_IMPORT_REPEATRECORD
prompt =============================================
prompt
create sequence CFA.S_T_DTS_IMPORT_REPEATRECORD
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_ERROR_FEEDBACK
prompt ====================================
prompt
create sequence CFA.S_T_ERROR_FEEDBACK
minvalue 1
maxvalue 999999999999999999999999999
start with 29888
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_FILEM_LOG
prompt ===============================
prompt
create sequence CFA.S_T_FILEM_LOG
minvalue 1
maxvalue 999999999999999999999999999
start with 59853
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_LOAD_DATA
prompt ===============================
prompt
create sequence CFA.S_T_LOAD_DATA
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_RPT_TABLE_INFO
prompt ====================================
prompt
create sequence CFA.S_T_RPT_TABLE_INFO
minvalue 1
maxvalue 999999999999999999999999999
start with 1060
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_RPT_TABLE_INFO_RZB
prompt ========================================
prompt
create sequence CFA.S_T_RPT_TABLE_INFO_RZB
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_USERINTERFACE
prompt ===================================
prompt
create sequence CFA.S_T_USERINTERFACE
minvalue 1
maxvalue 999999999999999999999999999
start with 110
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_USER_AUTHORITY
prompt ====================================
prompt
create sequence CFA.S_T_USER_AUTHORITY
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_T_USER_ORG
prompt ==============================
prompt
create sequence CFA.S_T_USER_ORG
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating synonym TB_ORG
prompt =======================
prompt
create or replace synonym CFA.TB_ORG
  for UPRR.U_BASE_INST@DB2LINK.REGRESS.RDBMS.DEV.US.ORACLE.COM;

prompt
prompt Creating synonym TB_USER
prompt ========================
prompt
create or replace synonym CFA.TB_USER
  for UPRR.U_BASE_USER;

prompt
prompt Creating synonym TB_USER_ORG
prompt ============================
prompt
create or replace synonym CFA.TB_USER_ORG
  for UPRR.VU_USER_ORG;

prompt
prompt Creating synonym U_USER_THEME
prompt =============================
prompt
create or replace synonym CFA.U_USER_THEME
  for UPRR.U_USER_THEME;

prompt
prompt Creating view T_ORG
prompt ===================
prompt
CREATE OR REPLACE VIEW CFA.T_ORG AS
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
CREATE OR REPLACE VIEW CFA.T_USER AS
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
create or replace view cfa.t_user_org as
select
       1 as ID,
       user_id as FK_USERID,
       inst_id as FK_ORGID
from UPRR.v_Inst_Author_For_Cfa
/

prompt
prompt Creating view V_REPORT_DATASTATUS
prompt =================================
prompt
create or replace view cfa.v_report_datastatus as
select tableId      AS tableId,
       t.fileType   AS fileType,
       t.modifyuser AS modifyuser,
       t.datastatus AS datastatus,
       t.instcode   AS instcode,
       t.cfileType  AS cFileType
  from (
      select 'T_CFA_A_EXDEBT' as tableId,
             fileType,
             modifyuser,
             datastatus,
             instcode,
             (select min(c.filetype)
                from T_CFA_A_EXDEBT c
               where c.businessno = a.businessno
                 and c.filetype <> a.filetype
                 and a.filetype in ('AR', 'AS')) as cFileType
        from T_CFA_A_EXDEBT a
      UNION ALL
      select 'T_CFA_B_EXGUARAN' as tableId,
             fileType,
             modifyuser,
             datastatus,
             instcode,
             '' as cFileType
        from T_CFA_B_EXGUARAN
      UNION ALL
      select 'T_CFA_C_DOFOEXLO' as tableId,
             fileType,
             modifyuser,
             datastatus,
             instcode,
             '' as cFileType
        from T_CFA_C_DOFOEXLO
      UNION ALL
      select 'T_CFA_D_LOUNEXGU' as tableId,
             fileType,
             modifyuser,
             datastatus,
             instcode,
             '' as cFileType
        from T_CFA_D_LOUNEXGU
      UNION ALL
      select 'T_CFA_E_EXPLRMBLO' as tableId,
             fileType,
             modifyuser,
             datastatus,
             instcode,
             '' as cFileType
        from T_CFA_E_EXPLRMBLO
      UNION ALL
      select 'T_CFA_F_STRDE' as tableId,
             fileType,
             modifyuser,
             datastatus,
             instcode,
             '' as cFileType
        from T_CFA_F_STRDE
    ) t
/

prompt
prompt Creating view V_ROLE_USER
prompt =========================
prompt
create or replace view cfa.v_role_user as
select r.role_id, r.role_name, r.enabled, r.system_id, ru.user_id
  from uprr.u_auth_role r
  left join uprr.u_auth_role_user ru on r.role_id = ru.role_id
 where r.system_id = '00101'
/

prompt
prompt Creating view V_RPT_BUSS_TYPE
prompt =============================
prompt
create or replace view cfa.v_rpt_buss_type as
select buss_type_code, buss_type_name
  from t_rpt_buss_type
 where is_enabled = '1'
/

prompt
prompt Creating view V_USER_RESOURCE_FROM_UPRR
prompt =======================================
prompt
create or replace view cfa.v_user_resource_from_uprr as
select distinct t1.res_id           as RES_ID,
                t1.RES_DETAIL_VALUE as RES_DETAIL_VALUE,
                t1.RES_DETAIL_NAME  as RES_DETAIL_NAME,
                t2.user_id          as USER_ID
  from uprr.U_AUTH_ROLE_RESOURCE t1, uprr.U_AUTH_ROLE_USER t2
 where t1.system_id = '00101'
   and t2.role_id = t1.OBJECT_ID
/

prompt
prompt Creating view V_USER_BUSS_TYPE_FROM_UPRR
prompt ========================================
prompt
CREATE OR REPLACE VIEW CFA.V_USER_BUSS_TYPE_FROM_UPRR AS
SELECT USER_ID, res_detail_value
  from v_user_resource_from_uprr
 WHERE RES_ID = '10102'
/

prompt
prompt Creating function GET_AUDIT_CNT
prompt ===============================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_AUDIT_CNT(USER_ID IN varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡδ���(3)����
BEGIN
  SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            FROM T_BASE_ACCOUNT A
           WHERE A.DATASTATUS IN (3)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --2
          SELECT COUNT(1) CT
            FROM T_BASE_INCOME A
           WHERE A.DATASTATUS IN (3)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --3
          SELECT COUNT(1) CT
            FROM T_BASE_EXPENDITURE A
           WHERE A.DATASTATUS IN (3)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --4
          SELECT COUNT(1) CT
            FROM t_Base_Changes A
           WHERE A.DATASTATUS IN (3)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function GET_BASE_AUDIT_CNT
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_BASE_AUDIT_CNT(USER_ID varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡ������Ϣδ���(Datastatus = 3 and IsCommit = 1)����
BEGIN
  SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            FROM T_BASE_DOM_PAY A
           WHERE A.DATASTATUS = 3
             AND A.ISCOMMIT = 1
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --2
          SELECT COUNT(1) CT
            FROM T_BASE_DOM_REMIT A
           WHERE A.DATASTATUS = 3
             AND A.ISCOMMIT = 1
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --3
          SELECT COUNT(1) CT
            FROM T_BASE_EXPORT A
           WHERE A.DATASTATUS = 3
             AND A.ISCOMMIT = 1
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --4
          SELECT COUNT(1) CT
            FROM T_BASE_INCOME A
           WHERE A.DATASTATUS = 3
             AND A.ISCOMMIT = 1
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --5
          SELECT COUNT(1) CT
            FROM T_BASE_PAYMENT A
           WHERE A.DATASTATUS = 3
             AND A.ISCOMMIT = 1
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --6
          SELECT COUNT(1) CT
            FROM T_BASE_REMIT A
           WHERE A.DATASTATUS = 3
             AND A.ISCOMMIT = 1
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function GET_BASE_CHECK_CNT
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_BASE_CHECK_CNT(USER_ID varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡ������ϢδУ��(1,2,4)����
BEGIN
  SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            FROM T_BASE_DOM_PAY A
           WHERE A.DATASTATUS IN (1,2,4)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --2
          SELECT COUNT(1) CT
            FROM T_BASE_DOM_REMIT A
           WHERE A.DATASTATUS IN (1,2,4)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --3
          SELECT COUNT(1) CT
            FROM T_BASE_EXPORT A
           WHERE A.DATASTATUS IN (1,2,4)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --4
          SELECT COUNT(1) CT
            FROM T_BASE_INCOME A
           WHERE A.DATASTATUS IN (1,2,4)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --5
          SELECT COUNT(1) CT
            FROM T_BASE_PAYMENT A
           WHERE A.DATASTATUS IN (1,2,4)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --6
          SELECT COUNT(1) CT
            FROM T_BASE_REMIT A
           WHERE A.DATASTATUS IN (1,2,4)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function GET_DECL_AUDIT_CNT
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_DECL_AUDIT_CNT(USER_ID varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡ�걨��Ϣδ��˱���
BEGIN
  SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            FROM t_base_income rt
            left outer join t_decl_income t on rt.businessid = t.businessid
            left outer join t_base_income jt on rt.businessid = jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
          UNION ALL
          --2
          SELECT COUNT(1) CT
            FROM t_base_remit rt
            left outer join t_decl_remit t on rt.businessid = t.businessid
            left outer join t_base_remit jt on rt.businessid = jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
          UNION ALL
          --3
          SELECT COUNT(1) CT
            FROM t_base_payment rt
            left outer join t_decl_payment t on rt.businessid = t.businessid
            left outer join t_base_payment jt on rt.businessid =
                                                 jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function GET_DECL_CHECK_CNT
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_DECL_CHECK_CNT(USER_ID varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡ�걨��ϢδУ�����
BEGIN
  SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            from t_base_income rt
            left outer join t_decl_income t on rt.businessid = t.businessid
            left outer join t_base_income jt on rt.businessid = jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')
          UNION ALL
          --2
          SELECT COUNT(1) CT
            from t_base_payment rt
            left outer join t_decl_payment t on rt.businessid = t.businessid
            left outer join t_base_payment jt on rt.businessid =
                                                 jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')
          UNION ALL
          --3
          SELECT COUNT(1) CT
            from t_base_remit rt
            left outer join t_decl_remit t on rt.businessid = t.businessid
            left outer join t_base_remit jt on rt.businessid = jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function GET_FINI_AUDIT_CNT
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_FINI_AUDIT_CNT(USER_ID varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡ������Ϣδ��˱���
BEGIN
  SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            FROM t_decl_income rt
            left outer join t_fini_export t on rt.businessid = t.businessid
            left outer join t_base_income jt on rt.businessid = jt.businessid
           WHERE rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --2
          SELECT COUNT(1) CT
            FROM t_decl_remit rt
            left outer join t_fini_remit t on rt.businessid = t.businessid
            left outer join t_base_remit jt on rt.businessid = jt.businessid
           WHERE rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --3
          SELECT COUNT(1) CT
            FROM t_decl_payment rt
            left outer join t_fini_payment t on rt.businessid = t.businessid
            left outer join t_base_payment jt on rt.businessid =
                                                 jt.businessid
           WHERE rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --4
          SELECT COUNT(1) CT
            FROM t_base_dom_remit rt
            left outer join t_fini_dom_remit t on rt.businessid =
                                                  t.businessid
            left outer join t_base_dom_remit jt on rt.businessid =
                                                   jt.businessid
           WHERE rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --5
          SELECT COUNT(1) CT
            FROM t_base_dom_pay rt
            left outer join t_fini_dom_pay t on rt.businessid = t.businessid
            left outer join t_base_dom_pay jt on rt.businessid =
                                                 jt.businessid
           WHERE rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --6
          SELECT COUNT(1) CT
            FROM t_base_export rt
            left outer join t_fini_dom_export t on rt.businessid =
                                                   t.businessid
            left outer join t_base_export jt on rt.businessid = jt.businessid
           WHERE rt.datastatus in (5, 6, 7)
             and (t.datastatus = 3 and t.iscommit = 1)
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function GET_FINI_CHECK_CNT
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_FINI_CHECK_CNT(USER_ID varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡ������ϢδУ�����
BEGIN
  SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            FROM t_decl_income rt
            left outer join t_fini_export t on rt.businessid = t.businessid
            left outer join t_base_income jt on rt.businessid = jt.businessid
           WHERE rt.ISREF = 'Y'
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')
          UNION ALL
          --2
          SELECT COUNT(1) CT
            FROM t_decl_remit rt
            left outer join t_fini_remit t on rt.businessid = t.businessid
            left outer join t_base_remit jt on rt.businessid = jt.businessid
           WHERE rt.ISREF = 'Y'
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')
          UNION ALL
          --3
          SELECT COUNT(1) CT
            FROM t_decl_payment rt
            left outer join t_fini_payment t on rt.businessid = t.businessid
            left outer join t_base_payment jt on rt.businessid =
                                                 jt.businessid
           WHERE rt.ISREF = 'Y'
             AND rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')
          UNION ALL
          --4
          SELECT COUNT(1) CT
            FROM t_base_dom_remit rt
            left outer join t_fini_dom_remit t on rt.businessid =
                                                  t.businessid
            left outer join t_base_dom_remit jt on rt.businessid =
                                                   jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')
          UNION ALL
          --5
          SELECT COUNT(1) CT
            FROM t_base_dom_pay rt
            left outer join t_fini_dom_pay t on rt.businessid = t.businessid
            left outer join t_base_dom_pay jt on rt.businessid =
                                                 jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')
          UNION ALL
          --6
          SELECT COUNT(1) CT
            FROM t_base_export rt
            left outer join t_fini_dom_export t on rt.businessid =
                                                   t.businessid
            left outer join t_base_export jt on rt.businessid = jt.businessid
           WHERE rt.instcode IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
             and rt.datastatus in (3, 5, 6, 7)
             and (t.datastatus in (1, 2, 4) or t.datastatus is null)
             and ((jt.actionType = 'D' and jt.datastatus != 6) or jt.actionType != 'D')) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function GET_RPT_CNT
prompt =============================
prompt
CREATE OR REPLACE FUNCTION CFA.GET_RPT_CNT(USER_ID varchar2)
  RETURN INTEGER IS
  CNT INTEGER;
  --ȡ�ܱ��͵����֣�״̬5��ˣ�ֻȡ����
BEGIN
   SELECT SUM(B.CT)
    INTO CNT
    FROM ( --1
          SELECT COUNT(1) CT
            FROM T_FINI_DOM_EXPORT A
           WHERE A.DATASTATUS IN (5)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --2
          SELECT COUNT(1) CT
            FROM T_FINI_DOM_PAY A
           WHERE A.DATASTATUS IN (5)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --3
          SELECT COUNT(1) CT
            FROM T_FINI_DOM_REMIT A
           WHERE A.DATASTATUS IN (5)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --4
          SELECT COUNT(1) CT
            FROM T_FINI_EXPORT A
           WHERE A.DATASTATUS IN (5)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --5
          SELECT COUNT(1) CT
            FROM T_FINI_PAYMENT A
           WHERE A.DATASTATUS IN (5)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)
          UNION ALL
          --6
          SELECT COUNT(1) CT
            FROM T_FINI_REMIT A
           WHERE A.DATASTATUS IN (5)
             AND A.INSTCODE IN
                 (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USER_ID)) B;
  RETURN CNT;
END;
/

prompt
prompt Creating function JGID_VERIFY
prompt =============================
prompt
CREATE OR REPLACE FUNCTION CFA.Jgid_Verify(Pid VARCHAR2) RETURN VARCHAR2 IS
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
-- C9 = 11 - MOD ( ��Ci * Wi ��11) �� (2)
FOR i IN 1 .. 8 LOOP
Tab_w(i) := MOD(Power(2, ((10 - i) - 1)), 11);
--Tab_w(i) := MOD(Power(2, ((10 - i) - 1)), 11); ���Ǽ�Ȩ�㷨ֵ
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
RETURN('��ȷ');
ELSE
RETURN('����,Ӧ���ǣ�' || RESULT);
END IF;
EXCEPTION
WHEN OTHERS THEN
BEGIN
RETURN('����');
Dbms_Output.Put_Line('�������쳣�Ĵ���');
END;
END Jgid_Verify;
/

prompt
prompt Creating procedure P_WRITE_LOG
prompt ==============================
prompt
CREATE OR REPLACE PROCEDURE CFA.P_WRITE_LOG(V_NAME    IN VARCHAR2, --������
                                        V_TYPE    IN VARCHAR2, --״̬
                                        V_ERRINFO IN VARCHAR2 --�����Ϣ
                                        ) AS
BEGIN
INSERT INTO pub_home_log
  (log_time, proc_name, log_type, log_desc)
VALUES
  (SYSDATE, v_name, v_type, V_ERRINFO);
END P_WRITE_LOG;
/

prompt
prompt Creating procedure P_BUILD_HOMEDATA_DETAIL
prompt ==========================================
prompt
CREATE OR REPLACE PROCEDURE CFA.P_BUILD_HOMEDATA_DETAIL(USERID VARCHAR2,
                                                    TOP    NUMBER) IS
  /*********************************************************************
  * ���̹��ܣ�ȡУ�������top rownum������
  * ���ߣ�sunzhan
  * ����������û�id
  * �����������
  * �������ڣ�2009-07-31
  * ����޸����ڣ�2010-11-08
  *********************************************************************/
  V_MSG VARCHAR2(500);
  TYPE DIC_TB_TYPE IS RECORD(
    DIC_TYPE        PUB_HOME_DIC.DIC_TYPE%TYPE,
    DIC_TYPENAME    PUB_HOME_DIC.DIC_TYPENAME%TYPE,
    DIC_NAME        PUB_HOME_DIC.DIC_NAME%TYPE,
    DIC_VALUE       PUB_HOME_DIC.DIC_VALUE%TYPE,
    DIC_LIST_TARGET PUB_HOME_DIC.DIC_LIST_TARGET%TYPE,
    DIC_EDIT_TARGET PUB_HOME_DIC.DIC_EDIT_TARGET%TYPE);
  DICT DIC_TB_TYPE;
BEGIN
  --��һ��ǰ��������һ������
  DELETE FROM PUB_HOME_CELL T WHERE T.DATA_TIME < SYSDATE - 1;
  COMMIT;
  V_MSG := '������ϸ�����ݳɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA_DETAIL', 0, V_MSG);
  COMMIT;
  --������ϸ��Ϣ
  DELETE FROM PUB_HOME_CELL T
   WHERE T.CELL_TYPE LIKE 'detail_base%'
     AND T.CELL_USERID = USERID;
  V_MSG := '��������ݳɹ�';
  --6�ű�У��(1,2,4)
  SELECT A.DIC_TYPE,
         DIC_TYPENAME,
         DIC_NAME,
         DIC_VALUE,
         DIC_LIST_TARGET,
         DIC_EDIT_TARGET
    INTO DICT
    FROM PUB_HOME_DIC A
   WHERE A.DIC_VALUE = 'detail_base';
  --todo:��ȡ�����ֶ�
  INSERT INTO PUB_HOME_CELL
    (CELL_TYPE,
     CELL_TITLE,
     CELL_TARGET,
     CELL_KEYID,
     CELL_URL,
     CELL_DATE,
     CELL_DESC,
     CELL_USERID,
     DATA_TIME)
    SELECT DICT.DIC_TYPE,
           DICT.DIC_TYPENAME,
           'true',
           B.BUSINESSID,
           B.URL,
           B.IMPORTDATE,
           B.TITLE,
           USERID,
           SYSDATE
      FROM (SELECT A.BUSINESSID,
                   A.IMPORTDATE,
                   'editDataReadOnly.action?tableId=t_base_dom_pay' || '&' ||
                   'infoTypeCode=1' || '&' || 'instCode=' || A.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���ڸ���/�ж�֪ͨ��,�ͻ���:' || A.CUSTNM || ',�ʺ�:' || A.LCYACC AS TITLE
              FROM T_BASE_DOM_PAY A
             WHERE A.DATASTATUS IN (1, 2, 4)
               AND A.INSTCODE IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
            UNION
            SELECT A.BUSINESSID,
                   A.IMPORTDATE,
                   'editDataReadOnly.action?tableId=t_base_dom_remit' || '&' ||
                   'infoTypeCode=1' || '&' || 'instCode=' || A.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���ڻ��������,�ͻ���:' || A.CUSTNM || ',�ʺ�:' || A.LCYACC AS TITLE
              FROM T_BASE_DOM_REMIT A
             WHERE A.DATASTATUS IN (1, 2, 4)
               AND A.INSTCODE IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
            UNION
            SELECT A.BUSINESSID,
                   A.IMPORTDATE,
                   'editDataReadOnly.action?tableId=t_base_export' || '&' ||
                   'infoTypeCode=1' || '&' || 'instCode=' || A.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '�����ջ����ר�������������룩,�ͻ���:' || A.CUSTNM || ',�ʺ�:' || A.LCYACC AS TITLE
              FROM T_BASE_EXPORT A
             WHERE A.DATASTATUS IN (1, 2, 4)
               AND A.INSTCODE IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
            UNION
            SELECT A.BUSINESSID,
                   A.IMPORTDATE,
                   'editDataReadOnly.action?tableId=t_base_income' || '&' ||
                   'infoTypeCode=1' || '&' || 'instCode=' || A.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���������걨��,�ͻ���:' || A.CUSTNM || ',�ʺ�:' || A.LCYACC AS TITLE
              FROM T_BASE_INCOME A
             WHERE A.DATASTATUS IN (1, 2, 4)
               AND A.INSTCODE IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
            UNION
            SELECT A.BUSINESSID,
                   A.IMPORTDATE,
                   'editDataReadOnly.action?tableId=t_base_payment' || '&' ||
                   'infoTypeCode=1' || '&' || 'instCode=' || A.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���⸶��/�ж�֪ͨ��,�ͻ���:' || A.CUSTNM || ',�ʺ�:' || A.LCYACC AS TITLE
              FROM T_BASE_PAYMENT A
             WHERE A.DATASTATUS IN (1, 2, 4)
               AND A.INSTCODE IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
            UNION
            SELECT A.BUSINESSID,
                   A.IMPORTDATE,
                   'editDataReadOnly.action?tableId=t_base_remit' || '&' ||
                   'infoTypeCode=1' || '&' || 'instCode=' || A.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '������������,�ͻ���:' || A.CUSTNM || ',�ʺ�:' || A.LCYACC AS TITLE
              FROM T_BASE_REMIT A
             WHERE A.DATASTATUS IN (1, 2, 4)
               AND A.INSTCODE IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)) B
     WHERE ROWNUM <= TOP
     ORDER BY B.IMPORTDATE DESC;
  COMMIT;
  V_MSG := '������ϸ��Ϣ���ɳɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA_DETAIL', 0, V_MSG);
  COMMIT;
  --������ϸ��Ϣ
  DELETE FROM PUB_HOME_CELL T
   WHERE T.CELL_TYPE LIKE 'detail_decl%'
     AND T.CELL_USERID = USERID;
  --3�ű�У��(1,2,4)
  SELECT A.DIC_TYPE,
         DIC_TYPENAME,
         DIC_NAME,
         DIC_VALUE,
         DIC_LIST_TARGET,
         DIC_EDIT_TARGET
    INTO DICT
    FROM PUB_HOME_DIC A
   WHERE A.DIC_VALUE = 'detail_decl';
  --todo:��ȡ�����ֶ�
  INSERT INTO PUB_HOME_CELL
    (CELL_TYPE,
     CELL_TITLE,
     CELL_TARGET,
     CELL_KEYID,
     CELL_URL,
     CELL_DATE,
     CELL_DESC,
     CELL_USERID,
     DATA_TIME)
    SELECT DICT.DIC_TYPE,
           DICT.DIC_TYPENAME,
           'true',
           B.BUSINESSID,
           B.URL,
           B.IMPORTDATE,
           B.TITLE,
           USERID,
           SYSDATE
      FROM (SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_decl_income' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=2' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���������걨��,�걨����:' || t.RPTNO AS TITLE
              from t_base_income rt
              left outer join t_decl_income t on rt.businessid =
                                                 t.businessid
              left outer join t_base_income jt on rt.businessid =
                                                  jt.businessid
             WHERE rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)
            UNION
            SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_decl_payment' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=2' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���⸶��/�ж�֪ͨ��,�걨����:' || t.RPTNO AS TITLE
              from t_base_payment rt
              left outer join t_decl_payment t on rt.businessid =
                                                  t.businessid
              left outer join t_base_payment jt on rt.businessid =
                                                   jt.businessid
             WHERE rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)
            UNION
            SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_decl_remit' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=2' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '������������,�걨����:' || t.RPTNO AS TITLE
              from t_base_remit rt
              left outer join t_decl_remit t on rt.businessid = t.businessid
              left outer join t_base_remit jt on rt.businessid =
                                                 jt.businessid
             WHERE rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)) B
     WHERE ROWNUM <= TOP
     ORDER BY B.IMPORTDATE DESC;
  COMMIT;
  V_MSG := '�걨��ϸ��Ϣ���ɳɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA_DETAIL', 0, V_MSG);
  COMMIT;
  --������ϸ��Ϣ
  DELETE FROM PUB_HOME_CELL T
   WHERE T.CELL_TYPE LIKE 'detail_fini%'
     AND T.CELL_USERID = USERID;
  --3�ű�У��(1,2,4)
  SELECT A.DIC_TYPE,
         DIC_TYPENAME,
         DIC_NAME,
         DIC_VALUE,
         DIC_LIST_TARGET,
         DIC_EDIT_TARGET
    INTO DICT
    FROM PUB_HOME_DIC A
   WHERE A.DIC_VALUE = 'detail_fini';
  --todo:��ȡ�����ֶ�
  INSERT INTO PUB_HOME_CELL
    (CELL_TYPE,
     CELL_TITLE,
     CELL_TARGET,
     CELL_KEYID,
     CELL_URL,
     CELL_DATE,
     CELL_DESC,
     CELL_USERID,
     DATA_TIME)
    SELECT DICT.DIC_TYPE,
           DICT.DIC_TYPENAME,
           'true',
           B.BUSINESSID,
           B.URL,
           B.IMPORTDATE,
           B.TITLE,
           USERID,
           SYSDATE
      FROM (SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_fini_export' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=3' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '�����ջ����ר�������������룩,�걨����:' || t.RPTNO AS TITLE
              FROM t_decl_income rt
              left outer join t_fini_export t on rt.businessid =
                                                 t.businessid
              left outer join t_base_income jt on rt.businessid =
                                                  jt.businessid
             WHERE rt.ISREF = 'Y'
               AND rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)
            UNION
            SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_fini_remit' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=3' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '������������,�걨����:' || t.RPTNO AS TITLE
              FROM t_decl_remit rt
              left outer join t_fini_remit t on rt.businessid = t.businessid
              left outer join t_base_remit jt on rt.businessid =
                                                 jt.businessid
             WHERE rt.ISREF = 'Y'
               AND rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)
            UNION
            SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_fini_payment' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=3' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���⸶��/�ж�֪ͨ��,�걨����:' || t.RPTNO AS TITLE
              FROM t_decl_payment rt
              left outer join t_fini_payment t on rt.businessid =
                                                  t.businessid
              left outer join t_base_payment jt on rt.businessid =
                                                   jt.businessid
             WHERE rt.ISREF = 'Y'
               AND rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)
            UNION
            SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_fini_dom_remit' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=3' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���ڻ��������,�걨����:' || t.RPTNO AS TITLE
              FROM t_base_dom_remit rt
              left outer join t_fini_dom_remit t on rt.businessid =
                                                    t.businessid
              left outer join t_base_dom_remit jt on rt.businessid =
                                                     jt.businessid
             WHERE rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)
            UNION
            SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_fini_dom_pay' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=3' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '���ڸ���/�ж�֪ͨ��,�걨����:' || t.RPTNO AS TITLE
              FROM t_base_dom_pay rt
              left outer join t_fini_dom_pay t on rt.businessid =
                                                  t.businessid
              left outer join t_base_dom_pay jt on rt.businessid =
                                                   jt.businessid
             WHERE rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)
            UNION
            SELECT t.BUSINESSID,
                   t.IMPORTDATE,
                   'editData.action?tableId=t_fini_dom_export' || '&' ||
                   'sbHxFlag=1' || '&' ||
                   'infoTypeCode=3' || '&' || 'instCode=' || t.INSTCODE || '&' ||
                   'businessId=' AS URL,
                   '�����ջ����ר�������������룩,�걨����:' || t.RPTNO AS TITLE
              FROM t_base_export rt
              left outer join t_fini_dom_export t on rt.businessid =
                                                     t.businessid
              left outer join t_base_export jt on rt.businessid =
                                                  jt.businessid
             WHERE rt.instcode IN
                   (SELECT FK_ORGID FROM T_USER_ORG WHERE FK_USERID = USERID)
               and rt.datastatus in (3, 5, 6, 7)
               and t.datastatus in (1, 2, 4)) B
     WHERE ROWNUM <= TOP
     ORDER BY B.IMPORTDATE DESC;
  COMMIT;
  V_MSG := '������ϸ��Ϣ���ɳɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA_DETAIL', 0, V_MSG);
  COMMIT;
  V_MSG := '����ȫ��ͳ����Ϣ���';
  P_WRITE_LOG('P_BUILD_HOMEDATA_DETAIL', 1, V_MSG);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    V_MSG := 'ERROR,' || 'ERROR_CODE:' || SQLCODE || ',' ||
             SUBSTR(SQLERRM, 1, 800);
    P_WRITE_LOG('P_BUILD_HOMEDATA_DETAIL', -1, V_MSG);
    COMMIT;
END P_BUILD_HOMEDATA_DETAIL;
/

prompt
prompt Creating procedure P_BUILD_HOMEDATA
prompt ===================================
prompt
CREATE OR REPLACE PROCEDURE CFA.P_BUILD_HOMEDATA(USERID VARCHAR2,
                                             ROWNUM NUMBER) IS
  /*********************************************************************
  * ���̹��ܣ�����У����Ϣ������6���걨3������6���������Ϣ������6���걨3������6����
          ������Ϣ��������Ϣ ���������,����pub_home_note
  * ���ߣ�sunzhan
  * ����������û�id
  * �����������
  * �������ڣ�2009-07-31
  *********************************************************************/
  DESCR VARCHAR2(100);
  V_MSG VARCHAR2(500);
BEGIN
  DESCR := '����';
  --��һ��ǰ����־������
  DELETE FROM PUB_HOME_LOG T WHERE T.LOG_TIME < SYSDATE - 1;
  COMMIT;
  --��һ��ǰ��������һ������
  DELETE FROM PUB_HOME_NOTE T WHERE T.NOTE_TIME < SYSDATE - 1;
  COMMIT;
  V_MSG := '����ͳ�ƾ����ݳɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA', 0, V_MSG);
  COMMIT;
  --����У����Ϣ
  DELETE FROM PUB_HOME_NOTE T
   WHERE T.NOTE_TYPE LIKE 'check%'
     AND NOTE_USERID = USERID;
  --У��-����
  INSERT INTO PUB_HOME_NOTE
    (NOTE_TYPE, NOTE_NAME, NOTE_NUM, NOTE_URL, NOTE_USERID, NOTE_TIME,NOTE_MENUID)
    SELECT A.DIC_VALUE,
           A.DIC_TYPENAME || A.DIC_NAME || DESCR,
           GET_BASE_CHECK_CNT(USERID),
           A.DIC_LIST_TARGET,
           USERID,
           SYSDATE,
           A.DIC_EDIT_MENUID
      FROM PUB_HOME_DIC A
     WHERE A.DIC_VALUE = 'check_base';
  --У��-�걨
  INSERT INTO PUB_HOME_NOTE
    (NOTE_TYPE, NOTE_NAME, NOTE_NUM, NOTE_URL, NOTE_USERID, NOTE_TIME,NOTE_MENUID)
    SELECT A.DIC_VALUE,
           A.DIC_TYPENAME || A.DIC_NAME || DESCR,
           GET_DECL_CHECK_CNT(USERID),
           A.DIC_LIST_TARGET,
           USERID,
           SYSDATE,
            A.DIC_EDIT_MENUID
      FROM PUB_HOME_DIC A
     WHERE A.DIC_VALUE = 'check_decl';
  --У��-����
  INSERT INTO PUB_HOME_NOTE
    (NOTE_TYPE, NOTE_NAME, NOTE_NUM, NOTE_URL, NOTE_USERID, NOTE_TIME,NOTE_MENUID)
    SELECT A.DIC_VALUE,
           A.DIC_TYPENAME || A.DIC_NAME || DESCR,
           GET_FINI_CHECK_CNT(USERID),
           A.DIC_LIST_TARGET,
           USERID,
           SYSDATE,
            A.DIC_EDIT_MENUID
      FROM PUB_HOME_DIC A
     WHERE A.DIC_VALUE = 'check_fini';
  COMMIT;
  V_MSG := '����У��ͳ����Ϣ�ɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA', 0, V_MSG);
  COMMIT;
  --���������Ϣ
  DELETE FROM PUB_HOME_NOTE T
   WHERE T.NOTE_TYPE LIKE 'audit%'
     AND NOTE_USERID = USERID;
  --���-����
  INSERT INTO PUB_HOME_NOTE
    (NOTE_TYPE, NOTE_NAME, NOTE_NUM, NOTE_URL, NOTE_USERID, NOTE_TIME,NOTE_MENUID)
    SELECT A.DIC_VALUE,
           A.DIC_TYPENAME || A.DIC_NAME || DESCR,
           GET_BASE_AUDIT_CNT(USERID),
           A.DIC_LIST_TARGET,
           USERID,
           SYSDATE,
           A.DIC_EDIT_MENUID
      FROM PUB_HOME_DIC A
     WHERE A.DIC_VALUE = 'audit_base';
  --���-�걨
  INSERT INTO PUB_HOME_NOTE
    (NOTE_TYPE, NOTE_NAME, NOTE_NUM, NOTE_URL, NOTE_USERID, NOTE_TIME,NOTE_MENUID)
    SELECT A.DIC_VALUE,
           A.DIC_TYPENAME || A.DIC_NAME || DESCR,
           GET_DECL_AUDIT_CNT(USERID),
           A.DIC_LIST_TARGET,
           USERID,
           SYSDATE,
           A.DIC_EDIT_MENUID
      FROM PUB_HOME_DIC A
     WHERE A.DIC_VALUE = 'audit_decl';
  --���-����
  INSERT INTO PUB_HOME_NOTE
    (NOTE_TYPE, NOTE_NAME, NOTE_NUM, NOTE_URL, NOTE_USERID, NOTE_TIME,NOTE_MENUID)
    SELECT A.DIC_VALUE,
           A.DIC_TYPENAME || A.DIC_NAME || DESCR,
           GET_FINI_AUDIT_CNT(USERID),
           A.DIC_LIST_TARGET,
           USERID,
           SYSDATE,
           A.DIC_EDIT_MENUID
      FROM PUB_HOME_DIC A
     WHERE A.DIC_VALUE = 'audit_fini';
  COMMIT;
  V_MSG := '�������ͳ����Ϣ�ɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA', 0, V_MSG);
  COMMIT;
  --����������
  DELETE FROM PUB_HOME_NOTE T
   WHERE T.NOTE_TYPE LIKE 'report%'
     AND NOTE_USERID = USERID;
  --����-����
  INSERT INTO PUB_HOME_NOTE
    (NOTE_TYPE, NOTE_NAME, NOTE_NUM, NOTE_URL, NOTE_USERID, NOTE_TIME,NOTE_MENUID)
    SELECT A.DIC_VALUE,
           A.DIC_TYPENAME || A.DIC_NAME || DESCR,
           GET_RPT_CNT(USERID),
           A.DIC_LIST_TARGET,
           USERID,
           SYSDATE,
           A.DIC_EDIT_MENUID
      FROM PUB_HOME_DIC A
     WHERE A.DIC_VALUE = 'report';
  COMMIT;
  V_MSG := '���ɱ���ͳ����Ϣ�ɹ�';
  P_WRITE_LOG('P_BUILD_HOMEDATA', 0, V_MSG);
  COMMIT;
  --������ϸ��Ϣ
  P_BUILD_HOMEDATA_DETAIL(USERID, ROWNUM);

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    V_MSG := 'ERROR,' || 'ERROR_CODE:' || SQLCODE ||','||
              SUBSTR(SQLERRM, 1, 800);
    P_WRITE_LOG('P_BUILD_HOMEDATA', -1, V_MSG);
    COMMIT;
END P_BUILD_HOMEDATA;
/

prompt
prompt Creating procedure P_REBUILD_TABLE
prompt ==================================
prompt
CREATE OR REPLACE PROCEDURE CFA.P_REBUILD_TABLE(OWNERS VARCHAR2) IS
/*********************************************************************
 * ���̹��ܣ��������ı�����ʱ��ת����ɾ��ԭ����������ʱ��Ϊԭ��   *
 * ���ߣ�sunz                                                     *
 * ������������ݿ��û���                                            *
 * �����������                                                      *
 * �������ڣ�2009-06-30                                              *
 *********************************************************************/
  V_SQL   VARCHAR2(100);
  TAB_TMP VARCHAR2(100);
  CURSOR CUR_T IS
    SELECT TABLE_NAME
      FROM ALL_ALL_TABLES
     WHERE OWNER = OWNERS
       AND DROPPED = 'NO';

  TAB_SNAME ALL_ALL_TABLES.TABLE_NAME%TYPE;
BEGIN
  OPEN CUR_T;
  LOOP
    FETCH CUR_T
      INTO TAB_SNAME;
    EXIT WHEN CUR_T%NOTFOUND;
    TAB_TMP := TAB_SNAME || '_TMP';
    V_SQL   := 'CREATE TABLE ' || TAB_TMP || ' AS SELECT * FROM "' ||
               TAB_SNAME || '"';
    DBMS_OUTPUT.PUT_LINE(V_SQL);
    EXECUTE IMMEDIATE V_SQL;
    DBMS_OUTPUT.PUT_LINE(TAB_SNAME || ' created success');
    V_SQL := 'DROP TABLE "' || TAB_SNAME || '"';
    EXECUTE IMMEDIATE V_SQL;
    DBMS_OUTPUT.PUT_LINE(V_SQL || ' success');
    V_SQL := 'rename ' || TAB_TMP || ' to ' || TAB_SNAME;
    EXECUTE IMMEDIATE V_SQL;
    DBMS_OUTPUT.PUT_LINE(V_SQL || ' success');
  END LOOP;
  CLOSE CUR_T;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('table ' || TAB_SNAME || ' created FAIL,' ||
                         SQLERRM);

END P_REBUILD_TABLE;
/

prompt
prompt Creating procedure P_TEST
prompt =========================
prompt
CREATE OR REPLACE PROCEDURE CFA.P_TEST(OWNERS VARCHAR2) IS
/*********************************************************************
 * ���̹��ܣ��������ı�����ʱ��ת����ɾ��ԭ����������ʱ��Ϊԭ��   *
 * ���ߣ�sunzhan                                                     *
 * ������������ݿ��û���                                            *
 * �����������                                                      *
 *********************************************************************/
  V_SQL   VARCHAR2(100);
  TAB_TMP VARCHAR2(100);
  CURSOR CUR_T IS
    SELECT TABLE_NAME
      FROM ALL_ALL_TABLES
     WHERE OWNER = OWNERS
       AND DROPPED = 'NO';

  TAB_SNAME ALL_ALL_TABLES.TABLE_NAME%TYPE;
BEGIN
  OPEN CUR_T;
  LOOP
    FETCH CUR_T
      INTO TAB_SNAME;
    EXIT WHEN CUR_T%NOTFOUND;
    TAB_TMP := TAB_SNAME || '_TMP';
    V_SQL   := 'CREATE TABLE ' || TAB_TMP || ' AS SELECT * FROM "' ||
               TAB_SNAME || '"';
    DBMS_OUTPUT.PUT_LINE(V_SQL);
    EXECUTE IMMEDIATE V_SQL;
    DBMS_OUTPUT.PUT_LINE(TAB_SNAME || ' created success');
    V_SQL := 'DROP TABLE "' || TAB_SNAME || '"';
    EXECUTE IMMEDIATE V_SQL;
    DBMS_OUTPUT.PUT_LINE(V_SQL || ' success');
    V_SQL := 'rename ' || TAB_TMP || ' to ' || TAB_SNAME;
    EXECUTE IMMEDIATE V_SQL;
    DBMS_OUTPUT.PUT_LINE(V_SQL || ' success');
  END LOOP;
  CLOSE CUR_T;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('table ' || TAB_SNAME || ' created FAIL,' ||
                         SQLERRM);

END P_TEST;
/


spool off
