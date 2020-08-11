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
