class Item < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :description
    validates :price
    validates :fee_id
    validates :status_id
    validates :owner_area
    validates :shipping_id
  end

  validates :price, numericality:{only_integer: true,  message: "は半角数字のみ入力してください"}, allow_blank: true

  #image紐付け先のバリデーション
  validates_associated :images
  validates :images, presence: { message: 'は１枚以上添付してください'}
  #ここまでimageのバリデーション
  belongs_to :category
  
  #選択肢作成
  enum status_id: {
    "新品": "1",
    "未使用に近い": "2",
    "目立った傷等はない": "3",
    "軽い傷がある": "4",
    "汚れが多い": "5",
    "かなり汚れている": "6",
  }
  enum shipping_id: {
    "1~2日": "1",
    "2~3日": "2",
    "3~4日": "3",
    "4~5日": "4",
    "一週間以上": "5",
  }
  enum fee_id: {
    "送料込み(出品者負担)": "1",
    "着払い(購入者負担)": "2"
  }

  #選択肢作成
  # enum status: {
  #   "新品": "新品",
  #   "未使用に近い": "未使用に近い",
  #   "目立った傷等はない": "目立った傷等はない",
  #   "軽い傷がある": "軽い傷がある",
  #   "汚れが多い": "汚れが多い",
  #   "かなり汚れている": "かなり汚れている",
  # }
  # enum shipping: {
  #   "1~2日": "1~2日",
  #   "2~3日": "2~3日",
  #   "3~4日": "3~4日",
  #   "4~5日": "4~5日",
  #   "一週間以上": "一週間以上",
  # }
  # enum shipping_fee: {
  #   "送料込み(出品者負担)": "送料込み(出品者負担)",
  #   "着払い(購入者負担)": "着払い(購入者負担)"
  # }
  
  validates :buyer_id, presence: true
  belongs_to :buyer, class_name: "User"
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  belongs_to :category
  validates :category_id, presence: true
  validates :category, presence: true, if: -> { category_id.present? }
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :status
  belongs_to_active_hash :fee
  belongs_to_active_hash :shipping
end
