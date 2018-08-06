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
( 1, 1,"カルビ","かるび","カルビ 1人前(200g)",1,500,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 2, 2,"ロース","ろーす","ロース 1人前(200g)",1,500,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 3, 3,"ホルモン","ほるもん","ホルモン 1人前(50g)",1,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 4, 4,"サーロイン","さーろいん","サーロイン 1人前(120g)",1,1000,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 5, 5,"豚バラ","ぶたばら","豚バラ 1人前(100g)",1,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 6, 6,"スペアリブ","すぺありぶ","スペアリブ 1人前(350g)",1,800,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 7, 7,"鶏もも","とりもも","鶏もも 1人前(100g)",1,150,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 8, 8,"ウインナー","ういんなー","ウインナー 1人前(150g)",1,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 9, 9,"玉ねぎ串","たまねぎぐし","玉ねぎ串 (5本入) ",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 10, 10,"ピーマン","ぴーまん","ピーマン(1個)",2,40,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 11, 11,"コーン","こーん","コーン(2本入)",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 12, 12,"エリンギ","えりんぎ","エリンギ(2個)",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 13, 13,"ジャガイモ","じゃがいも","ジャガイモ(1個)",2,40,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 14, 14,"ニンジン","にんじん","ニンジン(1本)",2,40,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 15, 15,"お手軽野菜セット","おてがるやさいせっと","お手軽野菜セット(2人前)",2,700,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 16, 16,"ギガ盛お肉セット","ぎがもりおにくせっと","ギガ盛お肉セット(4人前)",1,3000,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 17, 17,"BBQコンロ","ばーべきゅーこんろ","BBQコンロ",3,5000,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 18, 18,"木炭","もくたん","木炭(3kg)",3,500,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 19, 19,"テーブル","てーぶる","テーブル(1個)",3,5000,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 20, 20,"アームチェア","あーむちぇあ","アームチェア(1個)",3,2000,"./images","sample.jpg",now(),"発売会社",0,now(),now());

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