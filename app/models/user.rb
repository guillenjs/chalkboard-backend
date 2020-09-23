class User < ApplicationRecord
    has_secure_password
    has_many :assignments
    has_many :questions, through: :assignments
end
