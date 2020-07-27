## 概要
フライヤーなどの要約サイトは自分で要約を検索しにいくのに対し、このbookableはまるでマッチングアプリのように要約と巡り合うことができます。

## 使用技術
haml/scss, ruby, ruby on rails, js

## トップページ
![front](https://user-images.githubusercontent.com/64963869/88541475-c5569100-d04f-11ea-9f1e-fd50f8378b18.png)

## メインページ
![top](https://user-images.githubusercontent.com/64963869/88541848-62b1c500-d050-11ea-8821-7465446dbce8.png)
「いいね」か「興味なし」か振り分けることができます。

## 記事作成ページ
![create](https://user-images.githubusercontent.com/64963869/88541907-79f0b280-d050-11ea-8f6f-f678e810c8ed.png)

## いいねページ
![likes](https://user-images.githubusercontent.com/64963869/88541976-97be1780-d050-11ea-9421-ea553a0fcc42.png)

## 要約ページ
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