class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
has_many :products, dependent: :destroy
has_many :purchases, dependent: :destroy
has_many :likes, dependent: :destroy
has_many :bookmarks, dependent: :destroy
has_one_attached :photo, dependent: :destroy
validates :username, uniqueness: true
validates :username, presence: true
has_many :follows, dependent: :destroy
has_many :orders, dependent: :destroy
has_many :reviews, dependent: :destroy
validates :first_name, :last_name, presence: true

has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
has_many :followers, through: :follower_relationships, source: :follower


has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
has_many :following, through: :following_relationships, source: :following


has_many :reviewer_relationships, foreign_key: :reviewed_id, class_name: 'Review'
has_many :reviewers, through: :reviewer_relationships, source: :reviewer


has_many :reviewed_relationships, foreign_key: :reviewer_id, class_name: 'Review'
has_many :reviewed, through: :reviewed_relationships, source: :reviewed
end
