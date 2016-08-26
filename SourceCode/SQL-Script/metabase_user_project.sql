------------------------------------------------
-- Export file for user METABASE              --
-- Created by 43631009 on 2016/8/18, 14:24:29 --
------------------------------------------------

spool metabase_user_project.log

prompt
prompt Creating table ALARM_OLD_NEW_RELATION
prompt =====================================
prompt
create table METABASE.ALARM_OLD_NEW_RELATION
(
  NEW_REPORT_ID VARCHAR2(30) not null,
  CURR_ID       VARCHAR2(20),
  OLD_REPORT_ID VARCHAR2(30),
  ROW_OFFSET    NUMBER,
  COL_OFFSET    NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_OLD_NEW_RELATION
  is 'ָ���������ݱ�';
comment on column METABASE.ALARM_OLD_NEW_RELATION.NEW_REPORT_ID
  is '��ϵͳ����ID';
comment on column METABASE.ALARM_OLD_NEW_RELATION.CURR_ID
  is '�ұ�ID';
comment on column METABASE.ALARM_OLD_NEW_RELATION.OLD_REPORT_ID
  is '��ϵͳ����ID';
comment on column METABASE.ALARM_OLD_NEW_RELATION.ROW_OFFSET
  is '��ϵͳ������ƫ����';
comment on column METABASE.ALARM_OLD_NEW_RELATION.COL_OFFSET
  is '��ϵͳ������ƫ����';

prompt
prompt Creating table ALARM_RATE_TEMPLATE
prompt ==================================
prompt
create table METABASE.ALARM_RATE_TEMPLATE
(
  TEMPLATE_ID      VARCHAR2(100) not null,
  TEMPLATE_NAME    VARCHAR2(200) not null,
  TEMPLATE_CONTENT BLOB,
  START_DATE       VARCHAR2(10) not null,
  END_DATE         VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_RATE_TEMPLATE
  is '�������ģ���';
comment on column METABASE.ALARM_RATE_TEMPLATE.TEMPLATE_ID
  is 'ģ�����';
comment on column METABASE.ALARM_RATE_TEMPLATE.TEMPLATE_NAME
  is 'ģ������';
comment on column METABASE.ALARM_RATE_TEMPLATE.TEMPLATE_CONTENT
  is '��������';
comment on column METABASE.ALARM_RATE_TEMPLATE.START_DATE
  is '������Чʱ��';
comment on column METABASE.ALARM_RATE_TEMPLATE.END_DATE
  is '����ʧЧʱ��';

prompt
prompt Creating table ALARM_RATE_TEMPLATE_FORMULA
prompt ==========================================
prompt
create table METABASE.ALARM_RATE_TEMPLATE_FORMULA
(
  ROW_NUM  NUMBER not null,
  COL_NUM  NUMBER not null,
  FML      VARCHAR2(300),
  FML_TYPE VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_RATE_TEMPLATE_FORMULA
  is '�������ģ��ָ���';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.ROW_NUM
  is '��';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.COL_NUM
  is '��';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.FML
  is 'ȡֵ��ʽ';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.FML_TYPE
  is '��ʽ����(fetch|pverify|sverify)';

prompt
prompt Creating table ALARM_RATE_TEMPLATE_VAL
prompt ======================================
prompt
create table METABASE.ALARM_RATE_TEMPLATE_VAL
(
  ROW_NUM   NUMBER not null,
  COL_NUM   NUMBER not null,
  DATA_DATE VARCHAR2(10) not null,
  BANK_ID   VARCHAR2(50) not null,
  VAL       NUMBER not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_RATE_TEMPLATE_VAL
  is '����������ֱ�';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.ROW_NUM
  is '��';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.COL_NUM
  is '��';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.DATA_DATE
  is '��������';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.BANK_ID
  is '��������';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.VAL
  is '����ֵ';

prompt
prompt Creating table ALARM_TB_ABNORMITYSTANDARD
prompt =========================================
prompt
create table METABASE.ALARM_TB_ABNORMITYSTANDARD
(
  ABNORMITYID       NUMBER not null,
  A1FORMULA         VARCHAR2(600),
  A0C0FORMULA       VARCHAR2(600),
  EXPID             NUMBER,
  ABNORMITYSTANDARD VARCHAR2(100),
  ABNORMITYDESC     VARCHAR2(200),
  STANDARDDESC      VARCHAR2(100),
  ORGCODE           VARCHAR2(20),
  REPORTID          VARCHAR2(30),
  VERSIONID         VARCHAR2(10),
  CURRID            VARCHAR2(10),
  DATARANGEID       VARCHAR2(10),
  UNITID            VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 320K
  );
comment on table METABASE.ALARM_TB_ABNORMITYSTANDARD
  is '����Ĺ�����Ϣ��';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ABNORMITYID
  is '���';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.A1FORMULA
  is 'ȡ����ֵ�Ĺ�ʽ';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.A0C0FORMULA
  is 'ȡ����ֵ�Ĺ�ʽ';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.EXPID
  is '���㹫ʽ����1-5��';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ABNORMITYSTANDARD
  is '�쳣�ж���׼';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ABNORMITYDESC
  is '�쳣��Ϣ����';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.STANDARDDESC
  is '�ж���׼����';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ORGCODE
  is '��֯��������';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.REPORTID
  is '������';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.VERSIONID
  is '����汾';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.CURRID
  is '����';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.DATARANGEID
  is '�ھ�';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.UNITID
  is 'ҳ����ֵ��ʾ��ʽ��21Ϊ%��ʽ��2Ϊ������ʽ';
alter table METABASE.ALARM_TB_ABNORMITYSTANDARD
  add constraint PK_ALARM_TB_ABNORMITYSTANDARD primary key (ABNORMITYID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
  );

prompt
prompt Creating table ALARM_TB_ALARMDATAISSUE
prompt ======================================
prompt
create table METABASE.ALARM_TB_ALARMDATAISSUE
(
  MODELID   VARCHAR2(12),
  ORGCODE   VARCHAR2(20),
  DATATIME  VARCHAR2(12),
  DATAISSUE VARCHAR2(2)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_ALARMDATAISSUE
  is '�������ݼ�¼��';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.MODELID
  is '����id������103���ȵ�';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.ORGCODE
  is '��֯��������';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.DATATIME
  is '��������ʱ��';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.DATAISSUE
  is '��������״̬��20100721ֻ��1״̬��';

prompt
prompt Creating table ALARM_TB_ALARMFUNCTION
prompt =====================================
prompt
create table METABASE.ALARM_TB_ALARMFUNCTION
(
  ID            NUMBER not null,
  ITEMID        NUMBER,
  ALARMFUNCTION VARCHAR2(60),
  ALARMTYPE     VARCHAR2(12),
  VERSION       VARCHAR2(10),
  USERDEFINED   NUMBER(20,6)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_ALARMFUNCTION
  is 'Ԥ����ʽ��';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ID
  is 'Ԥ�����';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ALARMFUNCTION
  is 'Ԥ����ʽ';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ALARMTYPE
  is 'Ԥ������';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.VERSION
  is '�汾��';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.USERDEFINED
  is '�û��Զ���Ԥ��ֵ';

prompt
prompt Creating table ALARM_TB_ALARMITEMFORMULATION
prompt ============================================
prompt
create table METABASE.ALARM_TB_ALARMITEMFORMULATION
(
  FORMUID     NUMBER not null,
  ITEMID      NUMBER,
  FORMUTYPE   INTEGER,
  CONTENT     VARCHAR2(1000),
  CONTENTNAME VARCHAR2(600),
  ORDERNUM    INTEGER,
  VERSION     VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_ALARMITEMFORMULATION
  is 'Ԥ��ָ�깫ʽ��';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.FORMUID
  is '����ID';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.FORMUTYPE
  is '������:0Ϊָ�꣬1Ϊ����';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.CONTENT
  is '������:�������Ϊָ�꣬�˴�Ϊ�ɼ�ָ����롣�������Ϊ���ţ��˴�ֱ�������';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.CONTENTNAME
  is '������:�������Ϊָ�꣬����ʾָ�����ơ�����Ƿ�����д����';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.ORDERNUM
  is '������,��ʽ�����˳��';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.VERSION
  is '�汾��';

prompt
prompt Creating table ALARM_TB_ALARMITEMTABLE
prompt ======================================
prompt
create table METABASE.ALARM_TB_ALARMITEMTABLE
(
  ITEMID    NUMBER not null,
  ITEMCODE  VARCHAR2(12),
  ITEMNAME  VARCHAR2(60),
  PARENTID  NUMBER,
  ITEMORDER INTEGER,
  ITEMLEVEL INTEGER,
  ITEMDESC  VARCHAR2(200),
  ITEMTYPE  INTEGER,
  RULEDESC  VARCHAR2(1000),
  FORMUDESC VARCHAR2(600),
  MODELID   VARCHAR2(12),
  VERSION   VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_ALARMITEMTABLE
  is 'Ԥ��ָ���';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMCODE
  is 'ָ�����';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMNAME
  is 'ָ������';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.PARENTID
  is '�ϼ�ָ��ID';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMORDER
  is 'ָ��ҳ����ʾ˳��';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMLEVEL
  is 'ָ��㼶';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMDESC
  is 'Ԥ���ֶ�';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMTYPE
  is '�ɼ�ָ��Ϊ0��Ԥ��ָ��Ϊ1';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.RULEDESC
  is '����˵��';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.FORMUDESC
  is '��ʽ˵��';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.MODELID
  is 'ģ��ID��101Ϊ����ģ�ͣ�102��֧ģ��';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.VERSION
  is '�����ļ��汾��';

prompt
prompt Creating table ALARM_TB_ALARMMETADATA
prompt =====================================
prompt
create table METABASE.ALARM_TB_ALARMMETADATA
(
  ITEMID      NUMBER not null,
  NORMALVALUE VARCHAR2(200),
  BESTVALUE   VARCHAR2(200),
  WORSTVALUE  VARCHAR2(200),
  VERSION     VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_ALARMMETADATA
  is 'ָ���жϱ�';
comment on column METABASE.ALARM_TB_ALARMMETADATA.ITEMID
  is 'ָ��id';
comment on column METABASE.ALARM_TB_ALARMMETADATA.NORMALVALUE
  is '����ֵ';
comment on column METABASE.ALARM_TB_ALARMMETADATA.BESTVALUE
  is '���ֵ';
comment on column METABASE.ALARM_TB_ALARMMETADATA.WORSTVALUE
  is '���ֵ';
comment on column METABASE.ALARM_TB_ALARMMETADATA.VERSION
  is '�汾��';

prompt
prompt Creating table ALARM_TB_INITARGUMENT
prompt ====================================
prompt
create table METABASE.ALARM_TB_INITARGUMENT
(
  ORGCODE  VARCHAR2(20),
  NATUREID VARCHAR2(200),
  SCALEID  VARCHAR2(200),
  LEVELID  VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TB_INITARGUMENT
  is '��ʼ��������';
comment on column METABASE.ALARM_TB_INITARGUMENT.ORGCODE
  is '��������';
comment on column METABASE.ALARM_TB_INITARGUMENT.NATUREID
  is '���ʱ��';
comment on column METABASE.ALARM_TB_INITARGUMENT.SCALEID
  is '��ģ���';
comment on column METABASE.ALARM_TB_INITARGUMENT.LEVELID
  is '�ȼ����';

prompt
prompt Creating table ALARM_TB_LEVELVALUE
prompt ==================================
prompt
create table METABASE.ALARM_TB_LEVELVALUE
(
  ITEMID      INTEGER not null,
  LEVELID     INTEGER not null,
  TRADEVALUE  VARCHAR2(200),
  DATADATE    VARCHAR2(10) not null,
  BEFOREVALUE VARCHAR2(200),
  AFTERVALUE  VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_LEVELVALUE
  is '�����ȼ�ͬҵƽ��ֵ';
comment on column METABASE.ALARM_TB_LEVELVALUE.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_LEVELVALUE.LEVELID
  is '�ȼ����';
comment on column METABASE.ALARM_TB_LEVELVALUE.TRADEVALUE
  is 'ͬҵƽ��ֵ';
comment on column METABASE.ALARM_TB_LEVELVALUE.DATADATE
  is '����ʱ��';
comment on column METABASE.ALARM_TB_LEVELVALUE.BEFOREVALUE
  is 'ͬҵǰ20%��ƽ��ֵ';
comment on column METABASE.ALARM_TB_LEVELVALUE.AFTERVALUE
  is 'ͬҵ��80%��ƽ��ֵ';
alter table METABASE.ALARM_TB_LEVELVALUE
  add constraint PK_ALARM_TB_LEVELVALUE primary key (ITEMID, LEVELID, DATADATE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TB_MODELITEMTABLE
prompt ======================================
prompt
create table METABASE.ALARM_TB_MODELITEMTABLE
(
  MODELID   VARCHAR2(12) not null,
  MODELTYPE VARCHAR2(10),
  MODELNAME VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TB_MODELITEMTABLE
  is 'ָ��ģ�ͱ�';
comment on column METABASE.ALARM_TB_MODELITEMTABLE.MODELID
  is 'ģ��ID';
comment on column METABASE.ALARM_TB_MODELITEMTABLE.MODELTYPE
  is 'ģ������';
comment on column METABASE.ALARM_TB_MODELITEMTABLE.MODELNAME
  is 'ģ������';
alter table METABASE.ALARM_TB_MODELITEMTABLE
  add constraint PK_ALARM_TB_MODELITEMTABLE primary key (MODELID)
  using index 
  tablespace METABASE
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
prompt Creating table ALARM_TB_NATUREVALUE
prompt ===================================
prompt
create table METABASE.ALARM_TB_NATUREVALUE
(
  ITEMID      INTEGER not null,
  NATUREID    INTEGER not null,
  TRADEVALUE  VARCHAR2(200),
  DATADATE    VARCHAR2(10) not null,
  BEFOREVALUE VARCHAR2(200),
  AFTERVALUE  VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_NATUREVALUE
  is '�������ʲ���ͬҵƽ��ֵ��';
comment on column METABASE.ALARM_TB_NATUREVALUE.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_NATUREVALUE.NATUREID
  is '���ʱ��';
comment on column METABASE.ALARM_TB_NATUREVALUE.TRADEVALUE
  is 'ͬҵƽ��ֵ';
comment on column METABASE.ALARM_TB_NATUREVALUE.DATADATE
  is '����ʱ��';
comment on column METABASE.ALARM_TB_NATUREVALUE.BEFOREVALUE
  is 'ͬҵǰ20%��ƽ��ֵ';
comment on column METABASE.ALARM_TB_NATUREVALUE.AFTERVALUE
  is 'ͬҵ��80%��ƽ��ֵ';
alter table METABASE.ALARM_TB_NATUREVALUE
  add constraint PK_ALARM_TB_NATUREVALUE primary key (ITEMID, NATUREID, DATADATE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TB_RATEITEMACTIONDESC
prompt ==========================================
prompt
create table METABASE.ALARM_TB_RATEITEMACTIONDESC
(
  ITEMID     NUMBER,
  RATELEVEL  VARCHAR2(10),
  ACTIONDESC CLOB
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_RATEITEMACTIONDESC
  is '����ָ�����ֽ����ܴ�ʩ��';
comment on column METABASE.ALARM_TB_RATEITEMACTIONDESC.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_RATEITEMACTIONDESC.RATELEVEL
  is '���ּ���';
comment on column METABASE.ALARM_TB_RATEITEMACTIONDESC.ACTIONDESC
  is '��ܴ�ʩ';

prompt
prompt Creating table ALARM_TB_RATEITEMDESC
prompt ====================================
prompt
create table METABASE.ALARM_TB_RATEITEMDESC
(
  ITEMID   NUMBER not null,
  ITEMDESC CLOB
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_RATEITEMDESC
  is '����ָ�����˵����';
comment on column METABASE.ALARM_TB_RATEITEMDESC.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_RATEITEMDESC.ITEMDESC
  is '����˵��';
alter table METABASE.ALARM_TB_RATEITEMDESC
  add constraint PK_ALARM_TB_RATEITEMDESC primary key (ITEMID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TB_RATEITEMFORMULATION
prompt ===========================================
prompt
create table METABASE.ALARM_TB_RATEITEMFORMULATION
(
  FORMUID     NUMBER not null,
  ITEMID      NUMBER,
  FORMUTYPE   INTEGER,
  CONTENT     VARCHAR2(200),
  CONTENTNAME VARCHAR2(600),
  ORDERNUM    INTEGER,
  VERSION     VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_RATEITEMFORMULATION
  is '����ָ����㹫ʽ��';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.FORMUID
  is '�����У���ʽID';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.FORMUTYPE
  is '�����ͣ�0Ϊָ�꣬1Ϊ����';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.CONTENT
  is '�����ݣ��������Ϊָ�꣬�˴�Ϊ�ɼ�ָ����롣�������Ϊ���ţ��˴�ֱ�������';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.CONTENTNAME
  is '�����ƣ��������Ϊָ�꣬��˴�дָ�����ơ� ����Ƿ��ţ���ֱ��д���š�';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.ORDERNUM
  is '��ʽ�����˳��';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.VERSION
  is '�汾��';
alter table METABASE.ALARM_TB_RATEITEMFORMULATION
  add constraint PK_ALARM_TB_RATEITEMFORMULATIO primary key (FORMUID, VERSION)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TB_RATEITEMLEVELDESC
prompt =========================================
prompt
create table METABASE.ALARM_TB_RATEITEMLEVELDESC
(
  ITEMID    NUMBER,
  RATELEVEL VARCHAR2(10),
  LEVELDESC CLOB
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_RATEITEMLEVELDESC
  is '����ָ�����ֽ��˵����';
comment on column METABASE.ALARM_TB_RATEITEMLEVELDESC.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_RATEITEMLEVELDESC.RATELEVEL
  is '���ּ���';
comment on column METABASE.ALARM_TB_RATEITEMLEVELDESC.LEVELDESC
  is '���ֽ��˵��';

prompt
prompt Creating table ALARM_TB_RATEITEMTABLE
prompt =====================================
prompt
create table METABASE.ALARM_TB_RATEITEMTABLE
(
  ITEMID     NUMBER not null,
  ITEMCODE   VARCHAR2(12),
  ITEMNAME   VARCHAR2(200),
  PARENTID   NUMBER,
  ORDERNUM   INTEGER,
  ITEMLEVEL  INTEGER,
  ITEMWEIGHT NUMBER(9,4),
  ITEMTYPE   INTEGER,
  CALTYPE    VARCHAR2(600),
  FULLSCORE  NUMBER(9,4),
  ISSHOW     INTEGER,
  MODELID    VARCHAR2(12),
  VERSION    VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_RATEITEMTABLE
  is '����ָ���';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMCODE
  is 'ָ�����';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMNAME
  is 'ָ������';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.PARENTID
  is '�ϼ�ָ��ID';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ORDERNUM
  is 'ָ������';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMLEVEL
  is 'ָ��㼶';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMWEIGHT
  is 'ָ��Ȩ��';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMTYPE
  is 'ָ�����ͣ��ɼ�ָ��Ϊ0������ָ��Ϊ1';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.CALTYPE
  is '������������/��ʽ��MINΪ��ͷ���MAXΪ��߷���AVGΪƽ�����ȣ�ϵͳ��ֻ�õ�����ͷ���';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.FULLSCORE
  is '����';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ISSHOW
  is '�Ƿ���ʾ������������ͷ���ֻ��ʾ�ߵĽ���ֵ��ָ�����ƽ�(����������/�����ʲ���)';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.MODELID
  is 'ģ��ID������ָ��201������ָ��202���ۺ�ģ��203';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.VERSION
  is '�汾��';
alter table METABASE.ALARM_TB_RATEITEMTABLE
  add constraint PK_ALARM_TB_RATEITEMTABLE primary key (ITEMID, VERSION)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TB_RATEMETA
prompt ================================
prompt
create table METABASE.ALARM_TB_RATEMETA
(
  RATEID    NUMBER not null,
  ITEMID    NUMBER,
  UPRATE    NUMBER(9,4),
  DOWNRATE  NUMBER(9,4),
  UPSCORE   NUMBER(9,4),
  DOWNSCORE NUMBER(9,4),
  CALTYPE   INTEGER,
  VERSION   VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_RATEMETA
  is '������׼��';
comment on column METABASE.ALARM_TB_RATEMETA.RATEID
  is '���';
comment on column METABASE.ALARM_TB_RATEMETA.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_RATEMETA.UPRATE
  is '��������';
comment on column METABASE.ALARM_TB_RATEMETA.DOWNRATE
  is '��������';
comment on column METABASE.ALARM_TB_RATEMETA.UPSCORE
  is '�÷�����';
comment on column METABASE.ALARM_TB_RATEMETA.DOWNSCORE
  is '�÷�����';
comment on column METABASE.ALARM_TB_RATEMETA.CALTYPE
  is '�������ͣ�0Ϊֱ��ȡ�����޼��㣬1Ϊȡ��ҵƽ��ֵ���㡣';
comment on column METABASE.ALARM_TB_RATEMETA.VERSION
  is '�汾��';
alter table METABASE.ALARM_TB_RATEMETA
  add constraint PK_ALARM_TB_RATEMETA primary key (RATEID, VERSION)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TB_RUNTIME
prompt ===============================
prompt
create table METABASE.ALARM_TB_RUNTIME
(
  RUNTIME  VARCHAR2(20),
  DATADATE VARCHAR2(10),
  ORGCODE  VARCHAR2(20),
  FREQ     VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_RUNTIME
  is '��������ʱ���';
comment on column METABASE.ALARM_TB_RUNTIME.RUNTIME
  is ' ����ʱ��';
comment on column METABASE.ALARM_TB_RUNTIME.DATADATE
  is '����ʱ��';
comment on column METABASE.ALARM_TB_RUNTIME.ORGCODE
  is '��������';
comment on column METABASE.ALARM_TB_RUNTIME.FREQ
  is 'Ƶ��';

prompt
prompt Creating table ALARM_TB_SCOPEVALUE
prompt ==================================
prompt
create table METABASE.ALARM_TB_SCOPEVALUE
(
  ITEMID      INTEGER not null,
  SCOPEID     INTEGER not null,
  TRADEVALUE  VARCHAR2(200),
  DATADATE    VARCHAR2(10) not null,
  BEFOREVALUE VARCHAR2(200),
  AFTERVALUE  VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_SCOPEVALUE
  is '������ģͬҵƽ��ֵ';
comment on column METABASE.ALARM_TB_SCOPEVALUE.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TB_SCOPEVALUE.SCOPEID
  is '��ģ���';
comment on column METABASE.ALARM_TB_SCOPEVALUE.TRADEVALUE
  is 'ͬҵƽ��ֵ';
comment on column METABASE.ALARM_TB_SCOPEVALUE.DATADATE
  is '����ʱ��';
comment on column METABASE.ALARM_TB_SCOPEVALUE.BEFOREVALUE
  is 'ͬҵǰ20%��ƽ��ֵ';
comment on column METABASE.ALARM_TB_SCOPEVALUE.AFTERVALUE
  is 'ͬҵ��80%��ƽ��ֵ';
alter table METABASE.ALARM_TB_SCOPEVALUE
  add constraint PK_ALARM_TB_SCOPEVALUE primary key (ITEMID, SCOPEID, DATADATE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TB_SYSTEMVERSION
prompt =====================================
prompt
create table METABASE.ALARM_TB_SYSTEMVERSION
(
  VERSIONID   VARCHAR2(10) not null,
  VERSIONTYPE VARCHAR2(20) not null,
  VERSIONDATE VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TB_SYSTEMVERSION
  is '�ƶ��ļ��汾����Ϣ��';
comment on column METABASE.ALARM_TB_SYSTEMVERSION.VERSIONID
  is '�汾��';
comment on column METABASE.ALARM_TB_SYSTEMVERSION.VERSIONTYPE
  is '�汾����';
comment on column METABASE.ALARM_TB_SYSTEMVERSION.VERSIONDATE
  is '�汾ʱ��';
alter table METABASE.ALARM_TB_SYSTEMVERSION
  add constraint PK_ALARM_TB_SYSTEMVERSION primary key (VERSIONID, VERSIONTYPE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ALARM_TD_ABNORMITYEXP
prompt ====================================
prompt
create table METABASE.ALARM_TD_ABNORMITYEXP
(
  EXPID      NUMBER not null,
  EXPRESSION VARCHAR2(50),
  EXPDESC    VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TD_ABNORMITYEXP
  is '�쳣�䶯���ʽ��';
comment on column METABASE.ALARM_TD_ABNORMITYEXP.EXPID
  is '���ʽID��1-5';
comment on column METABASE.ALARM_TD_ABNORMITYEXP.EXPRESSION
  is '���ʽ';
comment on column METABASE.ALARM_TD_ABNORMITYEXP.EXPDESC
  is '���ʽ����';
alter table METABASE.ALARM_TD_ABNORMITYEXP
  add constraint PK_ALARM_TD_ABNORMITYEXP primary key (EXPID)
  using index 
  tablespace METABASE
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
prompt Creating table ALARM_TD_LEVELMETA
prompt =================================
prompt
create table METABASE.ALARM_TD_LEVELMETA
(
  LEVELID   INTEGER not null,
  LEVELNAME VARCHAR2(20),
  LEVELDESC VARCHAR2(600)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TD_LEVELMETA
  is '�����ȼ�������';
comment on column METABASE.ALARM_TD_LEVELMETA.LEVELID
  is '�ȼ����';
comment on column METABASE.ALARM_TD_LEVELMETA.LEVELNAME
  is '�ȼ�����';
comment on column METABASE.ALARM_TD_LEVELMETA.LEVELDESC
  is '�ȼ�����';
alter table METABASE.ALARM_TD_LEVELMETA
  add constraint PK_ALARM_TD_LEVELMETA primary key (LEVELID)
  using index 
  tablespace METABASE
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
prompt Creating table ALARM_TD_NATUREMETA
prompt ==================================
prompt
create table METABASE.ALARM_TD_NATUREMETA
(
  NATUREID   INTEGER not null,
  NATURENAME VARCHAR2(20),
  NATUREDESC VARCHAR2(600)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TD_NATUREMETA
  is '��������������';
comment on column METABASE.ALARM_TD_NATUREMETA.NATUREID
  is '���ʱ��';
comment on column METABASE.ALARM_TD_NATUREMETA.NATURENAME
  is '��������';
comment on column METABASE.ALARM_TD_NATUREMETA.NATUREDESC
  is '��������';
alter table METABASE.ALARM_TD_NATUREMETA
  add constraint PK_ALARM_TD_NATUREMETA primary key (NATUREID)
  using index 
  tablespace METABASE
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
prompt Creating table ALARM_TD_SCOPEMETA
prompt =================================
prompt
create table METABASE.ALARM_TD_SCOPEMETA
(
  SCOPEID   INTEGER not null,
  SCOPENAME VARCHAR2(20),
  SCOPEDESC VARCHAR2(600)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TD_SCOPEMETA
  is '������ģ������';
comment on column METABASE.ALARM_TD_SCOPEMETA.SCOPEID
  is '��ģ���';
comment on column METABASE.ALARM_TD_SCOPEMETA.SCOPENAME
  is '��ģ����';
comment on column METABASE.ALARM_TD_SCOPEMETA.SCOPEDESC
  is '��ģ����';
alter table METABASE.ALARM_TD_SCOPEMETA
  add constraint PK_ALARM_TD_SCOPEMETA primary key (SCOPEID)
  using index 
  tablespace METABASE
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
prompt Creating table ALARM_TF_ABNORMITYDATA
prompt =====================================
prompt
create table METABASE.ALARM_TF_ABNORMITYDATA
(
  DATADATE    VARCHAR2(10) not null,
  CURID       VARCHAR2(10),
  DATARANGEID VARCHAR2(10),
  ORGCODE     VARCHAR2(20) not null,
  REPORTID    VARCHAR2(30) not null,
  ABNORMITYID NUMBER,
  A1VALUE     NUMBER,
  A0C0VALUE   NUMBER,
  RESULTVALUE NUMBER,
  RESULTALARM VARCHAR2(10),
  RESULTDESC  VARCHAR2(200),
  RESULTUNIT  VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 2M
  );
comment on table METABASE.ALARM_TF_ABNORMITYDATA
  is '�쳣�䶯Ԥ�����ݱ�';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.DATADATE
  is '����ʱ��';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.CURID
  is '����ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.DATARANGEID
  is '�ھ�ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.ORGCODE
  is '��������';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.REPORTID
  is '����ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.ABNORMITYID
  is '�쳣��׼ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.A1VALUE
  is 'A1����ֵ';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.A0C0VALUE
  is 'A0C0�Ƚ�ֵ';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTVALUE
  is '������';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTALARM
  is 'Ԥ�����';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTDESC
  is '���˵��';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTUNIT
  is '�����λ';

prompt
prompt Creating table ALARM_TF_ALARMDATAITEM
prompt =====================================
prompt
create table METABASE.ALARM_TF_ALARMDATAITEM
(
  ITEMID       NUMBER not null,
  ORGCODE      VARCHAR2(20) not null,
  DATATIME     VARCHAR2(10) not null,
  CURRVALUE    NUMBER,
  ALARMRESULT  VARCHAR2(12),
  UALARMRESULT VARCHAR2(12)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
  );
comment on table METABASE.ALARM_TF_ALARMDATAITEM
  is 'Ԥ��ָ�����ݱ�';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.ORGCODE
  is '��������';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.DATATIME
  is '����ʱ��';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.CURRVALUE
  is '����ֵ';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.ALARMRESULT
  is 'Ԥ�������1 is green��2 is red ,3 is yellow ,4 is blue';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.UALARMRESULT
  is '�û��Զ���Ԥ�������1 is green��2 is red ,3 is yellow ,4 is blue';
alter table METABASE.ALARM_TF_ALARMDATAITEM
  add constraint PK_ALARM_TF_ALARMDATAITEM primary key (ITEMID, ORGCODE, DATATIME)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
  );

prompt
prompt Creating table ALARM_TF_CELLDATA
prompt ================================
prompt
create table METABASE.ALARM_TF_CELLDATA
(
  CELLITEMCODE VARCHAR2(1000) not null,
  ORGCODE      VARCHAR2(20) not null,
  DATADATE     VARCHAR2(10) not null,
  CURRVALUE    NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
  );
comment on table METABASE.ALARM_TF_CELLDATA
  is '�����ɼ�ָ�����ݱ�';
comment on column METABASE.ALARM_TF_CELLDATA.CELLITEMCODE
  is 'ָ����룬����ֵΪ �����ں���';
comment on column METABASE.ALARM_TF_CELLDATA.ORGCODE
  is '��������';
comment on column METABASE.ALARM_TF_CELLDATA.DATADATE
  is '����ʱ��';
comment on column METABASE.ALARM_TF_CELLDATA.CURRVALUE
  is 'ָ��ֵ';
alter table METABASE.ALARM_TF_CELLDATA
  add constraint PK_ALARM_TF_CELLDATA primary key (CELLITEMCODE, ORGCODE, DATADATE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 512K
  );

prompt
prompt Creating table ALARM_TF_RATEDATA
prompt ================================
prompt
create table METABASE.ALARM_TF_RATEDATA
(
  ITEMID     NUMBER,
  ORGCODE    VARCHAR2(20),
  DATADATE   VARCHAR2(10),
  CURRVALUE  NUMBER,
  RATESCORE  NUMBER(9,4),
  FULLSCORE  NUMBER(9,4),
  RATELEVEL  VARCHAR2(50),
  ISRED      VARCHAR2(5),
  REVIEWDATE VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
  );
comment on table METABASE.ALARM_TF_RATEDATA
  is 'ָ���������ݱ�';
comment on column METABASE.ALARM_TF_RATEDATA.ITEMID
  is 'ָ��ID';
comment on column METABASE.ALARM_TF_RATEDATA.ORGCODE
  is '��������';
comment on column METABASE.ALARM_TF_RATEDATA.DATADATE
  is '����ʱ��';
comment on column METABASE.ALARM_TF_RATEDATA.CURRVALUE
  is '����ֵ';
comment on column METABASE.ALARM_TF_RATEDATA.RATESCORE
  is '����';
comment on column METABASE.ALARM_TF_RATEDATA.FULLSCORE
  is '����';
comment on column METABASE.ALARM_TF_RATEDATA.RATELEVEL
  is '���ּ�����ַ�����';
comment on column METABASE.ALARM_TF_RATEDATA.ISRED
  is '�Ƿ���Ҫ�����ʾ��0��nullΪ����죬1Ϊ���';

prompt
prompt Creating table ALARM_TU_ORDERFORM
prompt =================================
prompt
create table METABASE.ALARM_TU_ORDERFORM
(
  FORMID   NUMBER not null,
  MENUID   VARCHAR2(50),
  USERID   VARCHAR2(20),
  FORMNAME VARCHAR2(200),
  FORMTYPE VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TU_ORDERFORM
  is '�û�������';
comment on column METABASE.ALARM_TU_ORDERFORM.MENUID
  is 'ģ����';
comment on column METABASE.ALARM_TU_ORDERFORM.USERID
  is '������';
comment on column METABASE.ALARM_TU_ORDERFORM.FORMTYPE
  is 'Ԥ���ֶΣ��湲������';
alter table METABASE.ALARM_TU_ORDERFORM
  add constraint PK_ALARM_TU_ORDERFORM primary key (FORMID)
  using index 
  tablespace METABASE
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
prompt Creating table ALARM_TU_ORDERFORMDATE
prompt =====================================
prompt
create table METABASE.ALARM_TU_ORDERFORMDATE
(
  FORMID   NUMBER not null,
  DATADATE VARCHAR2(10) not null,
  SELECTED VARCHAR2(5)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TU_ORDERFORMDATE
  is '�û�����ʱ���';
comment on column METABASE.ALARM_TU_ORDERFORMDATE.SELECTED
  is '1ѡ��';

prompt
prompt Creating table ALARM_TU_ORDERFORMITEM
prompt =====================================
prompt
create table METABASE.ALARM_TU_ORDERFORMITEM
(
  FORMID   NUMBER not null,
  ITEMID   NUMBER not null,
  SELECTED VARCHAR2(5)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TU_ORDERFORMITEM
  is '�û�����ָ���';
comment on column METABASE.ALARM_TU_ORDERFORMITEM.SELECTED
  is '1ѡ��';

prompt
prompt Creating table ALARM_TU_ORDERFORMLEVEL
prompt ======================================
prompt
create table METABASE.ALARM_TU_ORDERFORMLEVEL
(
  FORMID    NUMBER not null,
  LEVELCODE VARCHAR2(20) not null,
  SELECTED  VARCHAR2(5)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TU_ORDERFORMLEVEL
  is '�û����������';
comment on column METABASE.ALARM_TU_ORDERFORMLEVEL.SELECTED
  is '1ѡ��';

prompt
prompt Creating table ALARM_TU_ORDERFORMNATURE
prompt =======================================
prompt
create table METABASE.ALARM_TU_ORDERFORMNATURE
(
  FORMID     NUMBER not null,
  NATURECODE VARCHAR2(20) not null,
  SELECTED   VARCHAR2(5)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TU_ORDERFORMNATURE
  is '�û��������ʱ�';
comment on column METABASE.ALARM_TU_ORDERFORMNATURE.SELECTED
  is '1ѡ��';

prompt
prompt Creating table ALARM_TU_ORDERFORMORG
prompt ====================================
prompt
create table METABASE.ALARM_TU_ORDERFORMORG
(
  FORMID   NUMBER not null,
  ORGCODE  VARCHAR2(20) not null,
  SELECTED VARCHAR2(5)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ALARM_TU_ORDERFORMORG
  is '�û�����������';
comment on column METABASE.ALARM_TU_ORDERFORMORG.SELECTED
  is '1ѡ��';

prompt
prompt Creating table ALARM_TU_ORDERFORMSCOPE
prompt ======================================
prompt
create table METABASE.ALARM_TU_ORDERFORMSCOPE
(
  FORMID    NUMBER not null,
  SCOPECODE VARCHAR2(20) not null,
  SELECTED  VARCHAR2(5)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ALARM_TU_ORDERFORMSCOPE
  is '�û��������ͱ�';
comment on column METABASE.ALARM_TU_ORDERFORMSCOPE.SELECTED
  is '1ѡ��';

prompt
prompt Creating table AUTH_ADMIN_SUBJECT
prompt =================================
prompt
create table METABASE.AUTH_ADMIN_SUBJECT
(
  ID         NUMBER(19) not null,
  USER_ID    VARCHAR2(32) not null,
  SUBJECT_ID VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.AUTH_ADMIN_SUBJECT.ID
  is 'sequence id';
comment on column METABASE.AUTH_ADMIN_SUBJECT.USER_ID
  is '�û�ID';
comment on column METABASE.AUTH_ADMIN_SUBJECT.SUBJECT_ID
  is '����ID ���subject_meta';
alter table METABASE.AUTH_ADMIN_SUBJECT
  add constraint PK88 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.IDX_ADMIN_SUBJECT on METABASE.AUTH_ADMIN_SUBJECT (USER_ID, SUBJECT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table AUTH_CURR_GROUP
prompt ==============================
prompt
create table METABASE.AUTH_CURR_GROUP
(
  ID         NUMBER(19) not null,
  GROUP_CODE VARCHAR2(20) not null,
  OWNER_TYPE VARCHAR2(1),
  OWNER_ID   VARCHAR2(20),
  GROUP_NAME VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.AUTH_CURR_GROUP.ID
  is 'sequence id';
comment on column METABASE.AUTH_CURR_GROUP.GROUP_CODE
  is '���������';
comment on column METABASE.AUTH_CURR_GROUP.OWNER_TYPE
  is '����������';
comment on column METABASE.AUTH_CURR_GROUP.OWNER_ID
  is '������ID';
comment on column METABASE.AUTH_CURR_GROUP.GROUP_NAME
  is '����������';
alter table METABASE.AUTH_CURR_GROUP
  add constraint PK_AUTH_USER_GROUP_1_1 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table AUTH_MENU_INFO
prompt =============================
prompt
create table METABASE.AUTH_MENU_INFO
(
  ID          NUMBER(19) not null,
  MENU_ID     VARCHAR2(20) not null,
  REL_MENU_ID VARCHAR2(20) not null,
  MENU_NAME   VARCHAR2(200),
  MENU_ORDER  NUMBER(38),
  LINKPAGE    VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.AUTH_MENU_INFO.ID
  is 'sequnce id';
comment on column METABASE.AUTH_MENU_INFO.MENU_ID
  is '�˵�ID';
comment on column METABASE.AUTH_MENU_INFO.REL_MENU_ID
  is '�ϼ��˵�ID';
comment on column METABASE.AUTH_MENU_INFO.MENU_NAME
  is '�˵���';
comment on column METABASE.AUTH_MENU_INFO.MENU_ORDER
  is '�˵�˳��';
comment on column METABASE.AUTH_MENU_INFO.LINKPAGE
  is '�˵�URL';
alter table METABASE.AUTH_MENU_INFO
  add constraint PK23_1 primary key (ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.IDX_MENU_INFO on METABASE.AUTH_MENU_INFO (MENU_ID)
  tablespace METABASE
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
prompt Creating table AUTH_MENU_SUBJECT
prompt ================================
prompt
create table METABASE.AUTH_MENU_SUBJECT
(
  ID          NUMBER(19) not null,
  MENU_ID     VARCHAR2(20) not null,
  SUBJECT_ID  VARCHAR2(10) not null,
  TABLE_CLASS VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.AUTH_MENU_SUBJECT.ID
  is 'SEQUENCE ID';
comment on column METABASE.AUTH_MENU_SUBJECT.MENU_ID
  is '�˵�ID';
comment on column METABASE.AUTH_MENU_SUBJECT.SUBJECT_ID
  is '����ID FK:SUBJECT_META';
comment on column METABASE.AUTH_MENU_SUBJECT.TABLE_CLASS
  is '���ֶ���δ��.';
alter table METABASE.AUTH_MENU_SUBJECT
  add constraint PK92 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.IDX_MENU_SUBJECT on METABASE.AUTH_MENU_SUBJECT (MENU_ID, SUBJECT_ID, TABLE_CLASS)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table AUTH_OPER_GROUP
prompt ==============================
prompt
create table METABASE.AUTH_OPER_GROUP
(
  ID         NUMBER(19) not null,
  GROUP_CODE VARCHAR2(20) not null,
  OWNER_TYPE VARCHAR2(1),
  OWNER_ID   VARCHAR2(20),
  GROUP_NAME VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.AUTH_OPER_GROUP.ID
  is 'sequence';
comment on column METABASE.AUTH_OPER_GROUP.GROUP_CODE
  is '�����';
comment on column METABASE.AUTH_OPER_GROUP.OWNER_TYPE
  is '����������';
comment on column METABASE.AUTH_OPER_GROUP.OWNER_ID
  is '�����ߴ���';
comment on column METABASE.AUTH_OPER_GROUP.GROUP_NAME
  is '����';
alter table METABASE.AUTH_OPER_GROUP
  add constraint PK_AUTH_USER_GROUP_1_1_1 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table AUTH_USER_BANK_RIGHTS2
prompt =====================================
prompt
create table METABASE.AUTH_USER_BANK_RIGHTS2
(
  ID              NUMBER(38) not null,
  BANK_GROUP_CODE VARCHAR2(50),
  USER_CODE       VARCHAR2(50),
  IS_USER_GROUP   CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.AUTH_USER_BANK_RIGHTS2.ID
  is '�˱��ݲ���';
alter table METABASE.AUTH_USER_BANK_RIGHTS2
  add primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table AUTH_USER_DATA
prompt =============================
prompt
create table METABASE.AUTH_USER_DATA
(
  ID             NUMBER(19) not null,
  USER_GROUP_ID  VARCHAR2(32) not null,
  BANK_GROUP_ID  VARCHAR2(20) not null,
  CURR_GROUP_ID  VARCHAR2(20) not null,
  OPER_GROUP_ID  VARCHAR2(20) not null,
  TABLE_GROUP_ID VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.AUTH_USER_DATA.ID
  is '�˱����� ';
alter table METABASE.AUTH_USER_DATA
  add constraint PK34_1 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.IDX_USER_AUTH on METABASE.AUTH_USER_DATA (USER_GROUP_ID, BANK_GROUP_ID, CURR_GROUP_ID, OPER_GROUP_ID, TABLE_GROUP_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table AUTH_USER_MENU
prompt =============================
prompt
create table METABASE.AUTH_USER_MENU
(
  ID            NUMBER(19) not null,
  USER_GROUP_ID VARCHAR2(20) not null,
  MENU_ID       VARCHAR2(20) not null,
  IS_USER_GROUP CHAR(1) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.AUTH_USER_MENU.ID
  is 'sequence';
comment on column METABASE.AUTH_USER_MENU.USER_GROUP_ID
  is '�û���ID';
comment on column METABASE.AUTH_USER_MENU.MENU_ID
  is '�˵�ID';
comment on column METABASE.AUTH_USER_MENU.IS_USER_GROUP
  is '�Ƿ��û���';
alter table METABASE.AUTH_USER_MENU
  add constraint PK29_1 primary key (ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.IDX_USER_MENU on METABASE.AUTH_USER_MENU (USER_GROUP_ID, MENU_ID, IS_USER_GROUP)
  tablespace METABASE
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
prompt Creating table BAK_AUTH_BANK_GROUP
prompt ==================================
prompt
create table METABASE.BAK_AUTH_BANK_GROUP
(
  ID         NUMBER(19) not null,
  GROUP_CODE VARCHAR2(50) not null,
  OWNER_TYPE VARCHAR2(1),
  OWNER_ID   VARCHAR2(20),
  GROUP_NAME VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_AUTH_BANK_GROUP.ID
  is 'sequence';
comment on column METABASE.BAK_AUTH_BANK_GROUP.GROUP_CODE
  is '�����';
comment on column METABASE.BAK_AUTH_BANK_GROUP.OWNER_TYPE
  is '����������';
comment on column METABASE.BAK_AUTH_BANK_GROUP.OWNER_ID
  is '�����ߴ���';
comment on column METABASE.BAK_AUTH_BANK_GROUP.GROUP_NAME
  is '����';
alter table METABASE.BAK_AUTH_BANK_GROUP
  add constraint PK_AUTH_USER_GROUP_1 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_BANK_GROUP_MEMBER
prompt =========================================
prompt
create table METABASE.BAK_AUTH_BANK_GROUP_MEMBER
(
  GROUP_CODE   VARCHAR2(50),
  ID           NUMBER(38) not null,
  MEMBER_CODE  VARCHAR2(20),
  MEMBER_ORDER NUMBER(38)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.BAK_AUTH_BANK_GROUP_MEMBER
  add constraint PK558_1 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_CURR_GROUP_MEMBER
prompt =========================================
prompt
create table METABASE.BAK_AUTH_CURR_GROUP_MEMBER
(
  GROUP_CODE   VARCHAR2(20),
  ID           NUMBER(38) not null,
  MEMBER_CODE  VARCHAR2(20),
  MEMBER_ORDER NUMBER(38)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.BAK_AUTH_CURR_GROUP_MEMBER
  add constraint PK558 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_OPER_GROUP_MEMBER
prompt =========================================
prompt
create table METABASE.BAK_AUTH_OPER_GROUP_MEMBER
(
  ID           NUMBER(19) not null,
  GROUP_CODE   VARCHAR2(20) not null,
  MEMBER_ORDER NUMBER(38),
  MEMBER_CODE  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.BAK_AUTH_OPER_GROUP_MEMBER
  add constraint PK_AUTH_USER_GROUP_1_1_1_2 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_REPORT_GROUP
prompt ====================================
prompt
create table METABASE.BAK_AUTH_REPORT_GROUP
(
  ID         NUMBER(19) not null,
  GROUP_CODE VARCHAR2(20) not null,
  OWNER_TYPE VARCHAR2(1),
  OWNER_ID   VARCHAR2(20),
  GROUP_NAME VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_AUTH_REPORT_GROUP.OWNER_TYPE
  is '����������';
comment on column METABASE.BAK_AUTH_REPORT_GROUP.OWNER_ID
  is '�����ߴ���';
alter table METABASE.BAK_AUTH_REPORT_GROUP
  add constraint PK_AUTH_USER_GROUP_1_1_1_1 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_REPORT_GROUP_MEMBER
prompt ===========================================
prompt
create table METABASE.BAK_AUTH_REPORT_GROUP_MEMBER
(
  GROUP_CODE   VARCHAR2(20),
  ID           NUMBER(38) not null,
  MEMBER_CODE  VARCHAR2(40),
  MEMBER_ORDER NUMBER(38)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.BAK_AUTH_REPORT_GROUP_MEMBER
  add constraint PK558_2 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_USER_BANK_RIGHTS
prompt ========================================
prompt
create table METABASE.BAK_AUTH_USER_BANK_RIGHTS
(
  ID              NUMBER(38) not null,
  BANK_GROUP_CODE VARCHAR2(50),
  USER_CODE       VARCHAR2(50),
  IS_USER_GROUP   CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_AUTH_USER_BANK_RIGHTS.IS_USER_GROUP
  is 'Y/N  Y:�û��������û������. N �û��������û�����';
alter table METABASE.BAK_AUTH_USER_BANK_RIGHTS
  add constraint PK563_1 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_USER_CURR_RIGHTS
prompt ========================================
prompt
create table METABASE.BAK_AUTH_USER_CURR_RIGHTS
(
  ID              NUMBER(38) not null,
  CURR_GROUP_CODE VARCHAR2(20),
  USER_CODE       VARCHAR2(20),
  IS_USER_GROUP   CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_AUTH_USER_CURR_RIGHTS.IS_USER_GROUP
  is 'Y/N  Y:�û��������û������. N �û��������û�����';
alter table METABASE.BAK_AUTH_USER_CURR_RIGHTS
  add constraint PK563_2 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_USER_GROUP
prompt ==================================
prompt
create table METABASE.BAK_AUTH_USER_GROUP
(
  ID         NUMBER(19) not null,
  GROUP_CODE VARCHAR2(50) not null,
  OWNER_TYPE VARCHAR2(1),
  OWNER_ID   VARCHAR2(20),
  GROUP_NAME VARCHAR2(200),
  GROUP_TYPE CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_AUTH_USER_GROUP.OWNER_TYPE
  is '����������0 - ȫ�� 1 �������� 2�� ���û�';
comment on column METABASE.BAK_AUTH_USER_GROUP.OWNER_ID
  is '�����ߴ���';
alter table METABASE.BAK_AUTH_USER_GROUP
  add constraint PK_AUTH_USER_GROUP primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_USER_GROUP_MEMBER
prompt =========================================
prompt
create table METABASE.BAK_AUTH_USER_GROUP_MEMBER
(
  GROUP_CODE   VARCHAR2(50),
  ID           NUMBER(38) not null,
  MEMBER_CODE  VARCHAR2(20),
  MEMBER_ORDER NUMBER(38)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.BAK_AUTH_USER_GROUP_MEMBER
  add constraint PK558_3 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_USER_INFO
prompt =================================
prompt
create table METABASE.BAK_AUTH_USER_INFO
(
  ID          NUMBER(19) not null,
  USER_ID     VARCHAR2(30) not null,
  USER_PASS   VARCHAR2(100) not null,
  BANK_ID     VARCHAR2(20) not null,
  USER_NAME   VARCHAR2(32) not null,
  ROLE_ID     VARCHAR2(20),
  START_DATE  DATE,
  END_DATE    DATE,
  USE_FLAG    CHAR(1),
  LINK_TEL    VARCHAR2(60),
  E_MAIL      VARCHAR2(30),
  INFORM_FLAG CHAR(1),
  IP          VARCHAR2(20),
  LOGIN_NUM   NUMBER(38),
  IFLDAP      VARCHAR2(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.BAK_AUTH_USER_INFO
  add constraint PK_AUTH_USER_INFO primary key (USER_ID)
  using index 
  tablespace METABASE
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
alter table METABASE.BAK_AUTH_USER_INFO
  add constraint UK28 unique (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_USER_OPER_RIGHTS
prompt ========================================
prompt
create table METABASE.BAK_AUTH_USER_OPER_RIGHTS
(
  ID              NUMBER(38) not null,
  OPER_GROUP_CODE VARCHAR2(20),
  USER_CODE       VARCHAR2(20),
  IS_USER_GROUP   CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_AUTH_USER_OPER_RIGHTS.IS_USER_GROUP
  is 'Y/N  Y:�û��������û������. N �û��������û�����';
alter table METABASE.BAK_AUTH_USER_OPER_RIGHTS
  add constraint PK563_3 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_AUTH_USER_REPORT_RIGHTS
prompt ==========================================
prompt
create table METABASE.BAK_AUTH_USER_REPORT_RIGHTS
(
  ID                NUMBER(38) not null,
  REPORT_GROUP_CODE VARCHAR2(20),
  USER_CODE         VARCHAR2(20),
  IS_USER_GROUP     CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_AUTH_USER_REPORT_RIGHTS.USER_CODE
  is '�û�����';
comment on column METABASE.BAK_AUTH_USER_REPORT_RIGHTS.IS_USER_GROUP
  is 'Y/N  Y:�û��������û������. N �û��������û�����';
alter table METABASE.BAK_AUTH_USER_REPORT_RIGHTS
  add constraint PK563 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BAK_BANK_BASIS
prompt =============================
prompt
create table METABASE.BAK_BANK_BASIS
(
  BANK_ID       VARCHAR2(20) not null,
  ID            NUMBER(19) not null,
  BANK_NAME     VARCHAR2(100) not null,
  BANK_FLAG     VARCHAR2(2),
  LEVEL_ID      VARCHAR2(20) not null,
  BANK_SUPERIOR VARCHAR2(20),
  BANK_ORDER    NUMBER,
  IS_DEAL_WB    CHAR(1) default 'N' not null,
  EFFECT_DATE   VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_BANK_BASIS.BANK_ID
  is '��������(Busi PK)';
comment on column METABASE.BAK_BANK_BASIS.ID
  is 'AK';
comment on column METABASE.BAK_BANK_BASIS.BANK_NAME
  is '��������';
comment on column METABASE.BAK_BANK_BASIS.BANK_FLAG
  is '��������';
comment on column METABASE.BAK_BANK_BASIS.LEVEL_ID
  is 'FK(bank_level.leve_id)';
comment on column METABASE.BAK_BANK_BASIS.BANK_SUPERIOR
  is '�����������ϼ�����,��������ܹ�ϵ��ͬ.';
comment on column METABASE.BAK_BANK_BASIS.BANK_ORDER
  is '����ν�ͨ��bank_relation����,�˴��ֶ��ݲ���. [ �������ǹ���ʱ,��Ҫ���ô��ֶ�. ����ʱ��������1,2,3,4.....��ʾ';
comment on column METABASE.BAK_BANK_BASIS.IS_DEAL_WB
  is '�Ƿ�չ���ҵ��';
comment on column METABASE.BAK_BANK_BASIS.EFFECT_DATE
  is '��������ʱ��';
alter table METABASE.BAK_BANK_BASIS
  add constraint PK_BANK_BASIS primary key (BANK_ID)
  using index 
  tablespace METABASE
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
create index METABASE.REF_BANK_LEVEL_ID on METABASE.BAK_BANK_BASIS (LEVEL_ID)
  tablespace METABASE
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
prompt Creating table BAK_BANK_LEVEL
prompt =============================
prompt
create table METABASE.BAK_BANK_LEVEL
(
  LEVEL_ID   VARCHAR2(20) not null,
  ID         NUMBER(19) not null,
  LEVEL_TYPE VARCHAR2(2),
  LEVEL_NAME VARCHAR2(60)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BAK_BANK_LEVEL.LEVEL_ID
  is '�ȼ�����';
comment on column METABASE.BAK_BANK_LEVEL.LEVEL_TYPE
  is '�ȼ�����';
comment on column METABASE.BAK_BANK_LEVEL.LEVEL_NAME
  is '�ȼ�����';
alter table METABASE.BAK_BANK_LEVEL
  add constraint PK_LEVEL_ID primary key (LEVEL_ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.IDX_ID on METABASE.BAK_BANK_LEVEL (ID)
  tablespace METABASE
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
prompt Creating table BANK_CL_INFO
prompt ===========================
prompt
create table METABASE.BANK_CL_INFO
(
  BANK_ID    VARCHAR2(10) not null,
  ID         NUMBER(19) not null,
  VALUE      NUMBER not null,
  VALUE_TYPE VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.BANK_CL_INFO.BANK_ID
  is '��������FK:BANK_BASIS.BANK_ID';
comment on column METABASE.BANK_CL_INFO.ID
  is 'sequence';
comment on column METABASE.BANK_CL_INFO.VALUE
  is '��������ֵ';
comment on column METABASE.BANK_CL_INFO.VALUE_TYPE
  is '������������';

prompt
prompt Creating table BANK_RELATION
prompt ============================
prompt
create table METABASE.BANK_RELATION
(
  ID         NUMBER(19) not null,
  BANK_ID    VARCHAR2(20) not null,
  BANK_REL   VARCHAR2(20) not null,
  START_DATE DATE,
  END_DATE   DATE,
  NODE_FLAG  CHAR(1),
  TOTAL_TYPE VARCHAR2(10),
  BANK_ORDER NUMBER,
  IS_TOTAL   CHAR(1) default 'Y' not null,
  TOTAL_FLAG VARCHAR2(1) default '+'
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.BANK_RELATION.ID
  is 'sequence';
comment on column METABASE.BANK_RELATION.BANK_ID
  is '�ϼ���������';
comment on column METABASE.BANK_RELATION.BANK_REL
  is '�¼���������';
comment on column METABASE.BANK_RELATION.START_DATE
  is '��ʼ����';
comment on column METABASE.BANK_RELATION.END_DATE
  is '��������';
comment on column METABASE.BANK_RELATION.NODE_FLAG
  is '�ݲ����ֶ�';
comment on column METABASE.BANK_RELATION.TOTAL_TYPE
  is '��������code_info.reportTotalType';
comment on column METABASE.BANK_RELATION.BANK_ORDER
  is '����ʱ��ʾ��˳�򣨽��䳤�����ʱ�õ���';
comment on column METABASE.BANK_RELATION.IS_TOTAL
  is '����ʱ�Ƿ�ֻ��ʾ��������ֵ�����䳤�����ʱ�õ���';
comment on column METABASE.BANK_RELATION.TOTAL_FLAG
  is '���ܼ���� Ĭ��Ϊ+����Ϊ- ����������ʱʹ��';
alter table METABASE.BANK_RELATION
  add constraint PK_BANK_RELATION primary key (ID)
  using index 
  tablespace METABASE
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
create index METABASE.REF1932 on METABASE.BANK_RELATION (BANK_ID)
  tablespace METABASE
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
prompt Creating table BANK_UN_OPER
prompt ===========================
prompt
create table METABASE.BANK_UN_OPER
(
  ID         NUMBER not null,
  BANK_ID    VARCHAR2(50) not null,
  OPER_ID    VARCHAR2(20) not null,
  SUBJECT_ID VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.BANK_UN_OPER
  is '������ֹ������Ϣ�б�';
comment on column METABASE.BANK_UN_OPER.BANK_ID
  is '�������';
comment on column METABASE.BANK_UN_OPER.OPER_ID
  is '�������';
comment on column METABASE.BANK_UN_OPER.SUBJECT_ID
  is '������';
alter table METABASE.BANK_UN_OPER
  add constraint PK_BANK_UN_OPER primary key (BANK_ID, OPER_ID, SUBJECT_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table BANK_UN_OPER_MKCK
prompt ================================
prompt
create table METABASE.BANK_UN_OPER_MKCK
(
  ID          NUMBER not null,
  BANK_ID     VARCHAR2(50) not null,
  OPER_ID     VARCHAR2(20) not null,
  SUBJECT_ID  VARCHAR2(10) not null,
  MKCK_TYPE   INTEGER not null,
  MKCK_STATUS INTEGER,
  MAKER       VARCHAR2(50),
  MAKE_TIME   DATE,
  CHECKER     VARCHAR2(50),
  CHECK_TIME  DATE
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.BANK_UN_OPER_MKCK
  is '������ֹ������Ϣ����б�';
comment on column METABASE.BANK_UN_OPER_MKCK.BANK_ID
  is '�������';
comment on column METABASE.BANK_UN_OPER_MKCK.OPER_ID
  is '�������';
comment on column METABASE.BANK_UN_OPER_MKCK.SUBJECT_ID
  is '������';
comment on column METABASE.BANK_UN_OPER_MKCK.MKCK_TYPE
  is 'Make����_1����;2ɾ��';
comment on column METABASE.BANK_UN_OPER_MKCK.MKCK_STATUS
  is '״̬_1�ύ�޸�;2���;3ȡ��';
comment on column METABASE.BANK_UN_OPER_MKCK.MAKER
  is '�޸���';
comment on column METABASE.BANK_UN_OPER_MKCK.MAKE_TIME
  is '�޸�ʱ��';
comment on column METABASE.BANK_UN_OPER_MKCK.CHECKER
  is '�����';
comment on column METABASE.BANK_UN_OPER_MKCK.CHECK_TIME
  is '���ʱ��';
alter table METABASE.BANK_UN_OPER_MKCK
  add constraint PK_BANKUNOPERMKCK primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table BATCH_GROUP_INFO
prompt ===============================
prompt
create table METABASE.BATCH_GROUP_INFO
(
  BATCH_GROUP_ID   VARCHAR2(20) not null,
  BATCH_GROUP_NAME VARCHAR2(30),
  ID               NUMBER(38) not null,
  RUN_TIME         DATE
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.BATCH_GROUP_INFO.BATCH_GROUP_ID
  is '�˱���UPRR��δ�õ�';
alter table METABASE.BATCH_GROUP_INFO
  add constraint PK102 primary key (BATCH_GROUP_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.AK_BATCH_GROUP_INFO on METABASE.BATCH_GROUP_INFO (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table BATCH_IMPORT_REFERENCE
prompt =====================================
prompt
create table METABASE.BATCH_IMPORT_REFERENCE
(
  ID               NUMBER(19) not null,
  REPORT_ID        VARCHAR2(30) not null,
  SOURCE_REPORT_ID VARCHAR2(200) not null,
  CURR_ID          VARCHAR2(12),
  OFFSET_X         VARCHAR2(10),
  OFFSET_Y         VARCHAR2(10),
  START_ROW        VARCHAR2(10),
  END_ROW          VARCHAR2(10),
  START_COL        VARCHAR2(10),
  END_COL          VARCHAR2(10),
  SUBJECT_ID       VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.BATCH_IMPORT_REFERENCE
  is ' ����Ǩ������ ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.REPORT_ID
  is ' ������ ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.SOURCE_REPORT_ID
  is ' Դ������ ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.CURR_ID
  is ' ���� ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.OFFSET_X
  is ' ƫ�ƿ�ʼ�� ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.OFFSET_Y
  is ' ƫ�ƿ�ʼ�� ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.START_ROW
  is ' ��ʼ�� ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.END_ROW
  is ' ������ ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.START_COL
  is ' ��ʼ�� ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.END_COL
  is ' ������ ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.SUBJECT_ID
  is ' �������� ';
alter table METABASE.BATCH_IMPORT_REFERENCE
  add constraint BATCH_IMPORT_REFERENCE_ID primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.BATCH_IMPORT_REPORT_ID on METABASE.BATCH_IMPORT_REFERENCE (REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.BATCH_IMPORT_SOURCE_REPORT_ID on METABASE.BATCH_IMPORT_REFERENCE (SOURCE_REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table BATCH_SUBTASK_DEFINE
prompt ===================================
prompt
create table METABASE.BATCH_SUBTASK_DEFINE
(
  BATCH_SUBID VARCHAR2(30) not null,
  ID          NUMBER(38) not null,
  REPORT_ID   VARCHAR2(3000) not null,
  BATCH_ID    VARCHAR2(30) not null,
  OPER_ID     VARCHAR2(3000) not null,
  BASE_DIM1   VARCHAR2(3000),
  BASE_DIM2   VARCHAR2(3000),
  BASE_DIM3   VARCHAR2(3000),
  BASE_DIM4   VARCHAR2(3000),
  BASE_DIM5   VARCHAR2(3000),
  BATCH_TYPE  VARCHAR2(3000) not null,
  EXEC_ORDER  NUMBER(38) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.BATCH_SUBTASK_DEFINE
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BATCH_SUBID
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_SUBTASK_DEFINE.REPORT_ID
  is '���������auth_report_group.group_code';
comment on column METABASE.BATCH_SUBTASK_DEFINE.OPER_ID
  is '������auth_oper_group.group_code';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM1
  is '������auth_bank_group.group_code';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM2
  is '����ά��2';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM3
  is '����ά��3';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM4
  is '����ά��4';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM5
  is '����ά��4';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BATCH_TYPE
  is '����������Ar(artificial)�˹���Au(automate)�Զ���';
alter table METABASE.BATCH_SUBTASK_DEFINE
  add constraint PK97 primary key (BATCH_SUBID)
  using index 
  tablespace METABASE
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
create unique index METABASE.AK_BATCH_SUBTASK_DEFINE on METABASE.BATCH_SUBTASK_DEFINE (ID)
  tablespace METABASE
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
prompt Creating table BATCH_SUBTASK_LOGINFO
prompt ====================================
prompt
create table METABASE.BATCH_SUBTASK_LOGINFO
(
  ID              NUMBER(38) not null,
  BATCH_SUBID     VARCHAR2(30) not null,
  RUNTIME_LOGID   VARCHAR2(30) not null,
  BASE_DIM1       VARCHAR2(20),
  BASE_DIM2       VARCHAR2(20),
  BASE_DIM3       VARCHAR2(20),
  BASE_DIM4       VARCHAR2(20),
  BASE_DIM5       VARCHAR2(20),
  CURR_STATUS     VARCHAR2(20) not null,
  START_DATE      DATE,
  END_DATE        DATE,
  RETURN_MEMO     VARCHAR2(2000),
  ERR_RETURN_CODE VARCHAR2(20) not null,
  OPER_ID         VARCHAR2(10) not null,
  REPORT_ID       VARCHAR2(30) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.BATCH_SUBTASK_LOGINFO
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.ID
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.RUNTIME_LOGID
  is '����ʱ������־ID';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM1
  is '����ά��1';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM2
  is '����ά��2';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM3
  is '����ά��3';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM4
  is '����ά��4';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM5
  is '����ά��4';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.CURR_STATUS
  is '��ǰ״̬';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.START_DATE
  is '��ʼ����';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.END_DATE
  is '��������';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.OPER_ID
  is '������auth_oper_group.group_code';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.REPORT_ID
  is '������auth_report_group.group_code';
alter table METABASE.BATCH_SUBTASK_LOGINFO
  add constraint PK99 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table BATCH_TASK_DEFINE
prompt ================================
prompt
create table METABASE.BATCH_TASK_DEFINE
(
  BATCH_ID        VARCHAR2(30) not null,
  ID              NUMBER(38) not null,
  EXEC_OFFSET     NUMBER(38),
  BATCH_NAME      VARCHAR2(30),
  START_DATE      DATE not null,
  END_DATE        DATE not null,
  RUN_TIME        DATE,
  IS_USING        CHAR(1) default 'Y' not null,
  DEAL_FREQ       VARCHAR2(10) not null,
  INIT_DATE       DATE,
  EXEC_ORDER      NUMBER(38),
  LATEST_BATCH_ID NUMBER(38),
  SERVER_ID       VARCHAR2(30) not null,
  BATCH_GROUP_ID  VARCHAR2(20) not null,
  RELY_ETL_TASKS  VARCHAR2(2000)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.BATCH_TASK_DEFINE
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_TASK_DEFINE.BATCH_ID
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_TASK_DEFINE.EXEC_OFFSET
  is 'ִ������ƫ��';
comment on column METABASE.BATCH_TASK_DEFINE.START_DATE
  is '��ʼ����';
comment on column METABASE.BATCH_TASK_DEFINE.END_DATE
  is '��������';
comment on column METABASE.BATCH_TASK_DEFINE.IS_USING
  is '���ñ�־(Y/N�Ƿ���ͣ����������)';
comment on column METABASE.BATCH_TASK_DEFINE.DEAL_FREQ
  is '��������(code_info.report_freq)';
comment on column METABASE.BATCH_TASK_DEFINE.INIT_DATE
  is '��ʼ����(���������ε�һ�����е�ʱ��)';
comment on column METABASE.BATCH_TASK_DEFINE.EXEC_ORDER
  is 'ִ��˳��(�����������ε�ִ��˳��)';
comment on column METABASE.BATCH_TASK_DEFINE.LATEST_BATCH_ID
  is '�����������������id';
comment on column METABASE.BATCH_TASK_DEFINE.SERVER_ID
  is '������ID';
comment on column METABASE.BATCH_TASK_DEFINE.RELY_ETL_TASKS
  is '������ETL����(���ܶ��,����ʹ�ö��Ÿ���) ����datacore.etl_logger.task_code';
alter table METABASE.BATCH_TASK_DEFINE
  add constraint PK_BATCH_ID primary key (BATCH_ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.AK_BATCH_TASK_DEFINE on METABASE.BATCH_TASK_DEFINE (ID)
  tablespace METABASE
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
prompt Creating table BATCH_TASK_LOGINFO
prompt =================================
prompt
create table METABASE.BATCH_TASK_LOGINFO
(
  RUNTIME_LOGID   NUMBER not null,
  CURR_STATUS     VARCHAR2(20) not null,
  ID              NUMBER(38) not null,
  BATCH_ID        VARCHAR2(30) not null,
  START_DATE      DATE,
  END_DATE        DATE,
  RETURN_MEMO     VARCHAR2(2000),
  ERR_RETURN_CODE VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.BATCH_TASK_LOGINFO
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_TASK_LOGINFO.RUNTIME_LOGID
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.BATCH_TASK_LOGINFO.CURR_STATUS
  is '��ǰ״̬';
comment on column METABASE.BATCH_TASK_LOGINFO.START_DATE
  is '��ʼ����';
comment on column METABASE.BATCH_TASK_LOGINFO.END_DATE
  is '��������';
alter table METABASE.BATCH_TASK_LOGINFO
  add constraint RUNTIME_LOGID_BTD primary key (RUNTIME_LOGID)
  using index 
  tablespace METABASE
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
prompt Creating table CELL_OPER_BUTTON
prompt ===============================
prompt
create table METABASE.CELL_OPER_BUTTON
(
  ID   INTEGER not null,
  TEXT VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
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
prompt Creating table CHECK_ERR_INFO
prompt =============================
prompt
create table METABASE.CHECK_ERR_INFO
(
  ID          NUMBER(19) not null,
  OTHER_DIM   VARCHAR2(10),
  BASE_DIM1   VARCHAR2(10),
  BASE_DIM2   VARCHAR2(10),
  BASE_DIM3   VARCHAR2(10),
  BASE_DIM4   VARCHAR2(10),
  BASE_DIM5   VARCHAR2(10),
  REPORT_ID   VARCHAR2(30) not null,
  REPORT_DATE DATE not null,
  COL_DIM     VARCHAR2(100),
  BATCH_TYPE  CHAR(1),
  ERR_MSG_ID  CHAR(4) not null,
  OPER_TIME   TIMESTAMP(6)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.CHECK_ERR_INFO.ID
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.CHECK_ERR_INFO.OTHER_DIM
  is '����ά��';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM1
  is '����ά��1';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM2
  is '����ά��2';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM3
  is '����ά��3';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM4
  is '����ά��4';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM5
  is '����ά��4';
comment on column METABASE.CHECK_ERR_INFO.REPORT_ID
  is '�������';
comment on column METABASE.CHECK_ERR_INFO.REPORT_DATE
  is '��������';
comment on column METABASE.CHECK_ERR_INFO.COL_DIM
  is '����ֵ��';
comment on column METABASE.CHECK_ERR_INFO.BATCH_TYPE
  is 'У�鴦������  (1-�Զ������� 2-�ֹ�������3������У��)';
comment on column METABASE.CHECK_ERR_INFO.ERR_MSG_ID
  is '�������';
comment on column METABASE.CHECK_ERR_INFO.OPER_TIME
  is '����ʱ��';
alter table METABASE.CHECK_ERR_INFO
  add constraint PK81 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF4431 on METABASE.CHECK_ERR_INFO (ERR_MSG_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF638 on METABASE.CHECK_ERR_INFO (REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CLUSTER_BATCH_TASK_LOG
prompt =====================================
prompt
create table METABASE.CLUSTER_BATCH_TASK_LOG
(
  BATCH_ID      VARCHAR2(200) not null,
  TASK_ID       VARCHAR2(60) not null,
  REPORT_DATE   VARCHAR2(10) not null,
  LAUNCH_USER   VARCHAR2(100) not null,
  REPORT_UNITS  CLOB not null,
  BANK_UNITS    CLOB not null,
  RUN_MODE      VARCHAR2(20) not null,
  STATUS        VARCHAR2(20) not null,
  LAUNCH_TIME   VARCHAR2(20),
  END_TIME      VARCHAR2(20),
  TASK_NUM      NUMBER,
  SUBJECT_ID    VARCHAR2(30) not null,
  RUN_MEMO      VARCHAR2(3000),
  BATCH_TYPE    VARCHAR2(30) not null,
  REGISTER_TIME VARCHAR2(40) not null,
  OPER_UNITS    VARCHAR2(200) not null,
  CONTEXT       VARCHAR2(500)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.CLUSTER_BATCH_TASK_LOG
  is '��������־����';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.BATCH_ID
  is '������ID';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.TASK_ID
  is '����ID';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.REPORT_DATE
  is '��������';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.LAUNCH_USER
  is '�����û�';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.REPORT_UNITS
  is 'Ҫ����ı����б� ';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.BANK_UNITS
  is 'Ҫ����Ļ����б� ';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.RUN_MODE
  is '���з�ʽ(��Ⱥ������)';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.STATUS
  is '����״̬(ready,running,buildfail,fail,finish,stopping)';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.LAUNCH_TIME
  is '����ʱ��';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.END_TIME
  is '����ʱ��';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.TASK_NUM
  is '������';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.SUBJECT_ID
  is '������������';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.RUN_MEMO
  is '���б�ע';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.BATCH_TYPE
  is '����������';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.REGISTER_TIME
  is '����������ʱ��';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.OPER_UNITS
  is 'Ҫ����Ĳ����б� ';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.CONTEXT
  is '��������ĵ���������(��ϵͳ/�˵�/�����ߵ�)';
alter table METABASE.CLUSTER_BATCH_TASK_LOG
  add constraint PK_CLUSTER_BATCH_TASK primary key (BATCH_ID)
  using index 
  tablespace METABASE
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
prompt Creating table CLUSTER_BATCH_TASK_STOP
prompt ======================================
prompt
create table METABASE.CLUSTER_BATCH_TASK_STOP
(
  BATCH_ID     VARCHAR2(200) not null,
  STOP_USER    VARCHAR2(100) not null,
  REQUEST_TIME VARCHAR2(20) not null,
  STOP_TIME    VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.CLUSTER_BATCH_TASK_STOP
  is '������ֹͣ��־��';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.BATCH_ID
  is '��ID';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.STOP_USER
  is 'ֹͣ�û�';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.REQUEST_TIME
  is '����ʱ��';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.STOP_TIME
  is 'ֹͣʱ��';
alter table METABASE.CLUSTER_BATCH_TASK_STOP
  add constraint PK_BATCH_STOP primary key (BATCH_ID)
  using index 
  tablespace METABASE
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
prompt Creating table CLUSTER_BATCH_TASK_UNIT_LOG
prompt ==========================================
prompt
create table METABASE.CLUSTER_BATCH_TASK_UNIT_LOG
(
  BATCH_ID    VARCHAR2(300) not null,
  REPORT_ID   VARCHAR2(30) not null,
  BANK_ID     VARCHAR2(100) not null,
  CURR_ID     VARCHAR2(30),
  REPORT_DATE VARCHAR2(10) not null,
  OPER_ID     VARCHAR2(20) not null,
  STATUS      VARCHAR2(20) not null,
  RUN_NODE    VARCHAR2(200) not null,
  RUN_WORKER  VARCHAR2(100) not null,
  RUN_TIME    VARCHAR2(20),
  RUN_MEMO    VARCHAR2(4000)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.CLUSTER_BATCH_TASK_UNIT_LOG
  is '��������־��Ԫ��Ϣ��';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.BATCH_ID
  is '������ ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.REPORT_ID
  is '����ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.BANK_ID
  is '����ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.CURR_ID
  is '����ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.REPORT_DATE
  is '��������';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.OPER_ID
  is '����ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.STATUS
  is '״̬';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_NODE
  is '���нڵ�';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_WORKER
  is '�����߳�';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_TIME
  is '����ʱ��';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_MEMO
  is '����';
alter table METABASE.CLUSTER_BATCH_TASK_UNIT_LOG
  add constraint FK_BATCH_UNIT_LOG foreign key (BATCH_ID)
  references METABASE.CLUSTER_BATCH_TASK_LOG (BATCH_ID);
create index METABASE.IDX_BATCH_UNIT_LOG on METABASE.CLUSTER_BATCH_TASK_UNIT_LOG (BATCH_ID)
  tablespace METABASE
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
prompt Creating table CLUSTER_COMMUNICATION
prompt ====================================
prompt
create table METABASE.CLUSTER_COMMUNICATION
(
  ID                   VARCHAR2(10),
  CLUSTER_URL          VARCHAR2(100),
  ENABLE               VARCHAR2(2),
  PERMIT_CLUSTER_BATCH VARCHAR2(1)
)
tablespace METABASE
  pctfree 10
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
prompt Creating table CLUSTER_MASTER_STATUS
prompt ====================================
prompt
create table METABASE.CLUSTER_MASTER_STATUS
(
  MASTER_IDENTIFIER VARCHAR2(200) not null,
  CHECK_ISSUE_DATE  VARCHAR2(10) not null,
  CHECK_TIME        VARCHAR2(20) not null,
  ALIVE_TIME        VARCHAR2(20) not null,
  MEMO              VARCHAR2(600)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CLUSTER_TASK_AUTO_CC_UNIT
prompt ========================================
prompt
create table METABASE.CLUSTER_TASK_AUTO_CC_UNIT
(
  MASTER_IDENTIFY VARCHAR2(200) not null,
  SLAVE_IP        VARCHAR2(200),
  WORKER_THREAD   VARCHAR2(100),
  UNIT_OBJECT     VARCHAR2(2000) not null,
  UNIT_SEQ        NUMBER not null,
  UNIT_STATUS     VARCHAR2(10) not null,
  START_TIME      VARCHAR2(20),
  END_TIME        VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.CLUSTER_TASK_AUTO_CC_UNIT
  is '�Զ�����ļ�Ⱥ����Ԫ��';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.MASTER_IDENTIFY
  is '�·�����ļ�Ⱥ��������';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.SLAVE_IP
  is '����������Ľڵ�IP';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.WORKER_THREAD
  is '����������Ľڵ��߳�';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.UNIT_OBJECT
  is '����Ԫ';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.UNIT_SEQ
  is '�����ʶ��';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.UNIT_STATUS
  is '����״̬(ready,running,finish)';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.START_TIME
  is '����ʼʱ��';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.END_TIME
  is '�������ʱ��';
alter table METABASE.CLUSTER_TASK_AUTO_CC_UNIT
  add constraint PK_CLUSTER_AUTOCC primary key (UNIT_SEQ)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.IDX_CLUSTER_AUTOCC_SLAVE on METABASE.CLUSTER_TASK_AUTO_CC_UNIT (SLAVE_IP)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.PK_CLUSTER_AUTOCC_WORKER on METABASE.CLUSTER_TASK_AUTO_CC_UNIT (WORKER_THREAD)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CLUSTER_TASK_AUTO_CHECK
prompt ======================================
prompt
create table METABASE.CLUSTER_TASK_AUTO_CHECK
(
  CHECK_IDENTIFIER VARCHAR2(200) not null,
  CHECK_ISSUE_DATE VARCHAR2(10) not null,
  CHECK_STATUS     VARCHAR2(10) not null,
  CHECK_TIME       VARCHAR2(20),
  MEMO             VARCHAR2(600)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.CLUSTER_TASK_AUTO_CHECK
  is '��Ⱥ�������������·���(������� �£�ÿ�������������ܲ�һ��,��̬ע��)';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_IDENTIFIER
  is '��Ⱥ��������IP��������';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_ISSUE_DATE
  is '�����·���';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_STATUS
  is '�����·�״̬checking,finished,terminal';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_TIME
  is '�·����ʱ��';
alter table METABASE.CLUSTER_TASK_AUTO_CHECK
  add constraint PK_CLUSTER_TASK_AUTO_CHECK primary key (CHECK_ISSUE_DATE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CLUSTER_TASK_MANUAL_QUEUE
prompt ========================================
prompt
create table METABASE.CLUSTER_TASK_MANUAL_QUEUE
(
  ID             NUMBER not null,
  TASK_ID        VARCHAR2(100) not null,
  REPORT_DATE    VARCHAR2(10) not null,
  REGISTER_TIME  VARCHAR2(20) not null,
  REGISTER_NODE  VARCHAR2(200) not null,
  STATUS         VARCHAR2(10) not null,
  RUN_START_TIME VARCHAR2(20),
  RUN_END_TIME   VARCHAR2(20),
  BATCH_ID       VARCHAR2(200) not null,
  SUBJECT_ID     VARCHAR2(25)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.CLUSTER_TASK_MANUAL_QUEUE
  is '�ֶ�������_��Ⱥ�������';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.ID
  is '��������:cluster_man_queue_id_seq ';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.TASK_ID
  is '����id FK:TASK_DEFINE.TASK_ID';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.REPORT_DATE
  is '��������';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.REGISTER_TIME
  is '������ʱ��';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.REGISTER_NODE
  is '������ܽڵ�';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.STATUS
  is '����״̬ready,running,finish';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.RUN_START_TIME
  is '��ʼ����ʱ��';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.RUN_END_TIME
  is '��������ʱ��';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.BATCH_ID
  is '������ID';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.SUBJECT_ID
  is '����';

prompt
prompt Creating table CLUSTER_TASK_MAN_CC_UNIT_1104
prompt ============================================
prompt
create table METABASE.CLUSTER_TASK_MAN_CC_UNIT_1104
(
  MASTER_IDENTIFY VARCHAR2(200) not null,
  SLAVE_IP        VARCHAR2(200),
  WORKER_THREAD   VARCHAR2(100),
  UNIT_OBJECT     VARCHAR2(2000) not null,
  UNIT_SEQ        NUMBER not null,
  UNIT_STATUS     VARCHAR2(10) not null,
  START_TIME      VARCHAR2(20),
  END_TIME        VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
alter table METABASE.CLUSTER_TASK_MAN_CC_UNIT_1104
  add constraint PK_CLUSTER_MANUAL_CC primary key (UNIT_SEQ)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CLUSTER_TASK_MAN_CC_UNIT_OTHER
prompt =============================================
prompt
create table METABASE.CLUSTER_TASK_MAN_CC_UNIT_OTHER
(
  MASTER_IDENTIFY VARCHAR2(200) not null,
  SLAVE_IP        VARCHAR2(200),
  WORKER_THREAD   VARCHAR2(100),
  UNIT_OBJECT     VARCHAR2(2000) not null,
  UNIT_SEQ        NUMBER not null,
  UNIT_STATUS     VARCHAR2(10) not null,
  START_TIME      VARCHAR2(20),
  END_TIME        VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
alter table METABASE.CLUSTER_TASK_MAN_CC_UNIT_OTHER
  add constraint PK_CLUSTER_MANUAL_CC_OTHER primary key (UNIT_SEQ)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CLUSTER_TASK_MAN_CC_UNIT_PBOC
prompt ============================================
prompt
create table METABASE.CLUSTER_TASK_MAN_CC_UNIT_PBOC
(
  MASTER_IDENTIFY VARCHAR2(200) not null,
  SLAVE_IP        VARCHAR2(200),
  WORKER_THREAD   VARCHAR2(100),
  UNIT_OBJECT     VARCHAR2(2000) not null,
  UNIT_SEQ        NUMBER not null,
  UNIT_STATUS     VARCHAR2(10) not null,
  START_TIME      VARCHAR2(20),
  END_TIME        VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
alter table METABASE.CLUSTER_TASK_MAN_CC_UNIT_PBOC
  add constraint PK_CLUSTER_MANUAL_CC_PBOC primary key (UNIT_SEQ)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CODE_INFO
prompt ========================
prompt
create table METABASE.CODE_INFO
(
  ID              NUMBER(19) not null,
  CODE_TYPE       VARCHAR2(20) not null,
  CODE_VALUE      VARCHAR2(30) not null,
  CODE_LABEL      VARCHAR2(80),
  CODE_SORT       NUMBER(38),
  CODE_VALUE_MEMO VARCHAR2(500),
  IS_SYSTEM       CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.CODE_INFO.ID
  is 'sequence';
comment on column METABASE.CODE_INFO.CODE_TYPE
  is '��������';
comment on column METABASE.CODE_INFO.CODE_VALUE
  is '����ֵ';
comment on column METABASE.CODE_INFO.CODE_LABEL
  is '��Ӧǰ̨��ʾ��ʶ';
comment on column METABASE.CODE_INFO.CODE_SORT
  is '˳��';
comment on column METABASE.CODE_INFO.CODE_VALUE_MEMO
  is '����ֵ��չdesc';
comment on column METABASE.CODE_INFO.IS_SYSTEM
  is '�Ƿ�ϵͳĬ��';
alter table METABASE.CODE_INFO
  add constraint PK_CODE_INFO primary key (ID)
  using index 
  tablespace METABASE
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
create index METABASE.REF4118 on METABASE.CODE_INFO (CODE_TYPE)
  tablespace METABASE
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
prompt Creating table CODE_TYPE
prompt ========================
prompt
create table METABASE.CODE_TYPE
(
  TYPE_CODE VARCHAR2(20) not null,
  ID        NUMBER(19) not null,
  TYPE_NAME VARCHAR2(60)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.CODE_TYPE.TYPE_CODE
  is '��������';
comment on column METABASE.CODE_TYPE.ID
  is 'sequence';
comment on column METABASE.CODE_TYPE.TYPE_NAME
  is '��������';
alter table METABASE.CODE_TYPE
  add constraint PK_TYPE_CODE primary key (TYPE_CODE)
  using index 
  tablespace METABASE
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
create unique index METABASE.UNI_IDX_CODE_TYPE_ID on METABASE.CODE_TYPE (ID)
  tablespace METABASE
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
prompt Creating table COLUMN_META
prompt ==========================
prompt
create table METABASE.COLUMN_META
(
  ID                   NUMBER(19) not null,
  REPORT_ID            VARCHAR2(30) not null,
  DIM_VAR_TYPE         VARCHAR2(10),
  COLUMN_ID            VARCHAR2(30) not null,
  COLUMN_CH            VARCHAR2(60),
  COLUMN_CLASS         VARCHAR2(1) not null,
  COLUMN_FIELD_TYPE    VARCHAR2(1),
  COLUMN_ORDER         NUMBER(38) not null,
  IS_BASE_DIM          VARCHAR2(1),
  IS_COLUMN_SHOW       VARCHAR2(1) not null,
  DISP_LEN             NUMBER(38),
  COLUMN_LEN           NUMBER(38),
  CODE_TYPE            VARCHAR2(20),
  FORMAT_RULES         VARCHAR2(60),
  TRUNCATE_FLAG        VARCHAR2(1),
  ROUND_DIGIT          NUMBER(38),
  CONV_FLAG            VARCHAR2(1),
  COLUMN_INFO          VARCHAR2(50),
  SUM_FLAG             VARCHAR2(1),
  IS_ROWCLM_FLAG       CHAR(1),
  RELATIVE_COLUMN_NAME VARCHAR2(30),
  TOTAL_TYPE           VARCHAR2(10),
  PERMIT_EDIT          CHAR(1) default 'N',
  PERMIT_CURR_DIVIDE   CHAR(1) default 'N'
)
tablespace METABASE
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
comment on column METABASE.COLUMN_META.ID
  is 'sequence';
comment on column METABASE.COLUMN_META.REPORT_ID
  is '�������';
comment on column METABASE.COLUMN_META.DIM_VAR_TYPE
  is 'ά�ȱ������� ���� dim_meta.meta_id, �����Ƿ���ֵʱ,������Ϊ��. ';
comment on column METABASE.COLUMN_META.COLUMN_ID
  is '�ֶδ���';
comment on column METABASE.COLUMN_META.COLUMN_CH
  is '�ֶ���������';
comment on column METABASE.COLUMN_META.COLUMN_CLASS
  is '�ֶ����� D:ά�ȱ��� A:���Ա���  V:�������� P:λ�ñ���';
comment on column METABASE.COLUMN_META.COLUMN_FIELD_TYPE
  is '�ֶ��������� C:������(��code_info��ȡ.���Ŀ��Ž���ʾΪ��Ŀ���ƣ�N:��ֵ�ͣ�����decimal��int��numeric��long��float�ȣ�
S(�ַ���)';
comment on column METABASE.COLUMN_META.COLUMN_ORDER
  is '�ֶ�˳��';
comment on column METABASE.COLUMN_META.IS_BASE_DIM
  is '�Ƿ����ά��';
comment on column METABASE.COLUMN_META.IS_COLUMN_SHOW
  is '�Ƿ���ʾ�ֶ�';
comment on column METABASE.COLUMN_META.DISP_LEN
  is '��ʾ����';
comment on column METABASE.COLUMN_META.COLUMN_LEN
  is '�ֶγ���';
comment on column METABASE.COLUMN_META.CODE_TYPE
  is '�������� ��������������,�赽code_info��Ӧcode_type�������ֵ. ���弶����.';
comment on column METABASE.COLUMN_META.FORMAT_RULES
  is '�ֶ���ʾ��ʽ';
comment on column METABASE.COLUMN_META.TRUNCATE_FLAG
  is '�Ƿ��λ������������';
comment on column METABASE.COLUMN_META.ROUND_DIGIT
  is '��������λ��';
comment on column METABASE.COLUMN_META.CONV_FLAG
  is '�Ƿ������־';
comment on column METABASE.COLUMN_META.COLUMN_INFO
  is '�ֶθ�����Ϣ';
comment on column METABASE.COLUMN_META.SUM_FLAG
  is '�ֶ��Ƿ���ܱ�־';
comment on column METABASE.COLUMN_META.IS_ROWCLM_FLAG
  is '�Ƿ����б�־ R ��(row) C ��(column) ';
comment on column METABASE.COLUMN_META.RELATIVE_COLUMN_NAME
  is '��Ӧλ������';
comment on column METABASE.COLUMN_META.TOTAL_TYPE
  is '���кϼƷ�ʽ����� Sum ����ƽ�� Aver ������� Max������С Min /TOP(N) TopN��';
comment on column METABASE.COLUMN_META.PERMIT_EDIT
  is '�������Ƿ�����༭.Y/N/X(�Ƽ����ɱ༭) �����ڱ�����ı༭����ʱ.';
comment on column METABASE.COLUMN_META.PERMIT_CURR_DIVIDE
  is '�������Ƿ���Ӧ�ñ��ֵ����� Y/N .����������Ӧ�����ݿ��е�Ԫת���ɱ�����ʾ����Ԫ. ������Ǳ����оͲ���Ӧ�ô˹���. ������Ҫ�ڱ�����ʾʱ�õ�.';
alter table METABASE.COLUMN_META
  add constraint PK_COLUMN_META_SE primary key (ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.AK_REPORT_ID_AND_COLUMN_ID on METABASE.COLUMN_META (REPORT_ID, COLUMN_ID)
  tablespace METABASE
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
create index METABASE.REF63 on METABASE.COLUMN_META (REPORT_ID)
  tablespace METABASE
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
prompt Creating table COOR_MEMO
prompt ========================
prompt
create table METABASE.COOR_MEMO
(
  ROW_NUMBER       NUMBER not null,
  COL_NUMBER       NUMBER not null,
  CALIBRE_ID       NUMBER not null,
  REMARK           VARCHAR2(2000),
  PRIVATE_REMARK   VARCHAR2(2000),
  REPORT_ID        VARCHAR2(50) not null,
  MODIFY_DATE      VARCHAR2(20),
  RESPONSIBLE_USER VARCHAR2(50),
  ACTION_USER      VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.COOR_MEMO.COL_NUMBER
  is '���� DV ��������Ϊ 0';
comment on column METABASE.COOR_MEMO.MODIFY_DATE
  is '�޸�����';
comment on column METABASE.COOR_MEMO.RESPONSIBLE_USER
  is '������';
comment on column METABASE.COOR_MEMO.ACTION_USER
  is '������';
alter table METABASE.COOR_MEMO
  add constraint PK_COOR_MEMO primary key (ROW_NUMBER, COL_NUMBER, CALIBRE_ID)
  using index 
  tablespace METABASE
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
create table METABASE.CRMS_DUAL
(
  CRMS_REQD CHAR(1) not null
)
tablespace METABASE
  pctfree 10
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
prompt Creating table CURR_BASIS
prompt =========================
prompt
create table METABASE.CURR_BASIS
(
  CURR_ID      VARCHAR2(12) not null,
  ID           NUMBER(19) not null,
  CURR_CODE    VARCHAR2(10) not null,
  CURR_CH      VARCHAR2(30),
  CURR_LEV     CHAR(2),
  CURR_TYPE    VARCHAR2(10),
  ZS_CONV_FLAG CHAR(1) not null,
  ZS_OBJCURR   VARCHAR2(12) not null,
  EFFECT_DATE  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.CURR_BASIS.CURR_ID
  is '����ID';
comment on column METABASE.CURR_BASIS.CURR_CODE
  is '���ִ���';
comment on column METABASE.CURR_BASIS.CURR_CH
  is '������������';
comment on column METABASE.CURR_BASIS.CURR_LEV
  is '���ֵȼ�';
comment on column METABASE.CURR_BASIS.CURR_TYPE
  is '��������';
comment on column METABASE.CURR_BASIS.ZS_CONV_FLAG
  is '����ұ�־Y/N';
comment on column METABASE.CURR_BASIS.ZS_OBJCURR
  is '����Ŀ���';
comment on column METABASE.CURR_BASIS.EFFECT_DATE
  is '��������ʱ��';
alter table METABASE.CURR_BASIS
  add constraint PK_CURRI_BASIS primary key (CURR_ID)
  using index 
  tablespace METABASE
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
prompt Creating table CURR_TABLE
prompt =========================
prompt
create table METABASE.CURR_TABLE
(
  ID             NUMBER(19) not null,
  S_CURR_ID      VARCHAR2(12) not null,
  D_CURR_ID      VARCHAR2(12) not null,
  CURR_ZSL       NUMBER(20,12) not null,
  START_DATE     DATE not null,
  END_DATE       DATE not null,
  CONVERT_SYSTEM VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.CURR_TABLE.S_CURR_ID
  is 'Դ��';
comment on column METABASE.CURR_TABLE.D_CURR_ID
  is 'Ŀ���';
comment on column METABASE.CURR_TABLE.CURR_ZSL
  is '������';
comment on column METABASE.CURR_TABLE.START_DATE
  is '��ʼ����';
comment on column METABASE.CURR_TABLE.END_DATE
  is '��������';
comment on column METABASE.CURR_TABLE.CONVERT_SYSTEM
  is '������ϵ';
alter table METABASE.CURR_TABLE
  add constraint PK_CURR_TABLE primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.CURR_TABLE
  add constraint UK_CURR_TABLE unique (S_CURR_ID, D_CURR_ID, START_DATE, END_DATE)
  using index 
  tablespace METABASE
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
create unique index METABASE.IDX_CURR_TABLE on METABASE.CURR_TABLE (S_CURR_ID, D_CURR_ID, START_DATE, CONVERT_SYSTEM)
  tablespace METABASE
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
prompt Creating table CURR_ZSROOT
prompt ==========================
prompt
create table METABASE.CURR_ZSROOT
(
  ID             NUMBER(19) not null,
  DCURR_ID       VARCHAR2(12) not null,
  SCURR_ID       VARCHAR2(12) not null,
  CONVERT_SYSTEM VARCHAR2(20),
  CONV_OPER      CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.CURR_ZSROOT.DCURR_ID
  is '�����';
comment on column METABASE.CURR_ZSROOT.SCURR_ID
  is 'ԭ��';
comment on column METABASE.CURR_ZSROOT.CONVERT_SYSTEM
  is '������ϵ';
comment on column METABASE.CURR_ZSROOT.CONV_OPER
  is '��������';
alter table METABASE.CURR_ZSROOT
  add constraint PK_CURR_ZSROOT primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.IDX_CURR_ZSROOT on METABASE.CURR_ZSROOT (DCURR_ID, SCURR_ID, CONVERT_SYSTEM)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table CURR_ZS_RELATION
prompt ===============================
prompt
create table METABASE.CURR_ZS_RELATION
(
  ZS_CURR_ID  VARCHAR2(12) not null,
  SRC_CURR_ID VARCHAR2(12) not null,
  ID          NUMBER(38) not null,
  ZS_ORDER    NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.CURR_ZS_RELATION.ZS_CURR_ID
  is '����Ŀ�����';
comment on column METABASE.CURR_ZS_RELATION.SRC_CURR_ID
  is '���������';
comment on column METABASE.CURR_ZS_RELATION.ZS_ORDER
  is '�䳤��������ʾ˳��,�ر����ڱ䳤���������Ҫ���������ʱ,���ƺϲ��ظ����,ԭ�е�bank_relation��Ļ�����ʾ˳�򲻱�,��:�Ŵ�01-2�����кϼƻ���Ҫ����';
alter table METABASE.CURR_ZS_RELATION
  add constraint PK105 primary key (ZS_CURR_ID, SRC_CURR_ID)
  using index 
  tablespace METABASE
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
prompt Creating table DIM_INST_ITEM
prompt ============================
prompt
create table METABASE.DIM_INST_ITEM
(
  INST_ITEM_ID VARCHAR2(20) not null,
  INST_SET_ID  VARCHAR2(20) not null,
  INST_ID      VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_INST_ITEM
  is '����������';
comment on column METABASE.DIM_INST_ITEM.INST_ITEM_ID
  is '�������趨ID';
comment on column METABASE.DIM_INST_ITEM.INST_SET_ID
  is '���������';
comment on column METABASE.DIM_INST_ITEM.INST_ID
  is '�������';
alter table METABASE.DIM_INST_ITEM
  add constraint PK_INST_ITEM_ID primary key (INST_ITEM_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DIM_INST_SET
prompt ===========================
prompt
create table METABASE.DIM_INST_SET
(
  INST_SET_ID   VARCHAR2(20) not null,
  INST_SET_CODE VARCHAR2(20) not null,
  INST_SET_NAME VARCHAR2(50) not null,
  INST_SET_DES  VARCHAR2(200),
  SUBJECT_ID    VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_INST_SET
  is '������';
comment on column METABASE.DIM_INST_SET.INST_SET_ID
  is '������ID';
comment on column METABASE.DIM_INST_SET.INST_SET_CODE
  is '���������';
comment on column METABASE.DIM_INST_SET.INST_SET_NAME
  is '����������';
comment on column METABASE.DIM_INST_SET.INST_SET_DES
  is '����������
';
alter table METABASE.DIM_INST_SET
  add constraint PK_INST_SET_ID primary key (INST_SET_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DIM_META
prompt =======================
prompt
create table METABASE.DIM_META
(
  DIM_ID               VARCHAR2(10) not null,
  ID                   NUMBER(19) not null,
  DIM_NAME             VARCHAR2(50) not null,
  DIM_TABLE            VARCHAR2(30) not null,
  FIELD_ID             VARCHAR2(10) not null,
  FIELD_NAME           VARCHAR2(10) not null,
  DIM_RELATION_TABLE   VARCHAR2(20),
  GROUP_RELATION_TABLE VARCHAR2(30),
  FIELD_ORDER_BY       VARCHAR2(20),
  DIM_ORDER            NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.DIM_META.DIM_ID
  is 'ά��ID';
comment on column METABASE.DIM_META.ID
  is 'ID';
comment on column METABASE.DIM_META.DIM_NAME
  is 'ά�ȵ���������';
comment on column METABASE.DIM_META.DIM_TABLE
  is '�������';
comment on column METABASE.DIM_META.FIELD_ID
  is 'ID�ֶ���';
comment on column METABASE.DIM_META.FIELD_NAME
  is '�ֶ���name';
comment on column METABASE.DIM_META.DIM_RELATION_TABLE
  is 'ά�ȹ�ϵ�����(�ּ�����ʱʹ��)';
comment on column METABASE.DIM_META.GROUP_RELATION_TABLE
  is 'ά�������������';
comment on column METABASE.DIM_META.FIELD_ORDER_BY
  is '��ʾʱ����ʹ��';
comment on column METABASE.DIM_META.DIM_ORDER
  is '������ʹ��һ��γ����Ϊ����γ��ʱ,���˽���BASE_ITEM1-5������';
alter table METABASE.DIM_META
  add constraint PK_REPORT_ID_1 primary key (DIM_ID)
  using index 
  tablespace METABASE
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
prompt Creating table DIM_REPORT_DOWN_LIMIT
prompt ====================================
prompt
create table METABASE.DIM_REPORT_DOWN_LIMIT
(
  ID         NUMBER(19) not null,
  HOST_NAME  VARCHAR2(100) not null,
  SUBJECT_ID VARCHAR2(10) not null,
  STATUS     CHAR(1) not null,
  REMARK     VARCHAR2(100)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_REPORT_DOWN_LIMIT
  is '������������';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.ID
  is '����';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.HOST_NAME
  is '������';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.SUBJECT_ID
  is '��������';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.STATUS
  is '0,ͣ��;1,����';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.REMARK
  is '��ע(�ݲ�ʹ��)';
alter table METABASE.DIM_REPORT_DOWN_LIMIT
  add constraint PK_DIM_REPORT_DOWN_LIMIT primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DIM_REPORT_ITEM
prompt ==============================
prompt
create table METABASE.DIM_REPORT_ITEM
(
  REPORT_ITEM_ID VARCHAR2(20) not null,
  REPORT_SET_ID  VARCHAR2(20) not null,
  REPORT_ID      VARCHAR2(20) not null,
  ORDER_NUM      INTEGER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_REPORT_ITEM
  is '��������';
comment on column METABASE.DIM_REPORT_ITEM.REPORT_ITEM_ID
  is '�����趨ID';
comment on column METABASE.DIM_REPORT_ITEM.REPORT_SET_ID
  is '����ID';
comment on column METABASE.DIM_REPORT_ITEM.REPORT_ID
  is '����ID';
comment on column METABASE.DIM_REPORT_ITEM.ORDER_NUM
  is '����ֵ';
alter table METABASE.DIM_REPORT_ITEM
  add constraint PK_REPORT_ITEM_ID primary key (REPORT_ITEM_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DIM_REPORT_SET
prompt =============================
prompt
create table METABASE.DIM_REPORT_SET
(
  REPORT_SET_ID      VARCHAR2(20) not null,
  REPORT_SET_CODE    VARCHAR2(20) not null,
  REPORT_SET_NAME    VARCHAR2(50) not null,
  REPORT_SET_DES     VARCHAR2(200),
  REPORT_SET_SUBJECT VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_REPORT_SET
  is '����';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_ID
  is '����ID';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_CODE
  is '�������';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_NAME
  is '��������';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_DES
  is '��������';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_SUBJECT
  is '��������';
alter table METABASE.DIM_REPORT_SET
  add constraint PK_REPORT_SET_ID primary key (REPORT_SET_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DIM_SEND_FILE_ITEM
prompt =================================
prompt
create table METABASE.DIM_SEND_FILE_ITEM
(
  SEND_FILE_ITEM_ID VARCHAR2(20) not null,
  SEND_FILE_SET_ID  VARCHAR2(20) not null,
  INST_ID           VARCHAR2(20) not null,
  REPORT_ID         VARCHAR2(20) not null,
  ORDER_NUM         INTEGER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_SEND_FILE_ITEM
  is '���ļ�����';
comment on column METABASE.DIM_SEND_FILE_ITEM.SEND_FILE_ITEM_ID
  is '���ļ��趨ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.SEND_FILE_SET_ID
  is '���ļ�ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.INST_ID
  is '����ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.REPORT_ID
  is '����ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.ORDER_NUM
  is '����ֵ';
alter table METABASE.DIM_SEND_FILE_ITEM
  add constraint PK_SEND_FILE_ITEM_ID primary key (SEND_FILE_ITEM_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DIM_SEND_FILE_SET_NEW
prompt ====================================
prompt
create table METABASE.DIM_SEND_FILE_SET_NEW
(
  SEND_FILE_SET_ID      VARCHAR2(20) not null,
  SEND_FILE_SET_CODE    VARCHAR2(20) not null,
  SEND_FILE_SET_NAME    VARCHAR2(50) not null,
  SEND_FILE_SET_DES     VARCHAR2(200),
  SEND_FILE_SET_SEND    VARCHAR2(20) not null,
  SEND_FILE_SET_SUBJECT VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_SEND_FILE_SET_NEW
  is '���ļ�';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_ID
  is '���ļ�ID';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_CODE
  is '���ļ����';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_NAME
  is '���ļ�����';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_DES
  is '���ļ�����';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_SEND
  is '���ı��ͻ���';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_SUBJECT
  is '���ļ�����';
alter table METABASE.DIM_SEND_FILE_SET_NEW
  add constraint PK_SEND_FILE_SET_NEW_ID primary key (SEND_FILE_SET_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DIM_SEND_FILE_ITEM_NEW
prompt =====================================
prompt
create table METABASE.DIM_SEND_FILE_ITEM_NEW
(
  SEND_FILE_ITEM_ID VARCHAR2(20) not null,
  SEND_FILE_SET_ID  VARCHAR2(20) not null,
  INST_ID           VARCHAR2(20) not null,
  REPORT_ID         VARCHAR2(20) not null,
  ORDER_NUM         INTEGER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_SEND_FILE_ITEM_NEW
  is '���ļ�����';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.SEND_FILE_ITEM_ID
  is '���ļ��趨ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.SEND_FILE_SET_ID
  is '���ļ�ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.INST_ID
  is '����ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.REPORT_ID
  is '����ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.ORDER_NUM
  is '����ֵ';
alter table METABASE.DIM_SEND_FILE_ITEM_NEW
  add constraint PK_SEND_FILE_ITEM_NEW_ID primary key (SEND_FILE_ITEM_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
alter table METABASE.DIM_SEND_FILE_ITEM_NEW
  add constraint FK_SEND_FILE_SET_NEW_ID foreign key (SEND_FILE_SET_ID)
  references METABASE.DIM_SEND_FILE_SET_NEW (SEND_FILE_SET_ID);

prompt
prompt Creating table DIM_SEND_FILE_SET
prompt ================================
prompt
create table METABASE.DIM_SEND_FILE_SET
(
  SEND_FILE_SET_ID      VARCHAR2(20) not null,
  SEND_FILE_SET_CODE    VARCHAR2(20) not null,
  SEND_FILE_SET_NAME    VARCHAR2(50) not null,
  SEND_FILE_SET_DES     VARCHAR2(200),
  SEND_FILE_SET_SEND    VARCHAR2(20) not null,
  SEND_FILE_SET_SUBJECT VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.DIM_SEND_FILE_SET
  is '���ļ�';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_ID
  is '���ļ�ID';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_CODE
  is '���ļ����';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_NAME
  is '���ļ�����';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_DES
  is '���ļ�����
';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_SEND
  is '���ı��ͻ���';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_SUBJECT
  is '���ļ�����';
alter table METABASE.DIM_SEND_FILE_SET
  add constraint PK_SEND_FILE_SET_ID primary key (SEND_FILE_SET_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table DOWN_CONTROL
prompt ===========================
prompt
create table METABASE.DOWN_CONTROL
(
  ID             NUMBER(19) not null,
  SYSTEM_TAG     VARCHAR2(40) not null,
  KEY_MARK       VARCHAR2(40) not null,
  DOWNLOAD_STATE VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.DOWN_CONTROL
  is '�˱���UPRR��δ�õ�';
alter table METABASE.DOWN_CONTROL
  add primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table ERR_MSG
prompt ======================
prompt
create table METABASE.ERR_MSG
(
  ERR_MSG_ID CHAR(4) not null,
  ID         NUMBER(19) not null,
  ERR_MSG    VARCHAR2(2000)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ERR_MSG
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.ERR_MSG.ERR_MSG_ID
  is '�������';
comment on column METABASE.ERR_MSG.ERR_MSG
  is '������Ϣ';
alter table METABASE.ERR_MSG
  add constraint PK_ERR_MSG_ID primary key (ERR_MSG_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.UNI_IDX_ERR_MSG_ID on METABASE.ERR_MSG (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ERR_RETURN_INFO
prompt ==============================
prompt
create table METABASE.ERR_RETURN_INFO
(
  ERR_RETURN_CODE VARCHAR2(20) not null,
  ID              NUMBER(38) not null,
  ERR_INFO        VARCHAR2(3000) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ERR_RETURN_INFO
  is '�˱���UPRR��δ�õ�';
alter table METABASE.ERR_RETURN_INFO
  add constraint PK100 primary key (ERR_RETURN_CODE)
  using index 
  tablespace METABASE
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
create unique index METABASE.AK_ERR_RETURN_INFO on METABASE.ERR_RETURN_INFO (ID)
  tablespace METABASE
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
prompt Creating table ETL_LOGGER
prompt =========================
prompt
create table METABASE.ETL_LOGGER
(
  ID         INTEGER not null,
  TASK_CODE  VARCHAR2(50) not null,
  TASK_NAME  VARCHAR2(50),
  START_TIME VARCHAR2(20),
  END_TIME   VARCHAR2(20),
  DATA_DATE  VARCHAR2(20) not null,
  STATUS     VARCHAR2(20) not null,
  NOTES      VARCHAR2(100)
)
tablespace METABASE
  pctfree 10
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
prompt Creating table EXTENDING_SQL_TEMPLATE
prompt =====================================
prompt
create table METABASE.EXTENDING_SQL_TEMPLATE
(
  ID               NUMBER not null,
  TEMPLATE_CODE    VARCHAR2(200),
  TEMPLATE_DESC    VARCHAR2(1000),
  TEMPLATE_CONTENT VARCHAR2(4000)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.EXTENDING_SQL_TEMPLATE
  is '�˱���UPRR��δ�õ�';

prompt
prompt Creating table FORM_TEMPLATE
prompt ============================
prompt
create table METABASE.FORM_TEMPLATE
(
  ID           NUMBER(19) not null,
  FILE_NAME    VARCHAR2(500) not null,
  PUBLISH_DATE VARCHAR2(20) not null,
  FILE_CONTENT BLOB,
  DATA_BANK    VARCHAR2(20) not null,
  DATA_DATE    VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.FORM_TEMPLATE
  is '�챨ģ��';
comment on column METABASE.FORM_TEMPLATE.ID
  is 'sequence, ��������FORM_TEMPLATE_ID_SEQ';
comment on column METABASE.FORM_TEMPLATE.FILE_NAME
  is '�챨ģ������';
comment on column METABASE.FORM_TEMPLATE.PUBLISH_DATE
  is '�ϴ�����';
comment on column METABASE.FORM_TEMPLATE.FILE_CONTENT
  is '�챨ģ������';
comment on column METABASE.FORM_TEMPLATE.DATA_BANK
  is '������������';
comment on column METABASE.FORM_TEMPLATE.DATA_DATE
  is '����ʱ��';
alter table METABASE.FORM_TEMPLATE
  add constraint FORM_TEMPLATE_PK primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table FTP_TASK_FAIL_DETAIL
prompt ===================================
prompt
create table METABASE.FTP_TASK_FAIL_DETAIL
(
  TASK_ID     VARCHAR2(19) not null,
  REPORT_DIMS VARCHAR2(60) not null,
  MEMO        VARCHAR2(4000),
  DETAIL_TYPE VARCHAR2(1),
  ID          NUMBER(19) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.FTP_TASK_FAIL_DETAIL
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.TASK_ID
  is '����ID';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.REPORT_DIMS
  is '�������ƺ���ά����Ϣ';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.MEMO
  is '�쳣��Ϣ����';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.DETAIL_TYPE
  is 'E(exception)/M(message)��Ҫ���ڼ�¼���������û�ѡ�񵼳�
�쳣�����ǵ�������в������쳣��Ϣ��������Ȩ�ޣ����Ͳ�ƥ��';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.ID
  is '���߼�ID';
alter table METABASE.FTP_TASK_FAIL_DETAIL
  add constraint PK_FTP_TASK_FAIL_DETAIL primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table FTP_TASK_LOGINFO
prompt ===============================
prompt
create table METABASE.FTP_TASK_LOGINFO
(
  TASK_ID                VARCHAR2(19) not null,
  TASK_STATUS            VARCHAR2(10) not null,
  LOAD_SUCESS_REPORT_NUM NUMBER(10),
  ID                     NUMBER(19) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.FTP_TASK_LOGINFO
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.FTP_TASK_LOGINFO.TASK_ID
  is '����ID';
comment on column METABASE.FTP_TASK_LOGINFO.TASK_STATUS
  is '����״̬';
comment on column METABASE.FTP_TASK_LOGINFO.LOAD_SUCESS_REPORT_NUM
  is '�ɹ����뱨�����';
alter table METABASE.FTP_TASK_LOGINFO
  add constraint PK_FTP_TASK_LOGINFO primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.FTP_TASK_LOGINFO
  add constraint UK_FTP_TASK_LOGINFO unique (TASK_ID)
  using index 
  tablespace METABASE
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
prompt Creating table FUNC_INFO
prompt ========================
prompt
create table METABASE.FUNC_INFO
(
  ID              NUMBER(19) not null,
  FUNC_PSEUDOCODE VARCHAR2(40),
  FUNC_CODE       VARCHAR2(30) not null,
  FUNC_TYPE       VARCHAR2(3) not null,
  FUNC_NAME       VARCHAR2(150) not null,
  FUNC_PROTOTYPE  VARCHAR2(300) not null,
  FUNC_SAMPLE     VARCHAR2(200),
  FORMAT_TYPE     CHAR(1),
  REGEX_EXPR      VARCHAR2(200),
  REMARK_EXPR     VARCHAR2(300),
  SUB_FUNC        VARCHAR2(200),
  IS_SHOW         CHAR(1) default 'Y'
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.FUNC_INFO.FUNC_PSEUDOCODE
  is '����α����';
comment on column METABASE.FUNC_INFO.FUNC_CODE
  is '��̨����������';
comment on column METABASE.FUNC_INFO.FUNC_TYPE
  is '�������� .C(calc����) F(fetchȡ��) O(other����)';
comment on column METABASE.FUNC_INFO.FUNC_NAME
  is '������������';
comment on column METABASE.FUNC_INFO.FUNC_PROTOTYPE
  is '����ԭ��p������һ��ֵ,a������һ����ֵ';
comment on column METABASE.FUNC_INFO.FUNC_SAMPLE
  is '��������';
comment on column METABASE.FUNC_INFO.FORMAT_TYPE
  is '�ù�ʽֻ�����ڵı����ʽ��� (F ����(fixed)  C  �䳤(change)) A(Assemble)��ϱ���';
comment on column METABASE.FUNC_INFO.REGEX_EXPR
  is '�����������ʾ';
comment on column METABASE.FUNC_INFO.REMARK_EXPR
  is '������������������ʾ';
comment on column METABASE.FUNC_INFO.SUB_FUNC
  is '�����ʾ�е��滻����';
comment on column METABASE.FUNC_INFO.IS_SHOW
  is '�Ƿ���ʾ�ں����б�(��רҵ���ӵĹ�ʽ�����ֳ����õĹ�ʽ������ʾ)';
alter table METABASE.FUNC_INFO
  add constraint PK235 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table GROUP_INFO
prompt =========================
prompt
create table METABASE.GROUP_INFO
(
  GROUP_CODE    VARCHAR2(20) not null,
  GROUP_TYPE_ID VARCHAR2(4) not null,
  CH_NAME       VARCHAR2(64),
  REL_GROUP_ID  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.GROUP_INFO
  is '�˱���UPRR��δ�õ�?';
alter table METABASE.GROUP_INFO
  add constraint PK553 primary key (GROUP_CODE, GROUP_TYPE_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table GROUP_TYPE
prompt =========================
prompt
create table METABASE.GROUP_TYPE
(
  GROUP_TYPE_ID VARCHAR2(4) not null,
  CH_NAME       VARCHAR2(64)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.GROUP_TYPE
  is '�˱���UPRR��δ�õ�?';
alter table METABASE.GROUP_TYPE
  add constraint PK552 primary key (GROUP_TYPE_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table INDEX_CLASS
prompt ==========================
prompt
create table METABASE.INDEX_CLASS
(
  ID                NUMBER not null,
  CLASS_ID          VARCHAR2(20) not null,
  CLASS_NAME        VARCHAR2(50),
  SUPERIOR_CLASS_ID VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.INDEX_CLASS
  is '�˱���UPRR��δ�õ�';
alter table METABASE.INDEX_CLASS
  add constraint PK_INDEX_CLASS_ID primary key (CLASS_ID)
  using index 
  tablespace METABASE
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
prompt Creating table INDEX_DEFINE_STATUS
prompt ==================================
prompt
create table METABASE.INDEX_DEFINE_STATUS
(
  CALIBRE_ID NUMBER not null,
  FINISHED   CHAR(1) default 'N' not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.INDEX_DEFINE_STATUS
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.INDEX_DEFINE_STATUS.CALIBRE_ID
  is '�ھ�ID';
comment on column METABASE.INDEX_DEFINE_STATUS.FINISHED
  is '�ÿھ��µı���ָ���Ƿ��Ѿ�������ɡ���Y�������';
alter table METABASE.INDEX_DEFINE_STATUS
  add constraint PK_INDEX_DEFINE primary key (CALIBRE_ID)
  using index 
  tablespace METABASE
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
alter table METABASE.INDEX_DEFINE_STATUS
  add constraint PK_INDEX_DEF_STATUS unique (CALIBRE_ID, FINISHED)
  using index 
  tablespace METABASE
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
prompt Creating table INDEX_LIB
prompt ========================
prompt
create table METABASE.INDEX_LIB
(
  ID                 NUMBER not null,
  SYSTEM_ID          VARCHAR2(20),
  REPORT_ID          VARCHAR2(50),
  INDEX_ID           VARCHAR2(100),
  CLASS_ID           VARCHAR2(20),
  INDEX_NAME         VARCHAR2(200),
  DATA_TYPE          VARCHAR2(10),
  INDEX_CODE         VARCHAR2(200) not null,
  EDITABLE           VARCHAR2(10),
  IS_COLUMN_SHOW     VARCHAR2(1),
  DISP_LEN           NUMBER(38),
  COLUMN_LEN         NUMBER(38),
  CODE_TYPE          VARCHAR2(20),
  FORMAT_RULES       VARCHAR2(60),
  TRUNCATE_FLAG      VARCHAR2(1),
  ROUND_DIGIT        NUMBER(38),
  CONV_FLAG          VARCHAR2(1),
  PERMIT_CURR_DIVIDE CHAR(1) default 'N',
  COLUMN_FIELD_TYPE  VARCHAR2(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 5M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.INDEX_LIB.SYSTEM_ID
  is 'ϵͳ��ϵid';
comment on column METABASE.INDEX_LIB.REPORT_ID
  is '����ID';
comment on column METABASE.INDEX_LIB.INDEX_ID
  is 'ָ��ID';
comment on column METABASE.INDEX_LIB.CLASS_ID
  is 'ָ����';
comment on column METABASE.INDEX_LIB.INDEX_NAME
  is 'ָ����';
comment on column METABASE.INDEX_LIB.DATA_TYPE
  is '��������';
comment on column METABASE.INDEX_LIB.INDEX_CODE
  is 'ָ��CODE';
comment on column METABASE.INDEX_LIB.EDITABLE
  is '�������Ƿ�����༭.Y/N/X(�Ƽ����༭) �����ڱ�����ı༭����ʱ,���к�column_meta.PERMIT_EDIT��ͬһ����˼.                                                                          ';
comment on column METABASE.INDEX_LIB.IS_COLUMN_SHOW
  is '�Ƿ���ʾ�ֶ�';
comment on column METABASE.INDEX_LIB.DISP_LEN
  is '��ʾ����';
comment on column METABASE.INDEX_LIB.COLUMN_LEN
  is '�ֶγ���';
comment on column METABASE.INDEX_LIB.CODE_TYPE
  is '�������� ��������������,�赽code_info��Ӧcode_type�������ֵ. ���弶����.';
comment on column METABASE.INDEX_LIB.FORMAT_RULES
  is '�ֶ���ʾ��ʽ';
comment on column METABASE.INDEX_LIB.TRUNCATE_FLAG
  is '�Ƿ��λ������������';
comment on column METABASE.INDEX_LIB.ROUND_DIGIT
  is '��������λ��';
comment on column METABASE.INDEX_LIB.CONV_FLAG
  is '�Ƿ������־';
comment on column METABASE.INDEX_LIB.PERMIT_CURR_DIVIDE
  is '�������Ƿ���Ӧ�ñ��ֵ����� Y/N .����������Ӧ�����ݿ��е�Ԫת���ɱ�����ʾ����Ԫ. ������Ǳ����оͲ���Ӧ�ô˹���. ������Ҫ�ڱ�����ʾʱ�õ�.';
comment on column METABASE.INDEX_LIB.COLUMN_FIELD_TYPE
  is '�ֶ��������� C:������(��code_info��ȡ.���Ŀ��Ž���ʾΪ��Ŀ���ƣ�N:��ֵ�ͣ�����decimal��int��numeric��long��float�ȣ�
S(�ַ���)';
alter table METABASE.INDEX_LIB
  add constraint PK_INDEX_LIB_CODE primary key (INDEX_CODE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.INDEX_LIB
  add constraint UK_INDEX_LIB_ID unique (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 960K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index METABASE.INDEX_INDEX_LIB on METABASE.INDEX_LIB (INDEX_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table INDEX_LIB_MEMO
prompt =============================
prompt
create table METABASE.INDEX_LIB_MEMO
(
  INDEX_CODE       VARCHAR2(200) not null,
  REPORT_ID        VARCHAR2(50) not null,
  REMARK           VARCHAR2(2000),
  PRIVATE_REMARK   VARCHAR2(2000),
  MODIFY_DATE      VARCHAR2(20),
  RESPONSIBLE_USER VARCHAR2(50),
  ACTION_USER      VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.INDEX_LIB_MEMO.MODIFY_DATE
  is '�޸�����';
comment on column METABASE.INDEX_LIB_MEMO.RESPONSIBLE_USER
  is '������';
comment on column METABASE.INDEX_LIB_MEMO.ACTION_USER
  is '������';
alter table METABASE.INDEX_LIB_MEMO
  add constraint PK_INDEX_LIB_MEMO primary key (INDEX_CODE, REPORT_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_CALIBRE
prompt =============================
prompt
create table METABASE.REPORT_CALIBRE
(
  ID         NUMBER not null,
  REPORT_ID  VARCHAR2(30) not null,
  START_DATE DATE not null,
  END_DATE   DATE not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_CALIBRE
  is '����ھ���Ϣ��';
comment on column METABASE.REPORT_CALIBRE.ID
  is '���б�ţ�ʹ��REPORT_CALIBRE_ID_SEQ';
comment on column METABASE.REPORT_CALIBRE.REPORT_ID
  is '������';
comment on column METABASE.REPORT_CALIBRE.START_DATE
  is '��ʼ����';
comment on column METABASE.REPORT_CALIBRE.END_DATE
  is '��������';
alter table METABASE.REPORT_CALIBRE
  add constraint REPORTCALIBREID_PK primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table INDEX_POSITION
prompt =============================
prompt
create table METABASE.INDEX_POSITION
(
  ID                NUMBER not null,
  INDEX_ID          VARCHAR2(100) not null,
  REPORT_ID         VARCHAR2(20) not null,
  REPORT_CALIBRE_ID NUMBER not null,
  ROW_NUM           NUMBER not null,
  COL_NUM           NUMBER not null
)
tablespace METABASE
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
comment on column METABASE.INDEX_POSITION.INDEX_ID
  is 'ָ��ID';
comment on column METABASE.INDEX_POSITION.REPORT_ID
  is '����ID';
comment on column METABASE.INDEX_POSITION.REPORT_CALIBRE_ID
  is '����ھ�';
comment on column METABASE.INDEX_POSITION.ROW_NUM
  is '�к�';
comment on column METABASE.INDEX_POSITION.COL_NUM
  is '�к�';
alter table METABASE.INDEX_POSITION
  add constraint PK_INDEX_POSITION primary key (REPORT_CALIBRE_ID, ROW_NUM, COL_NUM)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.INDEX_POSITION
  add constraint UK_INDEX_POSITION2 unique (INDEX_ID, REPORT_CALIBRE_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table METABASE.INDEX_POSITION
  add constraint FK_POSTION_CALIBRE foreign key (REPORT_CALIBRE_ID)
  references METABASE.REPORT_CALIBRE (ID)
  disable;
create unique index METABASE.PK_POSITION_ID on METABASE.INDEX_POSITION (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 960K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table INDEX_PV_LIB
prompt ===========================
prompt
create table METABASE.INDEX_PV_LIB
(
  REPORT_CALIBRE_ID NUMBER not null,
  INDEX_ID          VARCHAR2(200),
  INDEX_NAME        VARCHAR2(200),
  ROW_NUM           NUMBER,
  COL_NUM           NUMBER,
  REPORT_ID         VARCHAR2(30) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table INDEX_RANGE_RIGHTS
prompt =================================
prompt
create table METABASE.INDEX_RANGE_RIGHTS
(
  ID              NUMBER not null,
  INDEX_ID        VARCHAR2(100),
  USER_ID         VARCHAR2(30),
  USER_GROUP_CODE VARCHAR2(20),
  IS_PERMIT_EDIT  VARCHAR2(1) default 'Y'
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.INDEX_RANGE_RIGHTS
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.INDEX_RANGE_RIGHTS.INDEX_ID
  is 'ָ��id';
comment on column METABASE.INDEX_RANGE_RIGHTS.USER_ID
  is '�û�����';
comment on column METABASE.INDEX_RANGE_RIGHTS.USER_GROUP_CODE
  is 'user_group_code(FK-auth_user_group)��user_id(FK--auth_user_info) ����һ  ,,��������ض������is_permit_edit Ȩ�޽����䵽�ض���user_id���û���code��. ';
alter table METABASE.INDEX_RANGE_RIGHTS
  add constraint PK_INDEX_RANGE_ID primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table INFORM_INFO
prompt ==========================
prompt
create table METABASE.INFORM_INFO
(
  ID              NUMBER(19) not null,
  MSG_TITLE       VARCHAR2(255) not null,
  MSG_CONTENT     VARCHAR2(1000),
  SEND_USER_ID    VARCHAR2(10),
  RECIEVE_USER_ID VARCHAR2(10),
  SEND_DATE       TIMESTAMP(6),
  SEND_TYPE       CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.INFORM_INFO
  is '�˱���UPRR��δ�õ���';
comment on column METABASE.INFORM_INFO.MSG_TITLE
  is '��Ϣ����';
comment on column METABASE.INFORM_INFO.MSG_CONTENT
  is '��Ϣ����';
comment on column METABASE.INFORM_INFO.SEND_USER_ID
  is '������';
comment on column METABASE.INFORM_INFO.RECIEVE_USER_ID
  is '������';
comment on column METABASE.INFORM_INFO.SEND_DATE
  is '��������';
comment on column METABASE.INFORM_INFO.SEND_TYPE
  is '���ͷ�ʽ';
alter table METABASE.INFORM_INFO
  add constraint PK42 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.IDX_INFORM_INFO on METABASE.INFORM_INFO (MSG_TITLE)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table INST_CALIBER_RELACTION
prompt =====================================
prompt
create table METABASE.INST_CALIBER_RELACTION
(
  SCALEID VARCHAR2(200),
  INSTID  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
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
prompt Creating table INST_FORMULA_EFFECT_RELA
prompt =======================================
prompt
create table METABASE.INST_FORMULA_EFFECT_RELA
(
  INST_NAME      VARCHAR2(100) not null,
  FORMULA_EFFECT VARCHAR2(500) not null
)
tablespace METABASE
  pctfree 10
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
prompt Creating table ITEM_BASIS
prompt =========================
prompt
create table METABASE.ITEM_BASIS
(
  ITEM_ID      VARCHAR2(18) not null,
  ID           NUMBER(38) not null,
  ITEM_NAME    VARCHAR2(60),
  ITEM_LEVEL   VARCHAR2(10),
  INVALID_DATE VARCHAR2(20),
  EFFECT_DATE  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ITEM_BASIS
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.ITEM_BASIS.ITEM_ID
  is '��ĿID';
comment on column METABASE.ITEM_BASIS.ITEM_NAME
  is '��Ŀ����';
comment on column METABASE.ITEM_BASIS.ITEM_LEVEL
  is '��Ŀ�ȼ�';
comment on column METABASE.ITEM_BASIS.INVALID_DATE
  is '��Ŀ��ֹʱ��';
comment on column METABASE.ITEM_BASIS.EFFECT_DATE
  is '��Ŀ����ʱ��';
alter table METABASE.ITEM_BASIS
  add constraint PK71 primary key (ITEM_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.AK_ITEM_BASIS on METABASE.ITEM_BASIS (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ITEM_RELATION
prompt ============================
prompt
create table METABASE.ITEM_RELATION
(
  ID              NUMBER(19) not null,
  ITEM_STACK_CODE VARCHAR2(20) not null,
  ITEM_ID         VARCHAR2(18) not null,
  ITEM_REL        VARCHAR2(20) not null,
  START_DATE      DATE not null,
  END_DATE        DATE not null,
  ITEM_ORDER      NUMBER(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ITEM_RELATION
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.ITEM_RELATION.ITEM_REL
  is '�ϼ���Ŀ����';
comment on column METABASE.ITEM_RELATION.START_DATE
  is '��ʼ����';
comment on column METABASE.ITEM_RELATION.END_DATE
  is '��������';
comment on column METABASE.ITEM_RELATION.ITEM_ORDER
  is '��Ŀ˳��';
alter table METABASE.ITEM_RELATION
  add constraint PK_ITM_RELATION primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF7133 on METABASE.ITEM_RELATION (ITEM_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF7236 on METABASE.ITEM_RELATION (ITEM_STACK_CODE)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table ITEM_STACK_INFO
prompt ==============================
prompt
create table METABASE.ITEM_STACK_INFO
(
  ITEM_STACK_CODE  VARCHAR2(20) not null,
  ITEM_STATCK_NAME VARCHAR2(10),
  ID               NUMBER(38) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.ITEM_STACK_INFO
  is '��ȷ���Ƿ�����';
comment on column METABASE.ITEM_STACK_INFO.ITEM_STACK_CODE
  is '��Ŀ�ھ�����';
comment on column METABASE.ITEM_STACK_INFO.ITEM_STATCK_NAME
  is '��Ŀ�ھ�����';
alter table METABASE.ITEM_STACK_INFO
  add constraint PK_ITEM_STACK_INFO primary key (ITEM_STACK_CODE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.AK_ITEM_STACK_INFO on METABASE.ITEM_STACK_INFO (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table JRTJ_BANK_INFO
prompt =============================
prompt
create table METABASE.JRTJ_BANK_INFO
(
  ID            NUMBER not null,
  BANK_ID       VARCHAR2(20) not null,
  JRTJ_BANK_NUM VARCHAR2(200),
  JRTJ_BANK_ID  VARCHAR2(4),
  JRTJ_AREA_ID  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.JRTJ_BANK_INFO.BANK_ID
  is '��������';
comment on column METABASE.JRTJ_BANK_INFO.JRTJ_BANK_NUM
  is '����ͳ�ƻ������';
comment on column METABASE.JRTJ_BANK_INFO.JRTJ_BANK_ID
  is '����ͳ�ƻ�������� 4λ';
comment on column METABASE.JRTJ_BANK_INFO.JRTJ_AREA_ID
  is '����ͳ�Ƶ������� 7λ';
alter table METABASE.JRTJ_BANK_INFO
  add constraint PK_JRTJ_BANK_INFO primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table JRTJ_BANK_INFO_LIST
prompt ==================================
prompt
create table METABASE.JRTJ_BANK_INFO_LIST
(
  ID            NUMBER not null,
  JRTJ_BANK_ID  VARCHAR2(4) not null,
  BANK_ID       VARCHAR2(20) not null,
  JRTJ_BANK_NUM VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.JRTJ_BANK_INFO_LIST
  is '��ȷ���Ƿ�����';
alter table METABASE.JRTJ_BANK_INFO_LIST
  add constraint PK_JRTJ_BANK_INFO_LIST primary key (JRTJ_BANK_ID, BANK_ID)
  using index 
  tablespace METABASE
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
prompt Creating table JRTJ_BANK_INFO_MAIN
prompt ==================================
prompt
create table METABASE.JRTJ_BANK_INFO_MAIN
(
  ID             NUMBER not null,
  JRTJ_BANK_ID   VARCHAR2(4) not null,
  JRTJ_AREA_ID   VARCHAR2(20) not null,
  JRTJ_BANK_NAME VARCHAR2(40) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.JRTJ_BANK_INFO_MAIN
  is '��ȷ���Ƿ�����';
alter table METABASE.JRTJ_BANK_INFO_MAIN
  add constraint PK_JRTJ_BANK_MAIN primary key (JRTJ_BANK_ID)
  using index 
  tablespace METABASE
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
prompt Creating table JRTJ_BANK_INFO_NEW
prompt =================================
prompt
create table METABASE.JRTJ_BANK_INFO_NEW
(
  ID            NUMBER not null,
  BANK_ID       VARCHAR2(20) not null,
  JRTJ_BANK_NUM VARCHAR2(200),
  JRTJ_BANK_ID  VARCHAR2(4),
  JRTJ_AREA_ID  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.JRTJ_BANK_INFO_NEW.BANK_ID
  is '��������';
comment on column METABASE.JRTJ_BANK_INFO_NEW.JRTJ_BANK_NUM
  is '����ͳ�ƻ������';
comment on column METABASE.JRTJ_BANK_INFO_NEW.JRTJ_BANK_ID
  is '����ͳ�ƻ�������� 4λ';
comment on column METABASE.JRTJ_BANK_INFO_NEW.JRTJ_AREA_ID
  is '����ͳ�Ƶ������� 7λ';
alter table METABASE.JRTJ_BANK_INFO_NEW
  add constraint PK_JRTJ_BANK_INFO_NEW primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table JRTJ_CURR_REL
prompt ============================
prompt
create table METABASE.JRTJ_CURR_REL
(
  ID           NUMBER not null,
  CURR_ID      VARCHAR2(20),
  JRTJ_CURR_ID VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_CURR_REL.CURR_ID
  is 'ϵͳ����';
comment on column METABASE.JRTJ_CURR_REL.JRTJ_CURR_ID
  is 'JRTJ����ID 7λ';
alter table METABASE.JRTJ_CURR_REL
  add constraint PK_JRTJID primary key (ID)
  disable;

prompt
prompt Creating table JRTJ_DATA_INFO
prompt =============================
prompt
create table METABASE.JRTJ_DATA_INFO
(
  ID         NUMBER not null,
  DATA_ATTRI VARCHAR2(20) not null,
  DATA_NAME  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_DATA_INFO.DATA_ATTRI
  is '�������� ��1';
comment on column METABASE.JRTJ_DATA_INFO.DATA_NAME
  is '�����������';
alter table METABASE.JRTJ_DATA_INFO
  add constraint PK_DATAATTRI primary key (DATA_ATTRI)
  using index 
  tablespace METABASE
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
prompt Creating table JRTJ_DOWNLOAD_CONFIG
prompt ===================================
prompt
create table METABASE.JRTJ_DOWNLOAD_CONFIG
(
  ID           NUMBER not null,
  TASK_ID      VARCHAR2(20) not null,
  FORM_BANK_ID VARCHAR2(20),
  FORM_ID      VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_DOWNLOAD_CONFIG.TASK_ID
  is '����ID';
comment on column METABASE.JRTJ_DOWNLOAD_CONFIG.FORM_BANK_ID
  is '��������';
comment on column METABASE.JRTJ_DOWNLOAD_CONFIG.FORM_ID
  is '�����ű�';

prompt
prompt Creating table JRTJ_DOWNLOAD_TASK
prompt =================================
prompt
create table METABASE.JRTJ_DOWNLOAD_TASK
(
  ID          NUMBER not null,
  TASK_ID     VARCHAR2(50) not null,
  TASK_NAME   VARCHAR2(50),
  PERIOD_FREQ VARCHAR2(20),
  BATCH_ID    VARCHAR2(20),
  OWNER_CODE  VARCHAR2(20),
  JRTJ_BANK   VARCHAR2(60)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_DOWNLOAD_TASK.ID
  is 'seq';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.TASK_ID
  is '����ID';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.TASK_NAME
  is '��������';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.PERIOD_FREQ
  is 'Ƶ��';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.BATCH_ID
  is '����';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.OWNER_CODE
  is '�����û���';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.JRTJ_BANK
  is '���ػ���(����IJ�ļ�ʱIJ�ļ������ϱ�����)';
alter table METABASE.JRTJ_DOWNLOAD_TASK
  add constraint PK_TASK_ID primary key (TASK_ID)
  disable;

prompt
prompt Creating table JRTJ_DT_REL
prompt ==========================
prompt
create table METABASE.JRTJ_DT_REL
(
  ID              NUMBER not null,
  FIELD_TYPE      VARCHAR2(10),
  JRTJ_FIELD_TYPE VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_DT_REL.ID
  is 'seq';
comment on column METABASE.JRTJ_DT_REL.FIELD_TYPE
  is '��������';
comment on column METABASE.JRTJ_DT_REL.JRTJ_FIELD_TYPE
  is 'JRTJ��������';
alter table METABASE.JRTJ_DT_REL
  add constraint PK_DT_ID primary key (ID)
  disable;

prompt
prompt Creating table JRTJ_D_FILE
prompt ==========================
prompt
create table METABASE.JRTJ_D_FILE
(
  ID          NUMBER not null,
  REPORT_ID   VARCHAR2(30) not null,
  BANK_ID     VARCHAR2(20) not null,
  REPORT_DATE VARCHAR2(10) not null,
  SUBJECT     VARCHAR2(100),
  TITLE       VARCHAR2(100),
  CONTENT     VARCHAR2(4000),
  UPDATE_USER VARCHAR2(20),
  UPDATE_DATE DATE,
  FLAG        CHAR(1) default 'Y'
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.JRTJ_D_FILE.ID
  is 'seq';
comment on column METABASE.JRTJ_D_FILE.REPORT_ID
  is '����ID';
comment on column METABASE.JRTJ_D_FILE.BANK_ID
  is '����ID';
comment on column METABASE.JRTJ_D_FILE.REPORT_DATE
  is '��������';
comment on column METABASE.JRTJ_D_FILE.SUBJECT
  is '����?';
comment on column METABASE.JRTJ_D_FILE.TITLE
  is '����?';
comment on column METABASE.JRTJ_D_FILE.CONTENT
  is '�ļ�����';
comment on column METABASE.JRTJ_D_FILE.UPDATE_USER
  is '�༭�û�?';
comment on column METABASE.JRTJ_D_FILE.UPDATE_DATE
  is '�༭����?';
comment on column METABASE.JRTJ_D_FILE.FLAG
  is '��';

prompt
prompt Creating table JRTJ_FORM_INFO
prompt =============================
prompt
create table METABASE.JRTJ_FORM_INFO
(
  ID       NUMBER not null,
  DT_ATTRI VARCHAR2(20),
  FORM_ID  VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.JRTJ_FORM_INFO.ID
  is 'seq';
comment on column METABASE.JRTJ_FORM_INFO.DT_ATTRI
  is '��������';
comment on column METABASE.JRTJ_FORM_INFO.FORM_ID
  is '���б�����';

prompt
prompt Creating table JRTJ_FREQ_REL
prompt ============================
prompt
create table METABASE.JRTJ_FREQ_REL
(
  ID               NUMBER not null,
  PERIOD_FREQ      VARCHAR2(20),
  JRTJ_PERIOD_FREQ VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_FREQ_REL.ID
  is 'seq';
comment on column METABASE.JRTJ_FREQ_REL.PERIOD_FREQ
  is 'ϵͳƵ�ȴ���';
comment on column METABASE.JRTJ_FREQ_REL.JRTJ_PERIOD_FREQ
  is 'JRTJ�ϱ�Ƶ�� ����';
alter table METABASE.JRTJ_FREQ_REL
  add constraint ID primary key (ID)
  disable;

prompt
prompt Creating table JRTJ_FREQ_VERIFY_RELATION
prompt ========================================
prompt
create table METABASE.JRTJ_FREQ_VERIFY_RELATION
(
  SRC_FREQ VARCHAR2(10) not null,
  ID       NUMBER(19) not null,
  OBJ_FREQ VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_FREQ_VERIFY_RELATION.SRC_FREQ
  is 'У��ԴƵ��';
comment on column METABASE.JRTJ_FREQ_VERIFY_RELATION.ID
  is 'sequence';
comment on column METABASE.JRTJ_FREQ_VERIFY_RELATION.OBJ_FREQ
  is 'У��Ŀ��Ƶ��';

prompt
prompt Creating table JRTJ_IJ_BANK_CURR
prompt ================================
prompt
create table METABASE.JRTJ_IJ_BANK_CURR
(
  REPORT_ID VARCHAR2(100) not null,
  BANK_ID   VARCHAR2(200) not null,
  JRTJ_CURR VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.JRTJ_IJ_BANK_CURR.REPORT_ID
  is '�������,��A1401_1';
comment on column METABASE.JRTJ_IJ_BANK_CURR.BANK_ID
  is '��������.(ע�ⲻ�ǻ����ⱨ����)';
comment on column METABASE.JRTJ_IJ_BANK_CURR.JRTJ_CURR
  is '����ͳ�Ʊ��ִ��� (���б���û�б���ά��,ֻ��ҵ�������ϵ� �����:RMB0001/��Ԫ:USD0002/�����:BWB0001)';
alter table METABASE.JRTJ_IJ_BANK_CURR
  add constraint PK_IJ_BANK_CURR primary key (REPORT_ID, BANK_ID, JRTJ_CURR)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table JRTJ_INDEX_NAME2
prompt ===============================
prompt
create table METABASE.JRTJ_INDEX_NAME2
(
  INDEX_ID   VARCHAR2(20),
  INDEX_NAME VARCHAR2(200)
)
tablespace METABASE
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
comment on table METABASE.JRTJ_INDEX_NAME2
  is '��ȷ���Ƿ�����';

prompt
prompt Creating table JRTJ_OLD_NEW_BANK_REL
prompt ====================================
prompt
create table METABASE.JRTJ_OLD_NEW_BANK_REL
(
  ID       NUMBER,
  NEW_CODE VARCHAR2(20),
  OLD_CODE VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
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
prompt Creating table JRTJ_OLD_NEW_CURR_REL
prompt ====================================
prompt
create table METABASE.JRTJ_OLD_NEW_CURR_REL
(
  ID       NUMBER,
  NEW_CODE VARCHAR2(20),
  OLD_CODE VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
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
prompt Creating table JRTJ_OLD_NEW_INDEX_REL
prompt =====================================
prompt
create table METABASE.JRTJ_OLD_NEW_INDEX_REL
(
  ID       NUMBER,
  NEW_CODE VARCHAR2(20),
  OLD_CODE VARCHAR2(20)
)
tablespace METABASE
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

prompt
prompt Creating table JRTJ_OLD_NEW_REGION_REL
prompt ======================================
prompt
create table METABASE.JRTJ_OLD_NEW_REGION_REL
(
  ID       NUMBER,
  NEW_CODE VARCHAR2(20),
  OLD_CODE VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
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
prompt Creating table JRTJ_ON_DATAATTR_REL
prompt ===================================
prompt
create table METABASE.JRTJ_ON_DATAATTR_REL
(
  ID       NUMBER,
  NEW_CODE VARCHAR2(20),
  OLD_CODE VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_ON_DATAATTR_REL.ID
  is '��ȷ���Ƿ�����';

prompt
prompt Creating table JRTJ_REPORT_CLM_INFO
prompt ===================================
prompt
create table METABASE.JRTJ_REPORT_CLM_INFO
(
  ID        NUMBER,
  REPORT_ID VARCHAR2(50),
  CURR_ID   VARCHAR2(20),
  DATA_ATTR VARCHAR2(20),
  DATA_TYPE VARCHAR2(10),
  COL_NUM   INTEGER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.JRTJ_REPORT_CLM_INFO
  is '����ͳ�Ʊ�������Ϣ';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.ID
  is 'sequence';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.REPORT_ID
  is '����ID';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.CURR_ID
  is '���б���ID';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.DATA_ATTR
  is '��������';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.DATA_TYPE
  is '��������';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.COL_NUM
  is '�к�';

prompt
prompt Creating table REPORT_META
prompt ==========================
prompt
create table METABASE.REPORT_META
(
  REPORT_ID               VARCHAR2(30) not null,
  ID                      NUMBER(19) not null,
  REPORT_CH               VARCHAR2(200) not null,
  REPORT_NAME             VARCHAR2(36) not null,
  WORK_STOREPATH_ID       VARCHAR2(12) not null,
  REPORT_STOREPATH_ID     VARCHAR2(12) not null,
  CRASH_FLAG              CHAR(1) not null,
  PERIOD_FREQ             VARCHAR2(20) not null,
  REPORT_ORDER            NUMBER(38),
  REPORT_TYPE             CHAR(1) not null,
  FORMAT_TYPE             CHAR(1) not null,
  SAVE_TYPE               VARCHAR2(3) not null,
  SHORTCUT_CODE           VARCHAR2(30),
  UNIT_ID                 VARCHAR2(20) not null,
  CRASH_DIM               VARCHAR2(10),
  NEED_TOTAL              CHAR(1),
  NEED_SUBTOTAL           CHAR(1),
  SUBTOTAL_DIM            VARCHAR2(30),
  TOTAL_TYPE              VARCHAR2(10),
  PRECISION_DIGIT         NUMBER default 2,
  IS_CONTROL_RANGE_RIGHTS CHAR(1) default 'N' not null,
  EFFECT_DATE             VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_META
  is '������Ϣ��';
comment on column METABASE.REPORT_META.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_META.ID
  is '���б�ţ�ʹ��REPORT_META_ID_SEQ';
comment on column METABASE.REPORT_META.REPORT_CH
  is '�������������';
comment on column METABASE.REPORT_META.REPORT_NAME
  is '�����������(�Ƿ����ı�������)';
comment on column METABASE.REPORT_META.WORK_STOREPATH_ID
  is '�������ݿ��ʶ  work';
comment on column METABASE.REPORT_META.REPORT_STOREPATH_ID
  is 'ȷ�Ϻ�����ݿ��ʶ report';
comment on column METABASE.REPORT_META.CRASH_FLAG
  is '�����־(Y/N)';
comment on column METABASE.REPORT_META.PERIOD_FREQ
  is '����Ƶ��:code_info :code_type =''report_freq''  ��Ӧ; �գ�Ѯ���£��������꣯��';
comment on column METABASE.REPORT_META.REPORT_ORDER
  is '����˳��';
comment on column METABASE.REPORT_META.REPORT_TYPE
  is '��������: B(basic)�������ݱ���, D(Derive) ��������.';
comment on column METABASE.REPORT_META.FORMAT_TYPE
  is '�����ʽ���(F ����(fixed)  C  �䳤(change)) A(Assemble)��ϱ���';
comment on column METABASE.REPORT_META.SAVE_TYPE
  is '����洢���(dvp,dv,pv)';
comment on column METABASE.REPORT_META.SHORTCUT_CODE
  is '�����ݴ���';
comment on column METABASE.REPORT_META.UNIT_ID
  is '���ֵ�λ����';
comment on column METABASE.REPORT_META.CRASH_DIM
  is '�������ά��(һ��Ĭ�ϰ�ʱ�����,�����������Ҫ��,���ɰ����ֶν�һ������)';
comment on column METABASE.REPORT_META.NEED_TOTAL
  is '����Ǳ䳤��, �Ƿ���Ҫ�ϼ�(Y/N)';
comment on column METABASE.REPORT_META.NEED_SUBTOTAL
  is '����Ǳ䳤��, �Ƿ���ҪС��(Y/N)';
comment on column METABASE.REPORT_META.SUBTOTAL_DIM
  is '����Ǳ䳤��, ����ά��(column_meta.column_id)';
comment on column METABASE.REPORT_META.TOTAL_TYPE
  is 'Bank���¼�����/Area���� ref: code_info . Bank_relation ʹ��:1  �������� 2  ������� 3  ����������(��ȥ���ʲ�) 4  ���������(��ȥ���ʲ�) 5  �������ͻ������� 6  �������ͻ�������(��ȥ����)';
comment on column METABASE.REPORT_META.PRECISION_DIGIT
  is '����������ʾ����,�ر���PV�ʹ洢ʱ��Ҫ���ô����ֶ�,��
�ֽ���֧ͳ���±���  ,
�ֽ�����ǼǱ� �Ͳ�����С��λ.';
comment on column METABASE.REPORT_META.IS_CONTROL_RANGE_RIGHTS
  is '�Ƿ���Ʊ����ض��ж��ض��û��ı༭Ȩ��';
comment on column METABASE.REPORT_META.EFFECT_DATE
  is '��������ʱ��';
alter table METABASE.REPORT_META
  add constraint PK_REPORT_ID primary key (REPORT_ID)
  using index 
  tablespace METABASE
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
create index METABASE.REF3810 on METABASE.REPORT_META (UNIT_ID)
  tablespace METABASE
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
create unique index METABASE.UNI_IDX_REPORT_META_ID on METABASE.REPORT_META (ID)
  tablespace METABASE
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
grant select on METABASE.REPORT_META to DATACORE;
grant select on METABASE.REPORT_META to DATACOREFF;
grant select on METABASE.REPORT_META to DATACOREOPR;

prompt
prompt Creating table JRTJ_REPORT_INFO
prompt ===============================
prompt
create table METABASE.JRTJ_REPORT_INFO
(
  ID           NUMBER not null,
  REPORT_ID    VARCHAR2(40) not null,
  IS_DOWNLOAD  CHAR(1),
  PERIOD_FREQ  VARCHAR2(20),
  REPORT_BATCH VARCHAR2(20),
  REPORT_FORM  VARCHAR2(20) not null,
  SYS_ID       VARCHAR2(20),
  FORM_TYPE    VARCHAR2(20),
  OLD_BUS_TYPE VARCHAR2(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_REPORT_INFO.ID
  is 'sequence';
comment on column METABASE.JRTJ_REPORT_INFO.REPORT_ID
  is '����ID';
comment on column METABASE.JRTJ_REPORT_INFO.IS_DOWNLOAD
  is '�Ƿ�����i,j�ļ�';
comment on column METABASE.JRTJ_REPORT_INFO.PERIOD_FREQ
  is 'Ƶ��';
comment on column METABASE.JRTJ_REPORT_INFO.REPORT_BATCH
  is '����';
comment on column METABASE.JRTJ_REPORT_INFO.REPORT_FORM
  is '��';
comment on column METABASE.JRTJ_REPORT_INFO.SYS_ID
  is 'ϵͳ����';
comment on column METABASE.JRTJ_REPORT_INFO.FORM_TYPE
  is '������';
comment on column METABASE.JRTJ_REPORT_INFO.OLD_BUS_TYPE
  is '�����ֶ�';
alter table METABASE.JRTJ_REPORT_INFO
  add constraint PK_JRTJ_REPORT_INFO primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.JRTJ_REPORT_INFO
  add constraint U_JRTJ_REPORT_INFO unique (REPORT_FORM)
  using index 
  tablespace METABASE
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
alter table METABASE.JRTJ_REPORT_INFO
  add constraint REF_REPORT_META foreign key (REPORT_ID)
  references METABASE.REPORT_META (REPORT_ID)
  disable;

prompt
prompt Creating table JRTJ_TASK_D_FILE
prompt ===============================
prompt
create table METABASE.JRTJ_TASK_D_FILE
(
  TASK_ID       VARCHAR2(50) not null,
  BANK_ID       VARCHAR2(20) not null,
  DFILE_CONTENT VARCHAR2(4000),
  REPORT_DATE   VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.JRTJ_TASK_D_FILE.TASK_ID
  is '����ID';
comment on column METABASE.JRTJ_TASK_D_FILE.BANK_ID
  is '����ID';
comment on column METABASE.JRTJ_TASK_D_FILE.DFILE_CONTENT
  is 'D�ļ�����';
comment on column METABASE.JRTJ_TASK_D_FILE.REPORT_DATE
  is '��������';
alter table METABASE.JRTJ_TASK_D_FILE
  add constraint D_FILE_PK primary key (TASK_ID, BANK_ID, REPORT_DATE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.JRTJ_TASK_D_FILE_PK on METABASE.JRTJ_TASK_D_FILE (TASK_ID, BANK_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table JRTJ_UNIT_REL
prompt ============================
prompt
create table METABASE.JRTJ_UNIT_REL
(
  ID           NUMBER not null,
  UNIT_ID      VARCHAR2(20) not null,
  JRTJ_UNIT_ID VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.JRTJ_UNIT_REL.ID
  is '�˱���UPRR��δ�õ�';
comment on column METABASE.JRTJ_UNIT_REL.JRTJ_UNIT_ID
  is '1λ';
alter table METABASE.JRTJ_UNIT_REL
  add constraint PK_JRTJUNIT primary key (ID)
  disable;

prompt
prompt Creating table JSH_BANK_CONFIG
prompt ==============================
prompt
create table METABASE.JSH_BANK_CONFIG
(
  BANK_ID       VARCHAR2(60) not null,
  JSH_BANK_CODE VARCHAR2(12) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
alter table METABASE.JSH_BANK_CONFIG
  add constraint PK_JSH_BANK_CFG primary key (BANK_ID, JSH_BANK_CODE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table LANGUAGE_REFER_CODE
prompt ==================================
prompt
create table METABASE.LANGUAGE_REFER_CODE
(
  LANGUAGE_TYPE VARCHAR2(20),
  USE_TYPE      VARCHAR2(100),
  KEY           VARCHAR2(1000),
  VALUE         VARCHAR2(4000),
  VERSION       VARCHAR2(100)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table LANGUAGE_REPORT_TEMPLATE
prompt =======================================
prompt
create table METABASE.LANGUAGE_REPORT_TEMPLATE
(
  LANGUAGE_TYPE     VARCHAR2(20) not null,
  USE_TYPE          VARCHAR2(100) not null,
  REPORT_ID         VARCHAR2(30) not null,
  REPORT_CALIBRE_ID VARCHAR2(50),
  TEMPLATE_CONTENT  BLOB
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table LOCK_INFO
prompt ========================
prompt
create table METABASE.LOCK_INFO
(
  USER_ID   NVARCHAR2(30) not null,
  REPORT_ID NVARCHAR2(30),
  STARTDATE DATE not null,
  ENDDATE   DATE,
  LOCKTYPE  NVARCHAR2(10) not null,
  ID        NUMBER not null
)
tablespace METABASE
  pctfree 30
  initrans 1
  maxtrans 255
  storage
  (
    initial 448K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.LOCK_INFO
  is '������Ϣ��';
comment on column METABASE.LOCK_INFO.USER_ID
  is '�û����';
comment on column METABASE.LOCK_INFO.REPORT_ID
  is '������';
comment on column METABASE.LOCK_INFO.STARTDATE
  is '��ʼʱ��';
comment on column METABASE.LOCK_INFO.ENDDATE
  is '����ʱ��';
comment on column METABASE.LOCK_INFO.LOCKTYPE
  is '�������ͣ�[user���û���report������]';
comment on column METABASE.LOCK_INFO.ID
  is '���б�ţ�ʹ��LOCK_INFO_ID_SEQ';
create index METABASE.I_USER on METABASE.LOCK_INFO (USER_ID)
  tablespace METABASE
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
prompt Creating table LOOSE_VERIFY_LOG
prompt ===============================
prompt
create table METABASE.LOOSE_VERIFY_LOG
(
  REPORT_ID    VARCHAR2(30) not null,
  BASE_DIM1    VARCHAR2(30) not null,
  BASE_DIM2    VARCHAR2(10) not null,
  BASE_DIM3    VARCHAR2(10),
  BASE_DIM4    VARCHAR2(10),
  BASE_DIM5    VARCHAR2(10),
  POSITION_X   INTEGER not null,
  POSITION_Y   INTEGER not null,
  EXPLAIN_DESC VARCHAR2(2000),
  AUDIT_STATUS VARCHAR2(10),
  AUDIT_DESC   VARCHAR2(2000),
  EXPLAIN_USER VARCHAR2(30),
  AUDIT_USER   VARCHAR2(30),
  EXPLAIN_TIME VARCHAR2(20),
  AUDIT_TIME   VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.LOOSE_VERIFY_LOG.REPORT_ID
  is '����ID';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM1
  is '����ά��1 һ���ǻ���';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM2
  is '����ά��2';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM3
  is '����ά��3';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM4
  is '����ά��4 ';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM5
  is '����ά��5';
comment on column METABASE.LOOSE_VERIFY_LOG.POSITION_X
  is '��У������к�';
comment on column METABASE.LOOSE_VERIFY_LOG.POSITION_Y
  is '��У������к�';
comment on column METABASE.LOOSE_VERIFY_LOG.EXPLAIN_DESC
  is '����˵��';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_STATUS
  is '���״̬';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_DESC
  is '���˵��';
comment on column METABASE.LOOSE_VERIFY_LOG.EXPLAIN_USER
  is '��û�';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_USER
  is '����û�';
comment on column METABASE.LOOSE_VERIFY_LOG.EXPLAIN_TIME
  is '�ʱ��';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_TIME
  is '���ʱ��';

prompt
prompt Creating table MAIL_CONFIG_AUDIT_LOG
prompt ====================================
prompt
create table METABASE.MAIL_CONFIG_AUDIT_LOG
(
  EVENT_ID       VARCHAR2(100) not null,
  TRIGGER_USER   VARCHAR2(50) not null,
  AUDIT_USER     VARCHAR2(50),
  TRIGGER_TIME   VARCHAR2(20) not null,
  AUDIT_TIME     VARCHAR2(20),
  TRIGGER_TYPE   VARCHAR2(20) not null,
  SUBJECT_ID     VARCHAR2(60) not null,
  APPROVE_ACTION VARCHAR2(30)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.MAIL_CONFIG_AUDIT_LOG
  is 'email�����˴����б�';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.TRIGGER_USER
  is '���������';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.AUDIT_USER
  is '�����';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.TRIGGER_TIME
  is '�������ʱ��';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.AUDIT_TIME
  is '���ʱ��';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.TRIGGER_TYPE
  is '����/ɾ��mail : add/delete';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.SUBJECT_ID
  is '��ϵͳ';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.APPROVE_ACTION
  is '�������passed/rejected';

prompt
prompt Creating table MEANING_FORMULA_INFO
prompt ===================================
prompt
create table METABASE.MEANING_FORMULA_INFO
(
  ID                          NUMBER(38) not null,
  FORMULA_ID                  VARCHAR2(50) not null,
  FORMULA_NAME                VARCHAR2(100) not null,
  FORMULA_DESCRIBE            VARCHAR2(2000),
  FORMULA_CONTENT             CLOB,
  FORMULA_PROTOTYPE           VARCHAR2(100),
  FORMULA_REMARK              VARCHAR2(4000),
  MEANING_GROUP_INFO_GROUP_ID VARCHAR2(50) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.MEANING_FORMULA_INFO
  is '����㹫ʽ��Ϣ��';
comment on column METABASE.MEANING_FORMULA_INFO.ID
  is '���б�ţ�ʹ��MEANING_FORMULA_INFO_ID_SEQ';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_ID
  is '��ʽ���';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_NAME
  is '��ʽ����';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_DESCRIBE
  is '��ʽ������Ϣ';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_CONTENT
  is '��ʽ����';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_PROTOTYPE
  is '����ԭ��';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_REMARK
  is '������ʽ�Ľ�����Ϣ';
comment on column METABASE.MEANING_FORMULA_INFO.MEANING_GROUP_INFO_GROUP_ID
  is '����������';
alter table METABASE.MEANING_FORMULA_INFO
  add constraint PK142 primary key (FORMULA_ID)
  using index 
  tablespace METABASE
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
prompt Creating table MEANING_FORMULA_VAR
prompt ==================================
prompt
create table METABASE.MEANING_FORMULA_VAR
(
  ID         NUMBER(38) not null,
  VAR_ID     VARCHAR2(50) not null,
  VAR_NAME   VARCHAR2(100) not null,
  VAR_TYPE   VARCHAR2(20) not null,
  VAR_ORDER  NUMBER(38) not null,
  FORMULA_ID VARCHAR2(50) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.MEANING_FORMULA_VAR
  is '����������';
comment on column METABASE.MEANING_FORMULA_VAR.ID
  is '���б�ţ�ʹ��MEANING_FORMULA_VAR_ID_SEQ';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_ID
  is '�������';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_NAME
  is '��������';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_TYPE
  is '�������ͣ�[String��int]';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_ORDER
  is '�������';
comment on column METABASE.MEANING_FORMULA_VAR.FORMULA_ID
  is '�������ڵĹ�ʽ���';
alter table METABASE.MEANING_FORMULA_VAR
  add constraint PK141 primary key (VAR_ID, FORMULA_ID)
  using index 
  tablespace METABASE
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
prompt Creating table MEANING_GROUP_INFO
prompt =================================
prompt
create table METABASE.MEANING_GROUP_INFO
(
  ID         NUMBER(38) not null,
  GROUP_ID   VARCHAR2(50) not null,
  GROUP_NAME VARCHAR2(100) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.MEANING_GROUP_INFO
  is '���������';
comment on column METABASE.MEANING_GROUP_INFO.ID
  is '���б�ţ�ʹ��MEANING_GROUP_INFO_ID_SEQ';
comment on column METABASE.MEANING_GROUP_INFO.GROUP_ID
  is '����������';
comment on column METABASE.MEANING_GROUP_INFO.GROUP_NAME
  is '������������';
alter table METABASE.MEANING_GROUP_INFO
  add constraint PK144 primary key (GROUP_ID)
  using index 
  tablespace METABASE
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
prompt Creating table MEMO_DOC
prompt =======================
prompt
create table METABASE.MEMO_DOC
(
  REPORT_ID     VARCHAR2(50) not null,
  MEMO_TYPE     VARCHAR2(10) not null,
  MEMO_DOC      BLOB,
  MEMO_DOC_NAME VARCHAR2(128),
  CREATE_DATE   VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.MEMO_DOC
  is '�˵���ĵ�';
comment on column METABASE.MEMO_DOC.REPORT_ID
  is '���� ID';
comment on column METABASE.MEMO_DOC.MEMO_TYPE
  is '�˵�����ͣ�public Ϊ�ƶ��˵����private Ϊ�����˵��';
comment on column METABASE.MEMO_DOC.MEMO_DOC
  is '�ĵ�����';
comment on column METABASE.MEMO_DOC.MEMO_DOC_NAME
  is '�ĵ�����';
comment on column METABASE.MEMO_DOC.CREATE_DATE
  is '��������';
alter table METABASE.MEMO_DOC
  add constraint PK_MEMO_DOC primary key (REPORT_ID, MEMO_TYPE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table OPER_LOG1
prompt ========================
prompt
create table METABASE.OPER_LOG1
(
  REPORT_ID VARCHAR2(30) not null,
  BASE_DIM1 VARCHAR2(20) not null,
  BASE_DIM2 VARCHAR2(20),
  BASE_DIM3 VARCHAR2(20),
  BASE_DIM4 VARCHAR2(20),
  BASE_DIM5 VARCHAR2(20),
  OPER_ID   VARCHAR2(20) not null,
  USER_ID   VARCHAR2(20),
  LOG_TIME  DATE not null,
  LOG_MEMO  VARCHAR2(500),
  ID        NUMBER(19) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 320K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.OPER_LOG1
  is '���������־��Ϣ��';
comment on column METABASE.OPER_LOG1.REPORT_ID
  is '������';
comment on column METABASE.OPER_LOG1.BASE_DIM1
  is '����ά��1��������Ϣ';
comment on column METABASE.OPER_LOG1.BASE_DIM2
  is '����ά��2��ͨ����ʱ�䣬��������ڱ��ֵĻ������ű���';
comment on column METABASE.OPER_LOG1.BASE_DIM3
  is '����ά��3��ͨ��Ϊ�գ���������ڱ��ֵĻ�������ʱ��';
comment on column METABASE.OPER_LOG1.BASE_DIM4
  is '����ά��4�������ֶ�';
comment on column METABASE.OPER_LOG1.BASE_DIM5
  is '����ά��5�������ֶ�';
comment on column METABASE.OPER_LOG1.OPER_ID
  is '�������';
comment on column METABASE.OPER_LOG1.USER_ID
  is '�û����';
comment on column METABASE.OPER_LOG1.LOG_TIME
  is '��¼��־��ʱ��';
comment on column METABASE.OPER_LOG1.LOG_MEMO
  is '��־��ϸ��Ϣ';
comment on column METABASE.OPER_LOG1.ID
  is '���б�ţ�ʹ��OPER_LOG_ID_SEQ';
alter table METABASE.OPER_LOG1
  add constraint PK_OPER_LOG1 primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table OPER_META
prompt ========================
prompt
create table METABASE.OPER_META
(
  OPER_ID           VARCHAR2(20) not null,
  OPER_ORDER        NUMBER,
  ID                NUMBER(19) not null,
  OPER_NAME         VARCHAR2(40) not null,
  RESULT_STATUS     VARCHAR2(10),
  LOGIC_TYPE        VARCHAR2(20),
  NEED_LOCK         CHAR(1),
  FAIL_STATUS       VARCHAR2(10),
  IS_DEFAULT        CHAR(1),
  NEED_LOG          CHAR(1),
  NEED_LOG_MEMO     CHAR(1),
  IS_RECALCHEADFOOT CHAR(1),
  STATUS_FIELD      VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.OPER_META
  is '������Ϣ��';
comment on column METABASE.OPER_META.OPER_ID
  is '��������';
comment on column METABASE.OPER_META.OPER_ORDER
  is '����˳��';
comment on column METABASE.OPER_META.ID
  is '���б�ţ�ʹ��OPER_META_ID_SEQ';
comment on column METABASE.OPER_META.OPER_NAME
  is '��������';
comment on column METABASE.OPER_META.RESULT_STATUS
  is '�ɹ�״̬.';
comment on column METABASE.OPER_META.LOGIC_TYPE
  is '�߼�����';
comment on column METABASE.OPER_META.NEED_LOCK
  is '�Ƿ���Ҫ��';
comment on column METABASE.OPER_META.FAIL_STATUS
  is 'ʧ��״̬.';
comment on column METABASE.OPER_META.IS_DEFAULT
  is '�Ƿ��Ǳ����Ĭ�ϲ���';
comment on column METABASE.OPER_META.NEED_LOG
  is '�Ƿ��¼��־';
comment on column METABASE.OPER_META.NEED_LOG_MEMO
  is '�Ƿ���Ҫ��־˵��';
comment on column METABASE.OPER_META.IS_RECALCHEADFOOT
  is '�ò����Ƿ���Ҫ�����ͷ��β';
comment on column METABASE.OPER_META.STATUS_FIELD
  is '�����ͷ��βʱ��report_status_info������ֶε�����';
alter table METABASE.OPER_META
  add constraint PK_OPER_ID primary key (OPER_ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.UNI_IDX_OPER_META_ID on METABASE.OPER_META (ID)
  tablespace METABASE
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
prompt Creating table ORGANIZATION_OTHER
prompt =================================
prompt
create table METABASE.ORGANIZATION_OTHER
(
  ID                   NUMBER(19) not null,
  ORGANIZATION_ID      VARCHAR2(30),
  ORGANIZATION_OTHER1  VARCHAR2(30),
  ORGANIZATION_OTHER2  VARCHAR2(30),
  ORGANIZATION_OTHER3  VARCHAR2(30),
  ORGANIZATION_OTHER4  VARCHAR2(30),
  ORGANIZATION_OTHER5  VARCHAR2(30),
  ORGANIZATION_OTHER6  VARCHAR2(30),
  ORGANIZATION_OTHER7  VARCHAR2(30),
  ORGANIZATION_OTHER8  VARCHAR2(30),
  ORGANIZATION_OTHER9  VARCHAR2(30),
  ORGANIZATION_OTHER10 VARCHAR2(30),
  ORGANIZATION_OTHER11 VARCHAR2(30),
  ORGANIZATION_OTHER12 VARCHAR2(30)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.ORGANIZATION_OTHER
  is '�����ѷ�����ȷ��';
alter table METABASE.ORGANIZATION_OTHER
  add constraint UK176 unique (ID)
  using index 
  tablespace METABASE
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
prompt Creating table PARAM_GROUP
prompt ==========================
prompt
create table METABASE.PARAM_GROUP
(
  GROUP_ID   VARCHAR2(20) not null,
  GROUP_NAME VARCHAR2(40),
  ORDER_NO   NUMBER default 9
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.PARAM_GROUP
  is 'ϵͳ���ò�������';
comment on column METABASE.PARAM_GROUP.GROUP_ID
  is '������';
comment on column METABASE.PARAM_GROUP.GROUP_NAME
  is '����������';
comment on column METABASE.PARAM_GROUP.ORDER_NO
  is '��˳����';
alter table METABASE.PARAM_GROUP
  add constraint PK_GROUP_ID primary key (GROUP_ID)
  using index 
  tablespace METABASE
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
prompt Creating table PARAM_ITEM
prompt =========================
prompt
create table METABASE.PARAM_ITEM
(
  PARAM_ID       NUMBER not null,
  PARAM_GROUP    VARCHAR2(20) default 'PARAM_GENERAL' not null,
  PARAM_ENAME    VARCHAR2(50) not null,
  PARAM_CNAME    VARCHAR2(100) not null,
  SELECTED_VALUE VARCHAR2(200) not null,
  VALUE_LIST     VARCHAR2(1024),
  IS_MODIFY      VARCHAR2(10) default 'true' not null,
  IS_VISIBLE     VARCHAR2(10) default 'true' not null,
  ORDER_NUM      NUMBER(19) default 9,
  TAG_TYPE       VARCHAR2(10) default 'text',
  DEFAULT_VALUE  VARCHAR2(200) not null,
  PARAM_DESC     VARCHAR2(1000)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.PARAM_ITEM
  is 'ϵͳ���ò�����';
comment on column METABASE.PARAM_ITEM.PARAM_ID
  is '�������';
comment on column METABASE.PARAM_ITEM.PARAM_GROUP
  is '���������';
comment on column METABASE.PARAM_ITEM.PARAM_ENAME
  is '������Ӣ����';
comment on column METABASE.PARAM_ITEM.PARAM_CNAME
  is '������������';
comment on column METABASE.PARAM_ITEM.SELECTED_VALUE
  is '����ѡ��ֵ';
comment on column METABASE.PARAM_ITEM.VALUE_LIST
  is '����ֵ�б�';
comment on column METABASE.PARAM_ITEM.IS_MODIFY
  is '�Ƿ���޸�';
comment on column METABASE.PARAM_ITEM.IS_VISIBLE
  is '�Ƿ�ɼ�';
comment on column METABASE.PARAM_ITEM.ORDER_NUM
  is '������';
comment on column METABASE.PARAM_ITEM.TAG_TYPE
  is '��ǩ����';
comment on column METABASE.PARAM_ITEM.DEFAULT_VALUE
  is 'ȱʡֵ';
comment on column METABASE.PARAM_ITEM.PARAM_DESC
  is '��������';
alter table METABASE.PARAM_ITEM
  add constraint PK_PARAM_ITEM primary key (PARAM_ID)
  using index 
  tablespace METABASE
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
alter table METABASE.PARAM_ITEM
  add constraint PK_PARAM_GROUP foreign key (PARAM_GROUP)
  references METABASE.PARAM_GROUP (GROUP_ID);

prompt
prompt Creating table REPORTER_FUNCTION
prompt ================================
prompt
create table METABASE.REPORTER_FUNCTION
(
  FUNCTION_ID        VARCHAR2(50) not null,
  FUNCTION_NAME      VARCHAR2(200) not null,
  ORDER_NO           NUMBER default 1 not null,
  PARENT_FUNCTION_ID VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.REPORTER_FUNCTION.FUNCTION_ID
  is '����id';
comment on column METABASE.REPORTER_FUNCTION.FUNCTION_NAME
  is '��������';
comment on column METABASE.REPORTER_FUNCTION.ORDER_NO
  is '˳���';
comment on column METABASE.REPORTER_FUNCTION.PARENT_FUNCTION_ID
  is '������id';
alter table METABASE.REPORTER_FUNCTION
  add constraint PK_REPORTER_FUNCTION primary key (FUNCTION_ID)
  using index 
  tablespace METABASE
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
prompt Creating table REPORTUPLOAD_TEMPLATE
prompt ====================================
prompt
create table METABASE.REPORTUPLOAD_TEMPLATE
(
  ID               VARCHAR2(100) not null,
  TEMPLATE_CONTENT BLOB
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_ALARM_INFO
prompt ================================
prompt
create table METABASE.REPORT_ALARM_INFO
(
  REPORT_ID   VARCHAR2(30) not null,
  FREQ_ID     VARCHAR2(30) not null,
  INDEX_ID    VARCHAR2(100) not null,
  DATA_ATTR   VARCHAR2(20) not null,
  CURR_ID     VARCHAR2(20) not null,
  ALARM_TYPE  VARCHAR2(10) not null,
  BEGIN_VALUE NUMBER not null,
  END_VALUE   NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
  );
comment on column METABASE.REPORT_ALARM_INFO.REPORT_ID
  is '����ID';
comment on column METABASE.REPORT_ALARM_INFO.FREQ_ID
  is 'Ƶ��ID';
comment on column METABASE.REPORT_ALARM_INFO.INDEX_ID
  is 'ָ��ID';
comment on column METABASE.REPORT_ALARM_INFO.DATA_ATTR
  is '������';
comment on column METABASE.REPORT_ALARM_INFO.CURR_ID
  is '�бұ�';
comment on column METABASE.REPORT_ALARM_INFO.ALARM_TYPE
  is 'Ԥ������ 1 ����ֵ(������)��2 �ٷֱ�(������)��3 ����ֵ��END_VALUE������ֵ��';
comment on column METABASE.REPORT_ALARM_INFO.BEGIN_VALUE
  is '��ʼֵ';
comment on column METABASE.REPORT_ALARM_INFO.END_VALUE
  is '����ֵ';

prompt
prompt Creating table REPORT_ASSIGN
prompt ============================
prompt
create table METABASE.REPORT_ASSIGN
(
  ID            NUMBER(19) not null,
  REPORT_ID     VARCHAR2(30) not null,
  USER_ID       VARCHAR2(32) not null,
  BASE_DIM1     VARCHAR2(10),
  BASE_DIM2     VARCHAR2(10),
  BASE_DIM3     VARCHAR2(10),
  BASE_DIM4     VARCHAR2(10),
  BASE_DIM5     VARCHAR2(10),
  START_DATE    DATE,
  END_DATE      DATE,
  AUDIT_USER_ID VARCHAR2(32)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_ASSIGN
  is '�����ѷ�����ȷ��';
comment on column METABASE.REPORT_ASSIGN.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_ASSIGN.USER_ID
  is '�û�����';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM1
  is '����ά��1';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM2
  is '����ά��2';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM3
  is '����ά��3';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM4
  is '����ά��4';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM5
  is '����ά��4';
comment on column METABASE.REPORT_ASSIGN.START_DATE
  is '��ʼ����';
comment on column METABASE.REPORT_ASSIGN.END_DATE
  is '��������';
comment on column METABASE.REPORT_ASSIGN.AUDIT_USER_ID
  is '����˴���';
alter table METABASE.REPORT_ASSIGN
  add constraint PK40 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF615 on METABASE.REPORT_ASSIGN (REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_BATCH_GROUP
prompt =================================
prompt
create table METABASE.REPORT_BATCH_GROUP
(
  ID          NUMBER,
  SYSTEM_ID   VARCHAR2(20),
  BATCH_NAME  VARCHAR2(200),
  BATCH_NO    NUMBER(2),
  BATCH_CODE  VARCHAR2(100) not null,
  FREQ_ID     VARCHAR2(10),
  TIME_LIMIT  NUMBER(2),
  ENABLED     CHAR(1),
  REPORT_MEMO VARCHAR2(4000)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_BATCH_GROUP
  is '�����ѷ�����ȷ��';
comment on column METABASE.REPORT_BATCH_GROUP.SYSTEM_ID
  is 'ϵͳ��';
comment on column METABASE.REPORT_BATCH_GROUP.BATCH_NAME
  is '����������';
comment on column METABASE.REPORT_BATCH_GROUP.BATCH_NO
  is '����';
comment on column METABASE.REPORT_BATCH_GROUP.BATCH_CODE
  is '���������';
comment on column METABASE.REPORT_BATCH_GROUP.FREQ_ID
  is 'Ƶ��';
comment on column METABASE.REPORT_BATCH_GROUP.TIME_LIMIT
  is '��������';
comment on column METABASE.REPORT_BATCH_GROUP.ENABLED
  is 'Y/N ���ñ�ʾ';
comment on column METABASE.REPORT_BATCH_GROUP.REPORT_MEMO
  is '�˵��';
alter table METABASE.REPORT_BATCH_GROUP
  add constraint PK_RBG_CODE primary key (BATCH_CODE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_BATCH_MEMBER
prompt ==================================
prompt
create table METABASE.REPORT_BATCH_MEMBER
(
  ID         NUMBER,
  BATCH_CODE VARCHAR2(100),
  REPORT_ID  VARCHAR2(30),
  BASE_ITEM1 VARCHAR2(10),
  BASE_ITEM2 VARCHAR2(10),
  BASE_ITEM3 VARCHAR2(10),
  BASE_ITEM4 VARCHAR2(10),
  BASE_ITEM5 VARCHAR2(10),
  IS_UNPACK  VARCHAR2(2)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_BATCH_MEMBER
  is '�����ѷ�����ȷ��';

prompt
prompt Creating table REPORT_BMESSAGE
prompt ==============================
prompt
create table METABASE.REPORT_BMESSAGE
(
  ID                 NUMBER(19) not null,
  MESSAGE_BULLETINID NUMBER(19) not null,
  MESSAGE_CONTENT    VARCHAR2(100) not null,
  MESSAGE_DATE       VARCHAR2(20),
  MESSAGE_USER       VARCHAR2(30)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_BMESSAGE
  is '���淴����Ϣ��';
comment on column METABASE.REPORT_BMESSAGE.ID
  is '���б�ţ�ʹ��REPORT_BMESSAGE_ID_SEQ';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_BULLETINID
  is '������';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_CONTENT
  is '��������';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_DATE
  is '��������';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_USER
  is '�����û�';
alter table METABASE.REPORT_BMESSAGE
  add constraint UK169 unique (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_BULLETIN
prompt ==============================
prompt
create table METABASE.REPORT_BULLETIN
(
  ID               NUMBER(19) not null,
  BULLETIN_ID      VARCHAR2(30) not null,
  BULLETIN_NAME    VARCHAR2(100) not null,
  BULLETIN_TYPE    VARCHAR2(30) not null,
  BULLETIN_BANKID  VARCHAR2(30) not null,
  BULLETIN_FBANKID VARCHAR2(30) not null,
  BULLETIN_REMARK  VARCHAR2(500) not null,
  BULLETIN_DATE    DATE,
  BULLETIN_SHOW    CHAR(1),
  BULLETIN_USER    VARCHAR2(30),
  BULLETIN_FILE    VARCHAR2(255)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_BULLETIN
  is '��������Ϣ��';
comment on column METABASE.REPORT_BULLETIN.ID
  is '���б�ţ�ʹ��REPORT_BULLETIN_ID_SEQ';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_ID
  is '������';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_NAME
  is '��������';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_TYPE
  is '��������';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_BANKID
  is '�������';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_FBANKID
  is '���ͻ������';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_REMARK
  is '��ע';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_DATE
  is '��������';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_SHOW
  is '�Ƿ���ʾ';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_USER
  is '�û����';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_FILE
  is '���渽��';
alter table METABASE.REPORT_BULLETIN
  add constraint REPORT_BULLETIN primary key (BULLETIN_ID)
  disable;
alter table METABASE.REPORT_BULLETIN
  add constraint UK168 unique (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_BULLETIN_FILE
prompt ===================================
prompt
create table METABASE.REPORT_BULLETIN_FILE
(
  BULLETIN_ID NUMBER(19) not null,
  FILE_ID     NUMBER(19) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_BULLETIN_FILE
  is '������Ϣ�����ǼǱ�';
comment on column METABASE.REPORT_BULLETIN_FILE.BULLETIN_ID
  is '������';
comment on column METABASE.REPORT_BULLETIN_FILE.FILE_ID
  is '�������';

prompt
prompt Creating table REPORT_CELL_REMARK
prompt =================================
prompt
create table METABASE.REPORT_CELL_REMARK
(
  REPORT_ID         VARCHAR2(200) not null,
  ID                NUMBER not null,
  ROW_NUM           NUMBER not null,
  COL_NUM           NUMBER not null,
  ROW_REMARK        VARCHAR2(200),
  COL_REMARK        VARCHAR2(200),
  REPORT_CALIBRE_ID NUMBER
)
tablespace METABASE
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
comment on table METABASE.REPORT_CELL_REMARK
  is '����Ԫ��ע��Ϣ��';
comment on column METABASE.REPORT_CELL_REMARK.REPORT_ID
  is '������';
comment on column METABASE.REPORT_CELL_REMARK.ID
  is '���б�ţ�ʹ��REPORT_CELL_REMARK_ID_SEQ';
comment on column METABASE.REPORT_CELL_REMARK.ROW_NUM
  is '�к�';
comment on column METABASE.REPORT_CELL_REMARK.COL_NUM
  is '�к�';
comment on column METABASE.REPORT_CELL_REMARK.ROW_REMARK
  is '������';
comment on column METABASE.REPORT_CELL_REMARK.COL_REMARK
  is '������';
comment on column METABASE.REPORT_CELL_REMARK.REPORT_CALIBRE_ID
  is '�ھ����';
alter table METABASE.REPORT_CELL_REMARK
  add constraint RPKRCR primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_CELL_REMARK
  add constraint FK_REMARK_CALIBRE foreign key (REPORT_CALIBRE_ID)
  references METABASE.REPORT_CALIBRE (ID)
  disable;

prompt
prompt Creating table REPORT_CLASS
prompt ===========================
prompt
create table METABASE.REPORT_CLASS
(
  ID        NUMBER(19) not null,
  REPORT_ID VARCHAR2(30) not null,
  CLASS_ID  VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_CLASS
  is '�����ѷ�����ȷ��';
comment on column METABASE.REPORT_CLASS.REPORT_ID
  is '�������';
alter table METABASE.REPORT_CLASS
  add constraint PK96 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF3913 on METABASE.REPORT_CLASS (CLASS_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF614 on METABASE.REPORT_CLASS (REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_COLLECTION_DOWN_FILE
prompt ==========================================
prompt
create table METABASE.REPORT_COLLECTION_DOWN_FILE
(
  SEND_FILE_SET_ID VARCHAR2(20) not null,
  TASK_ID          VARCHAR2(50) not null,
  FILE_TYPE        VARCHAR2(10) not null,
  DOWN_FILE        BLOB not null,
  DOWN_FILE_NAME   VARCHAR2(50) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_COLLECTION_DOWN_FILE
  is '���ļ������ļ�';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.SEND_FILE_SET_ID
  is '���ļ����';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.TASK_ID
  is '������';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.FILE_TYPE
  is '�ļ����ͣ�0 EXCEL 1 XML';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.DOWN_FILE
  is '�����ļ�';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.DOWN_FILE_NAME
  is '�ļ�����';
alter table METABASE.REPORT_COLLECTION_DOWN_FILE
  add constraint PK_REPORT_DOWN_FILE primary key (SEND_FILE_SET_ID, TASK_ID, FILE_TYPE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_COLLECTION_DOWN_SET
prompt =========================================
prompt
create table METABASE.REPORT_COLLECTION_DOWN_SET
(
  SEND_FILE_SET_ID      VARCHAR2(20) not null,
  TASK_ID               VARCHAR2(50) not null,
  REPORT_DOWN_SET_STATE VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_COLLECTION_DOWN_SET
  is '���ļ�����';
comment on column METABASE.REPORT_COLLECTION_DOWN_SET.SEND_FILE_SET_ID
  is '���ļ����';
comment on column METABASE.REPORT_COLLECTION_DOWN_SET.TASK_ID
  is '������';
comment on column METABASE.REPORT_COLLECTION_DOWN_SET.REPORT_DOWN_SET_STATE
  is '״̬��0 ������ 1 �������';
alter table METABASE.REPORT_COLLECTION_DOWN_SET
  add constraint PK_REPORT_DOWN_SET primary key (SEND_FILE_SET_ID, TASK_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_COMMON_FORMULA
prompt ====================================
prompt
create table METABASE.REPORT_COMMON_FORMULA
(
  ID                INTEGER not null,
  REPORT_ID         VARCHAR2(20) not null,
  REPORT_CALIBRE_ID INTEGER not null,
  FORMULA_CH_INFO   VARCHAR2(2000),
  FORMULA_CONTENT   CLOB,
  OPER_ID           VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_COMMON_FORMULA
  is '�������ʽ��Ϣ��';
comment on column METABASE.REPORT_COMMON_FORMULA.ID
  is '���б�ţ�ʹ��REPORT_COMMON_FORMULA_ID_SEQ';
comment on column METABASE.REPORT_COMMON_FORMULA.REPORT_ID
  is '������';
comment on column METABASE.REPORT_COMMON_FORMULA.REPORT_CALIBRE_ID
  is '�ھ����';
comment on column METABASE.REPORT_COMMON_FORMULA.FORMULA_CH_INFO
  is '��ʽ��������';
comment on column METABASE.REPORT_COMMON_FORMULA.FORMULA_CONTENT
  is '��ʽ����';
comment on column METABASE.REPORT_COMMON_FORMULA.OPER_ID
  is '��ʽ����';
alter table METABASE.REPORT_COMMON_FORMULA
  add primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_COMMON_FORMULA
  add constraint UK_COMMON_FML unique (REPORT_CALIBRE_ID, OPER_ID)
  using index 
  tablespace METABASE
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
prompt Creating table REPORT_CRASH
prompt ===========================
prompt
create table METABASE.REPORT_CRASH
(
  ID                  NUMBER(19) not null,
  REPORT_ID           VARCHAR2(30) not null,
  START_DATE          DATE not null,
  END_DATE            DATE,
  DIM_VALUE           VARCHAR2(40),
  CRASHED_REPORT_NAME VARCHAR2(60) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_CRASH
  is '���������Ϣ��';
comment on column METABASE.REPORT_CRASH.ID
  is '���б�ţ�ʹ��REPORT_CRASH_ID_SEQ';
comment on column METABASE.REPORT_CRASH.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_CRASH.START_DATE
  is '�ھ���ʼ����';
comment on column METABASE.REPORT_CRASH.END_DATE
  is '��������';
comment on column METABASE.REPORT_CRASH.DIM_VALUE
  is '�����ά��ֵ';
comment on column METABASE.REPORT_CRASH.CRASHED_REPORT_NAME
  is '����������������';
alter table METABASE.REPORT_CRASH
  add constraint PK__CRASH primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_CRASH
  add constraint FK_REPORT_CRASH_REPORT_ID foreign key (REPORT_ID)
  references METABASE.REPORT_META (REPORT_ID)
  disable;
create index METABASE.REF626 on METABASE.REPORT_CRASH (REPORT_ID)
  tablespace METABASE
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
prompt Creating table REPORT_CREATER_RELA
prompt ==================================
prompt
create table METABASE.REPORT_CREATER_RELA
(
  REPORT_ID VARCHAR2(30) not null,
  USER_ID   VARCHAR2(30) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_CREATER_RELA
  is '����������Ϣ��';
comment on column METABASE.REPORT_CREATER_RELA.REPORT_ID
  is '������';
comment on column METABASE.REPORT_CREATER_RELA.USER_ID
  is '�û����';
alter table METABASE.REPORT_CREATER_RELA
  add constraint PK_R_C_R_REPORT_ID primary key (REPORT_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_CURR
prompt ==========================
prompt
create table METABASE.REPORT_CURR
(
  ID              NUMBER(19) not null,
  REPORT_ID       VARCHAR2(30) not null,
  CURR_ID         VARCHAR2(12) not null,
  END_DATE        DATE,
  START_DATE      DATE,
  ITEM_STACK_CODE VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_CURR
  is '������ֹ�ϵ��';
comment on column METABASE.REPORT_CURR.ID
  is '���б�ţ�ʹ��REPORT_CURR_ID_SEQ';
comment on column METABASE.REPORT_CURR.REPORT_ID
  is '������';
comment on column METABASE.REPORT_CURR.CURR_ID
  is '���ִ���';
comment on column METABASE.REPORT_CURR.END_DATE
  is '��������';
comment on column METABASE.REPORT_CURR.START_DATE
  is '��ʼ����';
comment on column METABASE.REPORT_CURR.ITEM_STACK_CODE
  is '�����ֶ�';
alter table METABASE.REPORT_CURR
  add constraint PK_REPORT_CURR primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_CURR
  add constraint REFITEM_STACK_INFO55 foreign key (ITEM_STACK_CODE)
  references METABASE.ITEM_STACK_INFO (ITEM_STACK_CODE)
  disable;
create index METABASE.REF256 on METABASE.REPORT_CURR (CURR_ID)
  tablespace METABASE
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
create index METABASE.REF61 on METABASE.REPORT_CURR (REPORT_ID)
  tablespace METABASE
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
create index METABASE.REF7255 on METABASE.REPORT_CURR (ITEM_STACK_CODE)
  tablespace METABASE
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
prompt Creating table REPORT_EDIT_LOCK_INFO
prompt ====================================
prompt
create table METABASE.REPORT_EDIT_LOCK_INFO
(
  ID            NUMBER(19) not null,
  REPORT_ID     VARCHAR2(40) not null,
  BANK_ID       VARCHAR2(20) not null,
  REPORT_DATE   VARCHAR2(10) not null,
  GRANT_USER_ID VARCHAR2(32) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_EDIT_LOCK_INFO
  is '�����ѷ�����ȷ��';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.ID
  is 'ID';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.BANK_ID
  is '��������';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.REPORT_DATE
  is '��������';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.GRANT_USER_ID
  is '��Ȩ�˴���';
alter table METABASE.REPORT_EDIT_LOCK_INFO
  add constraint PK_RELI primary key (REPORT_ID, BANK_ID, REPORT_DATE)
  using index 
  tablespace METABASE
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
create index METABASE.INDEX_REPORT_EDIT_LOCK_INFO on METABASE.REPORT_EDIT_LOCK_INFO (ID)
  tablespace METABASE
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
prompt Creating table REPORT_FILEUPLOAD
prompt ================================
prompt
create table METABASE.REPORT_FILEUPLOAD
(
  ID               NUMBER(19) not null,
  FILE_NEWNAME     VARCHAR2(50),
  FILE_REALLYNAME  VARCHAR2(100),
  FILE_POSTFIXNAME VARCHAR2(10),
  FILE_LOCALPATH   VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_FILEUPLOAD
  is '������Ϣ������';
comment on column METABASE.REPORT_FILEUPLOAD.ID
  is '���б�ţ�ʹ��REPORT_FILEUPLOAD_ID_SEQ';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_NEWNAME
  is '�ļ��ϴ��������';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_REALLYNAME
  is '�ļ��ϴ�֮ǰ������';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_POSTFIXNAME
  is '�ļ���չ��';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_LOCALPATH
  is '�ļ����·��';
alter table METABASE.REPORT_FILEUPLOAD
  add constraint UK171 unique (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_FORCE_CHECK_VERIFY_LOG
prompt ============================================
prompt
create table METABASE.REPORT_FORCE_CHECK_VERIFY_LOG
(
  TASK_ID     VARCHAR2(50) not null,
  REPORT_ID   VARCHAR2(30) not null,
  REPORT_CH   VARCHAR2(200) not null,
  BANK_ID     VARCHAR2(50) not null,
  REPORT_DATE VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.TASK_ID
  is '����ID';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_ID
  is '����ID';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_CH
  is '������������';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.BANK_ID
  is '��������';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_DATE
  is '��������';

prompt
prompt Creating table REPORT_FORMULA
prompt =============================
prompt
create table METABASE.REPORT_FORMULA
(
  ID                NUMBER(38) not null,
  ROW_START         NUMBER(38) not null,
  ROW_END           NUMBER(38) not null,
  COL_START         NUMBER(38) not null,
  COL_END           NUMBER(38) not null,
  FORMULA_TYPE      VARCHAR2(50) not null,
  REPORT_ID         VARCHAR2(30) not null,
  REPORT_CALIBRE_ID NUMBER
)
tablespace METABASE
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
comment on table METABASE.REPORT_FORMULA
  is 'pv�ͱ���Ĺ�ʽλ����Ϣ��';
comment on column METABASE.REPORT_FORMULA.ID
  is '���б�ţ�ʹ��REPORT_FORMULA_ID_SEQ';
comment on column METABASE.REPORT_FORMULA.ROW_START
  is '�п�ʼ��';
comment on column METABASE.REPORT_FORMULA.ROW_END
  is '�н�����';
comment on column METABASE.REPORT_FORMULA.COL_START
  is '�п�ʼ��';
comment on column METABASE.REPORT_FORMULA.COL_END
  is '�н�����';
comment on column METABASE.REPORT_FORMULA.FORMULA_TYPE
  is '���ֶε�ֵformula_type��ͼ��';
comment on column METABASE.REPORT_FORMULA.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_FORMULA.REPORT_CALIBRE_ID
  is '����ھ����';
alter table METABASE.REPORT_FORMULA
  add constraint PK3 primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_FORMULA
  add constraint FK_FORMULA_CALIBRE_ID foreign key (REPORT_CALIBRE_ID)
  references METABASE.REPORT_CALIBRE (ID)
  disable;
create index METABASE.REF62 on METABASE.REPORT_FORMULA (REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table REPORT_FORMULA_BASE
prompt ==================================
prompt
create table METABASE.REPORT_FORMULA_BASE
(
  ID                NUMBER(38) not null,
  REPORT_FORMULA_ID NUMBER(38) not null,
  VAR_NAME          VARCHAR2(30),
  FORMULA_CODE      VARCHAR2(4000),
  FORMULA_CH        VARCHAR2(4000),
  FORMULA_ORDER     NUMBER(38),
  FORMULA_TYPE      VARCHAR2(30),
  FORMULA_GROUP     NUMBER default 1,
  FORMULA_CH_INFO   VARCHAR2(3000),
  FORMULA_CONTENT   CLOB,
  IS_SYSTEM         VARCHAR2(1) default 'N',
  IS_EFFECT         VARCHAR2(1) default 'Y'
)
tablespace METABASE
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
comment on table METABASE.REPORT_FORMULA_BASE
  is 'pv���ͱ���Ĺ�ʽ��Ϣ��';
comment on column METABASE.REPORT_FORMULA_BASE.ID
  is '���б�ţ�ʹ��REPORT_FORMULA_BASE_ID_SEQ';
comment on column METABASE.REPORT_FORMULA_BASE.REPORT_FORMULA_ID
  is '��ʽ��λ�ñ�ţ�����report_formula�������';
comment on column METABASE.REPORT_FORMULA_BASE.VAR_NAME
  is '��ʽ��������';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CODE
  is '��ʽ����α����';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CH
  is '��ʽ��������';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_ORDER
  is '˳���ʶ,������С����';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_TYPE
  is '��ʽ����(�����/��Ʊ�/���ɱ�/����(������ϱ���))';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_GROUP
  is '��ʽ���';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CH_INFO
  is '����ʽ��У�鹫ʽʱ,ת���ɵĿͻ��������Ĺ�JI��ϵ.';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CONTENT
  is '��ʽ����';
comment on column METABASE.REPORT_FORMULA_BASE.IS_SYSTEM
  is 'Y/N  �Ƿ����ƶ�';
comment on column METABASE.REPORT_FORMULA_BASE.IS_EFFECT
  is '�Ƿ���Ч';
alter table METABASE.REPORT_FORMULA_BASE
  add constraint PK_ID primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_FORMULA_BASE
  add constraint FK_FID foreign key (REPORT_FORMULA_ID)
  references METABASE.REPORT_FORMULA (ID)
  disable;
create index METABASE.INDEX_REPORT_FORMULA_BASE on METABASE.REPORT_FORMULA_BASE (REPORT_FORMULA_ID)
  tablespace METABASE
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

prompt
prompt Creating table REPORT_IV_FORMULA
prompt ================================
prompt
create table METABASE.REPORT_IV_FORMULA
(
  ID                NUMBER not null,
  INDEX_ID          VARCHAR2(100) not null,
  REPORT_CALIBRE_ID NUMBER not null,
  FORMULA_TYPE      VARCHAR2(50) not null,
  FORMULA_CH        VARCHAR2(3000),
  FORMULA_GROUP     NUMBER default 1 not null,
  FORMULA_CONTENT   CLOB,
  IS_SYSTEM         VARCHAR2(1) default 'N',
  IS_EFFECT         VARCHAR2(1) default 'Y'
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 14M
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_IV_FORMULA
  is 'iv���͵ı���ʽ��Ϣ��';
comment on column METABASE.REPORT_IV_FORMULA.ID
  is '���б�ţ�ʹ��REPORT_IV_FORMULA_ID_SEQ';
comment on column METABASE.REPORT_IV_FORMULA.INDEX_ID
  is 'ָ����';
comment on column METABASE.REPORT_IV_FORMULA.REPORT_CALIBRE_ID
  is '����ھ����';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_TYPE
  is '��ʽ����';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_CH
  is '��ʽ��������';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_GROUP
  is '��ʽ���';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_CONTENT
  is '��ʽ����';
comment on column METABASE.REPORT_IV_FORMULA.IS_SYSTEM
  is '�Ƿ��ƶ�';
comment on column METABASE.REPORT_IV_FORMULA.IS_EFFECT
  is '�Ƿ���Ч';
alter table METABASE.REPORT_IV_FORMULA
  add constraint PK_IV_FORMULA primary key (INDEX_ID, REPORT_CALIBRE_ID, FORMULA_TYPE, FORMULA_GROUP)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_IV_FORMULA
  add constraint FK_IVFORMULA_CALIBRE foreign key (REPORT_CALIBRE_ID)
  references METABASE.REPORT_CALIBRE (ID)
  disable;

prompt
prompt Creating table REPORT_LOCK_INFO
prompt ===============================
prompt
create table METABASE.REPORT_LOCK_INFO
(
  ID         NUMBER(19) not null,
  REPORT_ID  VARCHAR2(30) not null,
  OPER_ID    VARCHAR2(10) not null,
  BASE_DIM1  VARCHAR2(10),
  BASE_DIM2  VARCHAR2(10),
  BASE_DIM3  VARCHAR2(10),
  BASE_DIM4  VARCHAR2(10),
  BASE_DIM5  VARCHAR2(10),
  USER_ID    VARCHAR2(32),
  START_TIME TIMESTAMP(6),
  END_TIME   TIMESTAMP(6)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_LOCK_INFO
  is '�����ѷ�����ȷ��';
comment on column METABASE.REPORT_LOCK_INFO.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_LOCK_INFO.OPER_ID
  is '��������';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM1
  is '����ά��1';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM2
  is '����ά��2';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM3
  is '����ά��3';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM4
  is '����ά��4';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM5
  is '����ά��4';
comment on column METABASE.REPORT_LOCK_INFO.USER_ID
  is '�û�����';
comment on column METABASE.REPORT_LOCK_INFO.START_TIME
  is '����ʼʱ��';
comment on column METABASE.REPORT_LOCK_INFO.END_TIME
  is '�������ʱ��';
alter table METABASE.REPORT_LOCK_INFO
  add constraint PK50_1 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF5724 on METABASE.REPORT_LOCK_INFO (OPER_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF620 on METABASE.REPORT_LOCK_INFO (REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_MEMO
prompt ==========================
prompt
create table METABASE.REPORT_MEMO
(
  ID                    NUMBER not null,
  REPORT_ID             VARCHAR2(50) not null,
  REPORT_REMARK         VARCHAR2(2000),
  PRIVATE_REPORT_REMARK VARCHAR2(2000),
  MODIFY_DATE           VARCHAR2(20),
  RESPONSIBLE_USER      VARCHAR2(50),
  ACTION_USER           VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_MEMO
  is '����ע��Ϣ��';
comment on column METABASE.REPORT_MEMO.ID
  is '���б�ţ�ʹ��REPORT_MEMO_ID_SEQ';
comment on column METABASE.REPORT_MEMO.REPORT_ID
  is '������';
comment on column METABASE.REPORT_MEMO.REPORT_REMARK
  is '����ע��Ϣ';
comment on column METABASE.REPORT_MEMO.MODIFY_DATE
  is '�޸�����';
comment on column METABASE.REPORT_MEMO.RESPONSIBLE_USER
  is '������';
comment on column METABASE.REPORT_MEMO.ACTION_USER
  is '������';
alter table METABASE.REPORT_MEMO
  add constraint PK_REPROT_MEMO_ID primary key (REPORT_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_MODIFY_LOG
prompt ================================
prompt
create table METABASE.REPORT_MODIFY_LOG
(
  ID          INTEGER not null,
  USER_ID     VARCHAR2(20) not null,
  REPORT_ID   VARCHAR2(30) not null,
  BASE_DIM1   VARCHAR2(500) not null,
  BASE_DIM2   VARCHAR2(500),
  BASE_DIM3   VARCHAR2(500),
  BASE_DIM4   VARCHAR2(500),
  BASE_DIM5   VARCHAR2(500),
  POSITION_X  INTEGER,
  POSITION_Y  INTEGER,
  PRE_VALUE   VARCHAR2(500),
  AFT_VALUE   VARCHAR2(500),
  REASON      VARCHAR2(2000) not null,
  MODIFY_TIME VARCHAR2(50) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_MODIFY_LOG
  is '���������޸���ʷ��¼��';
comment on column METABASE.REPORT_MODIFY_LOG.ID
  is '���б�ţ�ʹ��REPORT_MODIFY_LOG_SEQ';
comment on column METABASE.REPORT_MODIFY_LOG.USER_ID
  is '�û����';
comment on column METABASE.REPORT_MODIFY_LOG.REPORT_ID
  is '������';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM1
  is '����ά��1���������';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM2
  is '����ά��2��ͨ����ʱ�䣬����б���ά�ȣ����ű��ֱ��';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM3
  is '����ά��3��ͨ��Ϊ�գ�����б���ά�ȣ�����ʱ��';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM4
  is '����ά��4';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM5
  is '����ά��5';
comment on column METABASE.REPORT_MODIFY_LOG.POSITION_X
  is 'x����';
comment on column METABASE.REPORT_MODIFY_LOG.POSITION_Y
  is 'y����';
comment on column METABASE.REPORT_MODIFY_LOG.PRE_VALUE
  is '�޸�ǰ��ֵ';
comment on column METABASE.REPORT_MODIFY_LOG.AFT_VALUE
  is '�޸ĺ��ֵ';
comment on column METABASE.REPORT_MODIFY_LOG.REASON
  is '�޸�ԭ��';
comment on column METABASE.REPORT_MODIFY_LOG.MODIFY_TIME
  is '�޸�ʱ��';
alter table METABASE.REPORT_MODIFY_LOG
  add constraint RML_PK primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.IDX_U_RPT_MODIFY on METABASE.REPORT_MODIFY_LOG (REPORT_ID, BASE_DIM1, BASE_DIM2, BASE_DIM3, POSITION_X, POSITION_Y)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_OPER_RELATION
prompt ===================================
prompt
create table METABASE.REPORT_OPER_RELATION
(
  ID        NUMBER(38) not null,
  REPORT_ID VARCHAR2(30) not null,
  OPER_ID   VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_OPER_RELATION
  is '���������ϵ��';
comment on column METABASE.REPORT_OPER_RELATION.ID
  is '���б�ţ�ʹ��REPORT_OPER_RELATION_ID_SEQ';
comment on column METABASE.REPORT_OPER_RELATION.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_OPER_RELATION.OPER_ID
  is '��������';
alter table METABASE.REPORT_OPER_RELATION
  add constraint PK62 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF5723 on METABASE.REPORT_OPER_RELATION (OPER_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF622 on METABASE.REPORT_OPER_RELATION (REPORT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_OWNER
prompt ===========================
prompt
create table METABASE.REPORT_OWNER
(
  ID         LONG,
  REPORT_ID  VARCHAR2(50),
  OWNER_TYPE VARCHAR2(10),
  OWNER_CODE VARCHAR2(30)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_OWNER
  is '�����ѷ�����ȷ��';
comment on column METABASE.REPORT_OWNER.OWNER_TYPE
  is 'ALL : ȫ�������ݹ�ȥ�����,USER���û�';
comment on column METABASE.REPORT_OWNER.OWNER_CODE
  is '��ص�Code��';

prompt
prompt Creating table REPORT_PARTAKER
prompt ==============================
prompt
create table METABASE.REPORT_PARTAKER
(
  ID        NUMBER(19) not null,
  BANKID    VARCHAR2(20),
  REPORTID  VARCHAR2(30),
  TYPER     VARCHAR2(60),
  RECHECKER VARCHAR2(60),
  PRINCIPAL VARCHAR2(60)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_PARTAKER
  is '�������Ϣ��';
comment on column METABASE.REPORT_PARTAKER.ID
  is '���б�ţ�ʹ��REPORT_PARTAKER_ID_SEQ';
comment on column METABASE.REPORT_PARTAKER.BANKID
  is '�������';
comment on column METABASE.REPORT_PARTAKER.REPORTID
  is '������';
comment on column METABASE.REPORT_PARTAKER.TYPER
  is '���������';
comment on column METABASE.REPORT_PARTAKER.RECHECKER
  is '����������';
comment on column METABASE.REPORT_PARTAKER.PRINCIPAL
  is '����������';
alter table METABASE.REPORT_PARTAKER
  add constraint PK_REPORT_PARTAKER primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_PV_SAVE_FORMAT
prompt ====================================
prompt
create table METABASE.REPORT_PV_SAVE_FORMAT
(
  ROWSTART           NUMBER(38) not null,
  COLSTART           NUMBER(38) not null,
  ROWEND             NUMBER(38) not null,
  COLEND             NUMBER(38) not null,
  EDITABLE           VARCHAR2(10) not null,
  REPORT_ID          VARCHAR2(30) not null,
  IS_COLUMN_SHOW     VARCHAR2(1) not null,
  DISP_LEN           NUMBER(38),
  COLUMN_LEN         NUMBER(38),
  CODE_TYPE          VARCHAR2(20),
  FORMAT_RULES       VARCHAR2(60),
  TRUNCATE_FLAG      VARCHAR2(1),
  ROUND_DIGIT        NUMBER(38),
  CONV_FLAG          VARCHAR2(1),
  PERMIT_CURR_DIVIDE CHAR(1) default 'N',
  COLUMN_FIELD_TYPE  VARCHAR2(1) not null,
  ID                 NUMBER(38) not null,
  REPORT_CALIBRE_ID  NUMBER
)
tablespace METABASE
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
comment on table METABASE.REPORT_PV_SAVE_FORMAT
  is 'pv���ͱ���ĸ�ʽ��Ϣ��';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ROWSTART
  is '��ʼ��';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLSTART
  is '��ʼ��';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ROWEND
  is '�����У�����Ǳ䳤����ϸ��,������Ϊ9999';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLEND
  is '������';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.EDITABLE
  is '�������Ƿ�����༭.Y/N/X(�Ƽ����༭) �����ڱ�����ı༭����ʱ,���к�column_meta.PERMIT_EDIT��ͬһ����˼.                                                                          ';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.IS_COLUMN_SHOW
  is '�Ƿ���ʾ�ֶ�';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.DISP_LEN
  is '��ʾ����';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLUMN_LEN
  is '�ֶγ���';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.CODE_TYPE
  is '�������� ��������������,�赽code_info��Ӧcode_type�������ֵ. ���弶����.';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.FORMAT_RULES
  is '�ֶ���ʾ��ʽ';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.TRUNCATE_FLAG
  is '�Ƿ��λ������������';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ROUND_DIGIT
  is '��������λ��';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.CONV_FLAG
  is '�Ƿ������־';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.PERMIT_CURR_DIVIDE
  is '�������Ƿ���Ӧ�ñ��ֵ����� Y/N .����������Ӧ�����ݿ��е�Ԫת���ɱ�����ʾ����Ԫ. ������Ǳ����оͲ���Ӧ�ô˹���. ������Ҫ�ڱ�����ʾʱ�õ�.';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLUMN_FIELD_TYPE
  is '�ֶ��������� C:������(��code_info��ȡ.���Ŀ��Ž���ʾΪ��Ŀ���ƣ�N:��ֵ�ͣ�����decimal��int��numeric��long��float�ȣ�
S(�ַ���)';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ID
  is '���б�ţ�ʹ��REPORT_PV_SAVE_FORMAT_ID_SEQ';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.REPORT_CALIBRE_ID
  is '�ھ����';
alter table METABASE.REPORT_PV_SAVE_FORMAT
  add constraint PK_REPORT_PV_SAVE_INFO primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_PV_SAVE_FORMAT
  add constraint FK_FORMAT_CALIBRE_ID foreign key (REPORT_CALIBRE_ID)
  references METABASE.REPORT_CALIBRE (ID)
  disable;
alter table METABASE.REPORT_PV_SAVE_FORMAT
  add constraint REFREPORT_META65 foreign key (REPORT_ID)
  references METABASE.REPORT_META (REPORT_ID)
  disable;

prompt
prompt Creating table REPORT_RANGE_RIGHTS
prompt ==================================
prompt
create table METABASE.REPORT_RANGE_RIGHTS
(
  REPORT_ID         VARCHAR2(30) not null,
  START_ROW         NUMBER(38) not null,
  START_COL         NUMBER(38) not null,
  END_ROW           NUMBER(38) not null,
  END_COL           NUMBER(38) not null,
  ID                NUMBER(38) not null,
  USER_ID           VARCHAR2(30),
  USER_GROUP_CODE   VARCHAR2(20),
  IS_PERMIT_EDIT    VARCHAR2(1) default 'Y',
  REPORT_CALIBRE_ID NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.REPORT_RANGE_RIGHTS
  is '��������Ȩ����Ϣ��';
comment on column METABASE.REPORT_RANGE_RIGHTS.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_RANGE_RIGHTS.START_ROW
  is '��ʼ��';
comment on column METABASE.REPORT_RANGE_RIGHTS.START_COL
  is '��ʼ��';
comment on column METABASE.REPORT_RANGE_RIGHTS.END_ROW
  is '�����У� ������report_meta.format_type(�����ʽ����) is C(�䳤��)ʱ,�Զ���Ϊ9999';
comment on column METABASE.REPORT_RANGE_RIGHTS.END_COL
  is '������';
comment on column METABASE.REPORT_RANGE_RIGHTS.ID
  is '���б�ţ�ʹ��REPORT_RANGE_RIGHTS_ID_SEQ';
comment on column METABASE.REPORT_RANGE_RIGHTS.USER_ID
  is '�û����';
comment on column METABASE.REPORT_RANGE_RIGHTS.USER_GROUP_CODE
  is '�û�����';
comment on column METABASE.REPORT_RANGE_RIGHTS.IS_PERMIT_EDIT
  is '�Ƿ���Ա༭����';
comment on column METABASE.REPORT_RANGE_RIGHTS.REPORT_CALIBRE_ID
  is '����ھ����';
alter table METABASE.REPORT_RANGE_RIGHTS
  add constraint PK107 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table REPORT_SEND_DATE
prompt ===============================
prompt
create table METABASE.REPORT_SEND_DATE
(
  ID            NUMBER not null,
  REPORT_ID     VARCHAR2(30) not null,
  SEND_DATE_NUM NUMBER,
  AWOKEDAY      INTEGER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_SEND_DATE
  is '�����ϱ������趨��';
comment on column METABASE.REPORT_SEND_DATE.ID
  is '���б�ţ�ʹ��';
comment on column METABASE.REPORT_SEND_DATE.REPORT_ID
  is '������';
comment on column METABASE.REPORT_SEND_DATE.SEND_DATE_NUM
  is '�ϱ���ʾ����';
comment on column METABASE.REPORT_SEND_DATE.AWOKEDAY
  is '����������';
alter table METABASE.REPORT_SEND_DATE
  add constraint REPORT_SEND_DATE primary key (REPORT_ID)
  using index 
  tablespace METABASE
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
prompt Creating table REPORT_STATUS
prompt ============================
prompt
create table METABASE.REPORT_STATUS
(
  STATUS_ID   VARCHAR2(10) not null,
  ID          NUMBER(38) not null,
  STATUS_NAME VARCHAR2(30),
  CAN_TOTAL   VARCHAR2(1) default 'N'
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_STATUS
  is '����״̬��Ϣ��';
comment on column METABASE.REPORT_STATUS.STATUS_ID
  is '״̬����';
comment on column METABASE.REPORT_STATUS.ID
  is '���б�ţ�ʹ��REPOR_STATU_ID_SEQ';
comment on column METABASE.REPORT_STATUS.STATUS_NAME
  is '״̬����';
comment on column METABASE.REPORT_STATUS.CAN_TOTAL
  is '�ܷ����';
alter table METABASE.REPORT_STATUS
  add constraint PK65 primary key (STATUS_ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.UNI_IDX_REPORT_STATUS_ID on METABASE.REPORT_STATUS (ID)
  tablespace METABASE
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
prompt Creating table REPORT_STATUS_INFO1
prompt ==================================
prompt
create table METABASE.REPORT_STATUS_INFO1
(
  ID              NUMBER(19) not null,
  REPORT_ID       VARCHAR2(30) not null,
  BASE_DIM1       VARCHAR2(20),
  BASE_DIM2       VARCHAR2(20),
  BASE_DIM3       VARCHAR2(20),
  BASE_DIM4       VARCHAR2(20),
  BASE_DIM5       VARCHAR2(20),
  OTHER_DIM       VARCHAR2(10),
  LOCK_FLAG       CHAR(1),
  SB_END_DATE     TIMESTAMP(6),
  SB_COUNT        NUMBER(38),
  STATUS_ID       VARCHAR2(10) not null,
  SB_TIME         TIMESTAMP(6),
  OPER_ID         VARCHAR2(20),
  USER_ID         VARCHAR2(32),
  CURR_USER_ID    VARCHAR2(32),
  AUDIT_USER_ID   VARCHAR2(32),
  RECHECK_USER_ID VARCHAR2(32),
  OPERUSER_1      VARCHAR2(32),
  OPERUSER_2      VARCHAR2(32),
  OPERUSER_3      VARCHAR2(32),
  OPERUSER_4      VARCHAR2(32),
  OPERUSER_5      VARCHAR2(32)
)
tablespace METABASE
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
comment on table METABASE.REPORT_STATUS_INFO1
  is '����״̬��Ϣ��';
comment on column METABASE.REPORT_STATUS_INFO1.ID
  is '���б�ţ�ʹ��REPORT_STATUS_INFO_ID_SEQ';
comment on column METABASE.REPORT_STATUS_INFO1.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM1
  is '����ά��1���������';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM2
  is '����ά��2��ͨ����ʱ�䣬����б���ά�����Ǳ���';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM3
  is '����ά��3��ͨ��Ϊ�գ�����б���ά������ʱ��';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM4
  is '����ά��4�������ֶ�';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM5
  is '����ά��5�������ֶ�';
comment on column METABASE.REPORT_STATUS_INFO1.OTHER_DIM
  is '����ά�ȣ������ֶ�';
comment on column METABASE.REPORT_STATUS_INFO1.LOCK_FLAG
  is '������־';
comment on column METABASE.REPORT_STATUS_INFO1.SB_END_DATE
  is '�ϱ���ֹ����';
comment on column METABASE.REPORT_STATUS_INFO1.SB_COUNT
  is '�ϱ�����';
comment on column METABASE.REPORT_STATUS_INFO1.STATUS_ID
  is '����״̬���';
comment on column METABASE.REPORT_STATUS_INFO1.SB_TIME
  is '�ϱ�����';
comment on column METABASE.REPORT_STATUS_INFO1.OPER_ID
  is '��ǰ��������';
comment on column METABASE.REPORT_STATUS_INFO1.USER_ID
  is '�û�����';
comment on column METABASE.REPORT_STATUS_INFO1.CURR_USER_ID
  is '��ǰ�û����';
comment on column METABASE.REPORT_STATUS_INFO1.AUDIT_USER_ID
  is '����˴���';
comment on column METABASE.REPORT_STATUS_INFO1.RECHECK_USER_ID
  is '�������û�����(Ŀǰ���ֶ�ֻ�����Ĵ�ũ������)';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_1
  is '��չ�ò����û�1��ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_2
  is '��չ�ò����û�2��ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_3
  is '��չ�ò����û�3��ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_4
  is '��չ�ò����û�4��ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_5
  is '��չ�ò����û�5��ID��������ֶβ�Ϊ�գ����޸ı�������ʱ���¼�޸���ʷ';
alter table METABASE.REPORT_STATUS_INFO1
  add constraint UK_REPORT_KEY_FOR_STATUS unique (REPORT_ID, BASE_DIM1, BASE_DIM2, BASE_DIM3, BASE_DIM4, BASE_DIM5)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table REPORT_SUBJECT_RELATION
prompt ======================================
prompt
create table METABASE.REPORT_SUBJECT_RELATION
(
  SUBJECT_ID VARCHAR2(10) not null,
  REPORT_ID  VARCHAR2(30) not null,
  ID         NUMBER(38) not null,
  TEAM_NUM   NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_SUBJECT_RELATION
  is '���������ϵ��';
comment on column METABASE.REPORT_SUBJECT_RELATION.SUBJECT_ID
  is '�������';
comment on column METABASE.REPORT_SUBJECT_RELATION.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_SUBJECT_RELATION.ID
  is '���б�ţ�ʹ��REPORT_SUBJECT_RELATION_ID_SEQ';
comment on column METABASE.REPORT_SUBJECT_RELATION.TEAM_NUM
  is '���ֶ�δʹ��';
alter table METABASE.REPORT_SUBJECT_RELATION
  add constraint PK109 primary key (SUBJECT_ID, REPORT_ID)
  using index 
  tablespace METABASE
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
prompt Creating table REPORT_TEMPLATE
prompt ==============================
prompt
create table METABASE.REPORT_TEMPLATE
(
  ID                  NUMBER(38) not null,
  TEMPLATE_STORE_PATH VARCHAR2(300) not null,
  REPORT_ID           VARCHAR2(30) not null,
  TEMPLATE_CONTENT    BLOB,
  START_ROW           NUMBER default 0 not null,
  START_COL           NUMBER default 0 not null,
  END_COL             NUMBER default 0,
  END_ROW             NUMBER default 0,
  XML_CONTENT         BLOB,
  REPORT_CALIBRE_ID   NUMBER,
  PRINT_CONFIG        VARCHAR2(4000),
  HTML_CONTENT        BLOB
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 320K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_TEMPLATE
  is '����ģ����Ϣ��';
comment on column METABASE.REPORT_TEMPLATE.ID
  is '���б�ţ�ʹ��REPORT_TEMPLATE_ID_SEQ';
comment on column METABASE.REPORT_TEMPLATE.TEMPLATE_STORE_PATH
  is 'ģ��洢·��';
comment on column METABASE.REPORT_TEMPLATE.REPORT_ID
  is '�������';
comment on column METABASE.REPORT_TEMPLATE.TEMPLATE_CONTENT
  is '��������';
comment on column METABASE.REPORT_TEMPLATE.START_ROW
  is '��ʼ��';
comment on column METABASE.REPORT_TEMPLATE.START_COL
  is '��ʼ��';
comment on column METABASE.REPORT_TEMPLATE.END_COL
  is '������';
comment on column METABASE.REPORT_TEMPLATE.END_ROW
  is '������';
comment on column METABASE.REPORT_TEMPLATE.XML_CONTENT
  is 'XMLģ��';
comment on column METABASE.REPORT_TEMPLATE.REPORT_CALIBRE_ID
  is '����ھ����';
comment on column METABASE.REPORT_TEMPLATE.PRINT_CONFIG
  is '��ӡ����ʽ����';
comment on column METABASE.REPORT_TEMPLATE.HTML_CONTENT
  is 'HTMLģ��';
alter table METABASE.REPORT_TEMPLATE
  add constraint PK91 primary key (ID)
  using index 
  tablespace METABASE
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
alter table METABASE.REPORT_TEMPLATE
  add constraint FK_TEMPLATE_CALIBRE_ID foreign key (REPORT_CALIBRE_ID)
  references METABASE.REPORT_CALIBRE (ID)
  disable;
create index METABASE.REF658 on METABASE.REPORT_TEMPLATE (REPORT_ID)
  tablespace METABASE
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
prompt Creating table REPORT_TEMPLATE_CONTENT95
prompt ========================================
prompt
create table METABASE.REPORT_TEMPLATE_CONTENT95
(
  REPORT_CALIBRE_ID NUMBER not null,
  TEMPLATE_CONTENT  BLOB
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.REPORT_TEMPLATE_CONTENT95
  is '�����ѷ�����ȷ��';

prompt
prompt Creating table REPORT_UPDATE_CAUSE
prompt ==================================
prompt
create table METABASE.REPORT_UPDATE_CAUSE
(
  ID           NUMBER not null,
  INST_ID      VARCHAR2(20),
  REPORT_ID    VARCHAR2(200),
  UPDATE_CAUSE VARCHAR2(1000),
  TYPE_CODE    VARCHAR2(20),
  OPERATOR     VARCHAR2(20),
  OPDATE       VARCHAR2(20),
  REPORTDATE   VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
  );
comment on column METABASE.REPORT_UPDATE_CAUSE.ID
  is 'sequence';
comment on column METABASE.REPORT_UPDATE_CAUSE.INST_ID
  is '����ID';
comment on column METABASE.REPORT_UPDATE_CAUSE.REPORT_ID
  is '����ID';
comment on column METABASE.REPORT_UPDATE_CAUSE.UPDATE_CAUSE
  is '����';
comment on column METABASE.REPORT_UPDATE_CAUSE.TYPE_CODE
  is '���';
comment on column METABASE.REPORT_UPDATE_CAUSE.OPERATOR
  is '������';
comment on column METABASE.REPORT_UPDATE_CAUSE.OPDATE
  is '����ʱ��';
comment on column METABASE.REPORT_UPDATE_CAUSE.REPORTDATE
  is '����ʱ��';

prompt
prompt Creating table REPORT_VERIFY_EXCHANGE
prompt =====================================
prompt
create table METABASE.REPORT_VERIFY_EXCHANGE
(
  RPT_KEY  VARCHAR2(200) not null,
  V_OBJECT CLOB
)
tablespace METABASE
  pctfree 10
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
prompt Creating table SCHEME_TEMPLATE
prompt ==============================
prompt
create table METABASE.SCHEME_TEMPLATE
(
  ID             NUMBER not null,
  SCHEME_ID      VARCHAR2(20),
  SCHEME_EXPLAIN VARCHAR2(300),
  USER_BANK_ROLE VARCHAR2(30),
  SCHEME_TYPE    VARCHAR2(20),
  SCHEME_CONTEXT VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.SCHEME_TEMPLATE
  is '������ɫȨ�޷�����Ϣ��, �����ѷ�����ȷ��';
alter table METABASE.SCHEME_TEMPLATE
  add primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table SERVER_INFO
prompt ==========================
prompt
create table METABASE.SERVER_INFO
(
  SERVER_ID   VARCHAR2(10) not null,
  SERVER_NAME VARCHAR2(60),
  SERVER_IP   VARCHAR2(30) not null,
  ID          NUMBER(38) not null,
  QQ          NUMBER
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.SERVER_INFO
  is '�������������Ϣ��¼��';
comment on column METABASE.SERVER_INFO.SERVER_ID
  is '������ID';
comment on column METABASE.SERVER_INFO.SERVER_NAME
  is '��������';
comment on column METABASE.SERVER_INFO.SERVER_IP
  is '������IP';
comment on column METABASE.SERVER_INFO.ID
  is '���б��,ʹ��SERVER_INFO_ID_SEQ';
comment on column METABASE.SERVER_INFO.QQ
  is 'QQ';
alter table METABASE.SERVER_INFO
  add constraint PK101 primary key (SERVER_ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.AK_SERVER_INFO on METABASE.SERVER_INFO (ID)
  tablespace METABASE
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
create table METABASE.SQL_HISTORY
(
  SQL_MARK     VARCHAR2(100) not null,
  SYSTEM_ID    VARCHAR2(10) not null,
  SYSTEM_NAME  VARCHAR2(10),
  EXECUTE_TIME DATE,
  DESCR        VARCHAR2(100),
  P_VERSION    VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column METABASE.SQL_HISTORY.SQL_MARK
  is '�ű�����';
comment on column METABASE.SQL_HISTORY.SYSTEM_ID
  is '��ϵͳid';
comment on column METABASE.SQL_HISTORY.SYSTEM_NAME
  is '��ģ������';
comment on column METABASE.SQL_HISTORY.EXECUTE_TIME
  is 'ִ������';
comment on column METABASE.SQL_HISTORY.DESCR
  is '����';
comment on column METABASE.SQL_HISTORY.P_VERSION
  is '����汾��';
alter table METABASE.SQL_HISTORY
  add constraint PK_SQL_HISTORY primary key (SQL_MARK, SYSTEM_ID)
  using index 
  tablespace METABASE
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
prompt Creating table STATUS_OPER_RELATION
prompt ===================================
prompt
create table METABASE.STATUS_OPER_RELATION
(
  ID        NUMBER(38) not null,
  STATUS_ID VARCHAR2(10) not null,
  OPER_ID   VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.STATUS_OPER_RELATION
  is '״̬������Ϣ��¼��';
comment on column METABASE.STATUS_OPER_RELATION.ID
  is '���б��,ʹ��STATUS_OPER_RELATION_ID_SEQ';
comment on column METABASE.STATUS_OPER_RELATION.STATUS_ID
  is '״̬����';
comment on column METABASE.STATUS_OPER_RELATION.OPER_ID
  is '��������';
alter table METABASE.STATUS_OPER_RELATION
  add constraint PK64 primary key (ID)
  using index 
  tablespace METABASE
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
create index METABASE.REF5730 on METABASE.STATUS_OPER_RELATION (OPER_ID)
  tablespace METABASE
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
create index METABASE.REF6529 on METABASE.STATUS_OPER_RELATION (STATUS_ID)
  tablespace METABASE
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
prompt Creating table SUBJECT_CLASS
prompt ============================
prompt
create table METABASE.SUBJECT_CLASS
(
  CLASS_ID   VARCHAR2(10) not null,
  ID         NUMBER(19) not null,
  SUBJECT_ID VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.SUBJECT_CLASS
  is '���������Ϣ��, �����ѷ�����ȷ��';
comment on column METABASE.SUBJECT_CLASS.CLASS_ID
  is '�������';
comment on column METABASE.SUBJECT_CLASS.ID
  is '���б��, �޶�Ӧ����';
comment on column METABASE.SUBJECT_CLASS.SUBJECT_ID
  is '�������';
alter table METABASE.SUBJECT_CLASS
  add constraint PK_SUBJECT_CLASS primary key (CLASS_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.REF4212 on METABASE.SUBJECT_CLASS (SUBJECT_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.UNI_IDX_SUBJECT_CLASS_ID on METABASE.SUBJECT_CLASS (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table SUBJECT_META
prompt ===========================
prompt
create table METABASE.SUBJECT_META
(
  SUBJECT_ID   VARCHAR2(10) not null,
  ID           NUMBER(19) not null,
  SUBJECT_NAME VARCHAR2(200) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.SUBJECT_META
  is '���������Ϣ��';
comment on column METABASE.SUBJECT_META.SUBJECT_ID
  is '�������';
comment on column METABASE.SUBJECT_META.ID
  is '���б��,ʹ��SUBJECT_META_ID_SEQ';
comment on column METABASE.SUBJECT_META.SUBJECT_NAME
  is '��������';
alter table METABASE.SUBJECT_META
  add constraint PK_SUBJECT_ID primary key (SUBJECT_ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.UNI_IDX_SUBJECT_META_ID on METABASE.SUBJECT_META (ID)
  tablespace METABASE
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
prompt Creating table SYS_PARAM
prompt ========================
prompt
create table METABASE.SYS_PARAM
(
  ID          NUMBER(19) not null,
  PARAM_ID    VARCHAR2(18) not null,
  PARAM_NAME  VARCHAR2(60) not null,
  PARAM_VALUE VARCHAR2(30) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.SYS_PARAM
  is 'ϵͳ������';
comment on column METABASE.SYS_PARAM.ID
  is '���б��,�޶�Ӧ����';
comment on column METABASE.SYS_PARAM.PARAM_ID
  is '��������';
comment on column METABASE.SYS_PARAM.PARAM_NAME
  is '��������';
comment on column METABASE.SYS_PARAM.PARAM_VALUE
  is '����ֵ';
alter table METABASE.SYS_PARAM
  add constraint PK80 primary key (ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.IDX_SYSPARAM on METABASE.SYS_PARAM (PARAM_ID)
  tablespace METABASE
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
prompt Creating table TABLE_CLM_META
prompt =============================
prompt
create table METABASE.TABLE_CLM_META
(
  ID               NUMBER(38) not null,
  TABLE_ID         VARCHAR2(20) not null,
  COLUMN_ID        VARCHAR2(20),
  COLUMN_NAME      VARCHAR2(100),
  COLUMN_DATA_TYPE VARCHAR2(10),
  FORMAT_RULES     VARCHAR2(10),
  COLUMN_VALUES    VARCHAR2(500)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TABLE_CLM_META
  is '���ݱ��л�����';
comment on column METABASE.TABLE_CLM_META.ID
  is '���б��,ʹ��TABLE_CLM_META_ID_SEQ';
comment on column METABASE.TABLE_CLM_META.TABLE_ID
  is '�������ı����';
comment on column METABASE.TABLE_CLM_META.COLUMN_ID
  is '�ֶ���';
comment on column METABASE.TABLE_CLM_META.COLUMN_NAME
  is '�ֶ�������';
comment on column METABASE.TABLE_CLM_META.COLUMN_DATA_TYPE
  is '�ֶ��������� D(Date),S(String),N(Number)';
comment on column METABASE.TABLE_CLM_META.FORMAT_RULES
  is '��ص�format��Ϣ,����������ʾ:YYYY-MM-DD,�� ��Щ������Ҫ��ʾ%��.';
comment on column METABASE.TABLE_CLM_META.COLUMN_VALUES
  is 'ֵ֮����","�ָ�';
alter table METABASE.TABLE_CLM_META
  add constraint PK48 primary key (ID)
  using index 
  tablespace METABASE
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
create index METABASE.REF4757 on METABASE.TABLE_CLM_META (TABLE_ID)
  tablespace METABASE
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
prompt Creating table TABLE_META
prompt =========================
prompt
create table METABASE.TABLE_META
(
  TABLE_ID         VARCHAR2(20) not null,
  ID               NUMBER(38) not null,
  TABLE_NAME       VARCHAR2(50),
  TABLE_TYPE       VARCHAR2(10),
  IS_ADD_DATA      CHAR(1),
  IS_GATHER_FINISH CHAR(1),
  IS_CHECK_DATA    CHAR(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TABLE_META
  is '���ݱ������';
comment on column METABASE.TABLE_META.TABLE_ID
  is '�������ı����';
comment on column METABASE.TABLE_META.ID
  is '���б��,ʹ��TABLE_META_ID_SEQ';
comment on column METABASE.TABLE_META.TABLE_NAME
  is '�������ı�����';
comment on column METABASE.TABLE_META.TABLE_TYPE
  is '�����:���Ŵ�,����,����,�ƻ�,������. ����ֵ������code_info ,code_type=''table_type''';
comment on column METABASE.TABLE_META.IS_ADD_DATA
  is '�Ƿ���Ҫ��¼����: 1 ��Ҫ ,0  ����Ҫ.';
comment on column METABASE.TABLE_META.IS_GATHER_FINISH
  is '�Ƿ�ɼ������������: ���Y δ��ʼN ���ɼ�D(doing)';
comment on column METABASE.TABLE_META.IS_CHECK_DATA
  is '�Ƿ���ҪУ�� 1 ��Ҫ,0 ����Ҫ.';
alter table METABASE.TABLE_META
  add constraint PK47 primary key (TABLE_ID)
  using index 
  tablespace METABASE
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
prompt Creating table TASK_ANALYSE_REPORT
prompt ==================================
prompt
create table METABASE.TASK_ANALYSE_REPORT
(
  ID            NUMBER(19) not null,
  TASK_ID       VARCHAR2(50) not null,
  REPORT_DATE   VARCHAR2(10) not null,
  BANK_ID       VARCHAR2(50) not null,
  OLD_FILE_NAME VARCHAR2(50),
  NEW_FILE_NAME VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TASK_ANALYSE_REPORT
  is '���������, �����ѷ�����ȷ��';
comment on column METABASE.TASK_ANALYSE_REPORT.ID
  is '���б��';
comment on column METABASE.TASK_ANALYSE_REPORT.TASK_ID
  is '������';
comment on column METABASE.TASK_ANALYSE_REPORT.REPORT_DATE
  is '�·�����';
comment on column METABASE.TASK_ANALYSE_REPORT.BANK_ID
  is '�������';
comment on column METABASE.TASK_ANALYSE_REPORT.OLD_FILE_NAME
  is '���ļ�����';
comment on column METABASE.TASK_ANALYSE_REPORT.NEW_FILE_NAME
  is '���ļ�����';
alter table METABASE.TASK_ANALYSE_REPORT
  add constraint PK_TASK_ANALYSE_REPORT primary key (TASK_ID, REPORT_DATE, BANK_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.INDEX_TASK_ANALYSE_REPORT on METABASE.TASK_ANALYSE_REPORT (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TASK_AUDIT_INFO
prompt ==============================
prompt
create table METABASE.TASK_AUDIT_INFO
(
  ID            NUMBER(19) not null,
  TASK_ID       VARCHAR2(50) not null,
  REPORT_DATE   VARCHAR2(10) not null,
  BANK_ID       VARCHAR2(50) not null,
  OPER_ID       VARCHAR2(50) not null,
  AUDITING_USER VARCHAR2(30) not null,
  AUDITING_MSG  VARCHAR2(200)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TASK_AUDIT_INFO
  is '�����ύ�����Ϣ��';
comment on column METABASE.TASK_AUDIT_INFO.ID
  is '���б��,ʹ��TASK_AUDIT_INFO_SEQ';
comment on column METABASE.TASK_AUDIT_INFO.TASK_ID
  is '������';
comment on column METABASE.TASK_AUDIT_INFO.REPORT_DATE
  is '�·�����';
comment on column METABASE.TASK_AUDIT_INFO.BANK_ID
  is '�������';
comment on column METABASE.TASK_AUDIT_INFO.OPER_ID
  is '�������';
comment on column METABASE.TASK_AUDIT_INFO.AUDITING_USER
  is '����û�';
comment on column METABASE.TASK_AUDIT_INFO.AUDITING_MSG
  is '������';
alter table METABASE.TASK_AUDIT_INFO
  add constraint PK_TASK_AUDIT_INFO primary key (TASK_ID, REPORT_DATE, BANK_ID, AUDITING_USER)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.INDEX_TASK_AUDIT_INFO on METABASE.TASK_AUDIT_INFO (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TASK_BANK_DIM
prompt ============================
prompt
create table METABASE.TASK_BANK_DIM
(
  ID       NUMBER(19) not null,
  TASK_ID  VARCHAR2(50) not null,
  BANK_ID  VARCHAR2(50) not null,
  IS_GROUP VARCHAR2(1) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_BANK_DIM
  is '����ģ����Ϣ��Ļ���γ�ȱ�';
comment on column METABASE.TASK_BANK_DIM.ID
  is '���б��,ʹ��TASK_BANK_DIM_SEQ';
comment on column METABASE.TASK_BANK_DIM.TASK_ID
  is '������';
comment on column METABASE.TASK_BANK_DIM.BANK_ID
  is '�������';
comment on column METABASE.TASK_BANK_DIM.IS_GROUP
  is 'bank_id�Ƿ������';
alter table METABASE.TASK_BANK_DIM
  add constraint PK_TASK_BANK_DIM primary key (TASK_ID, BANK_ID, IS_GROUP)
  using index 
  tablespace METABASE
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
create index METABASE.INDEX_TASK_BANK_DIM on METABASE.TASK_BANK_DIM (ID)
  tablespace METABASE
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
prompt Creating table TASK_BANK_LIMIT
prompt ==============================
prompt
create table METABASE.TASK_BANK_LIMIT
(
  ID           NUMBER(19) not null,
  TASK_ID      VARCHAR2(50) not null,
  BANK_LEVEL   VARCHAR2(50) not null,
  TIME_LIMIT   INTEGER not null,
  TIME_CONTROL VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_BANK_LIMIT
  is '������ʱ�ޱ�';
comment on column METABASE.TASK_BANK_LIMIT.ID
  is '���б��,ʹ��TASK_BANK_LIMIT_SEQ';
comment on column METABASE.TASK_BANK_LIMIT.TASK_ID
  is '������';
comment on column METABASE.TASK_BANK_LIMIT.BANK_LEVEL
  is '��������';
comment on column METABASE.TASK_BANK_LIMIT.TIME_LIMIT
  is 'ĳ����Ļ������ƶ������ϱ�';
alter table METABASE.TASK_BANK_LIMIT
  add constraint PK_TASK_BANK_LIMIT primary key (TASK_ID, BANK_LEVEL)
  using index 
  tablespace METABASE
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
create index METABASE.INDEX_TASK_BANK_LIMIT on METABASE.TASK_BANK_LIMIT (ID)
  tablespace METABASE
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
prompt Creating table TASK_BANK_STATUS
prompt ===============================
prompt
create table METABASE.TASK_BANK_STATUS
(
  ID          NUMBER(19) not null,
  TASK_ID     VARCHAR2(50) not null,
  REPORT_DATE VARCHAR2(10) not null,
  BANK_ID     VARCHAR2(50) not null,
  BANK_STATUS VARCHAR2(20) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_BANK_STATUS
  is '������״̬��';
comment on column METABASE.TASK_BANK_STATUS.ID
  is '���б��,ʹ��TASK_BANK_STATUS_SEQ';
comment on column METABASE.TASK_BANK_STATUS.TASK_ID
  is '������';
comment on column METABASE.TASK_BANK_STATUS.REPORT_DATE
  is '�����·�����';
comment on column METABASE.TASK_BANK_STATUS.BANK_ID
  is '�������';
comment on column METABASE.TASK_BANK_STATUS.BANK_STATUS
  is '������Ӧ��������״̬';
alter table METABASE.TASK_BANK_STATUS
  add constraint PK_TASK_BANK_STATUS primary key (TASK_ID, REPORT_DATE, BANK_ID)
  using index 
  tablespace METABASE
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
create index METABASE.INDEX_TASK_BANK_STATUS on METABASE.TASK_BANK_STATUS (ID)
  tablespace METABASE
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
prompt Creating table TASK_BATCH_OPERS
prompt ===============================
prompt
create table METABASE.TASK_BATCH_OPERS
(
  TASK_ID    VARCHAR2(60) not null,
  OPER_ID    VARCHAR2(30) not null,
  OPER_ORDER NUMBER not null
)
tablespace METABASE
  pctfree 10
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
prompt Creating table TASK_COMMIT_AGAIN
prompt ================================
prompt
create table METABASE.TASK_COMMIT_AGAIN
(
  ID              NUMBER(19) not null,
  TASK_ID         VARCHAR2(50) not null,
  REPORT_DATE     VARCHAR2(10) not null,
  BANK_ID         VARCHAR2(50) not null,
  COMMIT_USER     VARCHAR2(30),
  COMMIT_DATE     VARCHAR2(20),
  COMMIT_STATUS   VARCHAR2(10),
  COMMIT_REASON   VARCHAR2(200),
  AUDITING_USER   VARCHAR2(30),
  AUDITING_STATUS VARCHAR2(30),
  AUDITING_REASON VARCHAR2(200),
  AUDITING_DATE   VARCHAR2(10)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TASK_COMMIT_AGAIN
  is '�������ύ��Ϣ��, ��ʹ��Ϊ��¼�������˴����Ϣ';
comment on column METABASE.TASK_COMMIT_AGAIN.ID
  is '���б��,ʹ��TASK_COMMIT_AGAIN_SEQ';
comment on column METABASE.TASK_COMMIT_AGAIN.TASK_ID
  is '������';
comment on column METABASE.TASK_COMMIT_AGAIN.REPORT_DATE
  is '�����·�����';
comment on column METABASE.TASK_COMMIT_AGAIN.BANK_ID
  is '�������';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_USER
  is '�ύ�û�';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_DATE
  is '�ύ����';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_STATUS
  is '�ύ״̬';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_REASON
  is '�ύ��ע';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_USER
  is '����û�,��ʹ��Ϊ��˴�ص��û�';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_STATUS
  is '���״̬,��ʹ��Ϊ��˴�ص�״̬';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_REASON
  is '�����ע,��ʹ��Ϊ��˴�ص���ע��Ϣ';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_DATE
  is '�������,��ʹ��Ϊ��˴�ص�����';
alter table METABASE.TASK_COMMIT_AGAIN
  add constraint PK_TASK_COMMIT_AGAIN primary key (TASK_ID, REPORT_DATE, BANK_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create index METABASE.INDEX_TASK_COMMIT_AGAIN on METABASE.TASK_COMMIT_AGAIN (ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TASK_DEFINE
prompt ==========================
prompt
create table METABASE.TASK_DEFINE
(
  ID                NUMBER(19) not null,
  TASK_ID           VARCHAR2(50) not null,
  TASK_NAME         VARCHAR2(50) not null,
  TASK_START_TIME   DATE,
  TASK_END_TIME     DATE,
  FREQUENCY         VARCHAR2(50),
  REMARK            VARCHAR2(100),
  START_TYPE        VARCHAR2(1),
  USER_GROUP        VARCHAR2(300),
  START_TIME_OFFSET INTEGER not null,
  REPORT_TYPE       CHAR(1),
  NEED_RECHECK      CHAR(1) default 'N',
  NEED_SAMEAUDIT    CHAR(1) default 'N',
  HOLIDAY_CODE      VARCHAR2(50) default 'none',
  RELY_GROUP        VARCHAR2(300),
  AUTO_EXEC         VARCHAR2(10),
  HOLIDAY_ISSUE     CHAR(1) default 'N',
  IS_TOTAL          CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_DEFINE
  is '����ģ����Ϣ��,�洢����ģ��Ļ�����Ϣ';
comment on column METABASE.TASK_DEFINE.ID
  is '���б��,ʹ��TASK_DEFINE_SEQ';
comment on column METABASE.TASK_DEFINE.TASK_ID
  is '������';
comment on column METABASE.TASK_DEFINE.TASK_NAME
  is '��������';
comment on column METABASE.TASK_DEFINE.TASK_START_TIME
  is '������ȿ�ʼ����';
comment on column METABASE.TASK_DEFINE.TASK_END_TIME
  is '������Ƚ�������';
comment on column METABASE.TASK_DEFINE.FREQUENCY
  is '������Ƶ��,Ҳ�����������±����Ƶ��';
comment on column METABASE.TASK_DEFINE.REMARK
  is '�����ֶ�,��ʹ��Ϊ����Ļ�����˹�ϵ�ֶ�';
comment on column METABASE.TASK_DEFINE.START_TYPE
  is '�����������ʽ,1:�ֶ��·�;0:�Զ��·�';
comment on column METABASE.TASK_DEFINE.USER_GROUP
  is '�û���, ��ʹ��Ϊ����������etl����id';
comment on column METABASE.TASK_DEFINE.START_TIME_OFFSET
  is '��������ƫ����,�·�����ʱ����Ƶ�Ⱥ�ƫ����������������';
comment on column METABASE.TASK_DEFINE.REPORT_TYPE
  is '��������,Ĭ�ϱ���ΪC';
comment on column METABASE.TASK_DEFINE.NEED_RECHECK
  is '�������Ƿ���Ҫ��������, ''Y''��Ҫ, ''N''����Ҫ';
comment on column METABASE.TASK_DEFINE.NEED_SAMEAUDIT
  is '������������Ƿ���Ҫͬ�����, ''Y''��Ҫ, ''N''����Ҫ';
comment on column METABASE.TASK_DEFINE.HOLIDAY_CODE
  is '����ڼ������,Ĭ��Ϊnone�������ýڼ��ռ��';
comment on column METABASE.TASK_DEFINE.HOLIDAY_ISSUE
  is '�Զ����� �Ƿ��ڽڼ����ճ��·�����(�������ڼ��չ��ܺ�ʹ�ã�Ĭ��ΪN���ڼ��ղ��·�����)';
alter table METABASE.TASK_DEFINE
  add constraint PK_TASK_DEFINE primary key (TASK_ID)
  using index 
  tablespace METABASE
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
create index METABASE.INDEX_TASK_DEFINE on METABASE.TASK_DEFINE (ID)
  tablespace METABASE
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
prompt Creating table TASK_EXPORT
prompt ==========================
prompt
create table METABASE.TASK_EXPORT
(
  TASK_ID     VARCHAR2(50) not null,
  BANK_ID     VARCHAR2(50) not null,
  REPORT_ID   VARCHAR2(50) not null,
  CONTRIBUTOR VARCHAR2(50),
  OWNER       VARCHAR2(50)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TASK_EXPORT
  is '������Ϣ����EXCEL';
comment on column METABASE.TASK_EXPORT.TASK_ID
  is '������';
comment on column METABASE.TASK_EXPORT.BANK_ID
  is '�������';
comment on column METABASE.TASK_EXPORT.REPORT_ID
  is '������';
alter table METABASE.TASK_EXPORT
  add constraint PK_TASK_EXPORT primary key (TASK_ID, BANK_ID, REPORT_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TASK_INSTANCE
prompt ============================
prompt
create table METABASE.TASK_INSTANCE
(
  ID             NUMBER(19) not null,
  TASK_ID        VARCHAR2(50) not null,
  REPORT_DATE    VARCHAR2(10) not null,
  TASK_STATUS    VARCHAR2(50),
  START_USER     VARCHAR2(50),
  START_TIME     DATE,
  END_TIME       DATE,
  NEED_RECHECK   CHAR(1) default 'N',
  NEED_SAMEAUDIT CHAR(1) default 'N'
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_INSTANCE
  is '����ʵ����Ϣ��';
comment on column METABASE.TASK_INSTANCE.ID
  is '���б��,ʹ��TASK_INSTANCE_SEQ';
comment on column METABASE.TASK_INSTANCE.TASK_ID
  is '������';
comment on column METABASE.TASK_INSTANCE.REPORT_DATE
  is '�����·�����';
comment on column METABASE.TASK_INSTANCE.TASK_STATUS
  is '����״̬, Ŀǰֻ�п�ʼ�ͽ�������״̬';
comment on column METABASE.TASK_INSTANCE.START_USER
  is '�·�������û�';
comment on column METABASE.TASK_INSTANCE.START_TIME
  is '������ʵ������������, Ҳ��������ģ����·�����';
comment on column METABASE.TASK_INSTANCE.END_TIME
  is '������ʵ������ֹ����, Ҳ�����������ڼ�ƫ��������';
comment on column METABASE.TASK_INSTANCE.NEED_RECHECK
  is '�������Ƿ���Ҫ��������, ''Y''��Ҫ, ''N''����Ҫ';
comment on column METABASE.TASK_INSTANCE.NEED_SAMEAUDIT
  is '������������Ƿ���Ҫͬ�����, ''Y''��Ҫ, ''N''����Ҫ';
alter table METABASE.TASK_INSTANCE
  add constraint PK_TASK_INSTANCE primary key (TASK_ID, REPORT_DATE)
  using index 
  tablespace METABASE
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
create index METABASE.INDEX_TASK_INSTANCE on METABASE.TASK_INSTANCE (ID)
  tablespace METABASE
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
prompt Creating table TASK_INSTANCE_BANK_DIM
prompt =====================================
prompt
create table METABASE.TASK_INSTANCE_BANK_DIM
(
  ID                       NUMBER not null,
  TASK_ID                  VARCHAR2(45) not null,
  REPORT_DATE              VARCHAR2(10) not null,
  BANK_ID                  VARCHAR2(20) not null,
  FACTUAL_DATE             VARCHAR2(10),
  DEADLINE_DATE            VARCHAR2(30),
  DELAY_REASON             VARCHAR2(200),
  INITIALIZE_DEADLINE_DATE VARCHAR2(30)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_INSTANCE_BANK_DIM
  is '����ʵ����Ϣ��Ļ���γ�ȱ�';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.ID
  is '���б��,ʹ��TASK_INSTANCE_BANK_DIM_SEQ';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.TASK_ID
  is '������';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.REPORT_DATE
  is '�����·�����';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.BANK_ID
  is '�������';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.FACTUAL_DATE
  is 'ʵ���ϱ�����';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.DEADLINE_DATE
  is '����ϱ�����';
alter table METABASE.TASK_INSTANCE_BANK_DIM
  add constraint PK_TASK_IBD primary key (TASK_ID, REPORT_DATE, BANK_ID)
  using index 
  tablespace METABASE
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
prompt Creating table TASK_INSTANCE_EMAIL_DIM
prompt ======================================
prompt
create table METABASE.TASK_INSTANCE_EMAIL_DIM
(
  ID           NUMBER(19) not null,
  TASK_ID      VARCHAR2(50) not null,
  EVENT_ID     VARCHAR2(100) not null,
  USER_ID      VARCHAR2(20) not null,
  BANK_ID      VARCHAR2(20) not null,
  AUDIT_STATUS VARCHAR2(20) not null,
  EMAIL_TYPE   VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TASK_INSTANCE_EMAIL_DIM
  is '����ʵ�������������';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.ID
  is '��ˮ';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.TASK_ID
  is '������';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.EVENT_ID
  is '���ID';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.USER_ID
  is '�û���';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.BANK_ID
  is '��������';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.AUDIT_STATUS
  is '���״̬-pending_add,passed,rejected,pending_deleting';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.EMAIL_TYPE
  is '�ʼ������';
alter table METABASE.TASK_INSTANCE_EMAIL_DIM
  add constraint PK_TASK_MAIL_ID primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
alter table METABASE.TASK_INSTANCE_EMAIL_DIM
  add constraint PK_ALT_CFG_CODE unique (EVENT_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
alter table METABASE.TASK_INSTANCE_EMAIL_DIM
  add constraint UK_WHERE_CONDITION unique (TASK_ID, USER_ID, BANK_ID, EMAIL_TYPE)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TASK_INSTANCE_REPORT_DIM
prompt =======================================
prompt
create table METABASE.TASK_INSTANCE_REPORT_DIM
(
  ID          NUMBER not null,
  TASK_ID     VARCHAR2(45) not null,
  REPORT_DATE VARCHAR2(10) not null,
  REPORT_ID   VARCHAR2(30) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_INSTANCE_REPORT_DIM
  is '����ʵ����Ϣ��ı���γ�ȱ�';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.ID
  is '���б��,ʹ��TASK_INSTANCE_REPORT_DIM_SEQ';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.TASK_ID
  is '������';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.REPORT_DATE
  is '�����·�����';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.REPORT_ID
  is '������';
alter table METABASE.TASK_INSTANCE_REPORT_DIM
  add constraint PK_TASK_IRD primary key (TASK_ID, REPORT_DATE, REPORT_ID)
  using index 
  tablespace METABASE
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
prompt Creating table TASK_OPER_LOG_INFO
prompt =================================
prompt
create table METABASE.TASK_OPER_LOG_INFO
(
  TASK_ID      VARCHAR2(45) not null,
  REPORT_DATE  VARCHAR2(10) not null,
  BANK_ID      VARCHAR2(20) not null,
  OPER_TYPE    VARCHAR2(10) not null,
  DELAY_REASON VARCHAR2(200),
  OPER_PERSON  VARCHAR2(100),
  OPER_TIME    VARCHAR2(30)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TASK_OPER_META
prompt =============================
prompt
create table METABASE.TASK_OPER_META
(
  OPER_ID           VARCHAR2(20) not null,
  OPER_ORDER        NUMBER,
  ID                NUMBER(19) not null,
  OPER_NAME         VARCHAR2(40) not null,
  RESULT_STATUS     VARCHAR2(10),
  LOGIC_TYPE        VARCHAR2(20),
  NEED_LOCK         CHAR(1),
  FAIL_STATUS       VARCHAR2(10),
  IS_DEFAULT        CHAR(1),
  NEED_LOG          CHAR(1),
  NEED_LOG_MEMO     CHAR(1),
  IS_RECALCHEADFOOT CHAR(1),
  STATUS_FIELD      VARCHAR2(20),
  ENABLED           CHAR(1)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_OPER_META
  is '���������Ϣ��, �����·�����ʱ��̨�Զ�����ִ����Щ����';
comment on column METABASE.TASK_OPER_META.OPER_ID
  is '��������';
comment on column METABASE.TASK_OPER_META.OPER_ORDER
  is '����˳��';
comment on column METABASE.TASK_OPER_META.ID
  is '���б��,ʹ��TASK_REPORT_DIM_SEQ';
comment on column METABASE.TASK_OPER_META.OPER_NAME
  is '��������';
comment on column METABASE.TASK_OPER_META.RESULT_STATUS
  is '�ɹ�״̬.';
comment on column METABASE.TASK_OPER_META.LOGIC_TYPE
  is '�߼�����';
comment on column METABASE.TASK_OPER_META.NEED_LOCK
  is '�Ƿ���Ҫ��';
comment on column METABASE.TASK_OPER_META.FAIL_STATUS
  is 'ʧ��״̬.';
comment on column METABASE.TASK_OPER_META.IS_DEFAULT
  is '�Ƿ��Ǳ����Ĭ�ϲ���';
comment on column METABASE.TASK_OPER_META.NEED_LOG
  is '�Ƿ��¼��־';
comment on column METABASE.TASK_OPER_META.NEED_LOG_MEMO
  is '�Ƿ���Ҫ��־˵��';
comment on column METABASE.TASK_OPER_META.IS_RECALCHEADFOOT
  is '�ò����Ƿ���Ҫ�����ͷ��β';
comment on column METABASE.TASK_OPER_META.STATUS_FIELD
  is '�����ͷ��βʱ��report_status_info������ֶε�����';
comment on column METABASE.TASK_OPER_META.ENABLED
  is '�Զ�����ʱ�Ƿ����øò���';
alter table METABASE.TASK_OPER_META
  add constraint PK_TASK_OPER_META_OPER_ID primary key (OPER_ID)
  using index 
  tablespace METABASE
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
prompt Creating table TASK_REPORT_DIM
prompt ==============================
prompt
create table METABASE.TASK_REPORT_DIM
(
  ID        NUMBER(19) not null,
  TASK_ID   VARCHAR2(50) not null,
  REPORT_ID VARCHAR2(50) not null,
  IS_GROUP  VARCHAR2(1) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_REPORT_DIM
  is '����ģ����Ϣ��ı���γ�ȱ�';
comment on column METABASE.TASK_REPORT_DIM.ID
  is '���б��,ʹ��TASK_REPORT_DIM_SEQ';
comment on column METABASE.TASK_REPORT_DIM.TASK_ID
  is '������';
comment on column METABASE.TASK_REPORT_DIM.REPORT_ID
  is '������';
comment on column METABASE.TASK_REPORT_DIM.IS_GROUP
  is 'report_id�ֶ��Ƿ�Ϊ������';
alter table METABASE.TASK_REPORT_DIM
  add constraint PK_TASK_REPORT_DIM primary key (TASK_ID, REPORT_ID, IS_GROUP)
  using index 
  tablespace METABASE
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
create index METABASE.INDEX_TASK_REPORT_DIM on METABASE.TASK_REPORT_DIM (ID)
  tablespace METABASE
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
prompt Creating table TASK_SUBJECT_RELATION
prompt ====================================
prompt
create table METABASE.TASK_SUBJECT_RELATION
(
  ID         NUMBER(19) not null,
  TASK_ID    VARCHAR2(32) not null,
  SUBJECT_ID VARCHAR2(10) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.TASK_SUBJECT_RELATION
  is '���������ϵ��';
comment on column METABASE.TASK_SUBJECT_RELATION.ID
  is '���б�ţ�ʹ��TASK_SUBJECT_RELATION_ID_SEQ';
comment on column METABASE.TASK_SUBJECT_RELATION.TASK_ID
  is '������';
comment on column METABASE.TASK_SUBJECT_RELATION.SUBJECT_ID
  is '������';
alter table METABASE.TASK_SUBJECT_RELATION
  add constraint TASK_SUBJECT_RELATION_ID primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table TASK_USER_OPER_LOG
prompt =================================
prompt
create table METABASE.TASK_USER_OPER_LOG
(
  ID               NUMBER not null,
  INSTANCE_BANK_ID NUMBER,
  COMMIT_USER      VARCHAR2(100),
  COMMIT_TIME      VARCHAR2(20),
  AUDIT_USER       VARCHAR2(100),
  AUDIT_TIME       VARCHAR2(20),
  RECHECK_USER     VARCHAR2(100),
  RECHECK_TIME     VARCHAR2(20),
  CALLBACK_USER    VARCHAR2(100),
  CALLBACK_TIME    VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TASK_USER_OPER_LOG
  is '���������Ϣ��';
comment on column METABASE.TASK_USER_OPER_LOG.ID
  is '����';
comment on column METABASE.TASK_USER_OPER_LOG.INSTANCE_BANK_ID
  is '����ʵ��������ϢID';
comment on column METABASE.TASK_USER_OPER_LOG.COMMIT_USER
  is '�����ύ��';
comment on column METABASE.TASK_USER_OPER_LOG.COMMIT_TIME
  is '�����ύʱ��';
comment on column METABASE.TASK_USER_OPER_LOG.AUDIT_USER
  is '���������';
comment on column METABASE.TASK_USER_OPER_LOG.AUDIT_TIME
  is '�������ʱ��';
comment on column METABASE.TASK_USER_OPER_LOG.RECHECK_USER
  is '���񸴺���';
comment on column METABASE.TASK_USER_OPER_LOG.RECHECK_TIME
  is '���񸴺�ʱ��';
comment on column METABASE.TASK_USER_OPER_LOG.CALLBACK_USER
  is '��������';
comment on column METABASE.TASK_USER_OPER_LOG.CALLBACK_TIME
  is '������ʱ��';
alter table METABASE.TASK_USER_OPER_LOG
  add constraint PK_TASK_USER_OPER_LOG primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );
create unique index METABASE.UN_INSTANCE_BANK_ID on METABASE.TASK_USER_OPER_LOG (INSTANCE_BANK_ID)
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TECH2TYPE
prompt ========================
prompt
create table METABASE.TECH2TYPE
(
  ID     NUMBER not null,
  TECHID NUMBER not null,
  TYPEID NUMBER not null,
  TYPE   VARCHAR2(30) default 'Report' not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TECH2TYPE
  is '��Զ���ձ�, �����ѷ�����ȷ��';
comment on column METABASE.TECH2TYPE.ID
  is '���б�ţ�ʹ��TECH2TYPE_ID_SEQ';
comment on column METABASE.TECH2TYPE.TECHID
  is 'TechID';
comment on column METABASE.TECH2TYPE.TYPEID
  is 'TypeId';
comment on column METABASE.TECH2TYPE.TYPE
  is '����';
alter table METABASE.TECH2TYPE
  add constraint P_ID primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table TEMPLATE_SAVE_INFO
prompt =================================
prompt
create table METABASE.TEMPLATE_SAVE_INFO
(
  TEMPLATE_ID   VARCHAR2(50) not null,
  ID            NUMBER(19) not null,
  TEMPLATE_TYPE CHAR(1) not null,
  EXCEL_FILE    LONG not null,
  START_DATE    DATE not null,
  END_DATE      DATE,
  REPORT_ID     VARCHAR2(30) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.TEMPLATE_SAVE_INFO
  is 'ģ�屣����Ϣ��, �����ѷ�����ȷ��';
comment on column METABASE.TEMPLATE_SAVE_INFO.TEMPLATE_ID
  is 'ģ��ID';
comment on column METABASE.TEMPLATE_SAVE_INFO.ID
  is '���б��';
comment on column METABASE.TEMPLATE_SAVE_INFO.TEMPLATE_TYPE
  is '��������  0-�̶���Ŀ���ҿ�Ŀ�������Ʊ����ж���ã����ݴ�ӳ����Ϣ����ȡ����βҲ�̶��ڱ�����
1-�̶���Ŀ������Ŀ�������ƵȲ����壬ֱ�Ӵ����ݿ�ȡ���У���β������
2-���������嵥�ֱ࣬�Ӵ����ݿ�ȡ����β������
';
comment on column METABASE.TEMPLATE_SAVE_INFO.EXCEL_FILE
  is 'excel�ļ� �洢��DB���ģ���ļ�';
comment on column METABASE.TEMPLATE_SAVE_INFO.START_DATE
  is '��ʼ����';
comment on column METABASE.TEMPLATE_SAVE_INFO.END_DATE
  is '��������';
comment on column METABASE.TEMPLATE_SAVE_INFO.REPORT_ID
  is '�������';
alter table METABASE.TEMPLATE_SAVE_INFO
  add constraint PK48_1 primary key (TEMPLATE_ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table UDL_HK_BACKUP_TABLE
prompt ==================================
prompt
create table METABASE.UDL_HK_BACKUP_TABLE
(
  ID               VARCHAR2(128) not null,
  TABLE_NAME       VARCHAR2(128) not null,
  DATE_FIELD       VARCHAR2(64) not null,
  FREQ             VARCHAR2(5) not null,
  KEEP_DATA_TIME   INTEGER not null,
  ACTION_MODE      VARCHAR2(1) not null,
  SOURCE_BEFORE_SP VARCHAR2(128),
  SOURCE_AFTER_SP  VARCHAR2(128),
  BACKUP_BEFORE_SP VARCHAR2(128),
  BACKUP_AFTER_SP  VARCHAR2(128)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.UDL_HK_BACKUP_TABLE
  is '���ݱ��������ø���ϵͳ��Щ���ʹ�ñ��ݷ���';
comment on column METABASE.UDL_HK_BACKUP_TABLE.ID
  is '����';
comment on column METABASE.UDL_HK_BACKUP_TABLE.TABLE_NAME
  is '����';
comment on column METABASE.UDL_HK_BACKUP_TABLE.DATE_FIELD
  is '���������ֶ���';
comment on column METABASE.UDL_HK_BACKUP_TABLE.FREQ
  is 'Ƶ�� M���¡�ÿ�µ�һ�죩 | W7���ܡ�ÿ�ܵ�һ�죩';
comment on column METABASE.UDL_HK_BACKUP_TABLE.KEEP_DATA_TIME
  is '���������������ڵĵ�λ��Ƶ�ȶ�Ӧ
����Ϊ��������2����ָ����2����ǰ���е�����';
comment on column METABASE.UDL_HK_BACKUP_TABLE.ACTION_MODE
  is '����ʽ��B�����ݺ�ɾ���� | D��ɾ����';
comment on column METABASE.UDL_HK_BACKUP_TABLE.SOURCE_BEFORE_SP
  is '����Դǰ�ô洢����';
comment on column METABASE.UDL_HK_BACKUP_TABLE.SOURCE_AFTER_SP
  is '����Դ���ô洢����';
comment on column METABASE.UDL_HK_BACKUP_TABLE.BACKUP_BEFORE_SP
  is '����Դǰ�ô洢����';
comment on column METABASE.UDL_HK_BACKUP_TABLE.BACKUP_AFTER_SP
  is '����Դǰ�ô洢����';
alter table METABASE.UDL_HK_BACKUP_TABLE
  add constraint PK_UDL_HK_BACKUP_TABLE primary key (ID)
  using index 
  tablespace METABASE
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
prompt Creating table UNIT_META
prompt ========================
prompt
create table METABASE.UNIT_META
(
  UNIT_ID      VARCHAR2(20) not null,
  ID           NUMBER(19) not null,
  UNIT_NAME    VARCHAR2(200),
  UNIT_SCALE   NUMBER(38),
  UNIT_COMPARE NUMBER(38)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.UNIT_META
  is '���ֵ�λ��Ϣ��';
comment on column METABASE.UNIT_META.UNIT_ID
  is '���ֵ�λ����';
comment on column METABASE.UNIT_META.ID
  is '���б�ţ�ʹ��UNIT_META_ID_SEQ';
comment on column METABASE.UNIT_META.UNIT_NAME
  is '��λ����. Ԫ/.ǧԪ/��Ԫ.. ';
comment on column METABASE.UNIT_META.UNIT_SCALE
  is '��λ�߶�';
comment on column METABASE.UNIT_META.UNIT_COMPARE
  is '�Աȵ�λ';
alter table METABASE.UNIT_META
  add constraint PK_UNIT_ID primary key (UNIT_ID)
  using index 
  tablespace METABASE
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
create unique index METABASE.UNI_IDX_UNIT_META_ID on METABASE.UNIT_META (ID)
  tablespace METABASE
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
prompt Creating table USER_LOGIN_INFO
prompt ==============================
prompt
create table METABASE.USER_LOGIN_INFO
(
  ID         NUMBER(19) not null,
  USER_ID    VARCHAR2(32),
  BANK_ID    VARCHAR2(20),
  IP         VARCHAR2(20),
  LOGIN_TIME TIMESTAMP(6)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
  );
comment on table METABASE.USER_LOGIN_INFO
  is '�û���¼��Ϣ��¼��';
comment on column METABASE.USER_LOGIN_INFO.ID
  is '���б�ţ�ʹ��USER_LOGIN_INFO_ID_SEQ';
comment on column METABASE.USER_LOGIN_INFO.USER_ID
  is '�û����';
comment on column METABASE.USER_LOGIN_INFO.BANK_ID
  is '�������';
comment on column METABASE.USER_LOGIN_INFO.IP
  is '��¼������IP��ַ';
comment on column METABASE.USER_LOGIN_INFO.LOGIN_TIME
  is '��¼ʱ��';
alter table METABASE.USER_LOGIN_INFO
  add constraint PK337 primary key (ID)
  using index 
  tablespace METABASE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
  );

prompt
prompt Creating table USER_REPORT_SELECT_COPY
prompt ======================================
prompt
create table METABASE.USER_REPORT_SELECT_COPY
(
  USER_ID    VARCHAR2(30) not null,
  TASK_ID    VARCHAR2(14) not null,
  TASK_NAME  VARCHAR2(50) not null,
  REPORTS_ID VARCHAR2(1000) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.USER_REPORT_SELECT_COPY
  is '��ѯ���������, �����ѷ�����ȷ��';
comment on column METABASE.USER_REPORT_SELECT_COPY.USER_ID
  is '�û����룬ϵͳ�Զ����';
comment on column METABASE.USER_REPORT_SELECT_COPY.TASK_ID
  is '������룬ϵͳ�Զ����';
comment on column METABASE.USER_REPORT_SELECT_COPY.TASK_NAME
  is '�������ƣ��û�����';
comment on column METABASE.USER_REPORT_SELECT_COPY.REPORTS_ID
  is '�û�ѡ��ı���IDs��ϵͳ�����û�ѡ���Զ����';
alter table METABASE.USER_REPORT_SELECT_COPY
  add constraint PK_USER_REPORT_SELECT_COPY primary key (USER_ID, TASK_ID)
  using index 
  tablespace METABASE
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
create table METABASE.U_BASE_FORM_NO
(
  FORM_TYPE  VARCHAR2(5) not null,
  CURRENT_ID NUMBER(19) not null
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.U_BASE_FORM_NO
  is '�Զ������б�ű������ڼ�sequence����ʵ��';
comment on column METABASE.U_BASE_FORM_NO.FORM_TYPE
  is '���ֵ
  ���ֵ����й���';
comment on column METABASE.U_BASE_FORM_NO.CURRENT_ID
  is '��ǰ���';
alter table METABASE.U_BASE_FORM_NO
  add constraint PK_U_BASE_FORM_NO primary key (FORM_TYPE)
  using index 
  tablespace METABASE
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
create table METABASE.U_BASE_SYS_LOG
(
  LOG_ID      NUMBER(19) not null,
  USER_ID     VARCHAR2(20) not null,
  USER_ENAME  VARCHAR2(20),
  USER_CNAME  VARCHAR2(30),
  INST_ID     VARCHAR2(20) not null,
  INST_CNAME  VARCHAR2(30),
  MENU_ID     VARCHAR2(20),
  MENU_NAME   VARCHAR2(30),
  IP          VARCHAR2(200),
  BROWSE      VARCHAR2(200),
  LOG_TYPE    VARCHAR2(100),
  EXEC_TIME   DATE,
  STATUS      VARCHAR2(10),
  DESCRIPTION CLOB,
  SYSTEM_ID   VARCHAR2(20)
)
tablespace METABASE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 320K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table METABASE.U_BASE_SYS_LOG
  is 'ϵͳ��־��';
comment on column METABASE.U_BASE_SYS_LOG.LOG_ID
  is '��־���';
comment on column METABASE.U_BASE_SYS_LOG.USER_ID
  is '�û����';
comment on column METABASE.U_BASE_SYS_LOG.USER_ENAME
  is '�û���¼��';
comment on column METABASE.U_BASE_SYS_LOG.USER_CNAME
  is '�û�����';
comment on column METABASE.U_BASE_SYS_LOG.INST_ID
  is '�������';
comment on column METABASE.U_BASE_SYS_LOG.INST_CNAME
  is '��������';
comment on column METABASE.U_BASE_SYS_LOG.MENU_ID
  is '��Ŀ���';
comment on column METABASE.U_BASE_SYS_LOG.MENU_NAME
  is '��Ŀ����';
comment on column METABASE.U_BASE_SYS_LOG.IP
  is '�û�IP';
comment on column METABASE.U_BASE_SYS_LOG.BROWSE
  is '�û������';
comment on column METABASE.U_BASE_SYS_LOG.LOG_TYPE
  is '��־����
00001--�û���¼��־';
comment on column METABASE.U_BASE_SYS_LOG.EXEC_TIME
  is 'ִ��ʱ��';
comment on column METABASE.U_BASE_SYS_LOG.STATUS
  is '״̬';
comment on column METABASE.U_BASE_SYS_LOG.DESCRIPTION
  is '����';
comment on column METABASE.U_BASE_SYS_LOG.SYSTEM_ID
  is 'ϵͳ���';
alter table METABASE.U_BASE_SYS_LOG
  add constraint PK_U_BASE_SYS_LOG primary key (LOG_ID)
  using index 
  tablespace METABASE
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
prompt Creating sequence ALARMFUNCTION_ID_SEQ
prompt ======================================
prompt
create sequence METABASE.ALARMFUNCTION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ALARMITEMFORMULATION_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.ALARMITEMFORMULATION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ALARM_RATEITEMFORMULA_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.ALARM_RATEITEMFORMULA_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ALARM_TB_RATEITEMTABLE_ID_SEQ
prompt ===============================================
prompt
create sequence METABASE.ALARM_TB_RATEITEMTABLE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ALARM_TU_ORDERFORM_FROMID_SEQ
prompt ===============================================
prompt
create sequence METABASE.ALARM_TU_ORDERFORM_FROMID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 42
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_BANK_GROUP_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.AUTH_BANK_GROUP_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 243
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_BANK_GROUP_MEMBER_ID_SEQ
prompt ===============================================
prompt
create sequence METABASE.AUTH_BANK_GROUP_MEMBER_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1467
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_CURR_GROUP_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.AUTH_CURR_GROUP_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 6
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_CURR_GROUP_MEMBER_ID_SEQ
prompt ===============================================
prompt
create sequence METABASE.AUTH_CURR_GROUP_MEMBER_ID_SEQ
minvalue 1
maxvalue 999999999999999999
start with 134
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_MENU_INFO_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.AUTH_MENU_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 684
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_OPER_GROUP_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.AUTH_OPER_GROUP_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_OPER_GROUP_MEMBER_ID_SEQ
prompt ===============================================
prompt
create sequence METABASE.AUTH_OPER_GROUP_MEMBER_ID_SEQ
minvalue 1
maxvalue 999999999999999999
start with 642
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_REPORT_GROUP_ID_SEQ
prompt ==========================================
prompt
create sequence METABASE.AUTH_REPORT_GROUP_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 162
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_REPORT_GROUP_MEM_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.AUTH_REPORT_GROUP_MEM_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1602
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_BANK_RIGHTS2_SEQ
prompt ============================================
prompt
create sequence METABASE.AUTH_USER_BANK_RIGHTS2_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 222
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_BANK_RIG_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.AUTH_USER_BANK_RIG_ID_SEQ
minvalue 1
maxvalue 999999999999999999
start with 425
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_CURR_RIG_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.AUTH_USER_CURR_RIG_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 125
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_GROUP_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.AUTH_USER_GROUP_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 346
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_GROUP_MEMBER_ID_SEQ
prompt ===============================================
prompt
create sequence METABASE.AUTH_USER_GROUP_MEMBER_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 533
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_INFO_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.AUTH_USER_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 248
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_INFO_SEQ
prompt ====================================
prompt
create sequence METABASE.AUTH_USER_INFO_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 248
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_MENU_SEQ
prompt ====================================
prompt
create sequence METABASE.AUTH_USER_MENU_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1028
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_OPER_RIG_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.AUTH_USER_OPER_RIG_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 126
increment by 1
cache 20;

prompt
prompt Creating sequence AUTH_USER_REPORT_RIGHTS_ID_SEQ
prompt ================================================
prompt
create sequence METABASE.AUTH_USER_REPORT_RIGHTS_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 571
increment by 1
cache 20;

prompt
prompt Creating sequence BANK_BASIS_ID_SEQ
prompt ===================================
prompt
create sequence METABASE.BANK_BASIS_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 144
increment by 1
cache 20;

prompt
prompt Creating sequence BANK_CL_INFO_ID_SEQ
prompt =====================================
prompt
create sequence METABASE.BANK_CL_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence BANK_LEVEL_ID_SEQ
prompt ===================================
prompt
create sequence METABASE.BANK_LEVEL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 4
increment by 1
cache 20;

prompt
prompt Creating sequence BANK_RELA_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.BANK_RELA_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1227
increment by 1
cache 20;

prompt
prompt Creating sequence BANK_UN_OPER_ID_SEQ
prompt =====================================
prompt
create sequence METABASE.BANK_UN_OPER_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence BANK_UN_OPER_MKCK_ID_SEQ
prompt ==========================================
prompt
create sequence METABASE.BANK_UN_OPER_MKCK_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence BATCH_GROUP_INFO_ID_SEQ
prompt =========================================
prompt
create sequence METABASE.BATCH_GROUP_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence BATCH_IMPORT_REFERENCE_ID_SEQ
prompt ===============================================
prompt
create sequence METABASE.BATCH_IMPORT_REFERENCE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence BATCH_SUBTASK_DEFINE_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.BATCH_SUBTASK_DEFINE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 42
increment by 1
cache 20;

prompt
prompt Creating sequence BATCH_SUBTASK_LOGINFO_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.BATCH_SUBTASK_LOGINFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 44
increment by 1
cache 20;

prompt
prompt Creating sequence BATCH_TASK_DEFINE_ID_SEQ
prompt ==========================================
prompt
create sequence METABASE.BATCH_TASK_DEFINE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 23
increment by 1
cache 20;

prompt
prompt Creating sequence BATCH_TASK_LOGINFO_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.BATCH_TASK_LOGINFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 105
increment by 1
cache 20;

prompt
prompt Creating sequence CLUSTER_COMMUNICATION_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.CLUSTER_COMMUNICATION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 3
increment by 1
cache 20;

prompt
prompt Creating sequence CLUSTER_MAN_QUEUE_ID_SEQ
prompt ==========================================
prompt
create sequence METABASE.CLUSTER_MAN_QUEUE_ID_SEQ
minvalue 1
maxvalue 9999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence CODE_INFO_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.CODE_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1928
increment by 1
cache 20;

prompt
prompt Creating sequence CODE_TYPE_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.CODE_TYPE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 269
increment by 1
cache 20;

prompt
prompt Creating sequence COLU_META_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.COLU_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 100014066
increment by 1
cache 20;

prompt
prompt Creating sequence CURR_BASIS_ID_SEQ
prompt ===================================
prompt
create sequence METABASE.CURR_BASIS_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 87
increment by 1
cache 20;

prompt
prompt Creating sequence CURR_TABLE_ID_SEQ
prompt ===================================
prompt
create sequence METABASE.CURR_TABLE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 4
increment by 1
cache 20;

prompt
prompt Creating sequence CURR_ZS_RELATION_ID_SEQ
prompt =========================================
prompt
create sequence METABASE.CURR_ZS_RELATION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 32
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_CLM_META_ID_SEQ
prompt =====================================
prompt
create sequence METABASE.DIM_CLM_META_ID_SEQ
minvalue 1
maxvalue 999999999999999999
start with 66664
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_INST_ITEM_SEQ
prompt ===================================
prompt
create sequence METABASE.DIM_INST_ITEM_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_INST_SET_SEQ
prompt ==================================
prompt
create sequence METABASE.DIM_INST_SET_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_META_ID_SEQ
prompt =================================
prompt
create sequence METABASE.DIM_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 62
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_REPORT_DOWN_LIMIT_SEQ
prompt ===========================================
prompt
create sequence METABASE.DIM_REPORT_DOWN_LIMIT_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_REPORT_ITEM_SEQ
prompt =====================================
prompt
create sequence METABASE.DIM_REPORT_ITEM_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_REPORT_SET_SEQ
prompt ====================================
prompt
create sequence METABASE.DIM_REPORT_SET_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_SEND_FILE_ITEM_NEW_SEQ
prompt ============================================
prompt
create sequence METABASE.DIM_SEND_FILE_ITEM_NEW_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_SEND_FILE_ITEM_SEQ
prompt ========================================
prompt
create sequence METABASE.DIM_SEND_FILE_ITEM_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_SEND_FILE_SET_NEW_SEQ
prompt ===========================================
prompt
create sequence METABASE.DIM_SEND_FILE_SET_NEW_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DIM_SEND_FILE_SET_SEQ
prompt =======================================
prompt
create sequence METABASE.DIM_SEND_FILE_SET_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence DOWN_CONTROL_ID_SEQ
prompt =====================================
prompt
create sequence METABASE.DOWN_CONTROL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 59
increment by 1
cache 20;

prompt
prompt Creating sequence DOWN_CONTROL_SEQ
prompt ==================================
prompt
create sequence METABASE.DOWN_CONTROL_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 59
increment by 1
cache 20;

prompt
prompt Creating sequence ERR_RETURN_INFO_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.ERR_RETURN_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 3
increment by 1
cache 20;

prompt
prompt Creating sequence FORM_TEMPLATE_ID_SEQ
prompt ======================================
prompt
create sequence METABASE.FORM_TEMPLATE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence FTP_TASK_FAIL_DETAIL_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.FTP_TASK_FAIL_DETAIL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 66748
increment by 1
cache 20;

prompt
prompt Creating sequence FTP_TASK_LOGINFO_ID_SEQ
prompt =========================================
prompt
create sequence METABASE.FTP_TASK_LOGINFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 67067
increment by 1
cache 20;

prompt
prompt Creating sequence FUNC_INFO_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.FUNC_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1017387
increment by 1
cache 20;

prompt
prompt Creating sequence INDEX_CLASS_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.INDEX_CLASS_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 3
increment by 1
cache 20;

prompt
prompt Creating sequence INDEX_DEFINE_STATUS_ID_SEQ
prompt ============================================
prompt
create sequence METABASE.INDEX_DEFINE_STATUS_ID_SEQ
minvalue 1
maxvalue 999999999999999999
start with 77
increment by 1
cache 20;

prompt
prompt Creating sequence INDEX_LIB_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.INDEX_LIB_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 100307170
increment by 1
cache 20;

prompt
prompt Creating sequence INDEX_POSITION_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.INDEX_POSITION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1000252973
increment by 1
cache 20;

prompt
prompt Creating sequence INDEX_RANGE_RIGHTS_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.INDEX_RANGE_RIGHTS_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1693
increment by 1
cache 20;

prompt
prompt Creating sequence ITEM_BASIS_SEQ
prompt ================================
prompt
create sequence METABASE.ITEM_BASIS_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_BANK_INFO_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.JRTJ_BANK_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_BANK_INFO_LIST_SEQ
prompt =========================================
prompt
create sequence METABASE.JRTJ_BANK_INFO_LIST_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 3
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_BANK_INFO_MAIN_SEQ
prompt =========================================
prompt
create sequence METABASE.JRTJ_BANK_INFO_MAIN_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 2
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_BANK_INFO_MEW_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.JRTJ_BANK_INFO_MEW_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_CURR_REL_ID_SEQ
prompt ======================================
prompt
create sequence METABASE.JRTJ_CURR_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 206
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_DATA_INFO_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.JRTJ_DATA_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 226
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_DOWNLOAD_CONFIG_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.JRTJ_DOWNLOAD_CONFIG_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 312
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_DOWNLOAD_TASK_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.JRTJ_DOWNLOAD_TASK_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 725
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_DT_REL_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.JRTJ_DT_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 42
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_D_FILE_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.JRTJ_D_FILE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_FORM_INFO_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.JRTJ_FORM_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_FREQ_REL_ID_SEQ
prompt ======================================
prompt
create sequence METABASE.JRTJ_FREQ_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 102
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_OLD_NEW_BANK_REL_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.JRTJ_OLD_NEW_BANK_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 2
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_OLD_NEW_CURR_REL_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.JRTJ_OLD_NEW_CURR_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 6
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_OLD_NEW_INDEX_REL_ID_SEQ
prompt ===============================================
prompt
create sequence METABASE.JRTJ_OLD_NEW_INDEX_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 3896
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_OLD_NEW_REGION_REL_ID_SEQ
prompt ================================================
prompt
create sequence METABASE.JRTJ_OLD_NEW_REGION_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 2
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_ON_BANK_SEQ
prompt ==================================
prompt
create sequence METABASE.JRTJ_ON_BANK_SEQ
minvalue 1
maxvalue 999999999999999999
start with 66664
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_ON_CURR_SEQ
prompt ==================================
prompt
create sequence METABASE.JRTJ_ON_CURR_SEQ
minvalue 1
maxvalue 999999999999999999
start with 66664
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_ON_DATAATTR_REL_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.JRTJ_ON_DATAATTR_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 8
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_ON_DATAATTR_SEQ
prompt ======================================
prompt
create sequence METABASE.JRTJ_ON_DATAATTR_SEQ
minvalue 1
maxvalue 999999999999999999
start with 66664
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_ON_INDEX_SEQ
prompt ===================================
prompt
create sequence METABASE.JRTJ_ON_INDEX_SEQ
minvalue 1
maxvalue 999999999999999999
start with 66664
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_ON_REGIN_SEQ
prompt ===================================
prompt
create sequence METABASE.JRTJ_ON_REGIN_SEQ
minvalue 1
maxvalue 999999999999999999
start with 66664
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_REPORT_CLM_INFO_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.JRTJ_REPORT_CLM_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 707
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_REPORT_INFO_ID_SEQ
prompt =========================================
prompt
create sequence METABASE.JRTJ_REPORT_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 623
increment by 1
cache 20;

prompt
prompt Creating sequence JRTJ_UNIT_REL_ID_SEQ
prompt ======================================
prompt
create sequence METABASE.JRTJ_UNIT_REL_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 85
increment by 1
cache 20;

prompt
prompt Creating sequence LOCK_INFO_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.LOCK_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 25572
increment by 1
cache 20;

prompt
prompt Creating sequence MEANING_FORMULA_INFO_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.MEANING_FORMULA_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 30061
increment by 1
cache 20;

prompt
prompt Creating sequence MEANING_FORMULA_VAR_ID_SEQ
prompt ============================================
prompt
create sequence METABASE.MEANING_FORMULA_VAR_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 30025
increment by 1
cache 20;

prompt
prompt Creating sequence MEANING_GROUP_INFO_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.MEANING_GROUP_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 30023
increment by 1
cache 20;

prompt
prompt Creating sequence OPER_LOG_CRASH_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.OPER_LOG_CRASH_ID_SEQ
minvalue 1
maxvalue 999999999999999999
start with 66664
increment by 1
cache 20;

prompt
prompt Creating sequence OPER_LOG_ID_SEQ
prompt =================================
prompt
create sequence METABASE.OPER_LOG_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 30074
increment by 1
cache 20;

prompt
prompt Creating sequence OPER_META_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.OPER_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 304
increment by 1
cache 20;

prompt
prompt Creating sequence ORGANIZATION_OTHER_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.ORGANIZATION_OTHER_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 87
increment by 1
cache 20;

prompt
prompt Creating sequence REINFORCE_BUFFERTABLE_SEQ
prompt ===========================================
prompt
create sequence METABASE.REINFORCE_BUFFERTABLE_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 25842
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_BATCH_GROUP_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.REPORT_BATCH_GROUP_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_BATCH_MEMBER_ID_SEQ
prompt ============================================
prompt
create sequence METABASE.REPORT_BATCH_MEMBER_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_BMESSAGE_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.REPORT_BMESSAGE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_BULLETIN_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.REPORT_BULLETIN_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_CALIBRE_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.REPORT_CALIBRE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 884
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_CELL_REMARK_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.REPORT_CELL_REMARK_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 60663
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_COMMON_FORMULA_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.REPORT_COMMON_FORMULA_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 51
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_CURR_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.REPORT_CURR_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 339
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_EDIT_LOCK_INFO_SEQ
prompt ===========================================
prompt
create sequence METABASE.REPORT_EDIT_LOCK_INFO_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 2
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_FILEUPLOAD_ID_SEQ
prompt ==========================================
prompt
create sequence METABASE.REPORT_FILEUPLOAD_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_FORMULA_BASE_ID_SEQ
prompt ============================================
prompt
create sequence METABASE.REPORT_FORMULA_BASE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 280449
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_FORMULA_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.REPORT_FORMULA_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 276934
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_IV_FORMULA_ID_SEQ
prompt ==========================================
prompt
create sequence METABASE.REPORT_IV_FORMULA_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 110270690
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_MEMO_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.REPORT_MEMO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_META_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.REPORT_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 6074
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_MODIFY_LOG_SEQ
prompt =======================================
prompt
create sequence METABASE.REPORT_MODIFY_LOG_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_OPER_RELATION_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.REPORT_OPER_RELATION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_PARTAKER_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.REPORT_PARTAKER_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_PV_SAVE_FORMAT_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.REPORT_PV_SAVE_FORMAT_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 247287
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_RANGE_RIGHTS_ID_SEQ
prompt ============================================
prompt
create sequence METABASE.REPORT_RANGE_RIGHTS_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_SEND_DATE_ID_SEQ
prompt =========================================
prompt
create sequence METABASE.REPORT_SEND_DATE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 5
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_STATUS_INFO_ID_SEQ
prompt ===========================================
prompt
create sequence METABASE.REPORT_STATUS_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 54740
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_SUBJECT_RELATION_ID_SEQ
prompt ================================================
prompt
create sequence METABASE.REPORT_SUBJECT_RELATION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 5617
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_TEMPLATE_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.REPORT_TEMPLATE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 6748
increment by 1
cache 20;

prompt
prompt Creating sequence REPOR_CRASH_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.REPOR_CRASH_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 100009713
increment by 1
cache 20;

prompt
prompt Creating sequence REPOR_STATU_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.REPOR_STATU_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 64
increment by 1
cache 20;

prompt
prompt Creating sequence SCHEME_TEMPLATE_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.SCHEME_TEMPLATE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SERVER_INFO_ID_SEQ
prompt ====================================
prompt
create sequence METABASE.SERVER_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 343
increment by 1
cache 20;

prompt
prompt Creating sequence STATUS_OPER_RELATION_ID_SEQ
prompt =============================================
prompt
create sequence METABASE.STATUS_OPER_RELATION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 398
increment by 1
cache 20;

prompt
prompt Creating sequence SUBJECT_META_ID_SEQ
prompt =====================================
prompt
create sequence METABASE.SUBJECT_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence TABLE_CLM_META_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.TABLE_CLM_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 11
increment by 1
cache 20;

prompt
prompt Creating sequence TABLE_META_ID_SEQ
prompt ===================================
prompt
create sequence METABASE.TABLE_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 3
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_ANALYSE_REPORT_SEQ
prompt =========================================
prompt
create sequence METABASE.TASK_ANALYSE_REPORT_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_AUDIT_INFO_SEQ
prompt =====================================
prompt
create sequence METABASE.TASK_AUDIT_INFO_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_BANK_DIM_SEQ
prompt ===================================
prompt
create sequence METABASE.TASK_BANK_DIM_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 636
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_BANK_LIMIT_SEQ
prompt =====================================
prompt
create sequence METABASE.TASK_BANK_LIMIT_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 105
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_BANK_STATUS_SEQ
prompt ======================================
prompt
create sequence METABASE.TASK_BANK_STATUS_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 49171
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_COMMIT_AGAIN_SEQ
prompt =======================================
prompt
create sequence METABASE.TASK_COMMIT_AGAIN_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_DEFINE_SEQ
prompt =================================
prompt
create sequence METABASE.TASK_DEFINE_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 67
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_INSTANCE_BANK_DIM_SEQ
prompt ============================================
prompt
create sequence METABASE.TASK_INSTANCE_BANK_DIM_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 50091
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_INSTANCE_MEMBERS_SEQ
prompt ===========================================
prompt
create sequence METABASE.TASK_INSTANCE_MEMBERS_SEQ
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_INSTANCE_REPORT_DIM_SEQ
prompt ==============================================
prompt
create sequence METABASE.TASK_INSTANCE_REPORT_DIM_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 16432
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_INSTANCE_SEQ
prompt ===================================
prompt
create sequence METABASE.TASK_INSTANCE_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 19112
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_OPER_META_ID_SEQ
prompt =======================================
prompt
create sequence METABASE.TASK_OPER_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 4
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_REPORT_DIM_SEQ
prompt =====================================
prompt
create sequence METABASE.TASK_REPORT_DIM_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 84
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_SUBJECT_RELATION_ID_SEQ
prompt ==============================================
prompt
create sequence METABASE.TASK_SUBJECT_RELATION_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1704
increment by 1
cache 20;

prompt
prompt Creating sequence TASK_USER_OPER_LOG_SEQ
prompt ========================================
prompt
create sequence METABASE.TASK_USER_OPER_LOG_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence TECH2TYPE_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.TECH2TYPE_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence UNIT_META_ID_SEQ
prompt ==================================
prompt
create sequence METABASE.UNIT_META_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 64
increment by 1
cache 20;

prompt
prompt Creating sequence USER_LOGIN_INFO_ID_SEQ
prompt ========================================
prompt
create sequence METABASE.USER_LOGIN_INFO_ID_SEQ
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;

prompt
prompt Creating view AUTH_BANK_GROUP
prompt =============================
prompt
create or replace view metabase.auth_bank_group as
select  "ID","GROUP_CODE","OWNER_TYPE","OWNER_ID","GROUP_NAME" from uprr.v_auth_bank_group_crms
/

prompt
prompt Creating view AUTH_BANK_GROUP_MEMBER
prompt ====================================
prompt
create or replace view metabase.auth_bank_group_member as
select  "ID","GROUP_CODE","MEMBER_CODE","MEMORDER_GROUP" from uprr.v_auth_bank_group_member_crms
/

prompt
prompt Creating view AUTH_CURR_GROUP_MEMBER
prompt ====================================
prompt
create or replace view metabase.auth_curr_group_member as
select g.id || c.id as "ID",g.group_code as "GROUP_CODE",c.curr_id as "MEMBER_CODE",'' as "MEMORDER_GROUP"
from auth_curr_group g inner join curr_basis c on 1<>2
/

prompt
prompt Creating view AUTH_OPER_GROUP_MEMBER
prompt ====================================
prompt
create or replace view metabase.auth_oper_group_member as
select g.id || o.id as "ID",g.group_code as "GROUP_CODE",o.oper_id as "MEMBER_CODE",'' as "MEMORDER_GROUP"
from auth_oper_group g inner join oper_meta o on 1<>2
/

prompt
prompt Creating view AUTH_REPORT_GROUP
prompt ===============================
prompt
create or replace view metabase.auth_report_group as
select distinct 1 as id,
         'R_R-'||obj.object_id as group_code,
         '0' as owner_type,
         '' as owner_id,
         obj.object_name as group_name
    from uprr.u_auth_role_resource rr
    inner join uprr.u_auth_res_map res on rr.res_id=res.res_id
    left join uprr.u_auth_object obj on rr.object_id=obj.object_id
    where rr.res_id in(select res_id from uprr.v_crms_system_rela ) and obj.object_type='ROLE'
/

prompt
prompt Creating view AUTH_REPORT_GROUP_MEMBER
prompt ======================================
prompt
create or replace view metabase.auth_report_group_member as
select distinct '' as id,
         'R_R-'||rr.object_id as GROUP_CODE,
         rr.res_detail_value as MEMBER_CODE,
         '' AS MEMBER_ORDER
    from uprr.u_auth_role_resource rr
    inner join uprr.u_auth_res_map res on rr.res_id=res.res_id
    left join uprr.u_auth_object obj on rr.object_id=obj.object_id
    where rr.res_id in(select res_id from uprr.v_crms_system_rela ) and obj.object_type='ROLE'
/

prompt
prompt Creating view AUTH_USER_BANK_RIGHTS
prompt ===================================
prompt
create or replace view metabase.auth_user_bank_rights as
select  "ID","BANK_GROUP_CODE","USER_CODE","IS_USER_GROUP","SYSTEM_ID" from uprr.v_auth_user_bank_rights_crms
/

prompt
prompt Creating view AUTH_USER_INFO
prompt ============================
prompt
create or replace view metabase.auth_user_info as
select distinct 0 as id,
                usr.user_id as user_id,
                usr.user_cname as user_name,
                usr.password as user_pass,
                usr.inst_id as bank_id,
                case
                  when adm.system_id is not null and inst.is_head='true'  then
                   '0'
                  else
                   '9'
                end AS role_id,
                usr.start_date,
                usr.end_date,
                usr.tel as link_tel,
                usr.email as e_mail,
                case usr.enabled
                  when 'false' then
                   '0'
                  when 'FALSE' then
                   '0'
                  else
                   '1'
                end as use_flag,
                '' as inform_flag,
                usr.user_ename as ip,
                0 as login_num,
                '' as ifldap
  from uprr.u_base_user usr
  left join (select *
               from uprr.u_auth_system_admin
              where system_id in
                    (select v.SYSTEM_ID from uprr.v_crms_system_rela v)) adm
   on usr.user_id = adm.user_id
   left join uprr.u_base_inst  inst
   on inst.inst_id=usr.inst_id
/

prompt
prompt Creating view AUTH_USER_CURR_RIGHTS
prompt ===================================
prompt
create or replace view metabase.auth_user_curr_rights as
select '' as ID,'allcurr' as curr_group_code ,user_id as user_code ,'N' is_user_group
from auth_user_info
/

prompt
prompt Creating view AUTH_USER_GROUP
prompt =============================
prompt
create or replace view metabase.auth_user_group as
select id,group_code,owner_type,owner_id,group_name,'B' as group_type from auth_bank_group
union all
select id,group_code,owner_type,owner_id,group_name,'C' as group_type  from auth_curr_group
union all
select id,group_code,owner_type,owner_id,group_name,'O' as group_type  from auth_oper_group
union all
select id,group_code,owner_type,owner_id,group_name,'R' as group_type  from auth_report_group
/

prompt
prompt Creating view AUTH_USER_OPER_RIGHTS
prompt ===================================
prompt
create or replace view metabase.auth_user_oper_rights as
select '' as ID,'alloper' as oper_group_code ,user_id as user_code ,'N' is_user_group
from auth_user_info
/

prompt
prompt Creating view AUTH_USER_REPORT_RIGHTS
prompt =====================================
prompt
create or replace view metabase.auth_user_report_rights as
select distinct '' as id,
          ru.role_id as report_group_code,
          ru.user_id as user_code,
          'N' as is_user_group
   from (select 'R_R-'||role_id as role_id,user_id from uprr.u_auth_role_user) ru inner join AUTH_REPORT_GROUP grp
   on ru.role_id=grp.group_code
/

prompt
prompt Creating view AUTH_USER_GROUP_MEMBER
prompt ====================================
prompt
create or replace view metabase.auth_user_group_member as
select "ID","BANK_GROUP_CODE" as group_code,"USER_CODE" as member_code,1 member_order from auth_user_bank_rights
union all
select "ID","CURR_GROUP_CODE" as group_code,"USER_CODE" as member_code,1 member_order  from auth_user_curr_rights
union all
select "ID","REPORT_GROUP_CODE" as group_code,"USER_CODE" as member_code,1 member_order  from auth_user_report_rights
union all
select "ID","OPER_GROUP_CODE" as group_code,"USER_CODE" as member_code,1 member_order  from auth_user_oper_rights
/

prompt
prompt Creating view BANK_BASIS
prompt ========================
prompt
create or replace view metabase.bank_basis as
select
       bank.inst_id as bank_id,
       bank.inst_name as bank_name,
       bank.parent_inst_id as BANK_SUPERIOR,
       bank.inst_layer as level_id,
       to_char(bank.start_date,'yyyy-mm-dd') as effect_date,
       bank.end_date as end_date,
       '' as id,
       'B' as bank_flag,
       '1' as bank_order,
       'Y' as IS_DEAL_WB,
       bank.email as email
 from uprr.u_base_inst bank
/

prompt
prompt Creating view BANK_LEVEL
prompt ========================
prompt
create or replace view metabase.bank_level as
select dic_value as id,dic_value as level_id,dic_value as level_type,dic_name as level_name from uprr.u_base_dictionary where dic_type='LEVEL'
/

prompt
prompt Creating view BASE_USER_EMAIL
prompt =============================
prompt
create or replace view metabase.base_user_email as
select "USER_ID","BANK_ID","SYSTEM_ID","CRMS_SUBJECT_ID" from uprr.base_user_email
/

prompt
prompt Creating view FORMULA_TYPES
prompt ===========================
prompt
create or replace view metabase.formula_types as
select oper_id as formula_type,OPER_NAME as type_name,OPER_ORDER as type_ORDER,
logic_type,oper_id  from oper_meta where
logic_type not in('workFlow','task','taskWorkFlow','reEdit','modify','pull','audit','tverify','page')
union
select 'headfoot','��ͷ��β',99,'headfoot','headfoot' from dual
/

prompt
prompt Creating view JRTJ_BANK_INFO_MAIN_VIEW
prompt ======================================
prompt
create or replace view metabase.jrtj_bank_info_main_view as
select  jrtj_bank_id ||  jrtj_area_id as jrtj_bank,jrtj_bank_name as bank_name from JRTJ_BANK_INFO_MAIN
/

prompt
prompt Creating view NEW_AUTH_BANK_RELATION_CELL
prompt =========================================
prompt
CREATE OR REPLACE VIEW METABASE.NEW_AUTH_BANK_RELATION_CELL AS
SELECT "INST_ID","SYSTEM_ID","USER_ID" FROM UPRR.V_USER_AUTH_BANK_RELATION_CELL
/

prompt
prompt Creating view NEW_AUTH_REPORT_RESOURCE
prompt ======================================
prompt
CREATE OR REPLACE VIEW METABASE.NEW_AUTH_REPORT_RESOURCE AS
SELECT r.SYSTEM_ID,r.RES_ID as REOIRT_RES_ID  FROM UPRR.V_CRMS_SYSTEM_RELA r
/

prompt
prompt Creating view NEW_AUTH_ROLE_RES
prompt ===============================
prompt
CREATE OR REPLACE VIEW METABASE.NEW_AUTH_ROLE_RES AS
SELECT "OBJECT_ID","RES_ID","RES_DETAIL_VALUE","RES_DETAIL_NAME","SYSTEM_ID" from uprr.u_auth_role_resource
/

prompt
prompt Creating view NEW_AUTH_USER_BANK_TYPE
prompt =====================================
prompt
create or replace view metabase.new_auth_user_bank_type as
select rr.system_id,ru.user_id ,MAX( rr.res_detail_value) as ORG_TYPE from uprr.u_auth_role_resource rr
join uprr.u_auth_role_user ru on rr.object_id=ru.role_id
join uprr.u_auth_role r on ru.role_id=r.role_id
where RES_ID=49 and  r.enabled=1
group by  rr.system_id,ru.user_id
/

prompt
prompt Creating view NEW_AUTH_USER_ROLE
prompt ================================
prompt
create or replace view metabase.new_auth_user_role as
select ru.user_id,r.role_id,r.system_id  from uprr.u_auth_role_user ru
join uprr.u_auth_role r on ru.role_id=r.role_id where r.enabled=1
/

prompt
prompt Creating view NEW_U_BASE_INST_RELA
prompt ==================================
prompt
CREATE OR REPLACE VIEW METABASE.NEW_U_BASE_INST_RELA AS
SELECT "INST_ID","INST_ID_LEVEL_1","INST_ID_LEVEL_2","INST_ID_LEVEL_3","INST_ID_LEVEL_4","INST_ID_LEVEL_5","INST_ID_LEVEL_6" FROM UPRR.U_BASE_INST_RELA
/

prompt
prompt Creating view REPORT_META_1104
prompt ==============================
prompt
create or replace view metabase.report_meta_1104 as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='6')
/

prompt
prompt Creating view REPORT_META_1104B
prompt ===============================
prompt
create or replace view metabase.report_meta_1104b as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='26')
/

prompt
prompt Creating view REPORT_META_B
prompt ===========================
prompt
create or replace view metabase.report_meta_b as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='26')
/

prompt
prompt Creating view REPORT_META_DLBL
prompt ==============================
prompt
create or replace view metabase.report_meta_dlbl as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='32')
/

prompt
prompt Creating view REPORT_META_FZ
prompt ============================
prompt
create or replace view metabase.report_meta_fz as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='31')
/

prompt
prompt Creating view REPORT_META_HBBB
prompt ==============================
prompt
create or replace view metabase.report_meta_hbbb as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
from report_meta
where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='98')
/

prompt
prompt Creating view REPORT_META_HN
prompt ============================
prompt
create or replace view metabase.report_meta_hn as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='99')
/

prompt
prompt Creating view REPORT_META_JSH
prompt =============================
prompt
create or replace view metabase.report_meta_jsh as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='60')
/

prompt
prompt Creating view REPORT_META_LLBB
prompt ==============================
prompt
create or replace view metabase.report_meta_llbb as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='40')
/

prompt
prompt Creating view REPORT_META_OTHER
prompt ===============================
prompt
create or replace view metabase.report_meta_other as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id<>'6' and rel.subject_id<>'1')
/

prompt
prompt Creating view REPORT_META_Q
prompt ===========================
prompt
create or replace view metabase.report_meta_q as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='30')
/

prompt
prompt Creating view REPORT_META_RH
prompt ============================
prompt
create or replace view metabase.report_meta_rh as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='1')
/

prompt
prompt Creating view REPORT_META_RHB
prompt =============================
prompt
create or replace view metabase.report_meta_rhb as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='11')
/

prompt
prompt Creating view REPORT_META_ZFBB
prompt ==============================
prompt
create or replace view metabase.report_meta_zfbb as
select "REPORT_ID","ID","REPORT_CH","REPORT_NAME","WORK_STOREPATH_ID","REPORT_STOREPATH_ID","CRASH_FLAG","PERIOD_FREQ","REPORT_ORDER","REPORT_TYPE","FORMAT_TYPE","SAVE_TYPE","SHORTCUT_CODE","UNIT_ID","CRASH_DIM","NEED_TOTAL","NEED_SUBTOTAL","SUBTOTAL_DIM","TOTAL_TYPE","PRECISION_DIGIT","IS_CONTROL_RANGE_RIGHTS","EFFECT_DATE"
    from report_meta
    where report_id in (select rel.report_id from report_subject_relation rel where rel.subject_id='50')
/

prompt
prompt Creating view REPORT_TOTAL_TYPE
prompt ===============================
prompt
create or replace view metabase.report_total_type as
select '-1' as total_id, '������' as total_name, '-1' as subject_id from crms_dual
union
select '0' as total_id, '�������¼����ܹ�ϵ' as total_name, '0' as subject_id from crms_dual
union
select subject_id as total_id, subject_name || '���ܹ�ϵ' as total_name, subject_id from subject_meta
/


spool off
