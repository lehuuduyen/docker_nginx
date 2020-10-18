TYPE=VIEW
query=select `A`.`gid` AS `gid`,`A`.`g_name` AS `g_name`,`A`.`g_icon` AS `g_icon`,`A`.`g_total` AS `g_total`,`A`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) AS `total_curent`,`A`.`g_random_rate` AS `g_random_rate`,case when `e`.`all` - `c`.`non_exp_total` = `e`.`all` then `A`.`g_random_rate` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `A`.`g_random_rate` > 0 and `A`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) > 0) then `A`.`g_random_rate` + `b`.`exp_rate` / `c`.`non_exp_total` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `A`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) = 0) then 0 else `A`.`g_random_rate` end AS `random_rate`,`A`.`g_type` AS `g_type`,`A`.`g_is_show` AS `g_is_show`,`A`.`g_partner_code` AS `g_partner_code`,`A`.`g_value` AS `g_value`,`A`.`created_at` AS `created_at`,`A`.`updated_at` AS `updated_at`,`b`.`exp_rate` AS `exp_rate`,10 - `c`.`non_exp_total` AS `non_exp_total`,case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end AS `total_minus`,`e`.`all` AS `all` from ((((`spin`.`gifts` `A` left join (select `DD`.`gid` AS `gid`,count(`DD`.`gid`) AS `total_minus` from `spin`.`user_gifts` `DD` group by `DD`.`gid`) `D` on(`A`.`gid` = `d`.`gid`)) left join (select sum(`XB`.`g_random_rate`) AS `exp_rate` from (`spin`.`gifts` `XB` left join (select `ZB`.`gid` AS `gid`,count(`ZB`.`gid`) AS `total_minus` from `spin`.`user_gifts` `ZB` group by `ZB`.`gid`) `YB` on(`XB`.`gid` = `yb`.`gid`)) where `XB`.`g_total` - (case when `yb`.`total_minus` is null then 0 else `yb`.`total_minus` end) = 0) `B` on(1)) left join (select count(`XC`.`gid`) AS `non_exp_total` from (`spin`.`gifts` `XC` left join (select `ZC`.`gid` AS `gid`,count(`ZC`.`gid`) AS `total_minus` from `spin`.`user_gifts` `ZC` group by `ZC`.`gid`) `YC` on(`XC`.`gid` = `yc`.`gid`)) where `XC`.`g_total` - (case when `yc`.`total_minus` is null then 0 else `yc`.`total_minus` end) = 0 or `XC`.`g_random_rate` = 0) `C` on(1)) left join (select count(`spin`.`gifts`.`gid`) AS `all` from `spin`.`gifts` where `spin`.`gifts`.`g_random_rate` > 0) `E` on(1))
md5=74fe23ed024366114a33d8d396ed5b4e
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2020-10-15 16:06:28
create-version=2
source=select `A`.`gid` AS `gid`,`A`.`g_name` AS `g_name`,`A`.`g_icon` AS `g_icon`,`A`.`g_total` AS `g_total`,\n`A`.`g_total` - (case when `D`.`total_minus` is null then 0 else `D`.`total_minus` end) AS `total_curent`,`A`.`g_random_rate` AS `g_random_rate`,case when `E`.`all` - `C`.`non_exp_total` = `E`.`all` then `A`.`g_random_rate` when (`E`.`all` - `C`.`non_exp_total` > 0 and `B`.`exp_rate` > 0 and `A`.`g_random_rate` > 0 and `A`.`g_total` - (case when `D`.`total_minus` is null then 0 else `D`.`total_minus` end) > 0) then `A`.`g_random_rate` + `B`.`exp_rate` / `C`.`non_exp_total` when (`E`.`all` - `C`.`non_exp_total` > 0 and `B`.`exp_rate` > 0 and `A`.`g_total` - (case when `D`.`total_minus` is null then 0 else `D`.`total_minus` end) = 0) then 0 else `A`.`g_random_rate` end AS `random_rate`,`A`.`g_type` AS `g_type`,`A`.`g_is_show` AS `g_is_show`,`A`.`g_partner_code` AS `g_partner_code`,`A`.`g_value` AS `g_value`,`A`.`created_at` AS `created_at`,`A`.`updated_at` AS `updated_at`,`B`.`exp_rate` AS `exp_rate`,10 - `C`.`non_exp_total` AS `non_exp_total`,case when `D`.`total_minus` is null then 0 else `D`.`total_minus` end AS `total_minus`,`E`.`all` AS `all` from ((((`spin`.`gifts` `A` left join (select `DD`.`gid` AS `gid`,count(`DD`.`gid`) AS `total_minus` from `spin`.`user_gifts` `DD` group by `DD`.`gid`) `D` on(`A`.`gid` = `D`.`gid`)) left join (select sum(`XB`.`g_random_rate`) AS `exp_rate` from (`spin`.`gifts` `XB` left join (select `ZB`.`gid` AS `gid`,count(`ZB`.`gid`) AS `total_minus` from `spin`.`user_gifts` `ZB` group by `ZB`.`gid`) `YB` on(`XB`.`gid` = `YB`.`gid`)) where `XB`.`g_total` - (case when `YB`.`total_minus` is null then 0 else `YB`.`total_minus` end) = 0) `B` on(1)) left join (select count(`XC`.`gid`) AS `non_exp_total` from (`spin`.`gifts` `XC` left join (select `ZC`.`gid` AS `gid`,count(`ZC`.`gid`) AS `total_minus` from `spin`.`user_gifts` `ZC` group by `ZC`.`gid`) `YC` on(`XC`.`gid` = `YC`.`gid`)) where `XC`.`g_total` - (case when `YC`.`total_minus` is null then 0 else `YC`.`total_minus` end) = 0 or `XC`.`g_random_rate` = 0) `C` on(1)) left join (select count(`spin`.`gifts`.`gid`) AS `all` from `spin`.`gifts` where `spin`.`gifts`.`g_random_rate` > 0) `E` on(1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `A`.`gid` AS `gid`,`A`.`g_name` AS `g_name`,`A`.`g_icon` AS `g_icon`,`A`.`g_total` AS `g_total`,`A`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) AS `total_curent`,`A`.`g_random_rate` AS `g_random_rate`,case when `e`.`all` - `c`.`non_exp_total` = `e`.`all` then `A`.`g_random_rate` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `A`.`g_random_rate` > 0 and `A`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) > 0) then `A`.`g_random_rate` + `b`.`exp_rate` / `c`.`non_exp_total` when (`e`.`all` - `c`.`non_exp_total` > 0 and `b`.`exp_rate` > 0 and `A`.`g_total` - (case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end) = 0) then 0 else `A`.`g_random_rate` end AS `random_rate`,`A`.`g_type` AS `g_type`,`A`.`g_is_show` AS `g_is_show`,`A`.`g_partner_code` AS `g_partner_code`,`A`.`g_value` AS `g_value`,`A`.`created_at` AS `created_at`,`A`.`updated_at` AS `updated_at`,`b`.`exp_rate` AS `exp_rate`,10 - `c`.`non_exp_total` AS `non_exp_total`,case when `d`.`total_minus` is null then 0 else `d`.`total_minus` end AS `total_minus`,`e`.`all` AS `all` from ((((`spin`.`gifts` `A` left join (select `DD`.`gid` AS `gid`,count(`DD`.`gid`) AS `total_minus` from `spin`.`user_gifts` `DD` group by `DD`.`gid`) `D` on(`A`.`gid` = `d`.`gid`)) left join (select sum(`XB`.`g_random_rate`) AS `exp_rate` from (`spin`.`gifts` `XB` left join (select `ZB`.`gid` AS `gid`,count(`ZB`.`gid`) AS `total_minus` from `spin`.`user_gifts` `ZB` group by `ZB`.`gid`) `YB` on(`XB`.`gid` = `yb`.`gid`)) where `XB`.`g_total` - (case when `yb`.`total_minus` is null then 0 else `yb`.`total_minus` end) = 0) `B` on(1)) left join (select count(`XC`.`gid`) AS `non_exp_total` from (`spin`.`gifts` `XC` left join (select `ZC`.`gid` AS `gid`,count(`ZC`.`gid`) AS `total_minus` from `spin`.`user_gifts` `ZC` group by `ZC`.`gid`) `YC` on(`XC`.`gid` = `yc`.`gid`)) where `XC`.`g_total` - (case when `yc`.`total_minus` is null then 0 else `yc`.`total_minus` end) = 0 or `XC`.`g_random_rate` = 0) `C` on(1)) left join (select count(`spin`.`gifts`.`gid`) AS `all` from `spin`.`gifts` where `spin`.`gifts`.`g_random_rate` > 0) `E` on(1))
mariadb-version=100413
