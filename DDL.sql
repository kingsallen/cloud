--Jacky Yang 2018-11-08
--default字段改名成defaultMessage,避免使用Java代码关键字命名列名
ALTER TABLE hrdb.hr_wx_wechat
CHANGE COLUMN `default` `defaultMessage`  int(11) NOT NULL DEFAULT 0 COMMENT 'default message' 