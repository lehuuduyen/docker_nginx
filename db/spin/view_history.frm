TYPE=VIEW
query=select `u`.`name` AS `name`,`u`.`phone` AS `phone`,`u`.`address` AS `address`,`x`.`g_name` AS `g_name`,`g`.`g_icon` AS `g_icon`,`g`.`g_type` AS `g_type`,`x`.`id` AS `id`,`x`.`uid` AS `uid`,`x`.`gid` AS `gid`,`x`.`status` AS `status`,`x`.`cpid` AS `cpid`,`x`.`created_at` AS `created_at`,`x`.`updated_at` AS `updated_at` from ((`spin`.`user_gifts` `x` join `spin`.`users` `u` on(`x`.`uid` = `u`.`uid`)) join `spin`.`gifts` `g` on(`g`.`gid` = `x`.`gid`))
md5=0b5b5a2c08ee09a3451bf0ea56277c09
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-10-17 07:56:17
create-version=2
source=select `U`.`name` AS `name`,`U`.`phone` AS `phone`,`U`.`address` AS `address`,`X`.`g_name` AS `g_name`,`G`.`g_icon` AS `g_icon`,`G`.`g_type` AS `g_type`,`X`.`id` AS `id`,`X`.`uid` AS `uid`,`X`.`gid` AS `gid`,`X`.`status` AS `status`,`X`.`cpid` AS `cpid`,`X`.`created_at` AS `created_at`,`X`.`updated_at` AS `updated_at` from ((`user_gifts` `X` join `users` `U` on(`X`.`uid` = `U`.`uid`)) join `gifts` `G` on(`G`.`gid` = `X`.`gid`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `u`.`name` AS `name`,`u`.`phone` AS `phone`,`u`.`address` AS `address`,`x`.`g_name` AS `g_name`,`g`.`g_icon` AS `g_icon`,`g`.`g_type` AS `g_type`,`x`.`id` AS `id`,`x`.`uid` AS `uid`,`x`.`gid` AS `gid`,`x`.`status` AS `status`,`x`.`cpid` AS `cpid`,`x`.`created_at` AS `created_at`,`x`.`updated_at` AS `updated_at` from ((`spin`.`user_gifts` `x` join `spin`.`users` `u` on(`x`.`uid` = `u`.`uid`)) join `spin`.`gifts` `g` on(`g`.`gid` = `x`.`gid`))
mariadb-version=100234
