class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shipping_charge
  belongs_to :prefecture
  belongs_to :shipping_day

  validates :image, :item_name, :description, presence: true
  validates :category_id, :status_id, :shipping_charge_id, :prefecture_id, :shipping_day_id, numericality: { other_than: 1 , message: "can't be blank"}
  with_options presence: true, format: { with: /\A[0-9]+\z/, message: "is out of setting range" } do
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  end
end
