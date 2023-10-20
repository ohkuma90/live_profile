# テーブル設計

## usersテーブル

| Column             | Type    | Options                    |
| ------------------ | ------- | -------------------------- |
| name               | string  | null: false                |
| email              | string  | null: false , unique: true |
| encrypted_password | string  | null: false                |
| x_id               | string  | null: false                |
| birth              | integer | null: false                |
| nickname           | string  | null: false                |
| favorite_food      | string  | null: false                |
| hated_food         | string  | null: false                |
| holiday            | string  | null: false                |
| hobby              | string  | null: false                |
| first_band         | string  | null: false                |
| first_live         | string  | null: false                |

### Association

- has_one :book
- hes_many :cards


## cardsテーブル

| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| live   | string     | null: false                   |
| rank1  | string     | null: false                   |
| rank2  | string     | null: false                   |
| rank3  | string     | null: false                   |
| user   | references | null:false, foreign_key: true |

### Association

- belongs_to :user
- hes_many :books, through: :book_cars


## books テーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| card        | references | null:false, foreign_key: true |
| user        | references | null:false, foreign_key: true |

### Association

- belongs_to :user
- hes_many :cards, through: :book_cars

