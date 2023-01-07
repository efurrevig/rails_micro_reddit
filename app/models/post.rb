class Post < ApplicationRecord
  belongs_to :user
  has_many :comment

  validates :title, length: {minimum: 2}
  validates :body, length: {minimum: 10}
end
