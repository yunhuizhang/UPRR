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
  is '指标评级数据表';
comment on column METABASE.ALARM_OLD_NEW_RELATION.NEW_REPORT_ID
  is '新系统报表ID';
comment on column METABASE.ALARM_OLD_NEW_RELATION.CURR_ID
  is '币别ID';
comment on column METABASE.ALARM_OLD_NEW_RELATION.OLD_REPORT_ID
  is '老系统报表ID';
comment on column METABASE.ALARM_OLD_NEW_RELATION.ROW_OFFSET
  is '老系统报表行偏移量';
comment on column METABASE.ALARM_OLD_NEW_RELATION.COL_OFFSET
  is '老系统报表列偏移量';

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
  is '监管评级模板表';
comment on column METABASE.ALARM_RATE_TEMPLATE.TEMPLATE_ID
  is '模板代码';
comment on column METABASE.ALARM_RATE_TEMPLATE.TEMPLATE_NAME
  is '模板名称';
comment on column METABASE.ALARM_RATE_TEMPLATE.TEMPLATE_CONTENT
  is '摸板内容';
comment on column METABASE.ALARM_RATE_TEMPLATE.START_DATE
  is '摸板生效时间';
comment on column METABASE.ALARM_RATE_TEMPLATE.END_DATE
  is '摸板失效时间';

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
  is '监管评级模板指标表';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.ROW_NUM
  is '行';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.COL_NUM
  is '列';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.FML
  is '取值公式';
comment on column METABASE.ALARM_RATE_TEMPLATE_FORMULA.FML_TYPE
  is '公式类型(fetch|pverify|sverify)';

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
  is '监管评级评分表';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.ROW_NUM
  is '行';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.COL_NUM
  is '列';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.DATA_DATE
  is '数据日期';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.BANK_ID
  is '机构代码';
comment on column METABASE.ALARM_RATE_TEMPLATE_VAL.VAL
  is '评分值';

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
  is '导入的规则信息表';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ABNORMITYID
  is '序号';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.A1FORMULA
  is '取本期值的公式';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.A0C0FORMULA
  is '取上期值的公式';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.EXPID
  is '计算公式，“1-5”';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ABNORMITYSTANDARD
  is '异常判定标准';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ABNORMITYDESC
  is '异常信息描述';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.STANDARDDESC
  is '判定标准描述';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.ORGCODE
  is '组织机构代码';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.REPORTID
  is '报表编号';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.VERSIONID
  is '报表版本';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.CURRID
  is '币种';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.DATARANGEID
  is '口径';
comment on column METABASE.ALARM_TB_ABNORMITYSTANDARD.UNITID
  is '页面数值显示方式，21为%方式，2为其他方式';
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
  is '发布数据记录表';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.MODELID
  is '类型id。例如103、等等';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.ORGCODE
  is '组织机构代码';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.DATATIME
  is '数据生成时间';
comment on column METABASE.ALARM_TB_ALARMDATAISSUE.DATAISSUE
  is '数据生成状态（20100721只有1状态）';

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
  is '预警公式表';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ID
  is '预警编号';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ALARMFUNCTION
  is '预警公式';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.ALARMTYPE
  is '预警类型';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.VERSION
  is '版本号';
comment on column METABASE.ALARM_TB_ALARMFUNCTION.USERDEFINED
  is '用户自定义预警值';

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
  is '预警指标公式表';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.FORMUID
  is '主键ID';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.FORMUTYPE
  is '项类型:0为指标，1为符号';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.CONTENT
  is '项内容:如果类型为指标，此处为采集指标编码。如果类型为符号，此处直接填符号';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.CONTENTNAME
  is '项名称:如果类型为指标，则显示指标名称。如果是符号则写符号';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.ORDERNUM
  is '次序编号,公式中项的顺序';
comment on column METABASE.ALARM_TB_ALARMITEMFORMULATION.VERSION
  is '版本号';

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
  is '预警指标表';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMCODE
  is '指标编码';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMNAME
  is '指标名称';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.PARENTID
  is '上级指标ID';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMORDER
  is '指标页面显示顺序';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMLEVEL
  is '指标层级';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMDESC
  is '预留字段';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.ITEMTYPE
  is '采集指标为0，预警指标为1';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.RULEDESC
  is '规则说明';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.FORMUDESC
  is '公式说明';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.MODELID
  is '模型ID，101为法人模型，102分支模型';
comment on column METABASE.ALARM_TB_ALARMITEMTABLE.VERSION
  is '数据文件版本号';

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
  is '指标判断表';
comment on column METABASE.ALARM_TB_ALARMMETADATA.ITEMID
  is '指标id';
comment on column METABASE.ALARM_TB_ALARMMETADATA.NORMALVALUE
  is '正常值';
comment on column METABASE.ALARM_TB_ALARMMETADATA.BESTVALUE
  is '最佳值';
comment on column METABASE.ALARM_TB_ALARMMETADATA.WORSTVALUE
  is '最差值';
comment on column METABASE.ALARM_TB_ALARMMETADATA.VERSION
  is '版本号';

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
  is '初始化参数表';
comment on column METABASE.ALARM_TB_INITARGUMENT.ORGCODE
  is '机构编码';
comment on column METABASE.ALARM_TB_INITARGUMENT.NATUREID
  is '性质编号';
comment on column METABASE.ALARM_TB_INITARGUMENT.SCALEID
  is '规模编号';
comment on column METABASE.ALARM_TB_INITARGUMENT.LEVELID
  is '等级编号';

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
  is '机构等级同业平均值';
comment on column METABASE.ALARM_TB_LEVELVALUE.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_LEVELVALUE.LEVELID
  is '等级编号';
comment on column METABASE.ALARM_TB_LEVELVALUE.TRADEVALUE
  is '同业平均值';
comment on column METABASE.ALARM_TB_LEVELVALUE.DATADATE
  is '数据时间';
comment on column METABASE.ALARM_TB_LEVELVALUE.BEFOREVALUE
  is '同业前20%的平均值';
comment on column METABASE.ALARM_TB_LEVELVALUE.AFTERVALUE
  is '同业后80%的平均值';
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
  is '指标模型表';
comment on column METABASE.ALARM_TB_MODELITEMTABLE.MODELID
  is '模型ID';
comment on column METABASE.ALARM_TB_MODELITEMTABLE.MODELTYPE
  is '模型类型';
comment on column METABASE.ALARM_TB_MODELITEMTABLE.MODELNAME
  is '模型名称';
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
  is '机构性质参数同业平均值表';
comment on column METABASE.ALARM_TB_NATUREVALUE.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_NATUREVALUE.NATUREID
  is '性质编号';
comment on column METABASE.ALARM_TB_NATUREVALUE.TRADEVALUE
  is '同业平均值';
comment on column METABASE.ALARM_TB_NATUREVALUE.DATADATE
  is '数据时间';
comment on column METABASE.ALARM_TB_NATUREVALUE.BEFOREVALUE
  is '同业前20%的平均值';
comment on column METABASE.ALARM_TB_NATUREVALUE.AFTERVALUE
  is '同业后80%的平均值';
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
  is '评级指标评分结果监管措施表';
comment on column METABASE.ALARM_TB_RATEITEMACTIONDESC.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_RATEITEMACTIONDESC.RATELEVEL
  is '评分级别';
comment on column METABASE.ALARM_TB_RATEITEMACTIONDESC.ACTIONDESC
  is '监管措施';

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
  is '评级指标规则说明表';
comment on column METABASE.ALARM_TB_RATEITEMDESC.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_RATEITEMDESC.ITEMDESC
  is '规则说明';
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
  is '评级指标计算公式表';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.FORMUID
  is '主键列，公式ID';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.FORMUTYPE
  is '项类型，0为指标，1为符号';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.CONTENT
  is '项内容，如果类型为指标，此处为采集指标编码。如果类型为符号，此处直接填符号';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.CONTENTNAME
  is '项名称，如果类型为指标，则此处写指标名称。 如果是符号，则直接写符号。';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.ORDERNUM
  is '公式中项的顺序';
comment on column METABASE.ALARM_TB_RATEITEMFORMULATION.VERSION
  is '版本号';
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
  is '评级指标评分结果说明表';
comment on column METABASE.ALARM_TB_RATEITEMLEVELDESC.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_RATEITEMLEVELDESC.RATELEVEL
  is '评分级别';
comment on column METABASE.ALARM_TB_RATEITEMLEVELDESC.LEVELDESC
  is '评分结果说明';

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
  is '评级指标表';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMCODE
  is '指标编码';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMNAME
  is '指标名称';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.PARENTID
  is '上级指标ID';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ORDERNUM
  is '指标排序';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMLEVEL
  is '指标层级';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMWEIGHT
  is '指标权重';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ITEMTYPE
  is '指标类型，采集指标为0，评级指标为1';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.CALTYPE
  is '评级计算类型/公式：MIN为孰低法，MAX为孰高法，AVG为平均法等，系统中只用到了孰低法。';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.FULLSCORE
  is '满分';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.ISSHOW
  is '是否显示，界面上有孰低法，只显示高的结点的值，指标名称叫(不良贷款率/不良资产率)';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.MODELID
  is '模型ID，定性指标201，定量指标202，综合模型203';
comment on column METABASE.ALARM_TB_RATEITEMTABLE.VERSION
  is '版本号';
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
  is '评级标准表';
comment on column METABASE.ALARM_TB_RATEMETA.RATEID
  is '编号';
comment on column METABASE.ALARM_TB_RATEMETA.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_RATEMETA.UPRATE
  is '比率上限';
comment on column METABASE.ALARM_TB_RATEMETA.DOWNRATE
  is '比率下限';
comment on column METABASE.ALARM_TB_RATEMETA.UPSCORE
  is '得分上限';
comment on column METABASE.ALARM_TB_RATEMETA.DOWNSCORE
  is '得分下限';
comment on column METABASE.ALARM_TB_RATEMETA.CALTYPE
  is '计算类型：0为直接取上下限计算，1为取行业平均值计算。';
comment on column METABASE.ALARM_TB_RATEMETA.VERSION
  is '版本号';
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
  is '数据生成时间表';
comment on column METABASE.ALARM_TB_RUNTIME.RUNTIME
  is ' 运行时间';
comment on column METABASE.ALARM_TB_RUNTIME.DATADATE
  is '数据时间';
comment on column METABASE.ALARM_TB_RUNTIME.ORGCODE
  is '机构代码';
comment on column METABASE.ALARM_TB_RUNTIME.FREQ
  is '频度';

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
  is '机构规模同业平均值';
comment on column METABASE.ALARM_TB_SCOPEVALUE.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TB_SCOPEVALUE.SCOPEID
  is '规模编号';
comment on column METABASE.ALARM_TB_SCOPEVALUE.TRADEVALUE
  is '同业平均值';
comment on column METABASE.ALARM_TB_SCOPEVALUE.DATADATE
  is '数据时间';
comment on column METABASE.ALARM_TB_SCOPEVALUE.BEFOREVALUE
  is '同业前20%的平均值';
comment on column METABASE.ALARM_TB_SCOPEVALUE.AFTERVALUE
  is '同业后80%的平均值';
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
  is '制度文件版本号信息表';
comment on column METABASE.ALARM_TB_SYSTEMVERSION.VERSIONID
  is '版本号';
comment on column METABASE.ALARM_TB_SYSTEMVERSION.VERSIONTYPE
  is '版本类型';
comment on column METABASE.ALARM_TB_SYSTEMVERSION.VERSIONDATE
  is '版本时间';
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
  is '异常变动表达式表';
comment on column METABASE.ALARM_TD_ABNORMITYEXP.EXPID
  is '表达式ID：1-5';
comment on column METABASE.ALARM_TD_ABNORMITYEXP.EXPRESSION
  is '表达式';
comment on column METABASE.ALARM_TD_ABNORMITYEXP.EXPDESC
  is '表达式描述';
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
  is '机构等级描述表';
comment on column METABASE.ALARM_TD_LEVELMETA.LEVELID
  is '等级编号';
comment on column METABASE.ALARM_TD_LEVELMETA.LEVELNAME
  is '等级名称';
comment on column METABASE.ALARM_TD_LEVELMETA.LEVELDESC
  is '等级描述';
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
  is '机构性质描述表';
comment on column METABASE.ALARM_TD_NATUREMETA.NATUREID
  is '性质编号';
comment on column METABASE.ALARM_TD_NATUREMETA.NATURENAME
  is '性质名称';
comment on column METABASE.ALARM_TD_NATUREMETA.NATUREDESC
  is '性质描述';
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
  is '机构规模描述表';
comment on column METABASE.ALARM_TD_SCOPEMETA.SCOPEID
  is '规模编号';
comment on column METABASE.ALARM_TD_SCOPEMETA.SCOPENAME
  is '规模名称';
comment on column METABASE.ALARM_TD_SCOPEMETA.SCOPEDESC
  is '规模描述';
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
  is '异常变动预警数据表';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.DATADATE
  is '数据时间';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.CURID
  is '币种ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.DATARANGEID
  is '口径ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.ORGCODE
  is '机构编码';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.REPORTID
  is '报表ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.ABNORMITYID
  is '异常标准ID';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.A1VALUE
  is 'A1本期值';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.A0C0VALUE
  is 'A0C0比较值';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTVALUE
  is '计算结果';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTALARM
  is '预警结果';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTDESC
  is '结果说明';
comment on column METABASE.ALARM_TF_ABNORMITYDATA.RESULTUNIT
  is '结果单位';

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
  is '预警指标数据表';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.ORGCODE
  is '机构编码';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.DATATIME
  is '数据时间';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.CURRVALUE
  is '当期值';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.ALARMRESULT
  is '预警结果：1 is green，2 is red ,3 is yellow ,4 is blue';
comment on column METABASE.ALARM_TF_ALARMDATAITEM.UALARMRESULT
  is '用户自定义预警结果：1 is green，2 is red ,3 is yellow ,4 is blue';
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
  is '基础采集指标数据表';
comment on column METABASE.ALARM_TF_CELLDATA.CELLITEMCODE
  is '指标编码，此列值为 类似于函数';
