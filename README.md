## users テーブル

| Colum     |  Type     | Option     |
|---------- |-----------| ---------- | 
| email     |  string   | null: false|
| password  |  string   | null: false|
| nickname  |  string   | null: false|
| profile   |  text     | null: false|


### Association
-has_many :books
-has_many :comments
-has_many :rooms, through: room_users
-ham_many :talks


## books テーブル

| Colum       |   Type     | Option                         |
|-------------|------------|------------------------------- | 
| title       |  string    | null: false                    |
| author      |  text      | null: false                    |
| description |  text      | null: false                    |
| genre_id    |  integer   | null: false                    |
| user        |  references| null: false, foreign_key: true |

### Association

-has_many :comments
-belongs_to :user

## comments テーブル

| Colum     |  Type     | Option                          |
|---------- |--------------| -----------------------------| 
| text      |  text        | null: false                  |
| user      |  references  | ull: false, foreign_key: true|
| book      |  references  | ull: false, foreign_key: true|

### Association

-belongs_to :user
-belongs_to :book

## rooms テーブル

| Colum     |  Type     | Option                          |
|---------- |--------------| -----------------------------| 
| name      |  string      | null: false                  |
| talk      |  text        | null: false                  |
| user      |  references  | ull: false, foreign_key: true|

### Association
-has_many :room_users
-has_many :users, through: room_users
-has_many :talks


## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

-belongs_to :user
-belongs_to :room

## talks テーブル

| Column    | Type       | Options                        |
| ------    | ---------- | ------------------------------ |
| talking   | text       | null: false,                   |
| user      | references | null: false, foreign_key: true |
| room      | references | null: false, foreign_key: true |

### Association


-belongs_to :user
-belongs_to :room
