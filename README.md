![bookable (1)](https://user-images.githubusercontent.com/64963869/88995019-a0e70700-d324-11ea-9c89-4d7f96d5ccdb.png)


## 概要
初めて本格的に取り組んだ個人アプリです！
自分の知らない本と出会うアプリ、BOOLABLE

まだ未実装な部分がありますが少しずつでも進めていきたいと思います😊

## コンセプト資料
１．<a href="https://docs.google.com/presentation/d/1yk8anTGANeIvMDrHq-hfUDDvfk-gWWoXK1hsqpU8mNE/edit#slide=id.p">スライド資料</a>
２．<a href="#">ＥＲ図</a>

## 外観
##### トップページ
![front](https://user-images.githubusercontent.com/64963869/88541475-c5569100-d04f-11ea-9f1e-fd50f8378b18.png)

##### メインページ
![top](https://user-images.githubusercontent.com/64963869/88541848-62b1c500-d050-11ea-8821-7465446dbce8.png)
「いいね」か「興味なし」か振り分けることができます。

##### 記事作成ページ
![create](https://user-images.githubusercontent.com/64963869/88541907-79f0b280-d050-11ea-8f6f-f678e810c8ed.png)

##### いいねページ
![likes](https://user-images.githubusercontent.com/64963869/88541976-97be1780-d050-11ea-9421-ea553a0fcc42.png)

##### 要約ページ
![content](https://user-images.githubusercontent.com/64963869/88542009-ac021480-d050-11ea-87d9-a6dd0014ce18.png)
本の要約を読むことができます。

## users table
|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|email|string|null: false, unique: false|

### Association
- has_many reviews
- has_many comments

## reviews table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|text||
|image|string||
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many commemts
- belongs_to user

## comments table
|Column|Type|Options|
|------|----|-------|
|body|text||
|user_id|integer|null: false, foreign_key: true|
|review_id|integer|null: false, foreign_key: true|

### Association
- belongs_to user
- belongs_to review