comment on column METABASE.ALARM_TF_CELLDATA.ORGCODE
  is '机构编码';
comment on column METABASE.ALARM_TF_CELLDATA.DATADATE
  is '数据时间';
comment on column METABASE.ALARM_TF_CELLDATA.CURRVALUE
  is '指标值';
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
  is '指标评级数据表';
comment on column METABASE.ALARM_TF_RATEDATA.ITEMID
  is '指标ID';
comment on column METABASE.ALARM_TF_RATEDATA.ORGCODE
  is '机构编码';
comment on column METABASE.ALARM_TF_RATEDATA.DATADATE
  is '数据时间';
comment on column METABASE.ALARM_TF_RATEDATA.CURRVALUE
  is '本期值';
comment on column METABASE.ALARM_TF_RATEDATA.RATESCORE
  is '评分';
comment on column METABASE.ALARM_TF_RATEDATA.FULLSCORE
  is '满分';
comment on column METABASE.ALARM_TF_RATEDATA.RATELEVEL
  is '评分级别和字符数据';
comment on column METABASE.ALARM_TF_RATEDATA.ISRED
  is '是否需要标红显示，0和null为不标红，1为标红';

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
  is '用户订单表';
comment on column METABASE.ALARM_TU_ORDERFORM.MENUID
  is '模块编号';
comment on column METABASE.ALARM_TU_ORDERFORM.USERID
  is '创建者';
comment on column METABASE.ALARM_TU_ORDERFORM.FORMTYPE
  is '预留字段，存共享订单等';
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
  is '用户订单时间表';
comment on column METABASE.ALARM_TU_ORDERFORMDATE.SELECTED
  is '1选中';

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
  is '用户订单指标表';
comment on column METABASE.ALARM_TU_ORDERFORMITEM.SELECTED
  is '1选中';

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
  is '用户订单级别表';
comment on column METABASE.ALARM_TU_ORDERFORMLEVEL.SELECTED
  is '1选中';

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
  is '用户订单性质表';
comment on column METABASE.ALARM_TU_ORDERFORMNATURE.SELECTED
  is '1选中';

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
  is '用户订单机构表';
comment on column METABASE.ALARM_TU_ORDERFORMORG.SELECTED
  is '1选中';

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
  is '用户订单类型表';
comment on column METABASE.ALARM_TU_ORDERFORMSCOPE.SELECTED
  is '1选中';

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
  is '用户ID';
comment on column METABASE.AUTH_ADMIN_SUBJECT.SUBJECT_ID
  is '主题ID 外键subject_meta';
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
  is '币种组代码';
comment on column METABASE.AUTH_CURR_GROUP.OWNER_TYPE
  is '所有者类型';
comment on column METABASE.AUTH_CURR_GROUP.OWNER_ID
  is '所有者ID';
comment on column METABASE.AUTH_CURR_GROUP.GROUP_NAME
  is '币种组名字';
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
  is '菜单ID';
comment on column METABASE.AUTH_MENU_INFO.REL_MENU_ID
  is '上级菜单ID';
comment on column METABASE.AUTH_MENU_INFO.MENU_NAME
  is '菜单名';
comment on column METABASE.AUTH_MENU_INFO.MENU_ORDER
  is '菜单顺序';
comment on column METABASE.AUTH_MENU_INFO.LINKPAGE
  is '菜单URL';
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
  is '菜单ID';
comment on column METABASE.AUTH_MENU_SUBJECT.SUBJECT_ID
  is '主题ID FK:SUBJECT_META';
comment on column METABASE.AUTH_MENU_SUBJECT.TABLE_CLASS
  is '此字段暂未用.';
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
  is '组代码';
comment on column METABASE.AUTH_OPER_GROUP.OWNER_TYPE
  is '所有者类型';
comment on column METABASE.AUTH_OPER_GROUP.OWNER_ID
  is '所有者代码';
comment on column METABASE.AUTH_OPER_GROUP.GROUP_NAME
  is '组名';
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
  is '此表暂不用';
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
  is '此表无用 ';
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
  is '用户组ID';
comment on column METABASE.AUTH_USER_MENU.MENU_ID
  is '菜单ID';
comment on column METABASE.AUTH_USER_MENU.IS_USER_GROUP
  is '是否用户组';
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
  is '组代码';
comment on column METABASE.BAK_AUTH_BANK_GROUP.OWNER_TYPE
  is '所有者类型';
comment on column METABASE.BAK_AUTH_BANK_GROUP.OWNER_ID
  is '所有者代码';
comment on column METABASE.BAK_AUTH_BANK_GROUP.GROUP_NAME
  is '组名';
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
  is '所有者类型';
comment on column METABASE.BAK_AUTH_REPORT_GROUP.OWNER_ID
  is '所有者代码';
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
  is 'Y/N  Y:用户编码是用户组编码. N 用户编码是用户编码';
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
  is 'Y/N  Y:用户编码是用户组编码. N 用户编码是用户编码';
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
  is '所有者类型0 - 全行 1 －本分行 2－ 本用户';
comment on column METABASE.BAK_AUTH_USER_GROUP.OWNER_ID
  is '所有者代码';
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
  is 'Y/N  Y:用户编码是用户组编码. N 用户编码是用户编码';
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
  is '用户编码';
comment on column METABASE.BAK_AUTH_USER_REPORT_RIGHTS.IS_USER_GROUP
  is 'Y/N  Y:用户编码是用户组编码. N 用户编码是用户编码';
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
  is '机构代码(Busi PK)';
comment on column METABASE.BAK_BANK_BASIS.ID
  is 'AK';
comment on column METABASE.BAK_BANK_BASIS.BANK_NAME
  is '机构名称';
comment on column METABASE.BAK_BANK_BASIS.BANK_FLAG
  is '机构类型';
comment on column METABASE.BAK_BANK_BASIS.LEVEL_ID
  is 'FK(bank_level.leve_id)';
comment on column METABASE.BAK_BANK_BASIS.BANK_SUPERIOR
  is '机构的行政上级机构,与机构汇总关系不同.';
comment on column METABASE.BAK_BANK_BASIS.BANK_ORDER
  is '这这段将通过bank_relation代替,此处字段暂不用. [ 当机构是管理部时,需要设置此字段. 汇总时将按管理1,2,3,4.....显示';
comment on column METABASE.BAK_BANK_BASIS.IS_DEAL_WB
  is '是否开展外币业务';
comment on column METABASE.BAK_BANK_BASIS.EFFECT_DATE
  is '机构启用时间';
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
  is '等级代码';
comment on column METABASE.BAK_BANK_LEVEL.LEVEL_TYPE
  is '等级类型';
comment on column METABASE.BAK_BANK_LEVEL.LEVEL_NAME
  is '等级名称';
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
  is '机构代码FK:BANK_BASIS.BANK_ID';
comment on column METABASE.BANK_CL_INFO.ID
  is 'sequence';
comment on column METABASE.BANK_CL_INFO.VALUE
  is '机构变量值';
comment on column METABASE.BANK_CL_INFO.VALUE_TYPE
  is '机构变量类型';

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
  is '上级机构代码';
comment on column METABASE.BANK_RELATION.BANK_REL
  is '下级机构代码';
comment on column METABASE.BANK_RELATION.START_DATE
  is '开始日期';
comment on column METABASE.BANK_RELATION.END_DATE
  is '结束日期';
comment on column METABASE.BANK_RELATION.NODE_FLAG
  is '暂不用字段';
comment on column METABASE.BANK_RELATION.TOTAL_TYPE
  is '汇总类型code_info.reportTotalType';
comment on column METABASE.BANK_RELATION.BANK_ORDER
  is '汇总时显示的顺序（仅变长表汇总时用到）';
comment on column METABASE.BANK_RELATION.IS_TOTAL
  is '汇总时是否只显示而不加其值（仅变长表汇总时用到）';
comment on column METABASE.BANK_RELATION.TOTAL_FLAG
  is '汇总计算符 默认为+，可为- 即倒减功能时使用';
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
  is '机构禁止操作信息列表';
comment on column METABASE.BANK_UN_OPER.BANK_ID
  is '机构编号';
comment on column METABASE.BANK_UN_OPER.OPER_ID
  is '操作编号';
comment on column METABASE.BANK_UN_OPER.SUBJECT_ID
  is '主题编号';
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
  is '机构禁止操作信息审核列表';
comment on column METABASE.BANK_UN_OPER_MKCK.BANK_ID
  is '机构编号';
comment on column METABASE.BANK_UN_OPER_MKCK.OPER_ID
  is '操作编号';
comment on column METABASE.BANK_UN_OPER_MKCK.SUBJECT_ID
  is '主题编号';
comment on column METABASE.BANK_UN_OPER_MKCK.MKCK_TYPE
  is 'Make类型_1新增;2删除';
comment on column METABASE.BANK_UN_OPER_MKCK.MKCK_STATUS
  is '状态_1提交修改;2审核;3取消';
comment on column METABASE.BANK_UN_OPER_MKCK.MAKER
  is '修改人';
comment on column METABASE.BANK_UN_OPER_MKCK.MAKE_TIME
  is '修改时间';
comment on column METABASE.BANK_UN_OPER_MKCK.CHECKER
  is '审核人';
comment on column METABASE.BANK_UN_OPER_MKCK.CHECK_TIME
  is '审核时间';
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
  is '此表在UPRR暂未用到';
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
  is ' 报表迁移配置 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.REPORT_ID
  is ' 报表编号 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.SOURCE_REPORT_ID
  is ' 源报表编号 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.CURR_ID
  is ' 币种 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.OFFSET_X
  is ' 偏移开始行 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.OFFSET_Y
  is ' 偏移开始列 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.START_ROW
  is ' 开始行 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.END_ROW
  is ' 结束行 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.START_COL
  is ' 开始列 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.END_COL
  is ' 结束列 ';
comment on column METABASE.BATCH_IMPORT_REFERENCE.SUBJECT_ID
  is ' 报表主题 ';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BATCH_SUBID
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_SUBTASK_DEFINE.REPORT_ID
  is '报表组代码auth_report_group.group_code';
comment on column METABASE.BATCH_SUBTASK_DEFINE.OPER_ID
  is '操作组auth_oper_group.group_code';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM1
  is '机构组auth_bank_group.group_code';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM2
  is '基本维度2';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM3
  is '基本维度3';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM4
  is '基本维度4';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BASE_DIM5
  is '基本维度4';
comment on column METABASE.BATCH_SUBTASK_DEFINE.BATCH_TYPE
  is '批处理类型Ar(artificial)人工；Au(automate)自动。';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.ID
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.RUNTIME_LOGID
  is '运行时任务日志ID';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM1
  is '基本维度1';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM2
  is '基本维度2';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM3
  is '基本维度3';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM4
  is '基本维度4';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.BASE_DIM5
  is '基本维度4';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.CURR_STATUS
  is '当前状态';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.START_DATE
  is '开始日期';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.END_DATE
  is '结束日期';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.OPER_ID
  is '操作组auth_oper_group.group_code';
comment on column METABASE.BATCH_SUBTASK_LOGINFO.REPORT_ID
  is '报表组auth_report_group.group_code';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_TASK_DEFINE.BATCH_ID
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_TASK_DEFINE.EXEC_OFFSET
  is '执行天数偏移';
comment on column METABASE.BATCH_TASK_DEFINE.START_DATE
  is '开始日期';
comment on column METABASE.BATCH_TASK_DEFINE.END_DATE
  is '结束日期';
comment on column METABASE.BATCH_TASK_DEFINE.IS_USING
  is '可用标志(Y/N是否暂停批处理任务)';
comment on column METABASE.BATCH_TASK_DEFINE.DEAL_FREQ
  is '处理周期(code_info.report_freq)';
comment on column METABASE.BATCH_TASK_DEFINE.INIT_DATE
  is '初始日期(该任务批次第一次运行的时间)';
comment on column METABASE.BATCH_TASK_DEFINE.EXEC_ORDER
  is '执行顺序(区分任务批次的执行顺序)';
comment on column METABASE.BATCH_TASK_DEFINE.LATEST_BATCH_ID
  is '最近运行批处理任务id';
comment on column METABASE.BATCH_TASK_DEFINE.SERVER_ID
  is '服务器ID';
comment on column METABASE.BATCH_TASK_DEFINE.RELY_ETL_TASKS
  is '依赖的ETL任务(可能多个,必须使用逗号隔开) 关联datacore.etl_logger.task_code';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_TASK_LOGINFO.RUNTIME_LOGID
  is '此表在UPRR暂未用到';
comment on column METABASE.BATCH_TASK_LOGINFO.CURR_STATUS
  is '当前状态';
comment on column METABASE.BATCH_TASK_LOGINFO.START_DATE
  is '开始日期';
comment on column METABASE.BATCH_TASK_LOGINFO.END_DATE
  is '结束日期';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.CHECK_ERR_INFO.OTHER_DIM
  is '其它维度';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM1
  is '基本维度1';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM2
  is '基本维度2';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM3
  is '基本维度3';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM4
  is '基本维度4';
comment on column METABASE.CHECK_ERR_INFO.BASE_DIM5
  is '基本维度4';
comment on column METABASE.CHECK_ERR_INFO.REPORT_ID
  is '报表代码';
comment on column METABASE.CHECK_ERR_INFO.REPORT_DATE
  is '报表日期';
comment on column METABASE.CHECK_ERR_INFO.COL_DIM
  is '分析值列';
comment on column METABASE.CHECK_ERR_INFO.BATCH_TYPE
  is '校验处理类型  (1-自动批处理 2-手工批处理3－单个校验)';
comment on column METABASE.CHECK_ERR_INFO.ERR_MSG_ID
  is '错误代码';
