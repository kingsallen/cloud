set @company_id=10;
set @hr_id_mother = 10;
set @hr_id_mother_mobile = '13800000000';
Set @hr_id_child = 11;
Set @hr_id_child_mobile = '13800000001';


-- 创建付费母公司
REPLACE INTO `hrdb`.`hr_company` (`id`, `type`, `name`, `introduction`, `scale`, `address`, `property`, `industry`, `homepage`, `logo`, `abbreviation`, `impression`, `banner`, `parent_id`, `hraccount_id`, `disable`, `create_time`, `update_time`, `source`, `slogan`, `feature`, `fortune`) VALUES (@company_id, '0', '上海大岂网络科技有限公司1', '仟寻是日本最大互联网公司Recruit Holdings在华战略投资企业。仟寻是招聘领域的Airbnb。\r\n       仟寻目前已经完成两轮融资，融资总额超过700万美元，投资方主要为世界上最大的在线人力资源集团和日本最大互联网公司Recruit Holdings。Recruit Holdings同时也是前程无忧的控股股东和58同城的投资人。其他投资人包括英诺天使（美团网天使投资人）、正和岛联合投资基金和Infinity Venture Partners （36氪投资人） 。 \r\n       仟寻与小红书、映客等企业同为腾讯创业营二期成员。仟寻是创投界的奥斯卡：《红鲱鱼》杂志2016全球100强得主。。\r\n仟寻的客户包括中国十大互联网公司中的6家，以及Wal-mart, GE, Disney, Bosch, L’Oreal, Cisco, GM等数百家世界500强企业。仟寻目前接近盈亏平衡。预计2017年完成B轮融资。\r\n       点击这里查看仟寻创始人的故事：http://qianbidao.baijia.baidu.com/article/687060.\r\n仟寻是日本最大互联网公司Recruit Holdings在华战略投资企业。仟寻是招聘领域的Airbnb。\r\n       仟寻目前已经完成两轮融资，融资总额超过700万美元，投资方主要为世界上最大的在线人力资源集团和日本最大互联网公司Recruit Holdings。Recruit Holdings同时也是前程无忧的控股股东和58同城的投资人。其他投资人包括英诺天使（美团网天使投资人）、正和岛联合投资基金和Infinity Venture Partners （36氪投资人） 。 \r\n       仟寻与小红书、映客等企业同为腾讯创业营二期成员。仟寻是创投界的奥斯卡：《红鲱鱼》杂志2016全球100强得主。。\r\n仟寻的客户包括中国十大互联网公司中的6家，以及Wal-mart, GE, Disney, Bosch, L’Oreal, Cisco, GM等数百家世界500强企业。仟寻目前接近盈亏平衡。预计2017年完成B轮融资。\r\n       点击这里查看仟寻创始人的故事：http://qianbidao.baijia.baidu.com/article/687060.', '2', '上海市徐汇区乐山路33号1号楼', '3', '电子商务', 'http://www-t.dqprism.com', 'upload/logo/98d7ebc2-fcc2-4e29-9fc1-e8131c67c5f4.jpeg', '寻仟信息1', '', '{\"banner0\":\"upload/logo/72a3df46-b0d1-45e9-8dac-6bd259032fa6.jpg?imageMogr2/crop/!1279x613a0a0\"}', '0', @hr_id_mother, '0', '2015-09-08 10:43:25', '2018-10-18 20:52:45', '0', '企业口号', '', '1');

-- company_conf
REPLACE INTO `hrdb`.`hr_company_conf` (`company_id`, `theme_id`, `hb_throttle`, `app_reply`, `create_time`, `update_time`, `employee_binding`, `recommend_presentee`, `recommend_success`, `forward_message`, `application_count_limit`, `school_application_count_limit`, `job_custom_title`, `search_seq`, `search_img`, `job_occupation`, `teamname_custom`, `application_time`, `newjd_status`, `hr_chat`, `show_in_qx`, `employee_slug`, `display_locale`, `talentpool_status`, `veryeast_switch`, `job51_salary_discuss`) VALUES (@company_id, '4', '10', '你已申请该职位哦', '2016-08-04 11:57:59', '2018-10-30 10:44:03', '员工认证', '恭喜你员工推荐成功啦~喜闻乐见！获得积分：{recom_reward}；您的总积分为：{current_reward}。', '评价成功！您在本公司活动中获得的红包总金额已达：{recom_hb}元。', '多个朋友多条路，多推荐，多拿钱！', '200', '200', '职位职位', '1#9#3#5', 'upload/logo/5352c9d2-1c4e-4af9-bccc-2939d2b1bcac.jpg?imageMogr2/crop/!205x361a4a137', '职位职能名称', 'Team', '2017-03-30 14:09:16', '2', '2', '1', '仟寻', '', '2', '1', '0');


