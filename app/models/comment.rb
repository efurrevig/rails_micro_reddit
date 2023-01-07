class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true
  belongs_to :comment, optional: true
  has_many :comment

  validates :body, length: {minimum: 1}
end
