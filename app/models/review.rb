class Review < ApplicationRecord
  belongs_to :order
  belongs_to :reviewer, foreign_key: 'reviewer_id', class_name: 'User'
  belongs_to :reviewed, foreign_key: 'reviewed_id', class_name: 'User'
  validates  :reviewer_id, uniqueness: {scope: [:order_id]}
end