-- hr_company_account
REPLACE INTO `hrdb`.`hr_company_account` (`company_id`, `account_id`) VALUES (@company_id, @hr_id_mother);
REPLACE INTO `hrdb`.`hr_company_account` (`company_id`, `account_id`) VALUES (@company_id, @hr_id_child);




-- 创建母账号
REPLACE INTO `userdb`.`user_hr_account` (`id`, `company_id`, `mobile`, `email`, `wxuser_id`, `password`, `username`, `account_type`, `activation`, `disable`, `register_time`, `register_ip`, `last_login_time`, `last_login_ip`, `login_count`, `source`, `create_time`, `update_time`, `headimgurl`, `leave_to_mobot`, `remark_name`) VALUES ( @hr_id_mother , @company_id, @hr_id_mother_mobile, '1@moseeker.com', '1', '1fb586718403e6b398655502d2114f5ac27badd1', 'testCC', '0', '1', '1', '2016-07-20 14:31:05', '182.92.169.77', '2018-10-30 14:20:10', '101.81.226.48', '4993', '1', '2016-07-20 14:31:05', '2018-09-20 15:21:51', 'upload/hravatar/41db022e-71ce-4926-930e-6fca69a39852.png?imageMogr2/crop/!130x130a3a0', '0', '');


-- 创建子账号
REPLACE INTO `userdb`.`user_hr_account` (`id`, `company_id`, `mobile`, `email`, `wxuser_id`, `password`, `username`, `account_type`, `activation`, `disable`, `register_time`, `register_ip`, `last_login_time`, `last_login_ip`, `login_count`, `source`, `create_time`, `update_time`, `leave_to_mobot`, `remark_name`) VALUES (@hr_id_child, @company_id,  @hr_id_child_mobile , '2@moseeker.com', '7434', '1fb586718403e6b398655502d2114f5ac27badd1', '仟寻2号', '1', '1', '1', '2017-07-14 16:30:20', '', '2018-10-30 15:15:34', '101.81.226.48', '78', '1', '2017-07-14 16:31:26', '2018-10-18 14:04:33', '1', 'das sda');




set @company_id=12;
set @hr_id_paid = 12;
set @hr_id_paid_mobile = '13800000002';


-- 普通付费公司
REPLACE INTO `hrdb`.`hr_company` (`id`, `type`, `name`, `introduction`, `scale`, `address`, `property`, `industry`, `homepage`, `logo`, `abbreviation`, `impression`, `banner`, `parent_id`, `hraccount_id`, `disable`, `create_time`, `update_time`, `source`, `slogan`, `feature`, `fortune`) VALUES (@company_id, '0', '上海大岂网络科技有限公司2-普通付费', '仟寻是日本最大互联网公司Recruit Holdings在华战略投资企业。仟寻是招聘领域的Airbnb。\r\n       仟寻目前已经完成两轮融资，融资总额超过700万美元，投资方主要为世界上最大的在线人力资源集团和日本最大互联网公司Recruit Holdings。Recruit Holdings同时也是前程无忧的控股股东和58同城的投资人。其他投资人包括英诺天使（美团网天使投资人）、正和岛联合投资基金和Infinity Venture Partners （36氪投资人） 。 \r\n       仟寻与小红书、映客等企业同为腾讯创业营二期成员。仟寻是创投界的奥斯卡：《红鲱鱼》杂志2016全球100强得主。。\r\n仟寻的客户包括中国十大互联网公司中的6家，以及Wal-mart, GE, Disney, Bosch, L’Oreal, Cisco, GM等数百家世界500强企业。仟寻目前接近盈亏平衡。预计2017年完成B轮融资。\r\n       点击这里查看仟寻创始人的故事：http://qianbidao.baijia.baidu.com/article/687060.\r\n仟寻是日本最大互联网公司Recruit Holdings在华战略投资企业。仟寻是招聘领域的Airbnb。\r\n       仟寻目前已经完成两轮融资，融资总额超过700万美元，投资方主要为世界上最大的在线人力资源集团和日本最大互联网公司Recruit Holdings。Recruit Holdings同时也是前程无忧的控股股东和58同城的投资人。其他投资人包括英诺天使（美团网天使投资人）、正和岛联合投资基金和Infinity Venture Partners （36氪投资人） 。 \r\n       仟寻与小红书、映客等企业同为腾讯创业营二期成员。仟寻是创投界的奥斯卡：《红鲱鱼》杂志2016全球100强得主。。\r\n仟寻的客户包括中国十大互联网公司中的6家，以及Wal-mart, GE, Disney, Bosch, L’Oreal, Cisco, GM等数百家世界500强企业。仟寻目前接近盈亏平衡。预计2017年完成B轮融资。\r\n       点击这里查看仟寻创始人的故事：http://qianbidao.baijia.baidu.com/article/687060.', '2', '上海市徐汇区乐山路33号1号楼', '3', '电子商务', 'http://www-t.dqprism.com', 'upload/logo/98d7ebc2-fcc2-4e29-9fc1-e8131c67c5f4.jpeg', '寻仟信息2-普通付费', '', '{\"banner0\":\"upload/logo/72a3df46-b0d1-45e9-8dac-6bd259032fa6.jpg?imageMogr2/crop/!1279x613a0a0\"}', '0', @hr_id_mother, '0', '2015-09-08 10:43:25', '2018-10-18 20:52:45', '0', '企业口号', '', '1');

