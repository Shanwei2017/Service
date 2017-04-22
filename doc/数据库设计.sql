/*�û�����-�û���Ϣ��*/
CREATE TABLE `t_user_info` (
  `f_uid` int NOT NULL AUTO_INCREMENT COMMENT '�û�uid(����)',
  `f_nickname` varchar(50) DEFAULT NULL COMMENT '�û��ǳ�',
  `f_mobile` varchar(50) NOT NULL COMMENT '�ֻ�����',
  `f_realname` varchar(200) DEFAULT NULL COMMENT '��ʵ����',
  `f_sex` tinyint DEFAULT 0 COMMENT '�Ա�(0-δ֪,1-��,2-Ů)',
  `f_idcard` varchar(50) DEFAULT NULL COMMENT '���֤����',
  `f_auth_status` smallint default 0 COMMENT 'ʵ����֤״̬(0-δ��֤,100-����֤,-100-��֤ʧ��)',
  `f_usermoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '�û����',
  `f_freezemoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '������',
  `f_depositmoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'Ѻ����',
  `f_user_status` smallint default 0 COMMENT '�û�״̬(0-Ĭ��,100-�ѳ�ֵѺ��,200-��ʵ����֤,-100-������)',
  `f_lastdevice` varchar(200) DEFAULT NULL COMMENT '�û����ʹ�õ��豸',
  `f_regtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ע��ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_uid`),
  UNIQUE KEY `f_mobile` (`f_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='�û�����-�û���Ϣ��';


/*�û�����-��ַ��Ϣ��*/
CREATE TABLE `t_user_address_info` (
  `f_id` int NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int NOT NULL COMMENT '�û�uid',
  `f_province` varchar(100) NOT NULL COMMENT 'ʡ������',
  `f_city` varchar(100) NOT NULL COMMENT '��������',
  `f_address` varchar(1000) NOT NULL COMMENT '��ϸ��ַ',
  `f_mobile` varchar(50) NOT NULL COMMENT '��ϵ�绰',
  `f_isactive` tinyint default 0 COMMENT '�Ƿ�Ĭ�ϵ�ַ(0-��,1-��)',
  `f_status` tinyint default 0 COMMENT '��ַ״̬(0-��Ч,-1-��Ч)',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�����-��ַ��Ϣ��';


/*�û�����-�˻���ˮ��*/
CREATE TABLE `t_user_paylog` (
  `f_id` int NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int NOT NULL COMMENT '�û�uid',
  `f_inout` tinyint not null comment '����������(1-����,2-����)',
  `f_trademoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' comment '���׽��',
  `f_tradetype` varchar(200) NOT NULL COMMENT '��������(1001-����ֵ,1002-Ѻ���ֵ,1004-�����ⶳ,1003-Ѻ���˿�ⶳ,2001-Ѻ���˿�,2002-Ѻ���˿��,2003-����֧��,2004-��������)',
  `f_suborder` varchar(200) default null COMMENT '������', 
  `f_tradenote` varchar(1000) default null comment '���ױ�ע',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�����-�˻���ˮ��';


/*�û�����-��ֵ������*/
CREATE TABLE `t_user_charge_order` (
  `f_id` int NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int NOT NULL COMMENT '�û�uid',
  `f_paymoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '��ֵ���',
  `f_paytype` smallint NOT NULL COMMENT '��ֵ����(100-��ֵ���,200-��ֵѺ��)',
  `f_channel` varchar(50) not NULL COMMENT '��ֵ����',
  `f_account` varchar(200) not NULL COMMENT '��ֵ�˺�',
  `f_status` smallint default 0 COMMENT '����״̬(0-Ĭ��,100-��ֵ�ɹ�,-100-��ֵʧ��)',
  `f_paynote` varchar(1000) default null comment '��ֵ��ע',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�����-��ֵ������';


/*�û�����-������*/
CREATE TABLE `t_user_draw_order` (
  `f_id` int NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int NOT NULL COMMENT '�û�uid',
  `f_drawmoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '�����',
  `f_drawtype` smallint NOT NULL default 200 COMMENT '��ֵ����(100-������,200-Ѻ���˿�)',
  `f_channel` varchar(50) not NULL COMMENT '�������',
  `f_account` varchar(200) not NULL COMMENT '����˺�',
  `f_status` smallint default 0 COMMENT '����״̬(0-Ĭ��,100-���ɹ�,-100-���ʧ��)',
  `f_drawnote` varchar(1000) default null comment '��ע',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�����-������';


/*�ŵ����-�ŵ���Ϣ��*/
CREATE TABLE `t_store_info` (
  `f_sid` int NOT NULL AUTO_INCREMENT COMMENT '�ŵ�uid(����)',
  `f_name` varchar(1000) not NULL COMMENT '�ŵ�����',
  `f_icon` varchar(200) default null COMMENT '�ŵ�ͼ��',
  `f_describle` TEXT COMMENT '�ŵ�����',
  `f_address` varchar(2000) not null COMMENT '�ŵ��ַ',
  `f_takeout` tinyint not null DEFAULT 1 COMMENT '�Ƿ�֧������(0-��֧��,1-֧��)',
  `f_opentime` time default null comment 'Ӫҵ��ʼʱ��',
  `f_closetime` time default null comment 'Ӫҵ����ʱ��',
  `f_contact` varchar(200) default null comment '��ϵ��ʽ',
  `f_picture` varchar(500) comment '�ŵ�ͼƬ(������Ӣ�Ķ��ŷָ�)',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='�ŵ����-�ŵ���Ϣ��';


/*�ŵ����-�ŵ�������Ϣ��*/
CREATE TABLE `t_store_tableinfo` (
  `f_id` smallint NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_sid` int NOT NULL COMMENT '�ŵ�id',
  `f_name` varchar(1000) not NULL COMMENT '��������',
  `f_picture` varchar(500) comment '����ͼƬ(������Ӣ�Ķ��ŷָ�)',
  `f_seatnum` tinyint not null default 1 comment '��������',
  `f_amount` tinyint not null default 1 comment '��������',
  `f_tablenum` varchar(100) default null comment '����(��Ӣ�Ķ��ŷָ�)',
  `f_status` tinyint not null default 1 comment '״̬(1-��Ч,0-��Ч/��ɾ��)',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ŵ����-�ŵ���Ϣ��';


/*�ŵ����-�ź���Ϣ��*/
CREATE TABLE `t_store_sellinfo` (
  `f_id` smallint NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_sid` int NOT NULL COMMENT '�ŵ�id',
  `f_startdate` date default null comment '�źſ�ʼ����',
  `f_enddate` date default null comment '�źŽ�������',
  `f_starttime` time default null comment '�źſ�ʼʱ��',
  `f_endtime` time default null comment '�źŽ���ʱ��',
  `f_tabletype` varchar(100) default null comment '�ź�����ID(��Ӣ�Ķ��ŷָ�)',
  `f_sellnum` tinyint default 1 comment '�ź�����',
  `f_tablenum` varchar(100) default null comment '�ź�����(��Ӣ�Ķ��ŷָ�)',
  `f_status` tinyint not null default 1 comment '״̬(1-��Ч,0-��Ч/��ɾ��)',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ŵ����-�ź���Ϣ��';


/*�ŵ����-�ۿ���Ϣ��*/
CREATE TABLE `t_store_discount` (
  `f_id` smallint NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_sid` int NOT NULL COMMENT '�ŵ�id',
  `f_did` int NOT NULL COMMENT '����id',
  `f_type` tinyint not null default 1 comment '�ۿ�����(1-ֱ��,2-����)', 
  `f_disnum` smallint not null comment '�ۿ�����',
  `f_startdate` date default null comment '�ۿۿ�ʼ����',
  `f_enddate` date default null comment '�ۿ۽�������',
  `f_starttime` time default null comment '�ۿۿ�ʼʱ��',
  `f_endtime` time default null comment '�ۿ۽���ʱ��',
  `f_status` tinyint not null default 1 comment '״̬(1-��Ч,0-��Ч/��ɾ��)',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ŵ����-�ۿ���Ϣ��';


/*�ŵ����-�ʽ���Ϣ��*/
CREATE TABLE `t_store_account` (
  `f_id` smallint NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_sid` int NOT NULL COMMENT '�ŵ�id',
  `f_depositmoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'Ѻ����',
  `f_storemoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '�˻����',
  `f_proceeds` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '��������',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ŵ����-�ʽ���Ϣ��';


/*��̨����-�û���Ϣ��*/
CREATE TABLE `t_admin_userinfo` (
  `f_uid` int NOT NULL AUTO_INCREMENT COMMENT '�û�uid(����)',
  `f_username` varchar(50) NOT NULL COMMENT '�û���',
  `f_realname` varchar(200) DEFAULT NULL COMMENT '��ʵ����',
  `f_password` varchar(32) NOT NULL COMMENT '�û�����',
  `f_status` smallint default 100 COMMENT '�û�״̬(Ĭ��100-�����û�,-100-�����û�)',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_uid`),
  UNIQUE KEY `f_username` (`f_username`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='��̨����-�û���Ϣ��';


/*��̨����-��ɫ��Ϣ��*/
CREATE TABLE `t_admin_role` (
  `f_rid` int NOT NULL AUTO_INCREMENT COMMENT '��ɫrid(����)',
  `f_name` varchar(100) NOT NULL COMMENT '��ɫ����',
  `f_describle` varchar(1000) default NULL COMMENT '��ɫ����',
  `f_status` tinyint not null default 1 comment '״̬(1-��Ч,0-��Ч/��ɾ��)',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��̨����-��ɫ��Ϣ��';


/*��̨����-ģ����Ϣ��*/
CREATE TABLE `t_admin_module` (
  `f_mid` int NOT NULL AUTO_INCREMENT COMMENT 'ģ��mid(����)',
  `f_name` varchar(100) NOT NULL COMMENT 'ģ������',
  `f_describle` varchar(1000) default NULL COMMENT 'ģ������',
  `f_url` varchar(1000) default NULL COMMENT '���ӵ�ַ',
  `f_parentid` smallint default 0 comment '��ģ��ID',
  `f_order` smallint default 1 comment '��ʾ˳��',  
  `f_status` tinyint not null default 1 comment '״̬(1-��Ч,0-��Ч/��ɾ��)',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��̨����-ģ����Ϣ��';


/*��̨����-�û���ɫ������Ϣ��*/
CREATE TABLE `t_admin_user_role` (
  `f_id` int not null AUTO_INCREMENT comment '����ID',
  `f_uid` int NOT NULL COMMENT '�û�ID',
  `f_rid` int NOT NULL COMMENT '��ɫID',
  `f_describle` varchar(1000) default NULL COMMENT '˵��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��̨����-�û���ɫ������Ϣ��';


/*��̨����-��ɫģ�������Ϣ��*/
CREATE TABLE `t_admin_role_module` (
  `f_id` int not null AUTO_INCREMENT comment '����ID',
  `f_rid` int NOT NULL COMMENT '��ɫID',
  `f_mid` int NOT NULL COMMENT 'ģ��ID',
  `f_describle` varchar(1000) default NULL COMMENT '˵��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��̨����-��ɫģ�������Ϣ��';