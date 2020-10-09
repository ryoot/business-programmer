# テーブル設計

## users テーブル

| Column         | Type    | Options     |
| -------------- | ------- | ----------- |
| username       | string  | null: false |
| email          | string  | null: false |
| password       | string  | null: false |
| profile        | string  | null: false |
|profile_image_id| string  | null: false |
| created_at     | string  | null: false |
| updated_at     | string  | null: false |

### Association

- has_many :programmer

## programmer テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user_id          | string     | null: false                    |
| title            | string     | null: false                    |
| body             | string     | null: false                    |
| image_id         | integer    | null: false                    |
| created_at       | integer    | null: false                    |
| updated_at       | integer    | null:false                     |

### Association

- belongs_to :user