-- company_conf
REPLACE INTO `hrdb`.`hr_company_conf` (`company_id`, `theme_id`, `hb_throttle`, `app_reply`, `create_time`, `update_time`, `employee_binding`, `recommend_presentee`, `recommend_success`, `forward_message`, `application_count_limit`, `school_application_count_limit`, `job_custom_title`, `search_seq`, `search_img`, `job_occupation`, `teamname_custom`, `application_time`, `newjd_status`, `hr_chat`, `show_in_qx`, `employee_slug`, `display_locale`, `talentpool_status`, `veryeast_switch`, `job51_salary_discuss`) VALUES (@company_id, '4', '10', '你已申请该职位哦', '2016-08-04 11:57:59', '2018-10-30 10:44:03', '员工认证', '恭喜你员工推荐成功啦~喜闻乐见！获得积分：{recom_reward}；您的总积分为：{current_reward}。', '评价成功！您在本公司活动中获得的红包总金额已达：{recom_hb}元。', '多个朋友多条路，多推荐，多拿钱！', '200', '200', '职位职位', '1#9#3#5', 'upload/logo/5352c9d2-1c4e-4af9-bccc-2939d2b1bcac.jpg?imageMogr2/crop/!205x361a4a137', '职位职能名称', 'Team', '2017-03-30 14:09:16', '2', '2', '1', '仟寻', '', '2', '1', '0');


-- hr_company_account
REPLACE INTO `hrdb`.`hr_company_account` (`company_id`, `account_id`) VALUES (@company_id, @hr_id_paid);

-- 创建普通账号
REPLACE INTO `userdb`.`user_hr_account` (`id`, `company_id`, `mobile`, `email`, `wxuser_id`, `password`, `username`, `account_type`, `activation`, `disable`, `register_time`, `register_ip`, `last_login_time`, `last_login_ip`, `login_count`, `source`, `create_time`, `update_time`, `headimgurl`, `leave_to_mobot`, `remark_name`) VALUES ( @hr_id_paid , @company_id, @hr_id_paid_mobile, '3@moseeker.com', '1', '1fb586718403e6b398655502d2114f5ac27badd1', 'putong paid', '2', '1', '1', '2016-07-20 14:31:05', '182.92.169.77', '2018-10-30 14:20:10', '101.81.226.48', '4993', '1', '2016-07-20 14:31:05', '2018-09-20 15:21:51', 'upload/hravatar/41db022e-71ce-4926-930e-6fca69a39852.png?imageMogr2/crop/!130x130a3a0', '0', '');




set @company_id=13;
set @hr_id_free = 13;
set @hr_id_free_mobile = '13800000003';

