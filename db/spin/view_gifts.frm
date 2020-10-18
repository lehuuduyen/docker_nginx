TYPE=VIEW
query=select `a`.`gid` AS `gid`,`a`.`g_name` AS `g_name`,`a`.`g_icon` AS `g_icon`,`a`.`g_total` AS `g_total`,`a`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) AS `total_curent`,`a`.`g_random_rate` AS `g_random_rate`,case when `e`.`all` - `c`.`non_exp_total` = `e`.`all` then `a`.`g_random_rate` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `a`.`g_random_rate` > 0 and `a`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) > 0) then `a`.`g_random_rate` + `b`.`exp_rate` / `c`.`non_exp_total` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `a`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) = 0) then 0 else `a`.`g_random_rate` end AS `random_rate`,`a`.`g_type` AS `g_type`,`a`.`g_is_show` AS `g_is_show`,`a`.`g_partner_code` AS `g_partner_code`,`a`.`g_value` AS `g_value`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at`,`b`.`exp_rate` AS `exp_rate`,10 - `c`.`non_exp_total` AS `non_exp_total`,case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end AS `total_minus`,`e`.`all` AS `all` from ((((`spin`.`gifts` `a` left join (select `dd`.`gid` AS `gid`,count(`dd`.`gid`) AS `total_minus` from `spin`.`user_gifts` `dd` group by `dd`.`gid`) `d` on(`a`.`gid` = `d`.`gid`)) left join (select sum(`xb`.`g_random_rate`) AS `exp_rate` from (`spin`.`gifts` `xb` left join (select `zb`.`gid` AS `gid`,count(`zb`.`gid`) AS `total_minus` from `spin`.`user_gifts` `zb` group by `zb`.`gid`) `yb` on(`xb`.`gid` = `yb`.`gid`)) where `xb`.`g_total` - (case when `yb`.`total_minus` is null then 0 else `yb`.`total_minus` end) = 0) `b` on(1)) left join (select count(`xc`.`gid`) AS `non_exp_total` from (`spin`.`gifts` `xc` left join (select `zc`.`gid` AS `gid`,count(`zc`.`gid`) AS `total_minus` from `spin`.`user_gifts` `zc` group by `zc`.`gid`) `yc` on(`xc`.`gid` = `yc`.`gid`)) where `xc`.`g_total` - (case when `yc`.`total_minus` is null then 0 else `yc`.`total_minus` end) = 0 or `xc`.`g_random_rate` = 0) `c` on(1)) left join (select count(`spin`.`gifts`.`gid`) AS `all` from `spin`.`gifts` where `spin`.`gifts`.`g_random_rate` > 0) `e` on(1))
md5=c6ca7cc4df12da5b88ae8c02774c1593
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-10-17 07:56:32
create-version=2
source=select `A`.`gid` AS `gid`,`A`.`g_name` AS `g_name`,`A`.`g_icon` AS `g_icon`,`A`.`g_total` AS `g_total`,
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `a`.`gid` AS `gid`,`a`.`g_name` AS `g_name`,`a`.`g_icon` AS `g_icon`,`a`.`g_total` AS `g_total`,`a`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) AS `total_curent`,`a`.`g_random_rate` AS `g_random_rate`,case when `e`.`all` - `c`.`non_exp_total` = `e`.`all` then `a`.`g_random_rate` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `a`.`g_random_rate` > 0 and `a`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) > 0) then `a`.`g_random_rate` + `b`.`exp_rate` / `c`.`non_exp_total` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `a`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) = 0) then 0 else `a`.`g_random_rate` end AS `random_rate`,`a`.`g_type` AS `g_type`,`a`.`g_is_show` AS `g_is_show`,`a`.`g_partner_code` AS `g_partner_code`,`a`.`g_value` AS `g_value`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at`,`b`.`exp_rate` AS `exp_rate`,10 - `c`.`non_exp_total` AS `non_exp_total`,case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end AS `total_minus`,`e`.`all` AS `all` from ((((`spin`.`gifts` `a` left join (select `dd`.`gid` AS `gid`,count(`dd`.`gid`) AS `total_minus` from `spin`.`user_gifts` `dd` group by `dd`.`gid`) `d` on(`a`.`gid` = `d`.`gid`)) left join (select sum(`xb`.`g_random_rate`) AS `exp_rate` from (`spin`.`gifts` `xb` left join (select `zb`.`gid` AS `gid`,count(`zb`.`gid`) AS `total_minus` from `spin`.`user_gifts` `zb` group by `zb`.`gid`) `yb` on(`xb`.`gid` = `yb`.`gid`)) where `xb`.`g_total` - (case when `yb`.`total_minus` is null then 0 else `yb`.`total_minus` end) = 0) `b` on(1)) left join (select count(`xc`.`gid`) AS `non_exp_total` from (`spin`.`gifts` `xc` left join (select `zc`.`gid` AS `gid`,count(`zc`.`gid`) AS `total_minus` from `spin`.`user_gifts` `zc` group by `zc`.`gid`) `yc` on(`xc`.`gid` = `yc`.`gid`)) where `xc`.`g_total` - (case when `yc`.`total_minus` is null then 0 else `yc`.`total_minus` end) = 0 or `xc`.`g_random_rate` = 0) `c` on(1)) left join (select count(`spin`.`gifts`.`gid`) AS `all` from `spin`.`gifts` where `spin`.`gifts`.`g_random_rate` > 0) `e` on(1))
mariadb-version=100234