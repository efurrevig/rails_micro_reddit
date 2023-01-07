class User < ApplicationRecord
    has_many :post
    has_many :comment

    validates :username, :password, presence: {message: "Must provide a unique username"}
    validates :username, uniqueness:  {message: "Username must be unique"}
    validates :password, length: { in: 6..25 }
end
