## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false, foreign_key: true|

### Association
- has_many :groups_users
- has_many :messages

## userテーブル
|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false, foreign_key: true|
|mail_address|string|null: false, foreign_key: true|
|password|string|null: false, foreign_key: true|

### Association
- has_many :groups_users
- has_many :messages

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: true, foreign_key: true|
|image|file|null: true, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
