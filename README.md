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