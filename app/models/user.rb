class User < ApplicationRecord
    has_secure_password
    has_many :assignments
    has_many :questions, through: :assignments

    has_many :friendships
    has_many :friends, :through => :friendships

    has_many :grades

end
