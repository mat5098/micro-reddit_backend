class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :name, presence: true, length: {minimum:4, maximum:20}, uniqueness: true
    validates :password, presence: true, length: {minimum:4, maximum:20}
end