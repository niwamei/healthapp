# アプリ名
HealthApp（仮名）

# 概要
本アプリケーションでは、病院の予約（やその他予定）・処方されているお薬・身体測定（体重や体温など）を一つのアプリケーションで管理できるものです。病院の予約はカレンダー式で管理され、身体測定はグラフ上で毎日の経過などを観察できるよう実装することを考えています。

# 制作背景
健康関連の情報を一つにまとめることが可能なアプリケーションがなかったため、今回こちらのアプリを制作しようと考えました。

# 実装予定
今後は毎日の記録を全て一つのページで管理し、カレンダーに全てが表示されるように実装したいと考えています。

# DB設計

## usersテーブル

| Column              | Type    | Options                    |
| ------------------- | ------- | -------------------------- |
| nickname            | string  | null: false                |
| email               | string  | null: false, unique: true  |
| encrypted_password  | string  | null: false                |
| last_name           | string  | null: false                |
| first_name          | string  | null: false                |
| last_name_kana      | string  | null: false                |
| first_name_kana     | string  | null: false                |
| birthday            | date    | null: false                |

### Association
- has_many :reservations
- has_many :body_measurements
- has_many :medications

## reservationsテーブル

| Column              | Type     | Options                    |
| ------------------- | -------- | -------------------------- |
| department_id       | integer  | null: false                |
| name                | string   | null: false                |
| date                | date     | null: false                |
| start_time          | string   | null: false                |
| end_time            | string   | null: false                |
| location            | string   | null: false                |
| note                | text     | null: false                |

### Associations
- belongs_to :user

## body_measurementsテーブル

| Column            | Type    | Options      |
| ----------------- | ------- | -------------|
| weight            | string  | null: false  |
| height            | string  | null: false  |
| body_temperature  | string  | null: false  |

### Associations
- belongs_to :user

## medicationsテーブル

| Column         | Type     | Options       |
| -------------- | -------- | --------------|
| name           | string   | null: false   |
| dose           | string   | null: false   |

### Associations
- belongs_to :user
