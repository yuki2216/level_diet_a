# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| initial_weight     | string | null: false               |
| target_weight      | string | null: false               |

### Association

- has_many :diaries
- has_many :comments

## diaries テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| day             | string     | null: false       |
| breakfast_image | text       |                   |
| lunch_image     | text       |                   |
| dinner_image    | text       |                   |
| snack_image     | text       |                   |
| weight          | string     | null: false       |
| exercise        | text       |                   |
| comment         | text       |                   |
| user            | references | foreign_key: true |

### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| text               | text       | null: false       |
| diary              | references | foreign_key: true |
| user               | references | foreign_key: true |

### Association

- belongs_to :diary
- belongs_to :user