comment on column METABASE.CHECK_ERR_INFO.OPER_TIME
  is '操作时间';
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
  is '批处理日志主表';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.BATCH_ID
  is '批处理ID';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.TASK_ID
  is '任务ID';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.REPORT_DATE
  is '数据日期';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.LAUNCH_USER
  is '启动用户';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.REPORT_UNITS
  is '要处理的报表列表 ';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.BANK_UNITS
  is '要处理的机构列表 ';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.RUN_MODE
  is '运行方式(集群，单机)';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.STATUS
  is '运行状态(ready,running,buildfail,fail,finish,stopping)';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.LAUNCH_TIME
  is '启动时间';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.END_TIME
  is '结束时间';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.TASK_NUM
  is '任务数';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.SUBJECT_ID
  is '任务所属主题';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.RUN_MEMO
  is '运行备注';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.BATCH_TYPE
  is '批处理类型';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.REGISTER_TIME
  is '批处理请求时间';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.OPER_UNITS
  is '要处理的操作列表 ';
comment on column METABASE.CLUSTER_BATCH_TASK_LOG.CONTEXT
  is '该批处理的调用上下文(子系统/菜单/调用者等)';
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
  is '批处理停止日志表';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.BATCH_ID
  is '批ID';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.STOP_USER
  is '停止用户';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.REQUEST_TIME
  is '请求时间';
comment on column METABASE.CLUSTER_BATCH_TASK_STOP.STOP_TIME
  is '停止时间';
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
  is '批处理日志单元信息表';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.BATCH_ID
  is '批处理 ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.REPORT_ID
  is '报表ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.BANK_ID
  is '机构ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.CURR_ID
  is '币种ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.REPORT_DATE
  is '报表日期';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.OPER_ID
  is '操作ID';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.STATUS
  is '状态';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_NODE
  is '运行节点';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_WORKER
  is '运行线程';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_TIME
  is '运行时间';
comment on column METABASE.CLUSTER_BATCH_TASK_UNIT_LOG.RUN_MEMO
  is '描述';
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
  is '自动任务的集群任务单元表';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.MASTER_IDENTIFY
  is '下发任务的集群主服务器';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.SLAVE_IP
  is '竞争到任务的节点IP';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.WORKER_THREAD
  is '竞争到任务的节点线程';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.UNIT_OBJECT
  is '任务单元';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.UNIT_SEQ
  is '任务标识号';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.UNIT_STATUS
  is '任务状态(ready,running,finish)';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.START_TIME
  is '任务开始时间';
comment on column METABASE.CLUSTER_TASK_AUTO_CC_UNIT.END_TIME
  is '任务结束时间';
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
  is '集群主服务器任务下发表(正常情况 下，每日主服务器可能不一样,动态注册)';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_IDENTIFIER
  is '集群主服务器IP及机器名';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_ISSUE_DATE
  is '任务下发日';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_STATUS
  is '任务下发状态checking,finished,terminal';
comment on column METABASE.CLUSTER_TASK_AUTO_CHECK.CHECK_TIME
  is '下发检测时间';
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
  is '手动批处理_集群任务队列';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.ID
  is '自增序列:cluster_man_queue_id_seq ';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.TASK_ID
  is '任务id FK:TASK_DEFINE.TASK_ID';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.REPORT_DATE
  is '数据日期';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.REGISTER_TIME
  is '请求处理时间';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.REGISTER_NODE
  is '请求接受节点';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.STATUS
  is '处理状态ready,running,finish';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.RUN_START_TIME
  is '开始运行时间';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.RUN_END_TIME
  is '结束运行时间';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.BATCH_ID
  is '批处理ID';
comment on column METABASE.CLUSTER_TASK_MANUAL_QUEUE.SUBJECT_ID
  is '主题';

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
  is '代码类型';
comment on column METABASE.CODE_INFO.CODE_VALUE
  is '代码值';
comment on column METABASE.CODE_INFO.CODE_LABEL
  is '对应前台显示标识';
comment on column METABASE.CODE_INFO.CODE_SORT
  is '顺序';
comment on column METABASE.CODE_INFO.CODE_VALUE_MEMO
  is '代码值扩展desc';
comment on column METABASE.CODE_INFO.IS_SYSTEM
  is '是否系统默认';
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
  is '代码类型';
comment on column METABASE.CODE_TYPE.ID
  is 'sequence';
comment on column METABASE.CODE_TYPE.TYPE_NAME
  is '类型名称';
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
  is '报表代码';
comment on column METABASE.COLUMN_META.DIM_VAR_TYPE
  is '维度变量类型 引用 dim_meta.meta_id, 但当是分析值时,此列能为空. ';
comment on column METABASE.COLUMN_META.COLUMN_ID
  is '字段代码';
comment on column METABASE.COLUMN_META.COLUMN_CH
  is '字段中文名称';
comment on column METABASE.COLUMN_META.COLUMN_CLASS
  is '字段种类 D:维度变量 A:属性变量  V:分析变量 P:位置变量';
comment on column METABASE.COLUMN_META.COLUMN_FIELD_TYPE
  is '字段数据类型 C:编码型(到code_info里取.如科目编号将显示为科目名称）N:数值型（包括decimal、int、numeric、long、float等）
S(字符型)';
comment on column METABASE.COLUMN_META.COLUMN_ORDER
  is '字段顺序';
comment on column METABASE.COLUMN_META.IS_BASE_DIM
  is '是否基本维度';
comment on column METABASE.COLUMN_META.IS_COLUMN_SHOW
  is '是否显示字段';
comment on column METABASE.COLUMN_META.DISP_LEN
  is '显示长度';
comment on column METABASE.COLUMN_META.COLUMN_LEN
  is '字段长度';
comment on column METABASE.COLUMN_META.CODE_TYPE
  is '代码类型 对于属性型数据,需到code_info对应code_type里找相关值. 如五级分类.';
comment on column METABASE.COLUMN_META.FORMAT_RULES
  is '字段显示格式';
comment on column METABASE.COLUMN_META.TRUNCATE_FLAG
  is '是否截位或者四舍五入';
comment on column METABASE.COLUMN_META.ROUND_DIGIT
  is '四舍五入位数';
comment on column METABASE.COLUMN_META.CONV_FLAG
  is '是否折算标志';
comment on column METABASE.COLUMN_META.COLUMN_INFO
  is '字段附加信息';
comment on column METABASE.COLUMN_META.SUM_FLAG
  is '字段是否汇总标志';
comment on column METABASE.COLUMN_META.IS_ROWCLM_FLAG
  is '是否行列标志 R 行(row) C 列(column) ';
comment on column METABASE.COLUMN_META.RELATIVE_COLUMN_NAME
  is '对应位置列名';
comment on column METABASE.COLUMN_META.TOTAL_TYPE
  is '该列合计方式（求和 Sum ／求平均 Aver ／求最大 Max／求最小 Min /TOP(N) TopN）';
comment on column METABASE.COLUMN_META.PERMIT_EDIT
  is '列数据是否允许编辑.Y/N/X(推荐不可编辑) 主用于报表处理的编辑操作时.';
comment on column METABASE.COLUMN_META.PERMIT_CURR_DIVIDE
  is '列数据是否能应用币种的运算 Y/N .如金额列数据应由数据库中的元转化成报表显示的万元. 但如果是笔数列就不能应用此规则. 此列主要在报表显示时用到.';
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
  is '对于 DV 表，列数置为 0';
comment on column METABASE.COOR_MEMO.MODIFY_DATE
  is '修改日期';
comment on column METABASE.COOR_MEMO.RESPONSIBLE_USER
  is '责任人';
comment on column METABASE.COOR_MEMO.ACTION_USER
  is '操作人';
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
  is '币种ID';
comment on column METABASE.CURR_BASIS.CURR_CODE
  is '币种代码';
comment on column METABASE.CURR_BASIS.CURR_CH
  is '币种中文名称';
comment on column METABASE.CURR_BASIS.CURR_LEV
  is '币种等级';
comment on column METABASE.CURR_BASIS.CURR_TYPE
  is '币种类型';
comment on column METABASE.CURR_BASIS.ZS_CONV_FLAG
  is '折算币标志Y/N';
comment on column METABASE.CURR_BASIS.ZS_OBJCURR
  is '折算目标币';
comment on column METABASE.CURR_BASIS.EFFECT_DATE
  is '币种启用时间';
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
  is '源币';
comment on column METABASE.CURR_TABLE.D_CURR_ID
  is '目标币';
comment on column METABASE.CURR_TABLE.CURR_ZSL
  is '折算率';
comment on column METABASE.CURR_TABLE.START_DATE
  is '开始日期';
comment on column METABASE.CURR_TABLE.END_DATE
  is '结束日期';
comment on column METABASE.CURR_TABLE.CONVERT_SYSTEM
  is '折算体系';
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
  is '折算币';
comment on column METABASE.CURR_ZSROOT.SCURR_ID
  is '原币';
comment on column METABASE.CURR_ZSROOT.CONVERT_SYSTEM
  is '折算体系';
comment on column METABASE.CURR_ZSROOT.CONV_OPER
  is '折算类型';
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
  is '折算目标币种';
comment on column METABASE.CURR_ZS_RELATION.SRC_CURR_ID
  is '被折算币种';
comment on column METABASE.CURR_ZS_RELATION.ZS_ORDER
  is '变长表折算显示顺序,特别用于变长表折算后需要做本表汇总时,控制合并重复项后,原有的bank_relation里的机构显示顺序不变,如:信贷01-2的总行合计汇总要求结果';
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
  is '机构集设置';
comment on column METABASE.DIM_INST_ITEM.INST_ITEM_ID
  is '机构集设定ID';
comment on column METABASE.DIM_INST_ITEM.INST_SET_ID
  is '机构集编号';
comment on column METABASE.DIM_INST_ITEM.INST_ID
  is '机构编号';
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
  is '机构集';
comment on column METABASE.DIM_INST_SET.INST_SET_ID
  is '机构集ID';
comment on column METABASE.DIM_INST_SET.INST_SET_CODE
  is '机构集编号';
comment on column METABASE.DIM_INST_SET.INST_SET_NAME
  is '机构集名称';
comment on column METABASE.DIM_INST_SET.INST_SET_DES
  is '机构集描述
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
  is '维度ID';
comment on column METABASE.DIM_META.ID
  is 'ID';
comment on column METABASE.DIM_META.DIM_NAME
  is '维度的中文名称';
comment on column METABASE.DIM_META.DIM_TABLE
  is '报表代码';
comment on column METABASE.DIM_META.FIELD_ID
  is 'ID字段名';
comment on column METABASE.DIM_META.FIELD_NAME
  is '字段名name';
comment on column METABASE.DIM_META.DIM_RELATION_TABLE
  is '维度关系物理表(分级汇总时使用)';
comment on column METABASE.DIM_META.GROUP_RELATION_TABLE
  is '维度所属组表名称';
comment on column METABASE.DIM_META.FIELD_ORDER_BY
  is '显示时排序使用';
comment on column METABASE.DIM_META.DIM_ORDER
  is '当报表使用一组纬度作为基本纬度时,按此进行BASE_ITEM1-5的排序';
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
  is '报表下载限制';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.ID
  is '主键';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.HOST_NAME
  is '主机名';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.SUBJECT_ID
  is '报表主题';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.STATUS
  is '0,停用;1,启用';
comment on column METABASE.DIM_REPORT_DOWN_LIMIT.REMARK
  is '备注(暂不使用)';
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
  is '报表集设置';
comment on column METABASE.DIM_REPORT_ITEM.REPORT_ITEM_ID
  is '报表集设定ID';
comment on column METABASE.DIM_REPORT_ITEM.REPORT_SET_ID
  is '报表集ID';
comment on column METABASE.DIM_REPORT_ITEM.REPORT_ID
  is '报表ID';
comment on column METABASE.DIM_REPORT_ITEM.ORDER_NUM
  is '排序值';
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
  is '报表集';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_ID
  is '报表集ID';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_CODE
  is '报表集编号';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_NAME
  is '报表集名称';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_DES
  is '报表集描述';
comment on column METABASE.DIM_REPORT_SET.REPORT_SET_SUBJECT
  is '报表集主题';
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
  is '报文集设置';
comment on column METABASE.DIM_SEND_FILE_ITEM.SEND_FILE_ITEM_ID
  is '报文集设定ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.SEND_FILE_SET_ID
  is '报文集ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.INST_ID
  is '机构ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.REPORT_ID
  is '报文ID';
comment on column METABASE.DIM_SEND_FILE_ITEM.ORDER_NUM
  is '排序值';
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
  is '报文集';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_ID
  is '报文集ID';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_CODE
  is '报文集编号';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_NAME
  is '报文集名称';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_DES
  is '报文集描述';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_SEND
  is '报文报送机构';
comment on column METABASE.DIM_SEND_FILE_SET_NEW.SEND_FILE_SET_SUBJECT
  is '报文集主题';
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
  is '报文集设置';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.SEND_FILE_ITEM_ID
  is '报文集设定ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.SEND_FILE_SET_ID
  is '报文集ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.INST_ID
  is '机构ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.REPORT_ID
  is '报文ID';
comment on column METABASE.DIM_SEND_FILE_ITEM_NEW.ORDER_NUM
  is '排序值';
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
  is '报文集';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_ID
  is '报文集ID';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_CODE
  is '报文集编号';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_NAME
  is '报文集名称';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_DES
  is '报文集描述
';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_SEND
  is '报文报送机构';
comment on column METABASE.DIM_SEND_FILE_SET.SEND_FILE_SET_SUBJECT
  is '报文集主题';
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
  is '此表在UPRR暂未用到';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.ERR_MSG.ERR_MSG_ID
  is '错误代码';
comment on column METABASE.ERR_MSG.ERR_MSG
  is '错误信息';
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
  is '此表在UPRR暂未用到';
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
  is '此表在UPRR暂未用到';

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
  is '快报模板';
comment on column METABASE.FORM_TEMPLATE.ID
  is 'sequence, 序列名称FORM_TEMPLATE_ID_SEQ';
comment on column METABASE.FORM_TEMPLATE.FILE_NAME
  is '快报模板名称';
comment on column METABASE.FORM_TEMPLATE.PUBLISH_DATE
  is '上传日期';
comment on column METABASE.FORM_TEMPLATE.FILE_CONTENT
  is '快报模板内容';
comment on column METABASE.FORM_TEMPLATE.DATA_BANK
  is '数据所属机构';
