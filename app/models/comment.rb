class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validates :body, presence: true
  validates :body, length: { maximum: 1000, minimum: 1 }
end
