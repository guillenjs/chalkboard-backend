class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :teacher

  has_many :assignments
  has_many :friendships
end