comment on column METABASE.FORM_TEMPLATE.DATA_DATE
  is '数据时间';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.TASK_ID
  is '任务ID';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.REPORT_DIMS
  is '报表名称含有维度信息';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.MEMO
  is '异常信息保存';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.DETAIL_TYPE
  is 'E(exception)/M(message)主要用于记录导出方便用户选择导出
异常错误还是导入过程中产生的异常信息，比如无权限，类型不匹配';
comment on column METABASE.FTP_TASK_FAIL_DETAIL.ID
  is '无逻辑ID';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.FTP_TASK_LOGINFO.TASK_ID
  is '任务ID';
comment on column METABASE.FTP_TASK_LOGINFO.TASK_STATUS
  is '任务状态';
comment on column METABASE.FTP_TASK_LOGINFO.LOAD_SUCESS_REPORT_NUM
  is '成功导入报表个数';
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
  is '函数伪代码';
comment on column METABASE.FUNC_INFO.FUNC_CODE
  is '后台解析函数名';
comment on column METABASE.FUNC_INFO.FUNC_TYPE
  is '函数类型 .C(calc计算) F(fetch取数) O(other其它)';
comment on column METABASE.FUNC_INFO.FUNC_NAME
  is '函数中文名称';
comment on column METABASE.FUNC_INFO.FUNC_PROTOTYPE
  is '函数原型p代表返回一个值,a代表返回一区域值';
comment on column METABASE.FUNC_INFO.FUNC_SAMPLE
  is '函数例子';
comment on column METABASE.FUNC_INFO.FORMAT_TYPE
  is '该公式只能用于的报表格式类别 (F 定长(fixed)  C  变长(change)) A(Assemble)组合报表';
comment on column METABASE.FUNC_INFO.REGEX_EXPR
  is '函数的正则表示';
comment on column METABASE.FUNC_INFO.REMARK_EXPR
  is '函数中文意义的正则表示';
comment on column METABASE.FUNC_INFO.SUB_FUNC
  is '正则表示中的替换变量';
comment on column METABASE.FUNC_INFO.IS_SHOW
  is '是否显示在函数列表(很专业复杂的公式及可现场配置的公式将不显示)';
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
  is '此表在UPRR暂未用到?';
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
  is '此表在UPRR暂未用到?';
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
  is '此表在UPRR暂未用到';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.INDEX_DEFINE_STATUS.CALIBRE_ID
  is '口径ID';
comment on column METABASE.INDEX_DEFINE_STATUS.FINISHED
  is '该口径下的报表，指标是否已经定义完成。‘Y’已完成';
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
  is '系统体系id';
comment on column METABASE.INDEX_LIB.REPORT_ID
  is '报表ID';
comment on column METABASE.INDEX_LIB.INDEX_ID
  is '指标ID';
comment on column METABASE.INDEX_LIB.CLASS_ID
  is '指标类';
comment on column METABASE.INDEX_LIB.INDEX_NAME
  is '指标名';
comment on column METABASE.INDEX_LIB.DATA_TYPE
  is '数据属性';
comment on column METABASE.INDEX_LIB.INDEX_CODE
  is '指标CODE';
comment on column METABASE.INDEX_LIB.EDITABLE
  is '列数据是否允许编辑.Y/N/X(推荐不编辑) 主用于报表处理的编辑操作时,该列和column_meta.PERMIT_EDIT是同一个意思.                                                                          ';
comment on column METABASE.INDEX_LIB.IS_COLUMN_SHOW
  is '是否显示字段';
comment on column METABASE.INDEX_LIB.DISP_LEN
  is '显示长度';
comment on column METABASE.INDEX_LIB.COLUMN_LEN
  is '字段长度';
comment on column METABASE.INDEX_LIB.CODE_TYPE
  is '代码类型 对于属性型数据,需到code_info对应code_type里找相关值. 如五级分类.';
comment on column METABASE.INDEX_LIB.FORMAT_RULES
  is '字段显示格式';
comment on column METABASE.INDEX_LIB.TRUNCATE_FLAG
  is '是否截位或者四舍五入';
comment on column METABASE.INDEX_LIB.ROUND_DIGIT
  is '四舍五入位数';
comment on column METABASE.INDEX_LIB.CONV_FLAG
  is '是否折算标志';
comment on column METABASE.INDEX_LIB.PERMIT_CURR_DIVIDE
  is '列数据是否能应用币种的运算 Y/N .如金额列数据应由数据库中的元转化成报表显示的万元. 但如果是笔数列就不能应用此规则. 此列主要在报表显示时用到.';
comment on column METABASE.INDEX_LIB.COLUMN_FIELD_TYPE
  is '字段数据类型 C:编码型(到code_info里取.如科目编号将显示为科目名称）N:数值型（包括decimal、int、numeric、long、float等）
S(字符型)';
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
  is '修改日期';
comment on column METABASE.INDEX_LIB_MEMO.RESPONSIBLE_USER
  is '责任人';
comment on column METABASE.INDEX_LIB_MEMO.ACTION_USER
  is '操作人';
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
  is '报表口径信息表';
comment on column METABASE.REPORT_CALIBRE.ID
  is '序列编号，使用REPORT_CALIBRE_ID_SEQ';
comment on column METABASE.REPORT_CALIBRE.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_CALIBRE.START_DATE
  is '开始日期';
comment on column METABASE.REPORT_CALIBRE.END_DATE
  is '结束日期';
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
  is '指标ID';
comment on column METABASE.INDEX_POSITION.REPORT_ID
  is '报表ID';
comment on column METABASE.INDEX_POSITION.REPORT_CALIBRE_ID
  is '报表口径';
comment on column METABASE.INDEX_POSITION.ROW_NUM
  is '行号';
comment on column METABASE.INDEX_POSITION.COL_NUM
  is '列号';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.INDEX_RANGE_RIGHTS.INDEX_ID
  is '指标id';
comment on column METABASE.INDEX_RANGE_RIGHTS.USER_ID
  is '用户代码';
comment on column METABASE.INDEX_RANGE_RIGHTS.USER_GROUP_CODE
  is 'user_group_code(FK-auth_user_group)与user_id(FK--auth_user_info) 二择一  ,,即这个对特定区域的is_permit_edit 权限将分配到特定的user_id或用户组code上. ';
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
  is '此表在UPRR暂未用到？';
comment on column METABASE.INFORM_INFO.MSG_TITLE
  is '消息标题';
comment on column METABASE.INFORM_INFO.MSG_CONTENT
  is '消息内容';
comment on column METABASE.INFORM_INFO.SEND_USER_ID
  is '发送人';
comment on column METABASE.INFORM_INFO.RECIEVE_USER_ID
  is '接收人';
comment on column METABASE.INFORM_INFO.SEND_DATE
  is '发送日期';
comment on column METABASE.INFORM_INFO.SEND_TYPE
  is '发送方式';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.ITEM_BASIS.ITEM_ID
  is '科目ID';
comment on column METABASE.ITEM_BASIS.ITEM_NAME
  is '科目名称';
comment on column METABASE.ITEM_BASIS.ITEM_LEVEL
  is '科目等级';
comment on column METABASE.ITEM_BASIS.INVALID_DATE
  is '科目终止时间';
comment on column METABASE.ITEM_BASIS.EFFECT_DATE
  is '科目启用时间';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.ITEM_RELATION.ITEM_REL
  is '上级科目代码';
comment on column METABASE.ITEM_RELATION.START_DATE
  is '开始日期';
comment on column METABASE.ITEM_RELATION.END_DATE
  is '结束日期';
comment on column METABASE.ITEM_RELATION.ITEM_ORDER
  is '科目顺序';
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
  is '待确认是否有用';
comment on column METABASE.ITEM_STACK_INFO.ITEM_STACK_CODE
  is '科目口径代码';
comment on column METABASE.ITEM_STACK_INFO.ITEM_STATCK_NAME
  is '科目口径名称';
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
  is '机构代码';
comment on column METABASE.JRTJ_BANK_INFO.JRTJ_BANK_NUM
  is '金融统计机构编号';
comment on column METABASE.JRTJ_BANK_INFO.JRTJ_BANK_ID
  is '金融统计机构类代码 4位';
comment on column METABASE.JRTJ_BANK_INFO.JRTJ_AREA_ID
  is '金融统计地区代码 7位';
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
  is '待确认是否有用';
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
  is '待确认是否有用';
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
  is '机构代码';
comment on column METABASE.JRTJ_BANK_INFO_NEW.JRTJ_BANK_NUM
  is '金融统计机构编号';
comment on column METABASE.JRTJ_BANK_INFO_NEW.JRTJ_BANK_ID
  is '金融统计机构类代码 4位';
comment on column METABASE.JRTJ_BANK_INFO_NEW.JRTJ_AREA_ID
  is '金融统计地区代码 7位';
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
  is '系统币种';
comment on column METABASE.JRTJ_CURR_REL.JRTJ_CURR_ID
  is 'JRTJ币种ID 7位';
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
  is '数据属性 如1';
comment on column METABASE.JRTJ_DATA_INFO.DATA_NAME
  is '属性名如余额';
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
  is '任务ID';
comment on column METABASE.JRTJ_DOWNLOAD_CONFIG.FORM_BANK_ID
  is '表单机构号';
comment on column METABASE.JRTJ_DOWNLOAD_CONFIG.FORM_ID
  is '机构号表单';

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
  is '任务ID';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.TASK_NAME
  is '任务名称';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.PERIOD_FREQ
  is '频度';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.BATCH_ID
  is '批次';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.OWNER_CODE
  is '所属用户组';
comment on column METABASE.JRTJ_DOWNLOAD_TASK.JRTJ_BANK
  is '本地机构(生成IJ文件时IJ文件所属上报机构)';
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
  is '数据类型';
comment on column METABASE.JRTJ_DT_REL.JRTJ_FIELD_TYPE
  is 'JRTJ数据类型';
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
  is '报表ID';
comment on column METABASE.JRTJ_D_FILE.BANK_ID
  is '机构ID';
comment on column METABASE.JRTJ_D_FILE.REPORT_DATE
  is '数据日期';
comment on column METABASE.JRTJ_D_FILE.SUBJECT
  is '主题?';
comment on column METABASE.JRTJ_D_FILE.TITLE
  is '标题?';
comment on column METABASE.JRTJ_D_FILE.CONTENT
  is '文件内容';
comment on column METABASE.JRTJ_D_FILE.UPDATE_USER
  is '编辑用户?';
comment on column METABASE.JRTJ_D_FILE.UPDATE_DATE
  is '编辑日期?';
comment on column METABASE.JRTJ_D_FILE.FLAG
  is '？';

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
  is '数据属性';
comment on column METABASE.JRTJ_FORM_INFO.FORM_ID
  is '人行表单代码';

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
  is '系统频度代码';
comment on column METABASE.JRTJ_FREQ_REL.JRTJ_PERIOD_FREQ
  is 'JRTJ上报频度 代码';
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
  is '校验源频度';
comment on column METABASE.JRTJ_FREQ_VERIFY_RELATION.ID
  is 'sequence';
comment on column METABASE.JRTJ_FREQ_VERIFY_RELATION.OBJ_FREQ
  is '校验目标频度';

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
  is '报表代码,如A1401_1';
comment on column METABASE.JRTJ_IJ_BANK_CURR.BANK_ID
  is '机构代码.(注意不是机构外报代码)';
comment on column METABASE.JRTJ_IJ_BANK_CURR.JRTJ_CURR
  is '金融统计币种代码 (人行报表没有币种维度,只有业务意义上的 人民币:RMB0001/美元:USD0002/本外币:BWB0001)';
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
  is '待确认是否有用';

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
  is '待确认是否有用';

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
  is '金融统计报表列信息';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.ID
  is 'sequence';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.REPORT_ID
  is '报表ID';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.CURR_ID
  is '人行币种ID';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.DATA_ATTR
  is '数据属性';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.DATA_TYPE
  is '数据类型';
comment on column METABASE.JRTJ_REPORT_CLM_INFO.COL_NUM
  is '列号';

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
  is '报表信息表';
comment on column METABASE.REPORT_META.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_META.ID
  is '序列编号，使用REPORT_META_ID_SEQ';
comment on column METABASE.REPORT_META.REPORT_CH
  is '报表的中文名称';
comment on column METABASE.REPORT_META.REPORT_NAME
  is '物理报表的名称(非粉碎后的报表名称)';
comment on column METABASE.REPORT_META.WORK_STOREPATH_ID
  is '工作数据库标识  work';
comment on column METABASE.REPORT_META.REPORT_STOREPATH_ID
  is '确认后的数据库标识 report';
comment on column METABASE.REPORT_META.CRASH_FLAG
  is '粉碎标志(Y/N)';
comment on column METABASE.REPORT_META.PERIOD_FREQ
  is '报送频度:code_info :code_type =''report_freq''  对应; 日／旬／月／季／半年／年';
comment on column METABASE.REPORT_META.REPORT_ORDER
  is '报表顺序';
comment on column METABASE.REPORT_META.REPORT_TYPE
  is '报表类型: B(basic)基础数据报表, D(Derive) 派生报表.';
comment on column METABASE.REPORT_META.FORMAT_TYPE
  is '报表格式类别(F 定长(fixed)  C  变长(change)) A(Assemble)组合报表';
comment on column METABASE.REPORT_META.SAVE_TYPE
  is '报表存储类别(dvp,dv,pv)';
comment on column METABASE.REPORT_META.SHORTCUT_CODE
  is '报表快捷代码';
comment on column METABASE.REPORT_META.UNIT_ID
  is '币种单位代码';
comment on column METABASE.REPORT_META.CRASH_DIM
  is '报表粉碎维度(一般默认按时间粉碎,但如果有特殊要求,还可按此字段进一步粉碎)';
comment on column METABASE.REPORT_META.NEED_TOTAL
  is '如果是变长表, 是否需要合计(Y/N)';
comment on column METABASE.REPORT_META.NEED_SUBTOTAL
  is '如果是变长表, 是否需要小计(Y/N)';
comment on column METABASE.REPORT_META.SUBTOTAL_DIM
  is '如果是变长表, 汇总维度(column_meta.column_id)';
