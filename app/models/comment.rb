class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
  validates :body, length: { maximum: 300, minimum: 1 }
  validates :user, presence: true
  validates :post, presence: true
end
