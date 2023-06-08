class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_one :review
  validates :user_id, uniqueness: {scope: [:product_id]}
end