comment on column METABASE.REPORT_META.TOTAL_TYPE
  is 'Bank上下级机构/Area地区 ref: code_info . Bank_relation 使用:1  管理部汇总 2  区域汇总 3  按管理部汇总(除去国际部) 4  按区域汇总(除去国际部) 5  按管理部和机构汇总 6  按管理部和机构汇总(除去总行)';
comment on column METABASE.REPORT_META.PRECISION_DIGIT
  is '报表数据显示精度,特别是PV型存储时需要设置此这字段,如
现金收支统计月报表  ,
现金出入库登记表 就不能有小数位.';
comment on column METABASE.REPORT_META.IS_CONTROL_RANGE_RIGHTS
  is '是否控制报表特定列对特定用户的编辑权限';
comment on column METABASE.REPORT_META.EFFECT_DATE
  is '报表启用时间';
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
  is '报表ID';
comment on column METABASE.JRTJ_REPORT_INFO.IS_DOWNLOAD
  is '是否下载i,j文件';
comment on column METABASE.JRTJ_REPORT_INFO.PERIOD_FREQ
  is '频度';
comment on column METABASE.JRTJ_REPORT_INFO.REPORT_BATCH
  is '批次';
comment on column METABASE.JRTJ_REPORT_INFO.REPORT_FORM
  is '表单';
comment on column METABASE.JRTJ_REPORT_INFO.SYS_ID
  is '系统代号';
comment on column METABASE.JRTJ_REPORT_INFO.FORM_TYPE
  is '表单类型';
comment on column METABASE.JRTJ_REPORT_INFO.OLD_BUS_TYPE
  is '废弃字段';
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
  is '任务ID';
comment on column METABASE.JRTJ_TASK_D_FILE.BANK_ID
  is '机构ID';
comment on column METABASE.JRTJ_TASK_D_FILE.DFILE_CONTENT
  is 'D文件内容';
comment on column METABASE.JRTJ_TASK_D_FILE.REPORT_DATE
  is '数据日期';
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
  is '此表在UPRR暂未用到';
comment on column METABASE.JRTJ_UNIT_REL.JRTJ_UNIT_ID
  is '1位';
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
  is '锁定信息表';
comment on column METABASE.LOCK_INFO.USER_ID
  is '用户编号';
comment on column METABASE.LOCK_INFO.REPORT_ID
  is '报表编号';
comment on column METABASE.LOCK_INFO.STARTDATE
  is '开始时间';
comment on column METABASE.LOCK_INFO.ENDDATE
  is '结束时间';
comment on column METABASE.LOCK_INFO.LOCKTYPE
  is '锁定类型，[user：用户，report：报表]';
comment on column METABASE.LOCK_INFO.ID
  is '序列编号，使用LOCK_INFO_ID_SEQ';
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
  is '报表ID';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM1
  is '基本维度1 一般是机构';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM2
  is '基本维度2';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM3
  is '基本维度3';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM4
  is '基本维度4 ';
comment on column METABASE.LOOSE_VERIFY_LOG.BASE_DIM5
  is '基本维度5';
comment on column METABASE.LOOSE_VERIFY_LOG.POSITION_X
  is '软校验错误行号';
comment on column METABASE.LOOSE_VERIFY_LOG.POSITION_Y
  is '软校验错误列号';
comment on column METABASE.LOOSE_VERIFY_LOG.EXPLAIN_DESC
  is '错误说明';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_STATUS
  is '审核状态';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_DESC
  is '审核说明';
comment on column METABASE.LOOSE_VERIFY_LOG.EXPLAIN_USER
  is '填报用户';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_USER
  is '审核用户';
comment on column METABASE.LOOSE_VERIFY_LOG.EXPLAIN_TIME
  is '填报时间';
comment on column METABASE.LOOSE_VERIFY_LOG.AUDIT_TIME
  is '审核时间';

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
  is 'email变更审核待办列表';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.TRIGGER_USER
  is '变更操作人';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.AUDIT_USER
  is '审核人';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.TRIGGER_TIME
  is '变更操作时间';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.AUDIT_TIME
  is '审核时间';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.TRIGGER_TYPE
  is '新增/删除mail : add/delete';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.SUBJECT_ID
  is '子系统';
comment on column METABASE.MAIL_CONFIG_AUDIT_LOG.APPROVE_ACTION
  is '审批结果passed/rejected';

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
  is '语义层公式信息表';
comment on column METABASE.MEANING_FORMULA_INFO.ID
  is '序列编号，使用MEANING_FORMULA_INFO_ID_SEQ';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_ID
  is '公式编号';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_NAME
  is '公式名称';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_DESCRIBE
  is '公式描述信息';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_CONTENT
  is '公式内容';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_PROTOTYPE
  is '函数原型';
comment on column METABASE.MEANING_FORMULA_INFO.FORMULA_REMARK
  is '整个公式的解释信息';
comment on column METABASE.MEANING_FORMULA_INFO.MEANING_GROUP_INFO_GROUP_ID
  is '语义层分组编号';
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
  is '语义层参数表';
comment on column METABASE.MEANING_FORMULA_VAR.ID
  is '序列编号，使用MEANING_FORMULA_VAR_ID_SEQ';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_ID
  is '参数编号';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_NAME
  is '参数名称';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_TYPE
  is '参数类型，[String，int]';
comment on column METABASE.MEANING_FORMULA_VAR.VAR_ORDER
  is '参数序号';
comment on column METABASE.MEANING_FORMULA_VAR.FORMULA_ID
  is '参数所在的公式编号';
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
  is '语义层分组表';
comment on column METABASE.MEANING_GROUP_INFO.ID
  is '序列编号，使用MEANING_GROUP_INFO_ID_SEQ';
comment on column METABASE.MEANING_GROUP_INFO.GROUP_ID
  is '语义层分组编号';
comment on column METABASE.MEANING_GROUP_INFO.GROUP_NAME
  is '语义层分组名称';
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
  is '填报说明文档';
comment on column METABASE.MEMO_DOC.REPORT_ID
  is '报表 ID';
comment on column METABASE.MEMO_DOC.MEMO_TYPE
  is '填报说明类型，public 为制度填报说明、private 为行内填报说明';
comment on column METABASE.MEMO_DOC.MEMO_DOC
  is '文档主体';
comment on column METABASE.MEMO_DOC.MEMO_DOC_NAME
  is '文档名称';
comment on column METABASE.MEMO_DOC.CREATE_DATE
  is '创建日期';
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
  is '报表操作日志信息表';
comment on column METABASE.OPER_LOG1.REPORT_ID
  is '报表编号';
comment on column METABASE.OPER_LOG1.BASE_DIM1
  is '基本维度1，机构信息';
comment on column METABASE.OPER_LOG1.BASE_DIM2
  is '基本维度2，通常是时间，但如果存在币种的话，则存放币种';
comment on column METABASE.OPER_LOG1.BASE_DIM3
  is '基本维度3，通常为空，但如果存在币种的话，则存放时间';
comment on column METABASE.OPER_LOG1.BASE_DIM4
  is '基本维度4，保留字段';
comment on column METABASE.OPER_LOG1.BASE_DIM5
  is '基本维度5，保留字段';
comment on column METABASE.OPER_LOG1.OPER_ID
  is '操作编号';
comment on column METABASE.OPER_LOG1.USER_ID
  is '用户编号';
comment on column METABASE.OPER_LOG1.LOG_TIME
  is '记录日志的时间';
comment on column METABASE.OPER_LOG1.LOG_MEMO
  is '日志详细信息';
comment on column METABASE.OPER_LOG1.ID
  is '序列编号，使用OPER_LOG_ID_SEQ';
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
  is '操作信息表';
comment on column METABASE.OPER_META.OPER_ID
  is '操作代码';
comment on column METABASE.OPER_META.OPER_ORDER
  is '操作顺序';
comment on column METABASE.OPER_META.ID
  is '序列编号，使用OPER_META_ID_SEQ';
comment on column METABASE.OPER_META.OPER_NAME
  is '操作名称';
comment on column METABASE.OPER_META.RESULT_STATUS
  is '成功状态.';
comment on column METABASE.OPER_META.LOGIC_TYPE
  is '逻辑类型';
comment on column METABASE.OPER_META.NEED_LOCK
  is '是否需要锁';
comment on column METABASE.OPER_META.FAIL_STATUS
  is '失败状态.';
comment on column METABASE.OPER_META.IS_DEFAULT
  is '是否是报表的默认操作';
comment on column METABASE.OPER_META.NEED_LOG
  is '是否记录日志';
comment on column METABASE.OPER_META.NEED_LOG_MEMO
  is '是否需要日志说明';
comment on column METABASE.OPER_META.IS_RECALCHEADFOOT
  is '该操作是否需要重算表头表尾';
comment on column METABASE.OPER_META.STATUS_FIELD
  is '重算表头表尾时往report_status_info里插入字段的名称';
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
  is '可能已废弃待确认';
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
  is '系统配置参数分组';
comment on column METABASE.PARAM_GROUP.GROUP_ID
  is '组类型';
comment on column METABASE.PARAM_GROUP.GROUP_NAME
  is '组类型名称';
comment on column METABASE.PARAM_GROUP.ORDER_NO
  is '组顺序编号';
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
  is '系统配置参数表';
comment on column METABASE.PARAM_ITEM.PARAM_ID
  is '参数编号';
comment on column METABASE.PARAM_ITEM.PARAM_GROUP
  is '参数组类别';
comment on column METABASE.PARAM_ITEM.PARAM_ENAME
  is '参数项英文名';
comment on column METABASE.PARAM_ITEM.PARAM_CNAME
  is '参数项中文名';
comment on column METABASE.PARAM_ITEM.SELECTED_VALUE
  is '参数选中值';
comment on column METABASE.PARAM_ITEM.VALUE_LIST
  is '参数值列表';
comment on column METABASE.PARAM_ITEM.IS_MODIFY
  is '是否可修改';
comment on column METABASE.PARAM_ITEM.IS_VISIBLE
  is '是否可见';
comment on column METABASE.PARAM_ITEM.ORDER_NUM
  is '排序编号';
comment on column METABASE.PARAM_ITEM.TAG_TYPE
  is '标签类型';
comment on column METABASE.PARAM_ITEM.DEFAULT_VALUE
  is '缺省值';
comment on column METABASE.PARAM_ITEM.PARAM_DESC
  is '参数描述';
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
  is '功能id';
comment on column METABASE.REPORTER_FUNCTION.FUNCTION_NAME
  is '功能名称';
comment on column METABASE.REPORTER_FUNCTION.ORDER_NO
  is '顺序号';
comment on column METABASE.REPORTER_FUNCTION.PARENT_FUNCTION_ID
  is '父功能id';
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
  is '报表ID';
comment on column METABASE.REPORT_ALARM_INFO.FREQ_ID
  is '频度ID';
comment on column METABASE.REPORT_ALARM_INFO.INDEX_ID
  is '指标ID';
comment on column METABASE.REPORT_ALARM_INFO.DATA_ATTR
  is '列属性';
comment on column METABASE.REPORT_ALARM_INFO.CURR_ID
  is '列币别';
comment on column METABASE.REPORT_ALARM_INFO.ALARM_TYPE
  is '预警类型 1 绝对值(减上期)，2 百分比(比上期)，3 绝对值（END_VALUE可以有值）';
comment on column METABASE.REPORT_ALARM_INFO.BEGIN_VALUE
  is '起始值';
comment on column METABASE.REPORT_ALARM_INFO.END_VALUE
  is '结束值';

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
  is '可能已废弃待确认';
comment on column METABASE.REPORT_ASSIGN.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_ASSIGN.USER_ID
  is '用户代码';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM1
  is '基本维度1';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM2
  is '基本维度2';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM3
  is '基本维度3';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM4
  is '基本维度4';
comment on column METABASE.REPORT_ASSIGN.BASE_DIM5
  is '基本维度4';
comment on column METABASE.REPORT_ASSIGN.START_DATE
  is '开始日期';
comment on column METABASE.REPORT_ASSIGN.END_DATE
  is '结束日期';
comment on column METABASE.REPORT_ASSIGN.AUDIT_USER_ID
  is '审核人代码';
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
  is '可能已废弃待确认';
comment on column METABASE.REPORT_BATCH_GROUP.SYSTEM_ID
  is '系统号';
comment on column METABASE.REPORT_BATCH_GROUP.BATCH_NAME
  is '批任务名称';
comment on column METABASE.REPORT_BATCH_GROUP.BATCH_NO
  is '批号';
comment on column METABASE.REPORT_BATCH_GROUP.BATCH_CODE
  is '批任务编码';
comment on column METABASE.REPORT_BATCH_GROUP.FREQ_ID
  is '频度';
comment on column METABASE.REPORT_BATCH_GROUP.TIME_LIMIT
  is '报送期限';
comment on column METABASE.REPORT_BATCH_GROUP.ENABLED
  is 'Y/N 可用标示';
comment on column METABASE.REPORT_BATCH_GROUP.REPORT_MEMO
  is '填报说明';
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
  is '可能已废弃待确认';

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
  is '公告反馈信息表';
comment on column METABASE.REPORT_BMESSAGE.ID
  is '序列编号，使用REPORT_BMESSAGE_ID_SEQ';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_BULLETINID
  is '公告编号';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_CONTENT
  is '反馈内容';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_DATE
  is '反馈日期';
comment on column METABASE.REPORT_BMESSAGE.MESSAGE_USER
  is '反馈用户';
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
  is '报表公告信息表';
comment on column METABASE.REPORT_BULLETIN.ID
  is '序列编号，使用REPORT_BULLETIN_ID_SEQ';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_ID
  is '公告编号';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_NAME
  is '公告名称';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_TYPE
  is '公告类型';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_BANKID
  is '机构编号';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_FBANKID
  is '发送机构编号';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_REMARK
  is '备注';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_DATE
  is '公告日期';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_SHOW
  is '是否显示';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_USER
  is '用户编号';
comment on column METABASE.REPORT_BULLETIN.BULLETIN_FILE
  is '公告附件';
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
  is '公告信息附件登记表';
