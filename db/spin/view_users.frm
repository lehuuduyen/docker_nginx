TYPE=VIEW
query=select `u`.`uid` AS `uid`,`u`.`phone` AS `phone`,`u`.`name` AS `name`,`u`.`address` AS `address`,`u`.`token` AS `token`,`u`.`cpid` AS `cpid`,`u`.`created_at` AS `created_at`,`u`.`updated_at` AS `updated_at`,`x`.`non` AS `non`,`y`.`bingo` AS `bingo` from ((`spin`.`users` `u` left join (select count(`spin`.`user_gifts`.`uid`) AS `non`,`spin`.`user_gifts`.`uid` AS `uid` from `spin`.`user_gifts` where `spin`.`user_gifts`.`status` = 0 group by `spin`.`user_gifts`.`uid`) `x` on(`u`.`uid` = `x`.`uid`)) left join (select count(`spin`.`user_gifts`.`uid`) AS `bingo`,`spin`.`user_gifts`.`uid` AS `uid` from `spin`.`user_gifts` group by `spin`.`user_gifts`.`uid`) `y` on(`u`.`uid` = `y`.`uid`))
md5=f2c36fbdd5bbe0ab611919f3e2c1fc0d
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-10-17 07:56:17
create-version=2
source=select `U`.`uid` AS `uid`,`U`.`phone` AS `phone`,`U`.`name` AS `name`,`U`.`address` AS `address`,`U`.`token` AS `token`,`U`.`cpid` AS `cpid`,`U`.`created_at` AS `created_at`,`U`.`updated_at` AS `updated_at`,`X`.`non` AS `non`,`Y`.`bingo` AS `bingo` from ((`spin`.`users` `U` left join (select count(`spin`.`user_gifts`.`uid`) AS `non`,`spin`.`user_gifts`.`uid` AS `uid` from `spin`.`user_gifts` where `spin`.`user_gifts`.`status` = 0 group by `spin`.`user_gifts`.`uid`) `X` on(`U`.`uid` = `X`.`uid`)) left join (select count(`spin`.`user_gifts`.`uid`) AS `bingo`,`spin`.`user_gifts`.`uid` AS `uid` from `spin`.`user_gifts` group by `spin`.`user_gifts`.`uid`) `Y` on(`U`.`uid` = `Y`.`uid`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `u`.`uid` AS `uid`,`u`.`phone` AS `phone`,`u`.`name` AS `name`,`u`.`address` AS `address`,`u`.`token` AS `token`,`u`.`cpid` AS `cpid`,`u`.`created_at` AS `created_at`,`u`.`updated_at` AS `updated_at`,`x`.`non` AS `non`,`y`.`bingo` AS `bingo` from ((`spin`.`users` `u` left join (select count(`spin`.`user_gifts`.`uid`) AS `non`,`spin`.`user_gifts`.`uid` AS `uid` from `spin`.`user_gifts` where `spin`.`user_gifts`.`status` = 0 group by `spin`.`user_gifts`.`uid`) `x` on(`u`.`uid` = `x`.`uid`)) left join (select count(`spin`.`user_gifts`.`uid`) AS `bingo`,`spin`.`user_gifts`.`uid` AS `uid` from `spin`.`user_gifts` group by `spin`.`user_gifts`.`uid`) `y` on(`u`.`uid` = `y`.`uid`))
mariadb-version=100234
