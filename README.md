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
| answer_detail  | string      | null: false                     |
| question       | references  | null: false, foreign_key: true  |
| user           | references  | null: false, foreign_key: true  |

### Association
- belongs_to :questions
- belongs_to :user