comment on column METABASE.REPORT_BULLETIN_FILE.BULLETIN_ID
  is '公告编号';
comment on column METABASE.REPORT_BULLETIN_FILE.FILE_ID
  is '附件编号';

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
  is '报表单元格备注信息表';
comment on column METABASE.REPORT_CELL_REMARK.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_CELL_REMARK.ID
  is '序列编号，使用REPORT_CELL_REMARK_ID_SEQ';
comment on column METABASE.REPORT_CELL_REMARK.ROW_NUM
  is '行号';
comment on column METABASE.REPORT_CELL_REMARK.COL_NUM
  is '列号';
comment on column METABASE.REPORT_CELL_REMARK.ROW_REMARK
  is '行意义';
comment on column METABASE.REPORT_CELL_REMARK.COL_REMARK
  is '列意义';
comment on column METABASE.REPORT_CELL_REMARK.REPORT_CALIBRE_ID
  is '口径编号';
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
  is '可能已废弃待确认';
comment on column METABASE.REPORT_CLASS.REPORT_ID
  is '报表代码';
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
  is '报文集下载文件';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.SEND_FILE_SET_ID
  is '报文集编号';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.TASK_ID
  is '任务编号';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.FILE_TYPE
  is '文件类型：0 EXCEL 1 XML';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.DOWN_FILE
  is '数据文件';
comment on column METABASE.REPORT_COLLECTION_DOWN_FILE.DOWN_FILE_NAME
  is '文件名称';
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
  is '报文集下载';
comment on column METABASE.REPORT_COLLECTION_DOWN_SET.SEND_FILE_SET_ID
  is '报文集编号';
comment on column METABASE.REPORT_COLLECTION_DOWN_SET.TASK_ID
  is '任务编号';
comment on column METABASE.REPORT_COLLECTION_DOWN_SET.REPORT_DOWN_SET_STATE
  is '状态：0 生成中 1 生成完成';
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
  is '报表表级公式信息表';
comment on column METABASE.REPORT_COMMON_FORMULA.ID
  is '序列编号，使用REPORT_COMMON_FORMULA_ID_SEQ';
comment on column METABASE.REPORT_COMMON_FORMULA.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_COMMON_FORMULA.REPORT_CALIBRE_ID
  is '口径编号';
comment on column METABASE.REPORT_COMMON_FORMULA.FORMULA_CH_INFO
  is '公式中文描述';
comment on column METABASE.REPORT_COMMON_FORMULA.FORMULA_CONTENT
  is '公式内容';
comment on column METABASE.REPORT_COMMON_FORMULA.OPER_ID
  is '公式类型';
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
  is '报表粉碎信息表';
comment on column METABASE.REPORT_CRASH.ID
  is '序列编号，使用REPORT_CRASH_ID_SEQ';
comment on column METABASE.REPORT_CRASH.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_CRASH.START_DATE
  is '口径开始日期';
comment on column METABASE.REPORT_CRASH.END_DATE
  is '结束日期';
comment on column METABASE.REPORT_CRASH.DIM_VALUE
  is '粉碎的维度值';
comment on column METABASE.REPORT_CRASH.CRASHED_REPORT_NAME
  is '粉碎后物理报表的名称';
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
  is '报表创建人信息表';
comment on column METABASE.REPORT_CREATER_RELA.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_CREATER_RELA.USER_ID
  is '用户编号';
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
  is '报表币种关系表';
comment on column METABASE.REPORT_CURR.ID
  is '序列编号，使用REPORT_CURR_ID_SEQ';
comment on column METABASE.REPORT_CURR.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_CURR.CURR_ID
  is '币种代码';
comment on column METABASE.REPORT_CURR.END_DATE
  is '结束日期';
comment on column METABASE.REPORT_CURR.START_DATE
  is '开始日期';
comment on column METABASE.REPORT_CURR.ITEM_STACK_CODE
  is '保留字段';
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
  is '可能已废弃待确认';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.ID
  is 'ID';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.BANK_ID
  is '机构代码';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.REPORT_DATE
  is '报表日期';
comment on column METABASE.REPORT_EDIT_LOCK_INFO.GRANT_USER_ID
  is '授权人代码';
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
  is '公告信息附件表';
comment on column METABASE.REPORT_FILEUPLOAD.ID
  is '序列编号，使用REPORT_FILEUPLOAD_ID_SEQ';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_NEWNAME
  is '文件上传后的名称';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_REALLYNAME
  is '文件上传之前的名称';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_POSTFIXNAME
  is '文件扩展名';
comment on column METABASE.REPORT_FILEUPLOAD.FILE_LOCALPATH
  is '文件存放路径';
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
  is '任务ID';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_ID
  is '报表ID';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_CH
  is '报表中文名称';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.BANK_ID
  is '机构名称';
comment on column METABASE.REPORT_FORCE_CHECK_VERIFY_LOG.REPORT_DATE
  is '报表日期';

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
  is 'pv型报表的公式位置信息表';
comment on column METABASE.REPORT_FORMULA.ID
  is '序列编号，使用REPORT_FORMULA_ID_SEQ';
comment on column METABASE.REPORT_FORMULA.ROW_START
  is '行开始点';
comment on column METABASE.REPORT_FORMULA.ROW_END
  is '行结束点';
comment on column METABASE.REPORT_FORMULA.COL_START
  is '列开始点';
comment on column METABASE.REPORT_FORMULA.COL_END
  is '列结束点';
comment on column METABASE.REPORT_FORMULA.FORMULA_TYPE
  is '该字段的值formula_type视图里';
comment on column METABASE.REPORT_FORMULA.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_FORMULA.REPORT_CALIBRE_ID
  is '报表口径编号';
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
  is 'pv类型报表的公式信息表';
comment on column METABASE.REPORT_FORMULA_BASE.ID
  is '序列编号，使用REPORT_FORMULA_BASE_ID_SEQ';
comment on column METABASE.REPORT_FORMULA_BASE.REPORT_FORMULA_ID
  is '公式的位置编号，关联report_formula表的主键';
comment on column METABASE.REPORT_FORMULA_BASE.VAR_NAME
  is '公式变量名称';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CODE
  is '公式内容伪代码';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CH
  is '公式内容中文';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_ORDER
  is '顺序标识,数字由小到大';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_TYPE
  is '公式类型(运算符/会计表/生成表/报表(用于组合表中))';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_GROUP
  is '公式组别';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CH_INFO
  is '当公式是校验公式时,转化成的客户化的中文勾JI关系.';
comment on column METABASE.REPORT_FORMULA_BASE.FORMULA_CONTENT
  is '公式内容';
comment on column METABASE.REPORT_FORMULA_BASE.IS_SYSTEM
  is 'Y/N  是否是制度';
comment on column METABASE.REPORT_FORMULA_BASE.IS_EFFECT
  is '是否有效';
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
  is 'iv类型的报表公式信息表';
comment on column METABASE.REPORT_IV_FORMULA.ID
  is '序列编号，使用REPORT_IV_FORMULA_ID_SEQ';
comment on column METABASE.REPORT_IV_FORMULA.INDEX_ID
  is '指标编号';
comment on column METABASE.REPORT_IV_FORMULA.REPORT_CALIBRE_ID
  is '报表口径编号';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_TYPE
  is '公式类型';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_CH
  is '公式中文描述';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_GROUP
  is '公式组别';
comment on column METABASE.REPORT_IV_FORMULA.FORMULA_CONTENT
  is '公式内容';
comment on column METABASE.REPORT_IV_FORMULA.IS_SYSTEM
  is '是否制度';
comment on column METABASE.REPORT_IV_FORMULA.IS_EFFECT
  is '是否有效';
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
  is '可能已废弃待确认';
comment on column METABASE.REPORT_LOCK_INFO.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_LOCK_INFO.OPER_ID
  is '操作代码';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM1
  is '基本维度1';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM2
  is '基本维度2';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM3
  is '基本维度3';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM4
  is '基本维度4';
comment on column METABASE.REPORT_LOCK_INFO.BASE_DIM5
  is '基本维度4';
comment on column METABASE.REPORT_LOCK_INFO.USER_ID
  is '用户代码';
comment on column METABASE.REPORT_LOCK_INFO.START_TIME
  is '处理开始时间';
comment on column METABASE.REPORT_LOCK_INFO.END_TIME
  is '处理结束时间';
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
  is '报表备注信息表';
comment on column METABASE.REPORT_MEMO.ID
  is '序列编号，使用REPORT_MEMO_ID_SEQ';
comment on column METABASE.REPORT_MEMO.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_MEMO.REPORT_REMARK
  is '报表备注信息';
comment on column METABASE.REPORT_MEMO.MODIFY_DATE
  is '修改日期';
comment on column METABASE.REPORT_MEMO.RESPONSIBLE_USER
  is '责任人';
comment on column METABASE.REPORT_MEMO.ACTION_USER
  is '操作人';
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
  is '报表数据修改历史记录表';
comment on column METABASE.REPORT_MODIFY_LOG.ID
  is '序列编号，使用REPORT_MODIFY_LOG_SEQ';
comment on column METABASE.REPORT_MODIFY_LOG.USER_ID
  is '用户编号';
comment on column METABASE.REPORT_MODIFY_LOG.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM1
  is '基本维度1，机构编号';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM2
  is '基本维度2，通常是时间，如果有币种维度，则存放币种编号';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM3
  is '基本维度3，通常为空，如果有币种维度，则存放时间';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM4
  is '基本维度4';
comment on column METABASE.REPORT_MODIFY_LOG.BASE_DIM5
  is '基本维度5';
comment on column METABASE.REPORT_MODIFY_LOG.POSITION_X
  is 'x坐标';
comment on column METABASE.REPORT_MODIFY_LOG.POSITION_Y
  is 'y坐标';
comment on column METABASE.REPORT_MODIFY_LOG.PRE_VALUE
  is '修改前的值';
comment on column METABASE.REPORT_MODIFY_LOG.AFT_VALUE
  is '修改后的值';
comment on column METABASE.REPORT_MODIFY_LOG.REASON
  is '修改原因';
comment on column METABASE.REPORT_MODIFY_LOG.MODIFY_TIME
  is '修改时间';
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
  is '报表操作关系表';
comment on column METABASE.REPORT_OPER_RELATION.ID
  is '序列编号，使用REPORT_OPER_RELATION_ID_SEQ';
comment on column METABASE.REPORT_OPER_RELATION.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_OPER_RELATION.OPER_ID
  is '操作代码';
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
  is '可能已废弃待确认';
comment on column METABASE.REPORT_OWNER.OWNER_TYPE
  is 'ALL : 全部－兼容过去的情况,USER－用户';
comment on column METABASE.REPORT_OWNER.OWNER_CODE
  is '相关的Code号';

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
  is '报表填报信息表';
comment on column METABASE.REPORT_PARTAKER.ID
  is '序列编号，使用REPORT_PARTAKER_ID_SEQ';
comment on column METABASE.REPORT_PARTAKER.BANKID
  is '机构编号';
comment on column METABASE.REPORT_PARTAKER.REPORTID
  is '报表编号';
comment on column METABASE.REPORT_PARTAKER.TYPER
  is '填表人名称';
comment on column METABASE.REPORT_PARTAKER.RECHECKER
  is '复核人名称';
comment on column METABASE.REPORT_PARTAKER.PRINCIPAL
  is '负责人名称';
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
  is 'pv类型报表的格式信息表';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ROWSTART
  is '开始行';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLSTART
  is '开始列';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ROWEND
  is '结束行，如果是变长的明细表,将设置为9999';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLEND
  is '结束列';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.EDITABLE
  is '列数据是否允许编辑.Y/N/X(推荐不编辑) 主用于报表处理的编辑操作时,该列和column_meta.PERMIT_EDIT是同一个意思.                                                                          ';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.IS_COLUMN_SHOW
  is '是否显示字段';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.DISP_LEN
  is '显示长度';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLUMN_LEN
  is '字段长度';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.CODE_TYPE
  is '代码类型 对于属性型数据,需到code_info对应code_type里找相关值. 如五级分类.';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.FORMAT_RULES
  is '字段显示格式';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.TRUNCATE_FLAG
  is '是否截位或者四舍五入';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ROUND_DIGIT
  is '四舍五入位数';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.CONV_FLAG
  is '是否折算标志';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.PERMIT_CURR_DIVIDE
  is '列数据是否能应用币种的运算 Y/N .如金额列数据应由数据库中的元转化成报表显示的万元. 但如果是笔数列就不能应用此规则. 此列主要在报表显示时用到.';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.COLUMN_FIELD_TYPE
  is '字段数据类型 C:编码型(到code_info里取.如科目编号将显示为科目名称）N:数值型（包括decimal、int、numeric、long、float等）
S(字符型)';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.ID
  is '序列编号，使用REPORT_PV_SAVE_FORMAT_ID_SEQ';
comment on column METABASE.REPORT_PV_SAVE_FORMAT.REPORT_CALIBRE_ID
  is '口径编号';
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
  is '报表区域权限信息表';
comment on column METABASE.REPORT_RANGE_RIGHTS.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_RANGE_RIGHTS.START_ROW
  is '开始行';
comment on column METABASE.REPORT_RANGE_RIGHTS.START_COL
  is '开始列';
comment on column METABASE.REPORT_RANGE_RIGHTS.END_ROW
  is '结束行， 当报表report_meta.format_type(报表格式类型) is C(变长表)时,自动设为9999';
comment on column METABASE.REPORT_RANGE_RIGHTS.END_COL
  is '结束列';
comment on column METABASE.REPORT_RANGE_RIGHTS.ID
  is '序列编号，使用REPORT_RANGE_RIGHTS_ID_SEQ';
comment on column METABASE.REPORT_RANGE_RIGHTS.USER_ID
  is '用户编号';
comment on column METABASE.REPORT_RANGE_RIGHTS.USER_GROUP_CODE
  is '用户组编号';
comment on column METABASE.REPORT_RANGE_RIGHTS.IS_PERMIT_EDIT
  is '是否可以编辑报表';
comment on column METABASE.REPORT_RANGE_RIGHTS.REPORT_CALIBRE_ID
  is '报表口径编号';
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
  is '报表上报期限设定表';
