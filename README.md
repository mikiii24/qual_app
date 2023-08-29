# アプリケーション名

資格相談所

# アプリケーション概要

資格に関して分からないことを質問できるアプリです。

# URL

https://qual-app.onrender.com/

# テスト用アカウント

## テストユーザー1
- メールアドレス :test@test.com
- パスワード :aaaaaa123

## テストユーザー2
- メールアドレス :test2@test.com
- パスワード :aaaaaa123

# 利用方法

## 資格に関して質問する
1. 新規登録またはログインを行う
2. 「質問する」というボタンから、質問投稿ページへ遷移する
3. 質問内容の記入と、どの資格に関する質問かをプルダウンから選択し、投稿する

## 質問に対して回答する
1. 新規登録またはログインを行う
2. 質問一覧から質問詳細ページへ遷移する
3. 「回答する」ボタンを押して、フォームに回答を記入する
4. 「投稿する」ボタンから回答を投稿する

# アプリケーションを作成した背景

資格を勉強している中で、分からないことを相談できる場所があまりないと感じました。

資格の勉強には多くの時間を必要とするため、分からないことに悩む時間をできるだけ少なく済ませることで、勉強の効率化を図って頂きたいと考えております。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/13p_S5GR82aKlj5Rks0WhmEvNxC3jRqN_8pE71TgD9io/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明

下の画像がトップページとなっております。

[![Image from Gyazo](https://i.gyazo.com/c9271580122047ea2881fe144a9e26a2.png)](https://gyazo.com/c9271580122047ea2881fe144a9e26a2)

- ヘッダー右から新規登録とログインができます。
- 質問一覧の右側から質問を投稿できます。
- 「ジャンルから探す」の下の項目をクリックすると、ジャンルに対応した資格（現在は仮置きです）が表示されます。
[![Image from Gyazo](https://i.gyazo.com/3729a4bb680852ad067d8c026adb265b.png)](https://gyazo.com/3729a4bb680852ad067d8c026adb265b)

- 実際に質問すると、ダミーが消えて、質問内容が表示されます。
- 質問詳細ページに進んだとき、質問したユーザーの場合は編集と削除、質問したユーザー以外の場合は回答ボタンが表示されます。
[![Image from Gyazo](https://i.gyazo.com/a57bd7e3d1747976f07547a546d6d02c.png)](https://gyazo.com/a57bd7e3d1747976f07547a546d6d02c)
[![Image from Gyazo](https://i.gyazo.com/5f15a514e6d6343640e1c5ebec6af343.png)](https://gyazo.com/5f15a514e6d6343640e1c5ebec6af343)

# 実装予定の機能

- ユーザー詳細機能
- 資格種類管理
- 回答編集機能
- 質問検索機能

# テーブル設計

## users table

| Column                | Type    | Option       |
| ----------------------| ------- | ------------ |
| nickname              | string  | null: false  |
| name                  | string  | null: false  |
| name_kana             | string  | null: false  |
| email                 | string  | null: false  |
| password              | string  | null: false  |
| password_confimation  | string  | null: false  |

### Association
- has_many :answers
- has_many :questions


## questions table

| Column           | Type        | Option                          |
| -----------------| ----------- | ------------------------------- |
| question_title   | string      | null: false                     |
| question_detail  | text        | null: false                     |
| qual_id          | integer     | null: false                     |
| user             | references  | null: false, foreign_key: true  |

### Association
- has_many :answers
- belongs_to :user


## answers table

| Column         | Type        | Option                          |
| -------------- | ----------- | ------------------------------- |
| answer_text    | string      | null: false                     |
| question       | references  | null: false, foreign_key: true  |
| user           | references  | null: false, foreign_key: true  |

### Association
- belongs_to :questions
- belongs_to :user

# 画面遷移図

# 開発環境
- フロントエンド :HTML, CSS, javascript
- バックエンド :Ruby on Rails
- インフラ :render
- テキストエディタ :Visual Studio Code

# ローカルでの動作方法

git clone https://github.com/we-b/qual_app.git

# 工夫したポイント

javascriptを使用した資格の選択や回答用フォームの出現に苦労しました。

特に、ユーザーが誤ってそれぞれのジャンルを選択しないために、資格のプルダウンメニューの中の各ジャンルを非活性化するようにいたしました。

# 改善点
質問一覧から特定の資格に関する質問のみを絞り込めるように、サイドバーを改善します。

画面の大きさを変更した際に、文字被りなどが生じてしまうため、CSSを変更します。

解決済みの場合、解決済みのボタンと、その印を表示させたいと考えています。

# 制作時間

約80時間