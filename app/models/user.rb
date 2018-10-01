class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, uniqueness: true
end
