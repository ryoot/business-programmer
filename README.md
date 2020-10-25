# BG Programmer


# 概要
今回作成したアプリはプログラミングでエラーが出た際、自分で調べる時にユーザーごとに回答が見られるようにしたいと思いこのようなアプリを作成しました。主にコード模写の際や大まかなことを知りたい時に役立つものを提供できたらいいなと思いました。理由としましてはユーザーごとに見れることによって閲覧者が簡単に探し出すことができます。そしてわかりやすいユーザーはたくさんのアクセスをしてもらうことができ、ユーザーにとっても更新をするメリットがあります。閲覧者は自分がみたいユーザーの回答を見ることができます。


# オリジナルアプリのタイトル programmer
GitURL:https://github.com/ryoot/business-programmer

Basic認証IDPASS:aaa

テストIDPASS:aaa111

・開発環境Vs Code 言語：Ruby on Rails,HTML,CSS,Ruby,,Git,Heroku ツール: DB: サーバー：

・実装機能 ログイン、ログアウト機能、投稿機能、編集機能、詳細機能、削除機能

・企画背景 プログラミングで検索など調べるときの回答でどのユーザーが回答をしているのかわかるようにしたかった。ユーザーがわかることで他の人が見る際にこの人の回答がわかりやすいというのがわかれば特定のユーザーの回答をすぐに探し出せれるようなサイトが欲しかった。回答するユーザーもみてくれる人が多いとメリットがあり、回答してくれるユーザーも多いと感じたのでこのアプリを作成したいと思い、作ってみました。


# 工夫したポイント
工夫したポイントに関しましては、よりたくさんの人が見やすくてわかりやすいように使いやすいように設計して、一つの画面でほとんどの機能が使えるようにしてあります。そのほかには、アイコンなどを入れることでサイトの見た目をよくしました。ログイン、新規登録の画面ではユーザーの横にはユーザーのアイコン、メールの横にはメールのアイコンを導入してみました。


# 今後実装したい機能
今後実装したい機能に関しましては、使っているユーザーがもっと簡単に探し出せれるようにカテゴリーごとに検索できるような機能を作ってみたいと思います、現在はユーザーごとに閲覧できるようになっていますが、実際使っている側はそのユーザーのどの言語のどのフレームワークについて知りたいのかわかるように別にカテゴリーごとに分けて表示したいと思っています。イメージとしては、アマゾンやウーバーイーツのジャンルごとに表示できる機能です。なので投稿者の方にもジャンルが分類できるような機能をつけてみたいと思っています。

# GIF動画
<a href="https://gyazo.com/9250ce8298c5a59ac34a20dca796ddb1"><img src="https://i.gyazo.com/9250ce8298c5a59ac34a20dca796ddb1.gif" alt="Image from Gyazo" width="1000"/></a>
<a href="https://gyazo.com/d39ac2054e39fd45632de76b493f7b43"><img src="https://i.gyazo.com/d39ac2054e39fd45632de76b493f7b43.gif" alt="Image from Gyazo" width="1000"/></a>
<a href="https://gyazo.com/ac01db7a73cf90defcf9efc1ee041be9"><img src="https://i.gyazo.com/ac01db7a73cf90defcf9efc1ee041be9.gif" alt="Image from Gyazo" width="1000"/></a>


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
