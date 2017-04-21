/*�û���Ϣ��*/
CREATE TABLE `t_user_info` (
  `f_uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '�û�uid(����)',
  `f_nickname` varchar(50) DEFAULT NULL COMMENT '�û��ǳ�',
  `f_mobile` varchar(50) NOT NULL COMMENT '�ֻ�����',
  `f_realname` varchar(200) DEFAULT NULL COMMENT '��ʵ����',
  `f_sex` int(11) DEFAULT 0 COMMENT '�Ա�(0-δ֪,1-��,2-Ů)',
  `f_idcard` varchar(50) DEFAULT NULL COMMENT '���֤����',
  `f_auth_status` int(11) default 0 COMMENT 'ʵ����֤״̬(0-δ��֤,100-����֤,-100-��֤ʧ��)',
  `f_usermoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '�û����',
  `f_freezemoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '������',
  `f_depositmoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'Ѻ����',
  `f_user_status` int(11) default 0 COMMENT '�û�״̬(0-Ĭ��,100-�ѳ�ֵѺ��,200-��ʵ����֤,-100-������)',
  `f_lastdevice` varchar(200) DEFAULT NULL COMMENT '�û����ʹ�õ��豸',
  `f_regtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ע��ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_uid`),
  UNIQUE KEY `f_mobile` (`f_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='�û���Ϣ��';


/*�û���ַ��Ϣ��*/
CREATE TABLE `t_user_address_info` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int(11) NOT NULL COMMENT '�û�uid',
  `f_province` varchar(100) NOT NULL COMMENT 'ʡ������',
  `f_city` varchar(100) NOT NULL COMMENT '��������',
  `f_address` varchar(1000) NOT NULL COMMENT '��ϸ��ַ',
  `f_mobile` varchar(50) NOT NULL COMMENT '��ϵ�绰',
  `f_isactive` int(11) default 0 COMMENT '�Ƿ�Ĭ�ϵ�ַ(0-��,1-��)',
  `f_status` int(11) default 0 COMMENT '��ַ״̬(0-��Ч,-1-��Ч)',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���ַ��Ϣ��';


/*�û��˻���ˮ��*/
CREATE TABLE `t_user_paylog` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int(11) NOT NULL COMMENT '�û�uid',
  `f_inout` int(11) not null comment '����������(1-����,2-����)',
  `f_trademoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' comment '���׽��',
  `f_tradetype` varchar(200) NOT NULL COMMENT '��������(1001-����ֵ,1002-Ѻ���ֵ,1004-�����ⶳ,1003-Ѻ���˿�ⶳ,2001-Ѻ���˿�,2002-Ѻ���˿��,2003-����֧��,2004-��������)',
  `f_suborder` varchar(200) default null COMMENT '������', 
  `f_tradenote` varchar(1000) default null comment '���ױ�ע',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û��˻���ˮ��';


/*�û���ֵ������*/
CREATE TABLE `t_user_charge_order` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int(11) NOT NULL COMMENT '�û�uid',
  `f_paymoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '��ֵ���',
  `f_paytype` int(11) NOT NULL COMMENT '��ֵ����(100-��ֵ���,200-��ֵѺ��)',
  `f_channel` varchar(50) not NULL COMMENT '��ֵ����',
  `f_account` varchar(200) not NULL COMMENT '��ֵ�˺�',
  `f_status` int(11) default 0 COMMENT '����״̬(0-Ĭ��,100-��ֵ�ɹ�,-100-��ֵʧ��)',
  `f_paynote` varchar(1000) default null comment '��ֵ��ע',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���ֵ������';


/*�û�������*/
CREATE TABLE `t_user_draw_order` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `f_uid` int(11) NOT NULL COMMENT '�û�uid',
  `f_drawmoney` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '�����',
  `f_drawtype` int(11) NOT NULL default 200 COMMENT '��ֵ����(100-������,200-Ѻ���˿�)',
  `f_channel` varchar(50) not NULL COMMENT '�������',
  `f_account` varchar(200) not NULL COMMENT '����˺�',
  `f_status` int(11) default 0 COMMENT '����״̬(0-Ĭ��,100-���ɹ�,-100-���ʧ��)',
  `f_drawnote` varchar(1000) default null comment '��ע',
  `f_addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��',
  `f_lasttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�������';