comment on column METABASE.REPORT_SEND_DATE.ID
  is '序列编号，使用';
comment on column METABASE.REPORT_SEND_DATE.REPORT_ID
  is '报表编号';
comment on column METABASE.REPORT_SEND_DATE.SEND_DATE_NUM
  is '上报显示天数';
comment on column METABASE.REPORT_SEND_DATE.AWOKEDAY
  is '工作日天数';
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
  is '报表状态信息表';
comment on column METABASE.REPORT_STATUS.STATUS_ID
  is '状态代码';
comment on column METABASE.REPORT_STATUS.ID
  is '序列编号，使用REPOR_STATU_ID_SEQ';
comment on column METABASE.REPORT_STATUS.STATUS_NAME
  is '状态名称';
comment on column METABASE.REPORT_STATUS.CAN_TOTAL
  is '能否汇总';
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
  is '报表状态信息表';
comment on column METABASE.REPORT_STATUS_INFO1.ID
  is '序列编号，使用REPORT_STATUS_INFO_ID_SEQ';
comment on column METABASE.REPORT_STATUS_INFO1.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM1
  is '基本维度1，机构编号';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM2
  is '基本维度2，通常是时间，如果有币种维度则是币种';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM3
  is '基本维度3，通常为空，如果有币种维度则是时间';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM4
  is '基本维度4，保留字段';
comment on column METABASE.REPORT_STATUS_INFO1.BASE_DIM5
  is '基本维度5，保留字段';
comment on column METABASE.REPORT_STATUS_INFO1.OTHER_DIM
  is '其它维度，保留字段';
comment on column METABASE.REPORT_STATUS_INFO1.LOCK_FLAG
  is '加锁标志';
comment on column METABASE.REPORT_STATUS_INFO1.SB_END_DATE
  is '上报截止日期';
comment on column METABASE.REPORT_STATUS_INFO1.SB_COUNT
  is '上报次数';
comment on column METABASE.REPORT_STATUS_INFO1.STATUS_ID
  is '报表状态编号';
comment on column METABASE.REPORT_STATUS_INFO1.SB_TIME
  is '上报日期';
comment on column METABASE.REPORT_STATUS_INFO1.OPER_ID
  is '当前操作代码';
comment on column METABASE.REPORT_STATUS_INFO1.USER_ID
  is '用户代码';
comment on column METABASE.REPORT_STATUS_INFO1.CURR_USER_ID
  is '当前用户编号';
comment on column METABASE.REPORT_STATUS_INFO1.AUDIT_USER_ID
  is '审核人代码';
comment on column METABASE.REPORT_STATUS_INFO1.RECHECK_USER_ID
  is '复述人用户代码(目前此字段只会在四川农信有用)';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_1
  is '扩展用操作用户1的ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_2
  is '扩展用操作用户2的ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_3
  is '扩展用操作用户3的ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_4
  is '扩展用操作用户4的ID';
comment on column METABASE.REPORT_STATUS_INFO1.OPERUSER_5
  is '扩展用操作用户5的ID，如果该字段不为空，则修改报表数据时会记录修改历史';
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
  is '报表主题关系表';
comment on column METABASE.REPORT_SUBJECT_RELATION.SUBJECT_ID
  is '主题代码';
comment on column METABASE.REPORT_SUBJECT_RELATION.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_SUBJECT_RELATION.ID
  is '序列编号，使用REPORT_SUBJECT_RELATION_ID_SEQ';
comment on column METABASE.REPORT_SUBJECT_RELATION.TEAM_NUM
  is '该字段未使用';
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
  is '报表模板信息表';
comment on column METABASE.REPORT_TEMPLATE.ID
  is '序列编号，使用REPORT_TEMPLATE_ID_SEQ';
comment on column METABASE.REPORT_TEMPLATE.TEMPLATE_STORE_PATH
  is '模板存储路径';
comment on column METABASE.REPORT_TEMPLATE.REPORT_ID
  is '报表代码';
comment on column METABASE.REPORT_TEMPLATE.TEMPLATE_CONTENT
  is '摸板内容';
comment on column METABASE.REPORT_TEMPLATE.START_ROW
  is '起始行';
comment on column METABASE.REPORT_TEMPLATE.START_COL
  is '起始列';
comment on column METABASE.REPORT_TEMPLATE.END_COL
  is '结束列';
comment on column METABASE.REPORT_TEMPLATE.END_ROW
  is '结束行';
comment on column METABASE.REPORT_TEMPLATE.XML_CONTENT
  is 'XML模板';
comment on column METABASE.REPORT_TEMPLATE.REPORT_CALIBRE_ID
  is '报表口径编号';
comment on column METABASE.REPORT_TEMPLATE.PRINT_CONFIG
  is '打印的样式设置';
comment on column METABASE.REPORT_TEMPLATE.HTML_CONTENT
  is 'HTML模板';
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
  is '可能已废弃待确认';

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
  is '机构ID';
comment on column METABASE.REPORT_UPDATE_CAUSE.REPORT_ID
  is '报表ID';
comment on column METABASE.REPORT_UPDATE_CAUSE.UPDATE_CAUSE
  is '内容';
comment on column METABASE.REPORT_UPDATE_CAUSE.TYPE_CODE
  is '类别';
comment on column METABASE.REPORT_UPDATE_CAUSE.OPERATOR
  is '操作人';
comment on column METABASE.REPORT_UPDATE_CAUSE.OPDATE
  is '操作时间';
comment on column METABASE.REPORT_UPDATE_CAUSE.REPORTDATE
  is '报表时间';

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
  is '机构角色权限分配信息表, 可能已废弃待确认';
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
  is '批处理服务器信息记录表';
comment on column METABASE.SERVER_INFO.SERVER_ID
  is '服务器ID';
comment on column METABASE.SERVER_INFO.SERVER_NAME
  is '服务器名';
comment on column METABASE.SERVER_INFO.SERVER_IP
  is '服务器IP';
comment on column METABASE.SERVER_INFO.ID
  is '序列编号,使用SERVER_INFO_ID_SEQ';
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
  is '脚本名称';
comment on column METABASE.SQL_HISTORY.SYSTEM_ID
  is '子系统id';
comment on column METABASE.SQL_HISTORY.SYSTEM_NAME
  is '子模块名称';
comment on column METABASE.SQL_HISTORY.EXECUTE_TIME
  is '执行日期';
comment on column METABASE.SQL_HISTORY.DESCR
  is '描述';
comment on column METABASE.SQL_HISTORY.P_VERSION
  is '程序版本号';
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
  is '状态操作信息记录表';
comment on column METABASE.STATUS_OPER_RELATION.ID
  is '序列编号,使用STATUS_OPER_RELATION_ID_SEQ';
comment on column METABASE.STATUS_OPER_RELATION.STATUS_ID
  is '状态编码';
comment on column METABASE.STATUS_OPER_RELATION.OPER_ID
  is '操作代码';
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
  is '主题类别信息表, 可能已废弃待确认';
comment on column METABASE.SUBJECT_CLASS.CLASS_ID
  is '主题类别';
comment on column METABASE.SUBJECT_CLASS.ID
  is '序列编号, 无对应序列';
comment on column METABASE.SUBJECT_CLASS.SUBJECT_ID
  is '主题编码';
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
  is '主题基础信息表';
comment on column METABASE.SUBJECT_META.SUBJECT_ID
  is '主题编码';
comment on column METABASE.SUBJECT_META.ID
  is '序列编号,使用SUBJECT_META_ID_SEQ';
comment on column METABASE.SUBJECT_META.SUBJECT_NAME
  is '主题名称';
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
  is '系统参数表';
comment on column METABASE.SYS_PARAM.ID
  is '序列编号,无对应序列';
comment on column METABASE.SYS_PARAM.PARAM_ID
  is '参数代码';
comment on column METABASE.SYS_PARAM.PARAM_NAME
  is '参数名称';
comment on column METABASE.SYS_PARAM.PARAM_VALUE
  is '参数值';
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
  is '数据表列基础表';
comment on column METABASE.TABLE_CLM_META.ID
  is '序列编号,使用TABLE_CLM_META_ID_SEQ';
comment on column METABASE.TABLE_CLM_META.TABLE_ID
  is '数据中心表代码';
comment on column METABASE.TABLE_CLM_META.COLUMN_ID
  is '字段名';
comment on column METABASE.TABLE_CLM_META.COLUMN_NAME
  is '字段中文名';
comment on column METABASE.TABLE_CLM_META.COLUMN_DATA_TYPE
  is '字段数据类型 D(Date),S(String),N(Number)';
comment on column METABASE.TABLE_CLM_META.FORMAT_RULES
  is '相关的format信息,如日期型显示:YYYY-MM-DD,或 有些数据需要显示%等.';
comment on column METABASE.TABLE_CLM_META.COLUMN_VALUES
  is '值之间用","分隔';
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
  is '数据表基础表';
comment on column METABASE.TABLE_META.TABLE_ID
  is '数据中心表代码';
comment on column METABASE.TABLE_META.ID
  is '序列编号,使用TABLE_META_ID_SEQ';
comment on column METABASE.TABLE_META.TABLE_NAME
  is '数据中心表名称';
comment on column METABASE.TABLE_META.TABLE_TYPE
  is '表类别:如信贷,财务,稽核,计划,审批等. 具体值将存在code_info ,code_type=''table_type''';
comment on column METABASE.TABLE_META.IS_ADD_DATA
  is '是否需要补录数据: 1 需要 ,0  不需要.';
comment on column METABASE.TABLE_META.IS_GATHER_FINISH
  is '是否采集输入数据完成: 完成Y 未开始N 正采集D(doing)';
comment on column METABASE.TABLE_META.IS_CHECK_DATA
  is '是否需要校验 1 需要,0 不需要.';
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
  is '任务分析表, 可能已废弃待确认';
comment on column METABASE.TASK_ANALYSE_REPORT.ID
  is '序列编号';
comment on column METABASE.TASK_ANALYSE_REPORT.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_ANALYSE_REPORT.REPORT_DATE
  is '下发日期';
comment on column METABASE.TASK_ANALYSE_REPORT.BANK_ID
  is '机构编号';
comment on column METABASE.TASK_ANALYSE_REPORT.OLD_FILE_NAME
  is '旧文件名称';
comment on column METABASE.TASK_ANALYSE_REPORT.NEW_FILE_NAME
  is '新文件名称';
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
  is '任务提交审核信息表';
comment on column METABASE.TASK_AUDIT_INFO.ID
  is '序列编号,使用TASK_AUDIT_INFO_SEQ';
comment on column METABASE.TASK_AUDIT_INFO.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_AUDIT_INFO.REPORT_DATE
  is '下发日期';
comment on column METABASE.TASK_AUDIT_INFO.BANK_ID
  is '机构编号';
comment on column METABASE.TASK_AUDIT_INFO.OPER_ID
  is '操作编号';
comment on column METABASE.TASK_AUDIT_INFO.AUDITING_USER
  is '审核用户';
comment on column METABASE.TASK_AUDIT_INFO.AUDITING_MSG
  is '审核意见';
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
  is '任务模板信息表的机构纬度表';
comment on column METABASE.TASK_BANK_DIM.ID
  is '序列编号,使用TASK_BANK_DIM_SEQ';
comment on column METABASE.TASK_BANK_DIM.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_BANK_DIM.BANK_ID
  is '机构编号';
comment on column METABASE.TASK_BANK_DIM.IS_GROUP
  is 'bank_id是否机构组';
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
  is '任务报送时限表';
comment on column METABASE.TASK_BANK_LIMIT.ID
  is '序列编号,使用TASK_BANK_LIMIT_SEQ';
comment on column METABASE.TASK_BANK_LIMIT.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_BANK_LIMIT.BANK_LEVEL
  is '机构级别';
comment on column METABASE.TASK_BANK_LIMIT.TIME_LIMIT
  is '某级别的机构限制多少天上报';
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
  is '子任务状态表';
comment on column METABASE.TASK_BANK_STATUS.ID
  is '序列编号,使用TASK_BANK_STATUS_SEQ';
comment on column METABASE.TASK_BANK_STATUS.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_BANK_STATUS.REPORT_DATE
  is '任务下发日期';
comment on column METABASE.TASK_BANK_STATUS.BANK_ID
  is '机构编号';
comment on column METABASE.TASK_BANK_STATUS.BANK_STATUS
  is '机构对应的子任务状态';
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
  is '任务多次提交信息表, 后使用为记录任务的审核打回信息';
comment on column METABASE.TASK_COMMIT_AGAIN.ID
  is '序列编号,使用TASK_COMMIT_AGAIN_SEQ';
comment on column METABASE.TASK_COMMIT_AGAIN.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_COMMIT_AGAIN.REPORT_DATE
  is '任务下发日期';
comment on column METABASE.TASK_COMMIT_AGAIN.BANK_ID
  is '机构编号';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_USER
  is '提交用户';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_DATE
  is '提交日期';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_STATUS
  is '提交状态';
comment on column METABASE.TASK_COMMIT_AGAIN.COMMIT_REASON
  is '提交批注';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_USER
  is '审核用户,后使用为审核打回的用户';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_STATUS
  is '审核状态,后使用为审核打回的状态';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_REASON
  is '审核批注,后使用为审核打回的批注信息';
comment on column METABASE.TASK_COMMIT_AGAIN.AUDITING_DATE
  is '审核日期,后使用为审核打回的日期';
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
  is '任务模板信息表,存储任务模板的基础信息';
comment on column METABASE.TASK_DEFINE.ID
  is '序列标号,使用TASK_DEFINE_SEQ';
comment on column METABASE.TASK_DEFINE.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_DEFINE.TASK_NAME
  is '任务名称';
comment on column METABASE.TASK_DEFINE.TASK_START_TIME
  is '任务调度开始日期';
comment on column METABASE.TASK_DEFINE.TASK_END_TIME
  is '任务调度结束日期';
comment on column METABASE.TASK_DEFINE.FREQUENCY
  is '任务报送频度,也决定了任务下报表的频度';
