# README
# TECH::EXPERT渋谷校79期短期集中就職コース最終課題

フリマアプリのクローンサイトを5人で作成しました。

ユーザーの新規登録から商品の出品及び購入ができます。

This web application that hosts a free-market is developed by three developers.

Users can create their free-market accounts with this application, and sell or purchase products.

## 説明:Description

・商品出品機能として画像や商品カテゴリを含めた複数項目の情報をDBへ登録することができます。

・商品購入機能としてユーザーが所持するクレジットカードを用いて商品の購入ができます。

・Users can produce their products by uploading a photo or selecting its category, which will be stored in a database.

・When users purchases a product, the credit card that is registered in their account can be used.


## 開発環境:Development environment

<dl>

<dt>Server ID</dt>

<dd> http://54.248.17.253/ </dd>

<dt>Basic Authentification and test users</dt>

<dd>最終課題説明文の資料を参考ください。</dd>

<dd>Please refer to our description document.</dd>

<dt>Development environment</dt>

<dd>Ruby 2.6.5</dd>

<dd>Ruby on Rails 6.0.0</dd>

<dd>mysql2</dd>

<dd>haml-rails', ">= 1.0", '<= 2.0.1</dd>

<dd>sass-rails', '~> 5</dd>

<dd>jbuilder', '~> 2.7</dd>

<dd>AWS EC2</dd>

<dd>S3</dd>
<dd>gem 'bootsnap', '>= 1.4.2</dd>
<dd>payjp</dd>
</dl>

## ERD図:EntityRelashionshipDiagram

<img width="633" alt="スクリーンショット 2020-07-22 19 25 52" src="https://user-images.githubusercontent.com/66852865/88165808-3f060d80-cc51-11ea-8d78-de5ee6dd07d6.png">

## Users
| Column                | Type       | Options                  |
| :-------------------- | -----------| ------------------------ |
| id                    | integer    |                          |
| nickname              | string     | null:false               |
| email                 | email      | null:false               |
| password              | string     | null:false, unique: true |
| password_configration | string     | null:false, unique:true  |
| first_name            | string     | null:false               |
| family_name           | string     | null:false               |
| furigana_first        | string     | null:false               |
| furigana_family       | string     | null:false               |
| birthday              | date       | null:false               |
| user_id               | references | foreign_key:true         |

### association
has_one :account
has_one :address
has_one :credit
has_many :items

## Addresses
| Column               | Type       | Options          |
| -------------------- | ---------- | ---------------- |
| id                   | integer    |                  |
| shipping_first_name  | string     | null:false       |
| shipping_family_name | string     | null:false       |
| zipcode              | string     | null:false       |
| prefecture           | string     | null:false       |
| city                 | string     | null:false       |
| address              | string     | null:false       |
| others               | string     | null:false       |
| phone_number         | string     | null:false       |
| user_id              | references | foreign_key:true |

### association
belongs_to :user


## Credits
| Column      | Type       | Options          |
| ----------- | ---------- | ---------------- |
| id          | integer    |                  |
| user_id     | references | foreign_key:true |
| customer_id | string     |                  |
| card_id     | string     |                  |

### asscociation
belongs_to :user

## Items
| Column        | Type       | Options          |
| ------------- | ---------- | ---------------- |
| id            | integer    |                  |
| name          | string     | null:false       |
| description   | text       | null:false       |
| item_status   | string     | null:false       |
| shipping_fee  | integer    | null:false       |
| owner_area    | string     | null:false       |
| shipping_date | integer    | null:false       |
| seller_id     | references | foreign_key:true |
| buyer_id      | references | foreign_key:true |
| category_id   | references | foreign_key:true |
| brand_id      | references | foreign_key:true |

### association
belongs_to :user
belongs_to :category
has_many :images
belongs_to :brand

## Images
| Column  | Type       | Options          |
| ------- | ---------- | ---------------- |
| id      | integer    |                  |
| image   | text       |                  |
| item_id | references | foreign_key:true |

### association
belongs_to :item

## brands
| Column     | Type       | Options    |
| ---------- | -----------| ---------- |
| id         | integer    |            |
| name       | string     | null:false |

### association
has_many :items

## categories
| Column        | Type    | Options    |
| ------------- | ------- | ---------- |
| id            | integer |            |
| name          | string  | null:false |
| ancestry      | integer |            |

### association
has_many :items

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
