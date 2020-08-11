<img src="https://user-images.githubusercontent.com/64963869/88995019-a0e70700-d324-11ea-9c89-4d7f96d5ccdb.png" width="100%">
<img src="https://user-images.githubusercontent.com/64963869/89006838-8885e500-d342-11ea-9a2e-d8892477f4ed.JPG" width="100%">


## 概要 ⛵️
初めて本格的に取り組んだ個人アプリです！<br>
自分の知らない本と出会うアプリ、BOOKABLE

ユーザーの書いたレビュー（要約）がランダムに表示されます。
気になるもの、ならないものを振り分け、気になったものはいいね一覧から読むことができます。

また、特定の本で読みたい要約があれば検索機能から探すこともできます。

まだ未実装な部分がありますが少しずつでも進めていきたいと思います😊

## 制作背景 🏄🏽‍♂️
開発者自身が乱読で、読んだことのない本を読みたいと思ったとき「Bookable のようなアプリがあれば探す手間も省けるのになあ」と考え制作するに至りました。

また自分にはまだ知らないことが数多く残されていると知り、効率よく知識を吸収できればと「要約」に関するアプリにしました。<br>（補足：既存の本の多くは全ページ中の約２割に重要な情報が詰まっている。）

## 今後実装したい機能 🎲
▶︎ 本にジャンルを区分するタグを付け、ユーザーの好みに合わせた本をおすすめに表示する機能。<br>
▶︎ 要約を読んで気に入った本があれば、そのままAmazonの購入画面に遷移するリンクの実装。

## コンセプト資料 📄
１．<a href="https://docs.google.com/presentation/d/1yk8anTGANeIvMDrHq-hfUDDvfk-gWWoXK1hsqpU8mNE/edit#slide=id.p">スライド資料</a><br>
２．<a href="#">ＥＲ図(wip)</a>

## 外観 🖥
##### トップページ
![front](https://user-images.githubusercontent.com/64963869/88541475-c5569100-d04f-11ea-9f1e-fd50f8378b18.png)

##### メインページ
![top](https://user-images.githubusercontent.com/64963869/88541848-62b1c500-d050-11ea-8821-7465446dbce8.png)

##### 記事作成ページ
![create](https://user-images.githubusercontent.com/64963869/88541907-79f0b280-d050-11ea-8f6f-f678e810c8ed.png)

##### いいねページ
![likes](https://user-images.githubusercontent.com/64963869/88541976-97be1780-d050-11ea-9421-ea553a0fcc42.png)

##### 要約ページ
![content](https://user-images.githubusercontent.com/64963869/88542009-ac021480-d050-11ea-87d9-a6dd0014ce18.png)


## テーブル
### users table
|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|email|string|null: false, unique: false|

#### Association
- has_many reviews
- has_many comments

### reviews table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|text||
|image|string||
|user_id|integer|null: false, foreign_key: true|

#### Association
- has_many commemts
- belongs_to user

### comments table
|Column|Type|Options|
|------|----|-------|
|body|text||
|user_id|integer|null: false, foreign_key: true|
|review_id|integer|null: false, foreign_key: true|

#### Association
- belongs_to user
- belongs_to review