comment on column METABASE.TASK_DEFINE.REMARK
  is '备用字段,后使用为任务的机构审核关系字段';
comment on column METABASE.TASK_DEFINE.START_TYPE
  is '任务的启动方式,1:手动下发;0:自动下发';
comment on column METABASE.TASK_DEFINE.USER_GROUP
  is '用户组, 后使用为任务依赖的etl任务id';
comment on column METABASE.TASK_DEFINE.START_TIME_OFFSET
  is '任务启动偏移量,下发任务时根据频度和偏移量决定报送日期';
comment on column METABASE.TASK_DEFINE.REPORT_TYPE
  is '报表类型,默认必须为C';
comment on column METABASE.TASK_DEFINE.NEED_RECHECK
  is '该任务是否需要复核流程, ''Y''需要, ''N''不需要';
comment on column METABASE.TASK_DEFINE.NEED_SAMEAUDIT
  is '任务审核流程是否需要同级审核, ''Y''需要, ''N''不需要';
comment on column METABASE.TASK_DEFINE.HOLIDAY_CODE
  is '任务节假日类别,默认为none即不启用节假日检测';
comment on column METABASE.TASK_DEFINE.HOLIDAY_ISSUE
  is '自动任务 是否在节假日照常下发任务(当开启节假日功能后使用，默认为N即节假日不下发任务)';
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
  is '任务信息导出EXCEL';
comment on column METABASE.TASK_EXPORT.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_EXPORT.BANK_ID
  is '机构编号';
comment on column METABASE.TASK_EXPORT.REPORT_ID
  is '报表编号';
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
  is '任务实例信息表';
comment on column METABASE.TASK_INSTANCE.ID
  is '序列编号,使用TASK_INSTANCE_SEQ';
comment on column METABASE.TASK_INSTANCE.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_INSTANCE.REPORT_DATE
  is '任务下发日期';
comment on column METABASE.TASK_INSTANCE.TASK_STATUS
  is '任务状态, 目前只有开始和结束两种状态';
comment on column METABASE.TASK_INSTANCE.START_USER
  is '下发任务的用户';
comment on column METABASE.TASK_INSTANCE.START_TIME
  is '该任务实例的启动日期, 也就是任务模板的下发日期';
comment on column METABASE.TASK_INSTANCE.END_TIME
  is '该任务实例的终止日期, 也就是启动日期加偏移量天数';
comment on column METABASE.TASK_INSTANCE.NEED_RECHECK
  is '该任务是否需要复核流程, ''Y''需要, ''N''不需要';
comment on column METABASE.TASK_INSTANCE.NEED_SAMEAUDIT
  is '任务审核流程是否需要同级审核, ''Y''需要, ''N''不需要';
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
  is '任务实例信息表的机构纬度表';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.ID
  is '序列编号,使用TASK_INSTANCE_BANK_DIM_SEQ';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.REPORT_DATE
  is '任务下发日期';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.BANK_ID
  is '机构编号';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.FACTUAL_DATE
  is '实际上报日期';
comment on column METABASE.TASK_INSTANCE_BANK_DIM.DEADLINE_DATE
  is '最迟上报日期';
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
  is '任务实例与邮箱关联表';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.ID
  is '流水';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.EVENT_ID
  is '变更ID';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.USER_ID
  is '用户名';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.BANK_ID
  is '机构编码';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.AUDIT_STATUS
  is '审核状态-pending_add,passed,rejected,pending_deleting';
comment on column METABASE.TASK_INSTANCE_EMAIL_DIM.EMAIL_TYPE
  is '邮件的类别';
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
  is '任务实例信息表的报表纬度表';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.ID
  is '序列编号,使用TASK_INSTANCE_REPORT_DIM_SEQ';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.REPORT_DATE
  is '任务下发日期';
comment on column METABASE.TASK_INSTANCE_REPORT_DIM.REPORT_ID
  is '报表编号';
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
  is '任务操作信息表, 配置下发任务时后台自动跑批执行哪些操作';
comment on column METABASE.TASK_OPER_META.OPER_ID
  is '操作代码';
comment on column METABASE.TASK_OPER_META.OPER_ORDER
  is '操作顺序';
comment on column METABASE.TASK_OPER_META.ID
  is '序列编号,使用TASK_REPORT_DIM_SEQ';
comment on column METABASE.TASK_OPER_META.OPER_NAME
  is '操作名称';
comment on column METABASE.TASK_OPER_META.RESULT_STATUS
  is '成功状态.';
comment on column METABASE.TASK_OPER_META.LOGIC_TYPE
  is '逻辑类型';
comment on column METABASE.TASK_OPER_META.NEED_LOCK
  is '是否需要锁';
comment on column METABASE.TASK_OPER_META.FAIL_STATUS
  is '失败状态.';
comment on column METABASE.TASK_OPER_META.IS_DEFAULT
  is '是否是报表的默认操作';
comment on column METABASE.TASK_OPER_META.NEED_LOG
  is '是否记录日志';
comment on column METABASE.TASK_OPER_META.NEED_LOG_MEMO
  is '是否需要日志说明';
comment on column METABASE.TASK_OPER_META.IS_RECALCHEADFOOT
  is '该操作是否需要重算表头表尾';
comment on column METABASE.TASK_OPER_META.STATUS_FIELD
  is '重算表头表尾时往report_status_info里插入字段的名称';
comment on column METABASE.TASK_OPER_META.ENABLED
  is '自动跑批时是否启用该操作';
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
  is '任务模板信息表的报表纬度表';
comment on column METABASE.TASK_REPORT_DIM.ID
  is '序列编号,使用TASK_REPORT_DIM_SEQ';
comment on column METABASE.TASK_REPORT_DIM.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_REPORT_DIM.REPORT_ID
  is '报表编号';
comment on column METABASE.TASK_REPORT_DIM.IS_GROUP
  is 'report_id字段是否为报表组';
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
  is '任务主题关系表';
comment on column METABASE.TASK_SUBJECT_RELATION.ID
  is '序列编号，使用TASK_SUBJECT_RELATION_ID_SEQ';
comment on column METABASE.TASK_SUBJECT_RELATION.TASK_ID
  is '任务编号';
comment on column METABASE.TASK_SUBJECT_RELATION.SUBJECT_ID
  is '主题编号';
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
  is '任务审核信息表';
comment on column METABASE.TASK_USER_OPER_LOG.ID
  is '主键';
comment on column METABASE.TASK_USER_OPER_LOG.INSTANCE_BANK_ID
  is '任务实例机构信息ID';
comment on column METABASE.TASK_USER_OPER_LOG.COMMIT_USER
  is '任务提交人';
comment on column METABASE.TASK_USER_OPER_LOG.COMMIT_TIME
  is '任务提交时间';
comment on column METABASE.TASK_USER_OPER_LOG.AUDIT_USER
  is '任务审核人';
comment on column METABASE.TASK_USER_OPER_LOG.AUDIT_TIME
  is '任务审核时间';
comment on column METABASE.TASK_USER_OPER_LOG.RECHECK_USER
  is '任务复核人';
comment on column METABASE.TASK_USER_OPER_LOG.RECHECK_TIME
  is '任务复核时间';
comment on column METABASE.TASK_USER_OPER_LOG.CALLBACK_USER
  is '任务打回人';
comment on column METABASE.TASK_USER_OPER_LOG.CALLBACK_TIME
  is '任务打回时间';
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
  is '多对多对照表, 可能已废弃待确认';
comment on column METABASE.TECH2TYPE.ID
  is '序列编号，使用TECH2TYPE_ID_SEQ';
comment on column METABASE.TECH2TYPE.TECHID
  is 'TechID';
comment on column METABASE.TECH2TYPE.TYPEID
  is 'TypeId';
comment on column METABASE.TECH2TYPE.TYPE
  is '类型';
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
  is '模板保存信息表, 可能已废弃待确认';
comment on column METABASE.TEMPLATE_SAVE_INFO.TEMPLATE_ID
  is '模板ID';
comment on column METABASE.TEMPLATE_SAVE_INFO.ID
  is '序列编号';
comment on column METABASE.TEMPLATE_SAVE_INFO.TEMPLATE_TYPE
  is '表样类型  0-固定科目，且科目代码名称表样中定义好，数据从映射信息表中取，表尾也固定在表样中
1-固定科目，但科目代码名称等不定义，直接从数据库取所有，表尾最后加上
2-不定长，清单类，直接从数据库取，表尾最后加上
';
comment on column METABASE.TEMPLATE_SAVE_INFO.EXCEL_FILE
  is 'excel文件 存储在DB里的模板文件';
comment on column METABASE.TEMPLATE_SAVE_INFO.START_DATE
  is '开始日期';
comment on column METABASE.TEMPLATE_SAVE_INFO.END_DATE
  is '结束日期';
comment on column METABASE.TEMPLATE_SAVE_INFO.REPORT_ID
  is '报表代码';
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
  is '备份表，用于配置各子系统那些表可使用备份服务';
comment on column METABASE.UDL_HK_BACKUP_TABLE.ID
  is '主键';
comment on column METABASE.UDL_HK_BACKUP_TABLE.TABLE_NAME
  is '表名';
comment on column METABASE.UDL_HK_BACKUP_TABLE.DATE_FIELD
  is '数据日期字段名';
comment on column METABASE.UDL_HK_BACKUP_TABLE.FREQ
  is '频度 M（月、每月第一天） | W7（周、每周第一天）';
comment on column METABASE.UDL_HK_BACKUP_TABLE.KEEP_DATA_TIME
  is '保留数据期数，期的单位与频度对应
以月为例，保留2期是指备份2个月前所有的数据';
comment on column METABASE.UDL_HK_BACKUP_TABLE.ACTION_MODE
  is '处理方式，B（备份后删除） | D（删除）';
comment on column METABASE.UDL_HK_BACKUP_TABLE.SOURCE_BEFORE_SP
  is '数据源前置存储过程';
comment on column METABASE.UDL_HK_BACKUP_TABLE.SOURCE_AFTER_SP
  is '数据源后置存储过程';
comment on column METABASE.UDL_HK_BACKUP_TABLE.BACKUP_BEFORE_SP
  is '备份源前置存储过程';
comment on column METABASE.UDL_HK_BACKUP_TABLE.BACKUP_AFTER_SP
  is '备份源前置存储过程';
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
  is '币种单位信息表';
comment on column METABASE.UNIT_META.UNIT_ID
  is '币种单位代码';
comment on column METABASE.UNIT_META.ID
  is '序列编号，使用UNIT_META_ID_SEQ';
comment on column METABASE.UNIT_META.UNIT_NAME
  is '单位名称. 元/.千元/万元.. ';
comment on column METABASE.UNIT_META.UNIT_SCALE
  is '单位尺度';
comment on column METABASE.UNIT_META.UNIT_COMPARE
  is '对比单位';
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
  is '用户登录信息记录表';
comment on column METABASE.USER_LOGIN_INFO.ID
  is '序列编号，使用USER_LOGIN_INFO_ID_SEQ';
comment on column METABASE.USER_LOGIN_INFO.USER_ID
  is '用户编号';
comment on column METABASE.USER_LOGIN_INFO.BANK_ID
  is '机构编号';
comment on column METABASE.USER_LOGIN_INFO.IP
  is '登录机器的IP地址';
comment on column METABASE.USER_LOGIN_INFO.LOGIN_TIME
  is '登录时间';
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
  is '查询方案保存表, 可能已废弃待确认';
comment on column METABASE.USER_REPORT_SELECT_COPY.USER_ID
  is '用户代码，系统自动填充';
comment on column METABASE.USER_REPORT_SELECT_COPY.TASK_ID
  is '任务代码，系统自动填充';
comment on column METABASE.USER_REPORT_SELECT_COPY.TASK_NAME
  is '任务名称，用户输入';
comment on column METABASE.USER_REPORT_SELECT_COPY.REPORTS_ID
  is '用户选择的报表IDs，系统根据用户选择自动填充';
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
  is '自定义序列编号表－类似于简单sequence机制实现';
comment on column METABASE.U_BASE_FORM_NO.FORM_TYPE
  is '编号值
  和字典表进行关联';
comment on column METABASE.U_BASE_FORM_NO.CURRENT_ID
  is '当前编号';
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
  is '系统日志表';
comment on column METABASE.U_BASE_SYS_LOG.LOG_ID
  is '日志编号';
comment on column METABASE.U_BASE_SYS_LOG.USER_ID
  is '用户编号';
comment on column METABASE.U_BASE_SYS_LOG.USER_ENAME
  is '用户登录名';
comment on column METABASE.U_BASE_SYS_LOG.USER_CNAME
  is '用户中文';
comment on column METABASE.U_BASE_SYS_LOG.INST_ID
  is '机构编号';
comment on column METABASE.U_BASE_SYS_LOG.INST_CNAME
  is '机构名称';
comment on column METABASE.U_BASE_SYS_LOG.MENU_ID
  is '栏目编号';
comment on column METABASE.U_BASE_SYS_LOG.MENU_NAME
  is '栏目名称';
comment on column METABASE.U_BASE_SYS_LOG.IP
  is '用户IP';
comment on column METABASE.U_BASE_SYS_LOG.BROWSE
  is '用户浏览器';
comment on column METABASE.U_BASE_SYS_LOG.LOG_TYPE
  is '日志类型
00001--用户登录日志';
comment on column METABASE.U_BASE_SYS_LOG.EXEC_TIME
  is '执行时间';
comment on column METABASE.U_BASE_SYS_LOG.STATUS
  is '状态';
comment on column METABASE.U_BASE_SYS_LOG.DESCRIPTION
  is '描述';
comment on column METABASE.U_BASE_SYS_LOG.SYSTEM_ID
  is '系统编号';
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
select 'headfoot','表头表尾',99,'headfoot','headfoot' from dual
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
select '-1' as total_id, '不汇总' as total_name, '-1' as subject_id from crms_dual
union
select '0' as total_id, '机构上下级汇总关系' as total_name, '0' as subject_id from crms_dual
union
select subject_id as total_id, subject_name || '汇总关系' as total_name, subject_id from subject_meta
/


spool off
