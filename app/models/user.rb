class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :commented_posts, through: :comments, source: :post

  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, uniqueness: true
end
