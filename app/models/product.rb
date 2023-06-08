class Product < ApplicationRecord
  belongs_to :user
  has_many   :purchases, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  has_many  :likes, dependent: :destroy
  has_many  :bookmarks, dependent: :destroy
  validates :photo, presence: true
  validates :title, :gender, :price, :title, :description, :category, :country, :city, :condition, presence: true
  has_many  :orders, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
  against: [ :title, :description, :gender, :brand ],
  using: {
    tsearch: { prefix: true }
  }
end
