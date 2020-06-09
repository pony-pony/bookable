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