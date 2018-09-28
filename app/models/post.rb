class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, length: { maximum: 30, minimum: 1 }
  validates :title, uniqueness: true
  validates :body, presence: true
  validates :body, length: { maximum: 3000, minimum: 1}
  validates :user, presence: true
end
