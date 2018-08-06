set names utf8;
set foreign_key_checks = 0;

-- glanqデータベース作成
drop database if exists glanq;
create database if not exists glanq;

use glanq;

-- 会員情報テーブル作成
/*
 * 備考
 * IDはpk, auto_increment
 * ユーザーIDはunique
 * 性別は0:男性、1:女性
 * ステータスは0:無効、1:有効
 * ログインフラグは0:未ログイン、1:ログイン済
 *
 */

create table user_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) unique not null comment "ユーザーID",
password varchar(16) not null comment "パスワード",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
sex tinyint not null default 0 comment "性別",
email varchar(32) not null comment "メールアドレス",
status tinyint not null default 0 comment "ステータス",
logined tinyint not null default 0 comment "ログインフラグ",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日"
)

default charset=utf8
comment="会員情報テーブル";

-- 会員情報のinsert文を挿入
insert into user_info VALUES
(1, "guest", "guest", "インターノウス", "ゲストユーザー", "いんたーのうす", "げすとゆーざー", 0, "guest@gmail.com", 0, 0, now(), now()),
(2, "guest2", "guest2", "インターノウス", "ゲストユーザー2", "いんたーのうす", "げすとゆーざー2", 0, "guest2@gmail.com", 0, 0, now(), now()),
(3, "guest3", "guest3", "インターノウス", "ゲストユーザー3", "いんたーのうす", "げすとゆーざー3", 0, "guest3@gmail.com", 0, 0, now(), now()),
(4, "guest4", "guest4", "インターノウス", "ゲストユーザー4", "いんたーのうす", "げすとゆーざー4", 0, "guest4@gmail.com", 0, 0, now(), now()),
(5, "guest5", "guest5", "インターノウス", "ゲストユーザー5", "いんたーのうす", "げすとゆーざー5", 0, "guest5@gmail.com", 0, 0, now(), now()),
(6, "guest6", "guest6", "インターノウス", "ゲストユーザー6", "いんたーのうす", "げすとゆーざー6", 0, "guest6@gmail.com", 0, 0, now(), now()),
(7, "guest7", "guest7", "インターノウス", "ゲストユーザー7", "いんたーのうす", "げすとゆーざー7", 0, "guest7@gmail.com", 0, 0, now(), now()),
(8, "guest8", "guest8", "インターノウス", "ゲストユーザー8", "いんたーのうす", "げすとゆーざー8", 0, "guest8@gmail.com", 0, 0, now(), now()),
(9, "guest9", "guest9", "インターノウス", "ゲストユーザー9", "いんたーのうす", "げすとゆーざー9", 0, "guest9@gmail.com", 0, 0, now(), now()),
(10, "guest10", "guest10", "インターノウス", "ゲストユーザー10", "いんたーのうす", "げすとゆーざー10", 0, "guest10@gmail.com", 0, 0, now(), now()),
(11, "guest11", "guest11", "インターノウス", "ゲストユーザー11", "いんたーのうす", "げすとゆーざー11", 0, "guest11@gmail.com", 0, 0, now(), now()),
(12, "guest12", "guest12", "インターノウス", "ゲストユーザー12", "いんたーのうす", "げすとゆーざー12", 0, "guest12@gmail.com", 0, 0, now(), now()),
(13, "admin", "admin", "インターノウス", "管理者ユーザー", "いんたーのうす", "かんりしゃゆーざー", 0, "admin@gmail.com", 1, 0, now(), now()),
(14, "admin2", "admin2", "インターノウス", "管理者ユーザー2", "いんたーのうす", "かんりしゃゆーざ2ー", 0, "admin2@gmail.com", 1, 0, now(), now()),
(15, "admin3", "admin3", "インターノウス", "管理者ユーザー3", "いんたーのうす", "かんりしゃゆーざー3", 0, "admin3@gmail.com", 1, 0, now(), now()),
(16, "admin4", "admin4", "インターノウス", "管理者ユーザー4", "いんたーのうす", "かんりしゃゆーざー4", 0, "admin4@gmail.com", 1, 0, now(), now()),
(17, "admin5", "admin5", "インターノウス", "管理者ユーザー5", "いんたーのうす", "かんりしゃゆーざー5", 0, "admin5@gmail.com", 1, 0, now(), now()),
(18, "admin6", "admin6", "インターノウス", "管理者ユーザー6", "いんたーのうす", "かんりしゃゆーざー6", 0, "admin6@gmail.com", 1, 0, now(), now()),
(19, "admin7", "admin7", "インターノウス", "管理者ユーザー7", "いんたーのうす", "かんりしゃゆーざー7", 0, "admin7@gmail.com", 1, 0, now(), now()),
(20, "admin8", "admin8", "インターノウス", "管理者ユーザー8", "いんたーのうす", "かんりしゃゆーざー8", 0, "admin8@gmail.com", 1, 0, now(), now()),
(21, "admin9", "admin9", "インターノウス", "管理者ユーザー9", "いんたーのうす", "かんりしゃゆーざー9", 0, "admin9@gmail.com", 1, 0, now(), now()),
(22, "admin10", "admin10", "インターノウス", "管理者ユーザー10", "いんたーのうす", "かんりしゃゆーざー10", 0, "admin10@gmail.com", 1, 0, now(), now()),
(23, "admin11", "admin11", "インターノウス", "管理者ユーザー11", "いんたーのうす", "かんりしゃゆーざー11", 0, "admin11@gmail.com", 1, 0, now(), now()),
(24, "admin12", "admin12", "インターノウス", "管理者ユーザー12", "いんたーのうす", "かんりしゃゆーざー12", 0, "admin12@gmail.com", 1, 0, now(), now());
-- 商品情報テーブル作成
/*
 * 備考
 * IDはpk, auto_increment
 * product_id, _name, _name_kanaはunique
 * カテゴリIDはm_categoryのcategory_idとfk
 * ステータスは0:無効、1:有効
 */

