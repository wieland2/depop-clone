class Bag < ApplicationRecord
  belongs_to :user
  has_many   :purchases
  validates  :purchase_id, uniqueness: :true
end
