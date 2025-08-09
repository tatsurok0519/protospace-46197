usersテーブル

| カラム名            | 型       | 制約                     |
|---------------------|----------|--------------------------|
| email               | string   | NOT NULL, ユニーク制約   |
| encrypted_password  | string   | NOT NULL                 |
| name                | string   | NOT NULL                 |
| profile             | text     | NOT NULL                 |
| occupation          | text     | NOT NULL                 |
| position            | text     | NOT NULL                 |

アソシエーション（User model）
  has_many :prototypes
  has_many :comments

---

prototypesテーブル

| カラム名     | 型        | 制約                     |
|--------------|-----------|--------------------------|
| title        | string    | NOT NULL                 |
| catch_copy   | text      | NOT NULL                 |
| concept      | text      | NOT NULL                 |
| user         | references| NOT NULL, 外部キー        |


アソシエーション（Prototype model）
  belongs_to :user
  has_many :comments

---

commentsテーブル

| カラム名     | 型        | 制約                      |
|--------------|-----------|---------------------------|
| content      | text      | NOT NULL                  |
| prototype    | references| NOT NULL, 外部キー         |
| user         | references| NOT NULL, 外部キー         |

アソシエーション（Comment model）
  belongs_to :user
  belongs_to :prototype

---