-- 免费公司
REPLACE INTO `hrdb`.`hr_company` (`id`, `type`, `name`, `introduction`, `scale`, `address`, `property`, `industry`, `homepage`, `logo`, `abbreviation`, `impression`, `banner`, `parent_id`, `hraccount_id`, `disable`, `create_time`, `update_time`, `source`, `slogan`, `feature`, `fortune`) VALUES (@company_id, '1', '上海大岂网络科技有限公司3-免费', '仟寻是日本最大互联网公司Recruit Holdings在华战略投资企业。仟寻是招聘领域的Airbnb。\r\n       仟寻目前已经完成两轮融资，融资总额超过700万美元，投资方主要为世界上最大的在线人力资源集团和日本最大互联网公司Recruit Holdings。Recruit Holdings同时也是前程无忧的控股股东和58同城的投资人。其他投资人包括英诺天使（美团网天使投资人）、正和岛联合投资基金和Infinity Venture Partners （36氪投资人） 。 \r\n       仟寻与小红书、映客等企业同为腾讯创业营二期成员。仟寻是创投界的奥斯卡：《红鲱鱼》杂志2016全球100强得主。。\r\n仟寻的客户包括中国十大互联网公司中的6家，以及Wal-mart, GE, Disney, Bosch, L’Oreal, Cisco, GM等数百家世界500强企业。仟寻目前接近盈亏平衡。预计2017年完成B轮融资。\r\n       点击这里查看仟寻创始人的故事：http://qianbidao.baijia.baidu.com/article/687060.\r\n仟寻是日本最大互联网公司Recruit Holdings在华战略投资企业。仟寻是招聘领域的Airbnb。\r\n       仟寻目前已经完成两轮融资，融资总额超过700万美元，投资方主要为世界上最大的在线人力资源集团和日本最大互联网公司Recruit Holdings。Recruit Holdings同时也是前程无忧的控股股东和58同城的投资人。其他投资人包括英诺天使（美团网天使投资人）、正和岛联合投资基金和Infinity Venture Partners （36氪投资人） 。 \r\n       仟寻与小红书、映客等企业同为腾讯创业营二期成员。仟寻是创投界的奥斯卡：《红鲱鱼》杂志2016全球100强得主。。\r\n仟寻的客户包括中国十大互联网公司中的6家，以及Wal-mart, GE, Disney, Bosch, L’Oreal, Cisco, GM等数百家世界500强企业。仟寻目前接近盈亏平衡。预计2017年完成B轮融资。\r\n       点击这里查看仟寻创始人的故事：http://qianbidao.baijia.baidu.com/article/687060.', '2', '上海市徐汇区乐山路33号1号楼', '3', '电子商务', 'http://www-t.dqprism.com', 'upload/logo/98d7ebc2-fcc2-4e29-9fc1-e8131c67c5f4.jpeg', '寻仟信息3-免费', '', '{\"banner0\":\"upload/logo/72a3df46-b0d1-45e9-8dac-6bd259032fa6.jpg?imageMogr2/crop/!1279x613a0a0\"}', '0', @hr_id_mother, '0', '2015-09-08 10:43:25', '2018-10-18 20:52:45', '0', '企业口号', '', '1');

-- company_conf
REPLACE INTO `hrdb`.`hr_company_conf` (`company_id`, `theme_id`, `hb_throttle`, `app_reply`, `create_time`, `update_time`, `employee_binding`, `recommend_presentee`, `recommend_success`, `forward_message`, `application_count_limit`, `school_application_count_limit`, `job_custom_title`, `search_seq`, `search_img`, `job_occupation`, `teamname_custom`, `application_time`, `newjd_status`, `hr_chat`, `show_in_qx`, `employee_slug`, `display_locale`, `talentpool_status`, `veryeast_switch`, `job51_salary_discuss`) VALUES (@company_id, '4', '10', '你已申请该职位哦', '2016-08-04 11:57:59', '2018-10-30 10:44:03', '员工认证', '恭喜你员工推荐成功啦~喜闻乐见！获得积分：{recom_reward}；您的总积分为：{current_reward}。', '评价成功！您在本公司活动中获得的红包总金额已达：{recom_hb}元。', '多个朋友多条路，多推荐，多拿钱！', '200', '200', '职位职位', '1#9#3#5', 'upload/logo/5352c9d2-1c4e-4af9-bccc-2939d2b1bcac.jpg?imageMogr2/crop/!205x361a4a137', '职位职能名称', 'Team', '2017-03-30 14:09:16', '2', '2', '1', '仟寻', '', '2', '1', '0');


-- hr_company_account
REPLACE INTO `hrdb`.`hr_company_account` (`company_id`, `account_id`) VALUES (@company_id, @hr_id_free);

-- 创建普通账号
REPLACE INTO `userdb`.`user_hr_account` (`id`, `company_id`, `mobile`, `email`, `wxuser_id`, `password`, `username`, `account_type`, `activation`, `disable`, `register_time`, `register_ip`, `last_login_time`, `last_login_ip`, `login_count`, `source`, `create_time`, `update_time`, `headimgurl`, `leave_to_mobot`, `remark_name`) VALUES ( @hr_id_free , @company_id, @hr_id_free_mobile, '4@moseeker.com', '1', '1fb586718403e6b398655502d2114f5ac27badd1', 'putong paid', '2', '1', '1', '2016-07-20 14:31:05', '182.92.169.77', '2018-10-30 14:20:10', '101.81.226.48', '4993', '1', '2016-07-20 14:31:05', '2018-09-20 15:21:51', 'upload/hravatar/41db022e-71ce-4926-930e-6fca69a39852.png?imageMogr2/crop/!130x130a3a0', '0', '');
