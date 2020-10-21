# BG Programmer

# オリジナルアプリのタイトル programmer
URL:
GitURL:https://github.com/ryoot/business-programmer
Basic認証IDPASS:aaa
テストIDPASS:aaa111
・開発環境Vs Code 言語：Ruby on Rails,HTML,CSS,Ruby,,Git,Heroku ツール: DB: サーバー：
・実装機能 ログイン、ログアウト機能、投稿機能、編集機能、詳細機能、削除機能

・企画背景 プログラミングで検索など調べるときの回答でどのユーザーが回答をしているのかわかるようにしたかった。ユーザーがわかることで他の人が見る際にこの人の回答がわかりやすいというのがわかれば特定のユーザーの回答をすぐに探し出せれるようなサイトが欲しかった。回答するユーザーもみてくれる人が多いとメリットがあり、回答してくれるユーザーも多いと感じたのでこのアプリを作成したいと思い、作ってみました。

# GIF動画



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
