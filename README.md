# テーブル設計

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

| Column              | Type       | Options                    |
| ------------------- | ---------- | -------------------------- |
| department_id       | integer    | null: false                |
| name                | string     | null: false                |
| location            | string     | null: false                |
| start               | datetime   | null: false                |
| end                 | datetime   | null: false                |
| note                | text       | null: false                |

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