create table product_info(
id int primary key not null auto_increment comment "ID",
product_id int unique not null comment "商品ID",
product_name varchar(100) unique not null comment "商品名",
product_name_kana varchar(100) unique not null comment "商品名かな",
product_description varchar(255) not null comment "商品詳細",
category_id int not null not null comment "カテゴリID",
price int comment "価格",
image_file_path varchar(100) comment "画像ファイルパス",
image_file_name varchar(50) comment "画像ファイル名",
release_date datetime not null comment "発売年月",
release_company varchar(50) comment "発売会社",
status tinyint not null default 0 comment "ステータス",
regist_date datetime not null comment "登録日",
update_date datetime comment "更新日",
foreign key(category_id) references m_category(category_id)
)

default charset=utf8
comment="商品情報テーブル";

-- 商品情報のinsert文を挿入

insert into product_info values
( 1, 1,"本１","ほん１","本１の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 2, 2,"本２","ほん２","本２の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 3, 3,"本３","ほん３","本３の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 4, 4,"本４","ほん４","本４の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 5, 5,"本５","ほん５","本５の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 6, 6,"本６","ほん６","本６の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 7, 7,"本７","ほん７","本７の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 8, 8,"本８","ほん８","本８の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 9, 9,"本９","ほん９","本９の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 10, 10,"本１０","ほん１０","本１０の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 11, 11,"本１１","ほん１１","本１１の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 12, 12,"本１２","ほん１２","本１２の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 13, 13,"本１３","ほん１３","本１３の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 14, 14,"本１４","ほん１４","本１４の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 15, 15,"本１５","ほん１５","本１５の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 16, 16,"本１６","ほん１６","本１６の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 17, 17,"本１７","ほん１７","本１７の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 18, 18,"本１８","ほん１８","本１８の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 19, 19,"本１９","ほん１９","本１９の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 20, 20,"本２０","ほん２０","本２０の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now());

-- カート情報テーブルを作成
/*
 * 備考
 * IDはpk, auto_increment
 */

create table cart_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
temp_user_id varchar(16) comment "仮ユーザーID",
product_id int not null comment "商品ID",
product_count int not null comment "個数",
price int not null comment "金額",
regist_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)

default charset=utf8
comment="カート情報テーブル";

-- 購入履歴情報テーブルを作成
/*
 * 備考
 * IDはpk, auto_increment
 * product_idはproduct_infoのproduct_idとfk
 */

create table purchase_history_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
product_id int not null comment "商品ID",
product_count int not null comment "個数",
price int not null comment "金額",
destination_id int not null comment "宛先情報ID",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日",
foreign key(product_id) references product_info(product_id)
)

default charset=utf8
comment="購入履歴情報テーブル";

-- 宛先情報テーブルの作成
/*
 * 備考
 * IDはpk, auto_increment
 */

create table destination_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
email varchar(32) not null comment "メールアドレス",
tel_number varchar(13) not null comment "電話番号",
user_address varchar(50) not null comment "住所",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日"
)

default charset=utf8
comment="宛先情報テーブル";

-- 宛先情報のinsert文を挿入

-- カテゴリマスターテーブルの作成
/*
 * IDはpk
 * category_id, _nameはunique
 */


create table m_category(
id int primary key not null comment "ID",
category_id int not null unique comment "カテゴリID",
category_name varchar(20) not null unique comment "カテゴリ名",
category_description varchar(100) comment "カテゴリ詳細",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)

default charset=utf8
comment="カテゴリマスタテーブル";

-- カテゴリのinsert文を挿入