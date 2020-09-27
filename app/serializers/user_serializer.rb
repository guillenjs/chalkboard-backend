class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :teacher

  has_many :assignments
  has_many :friendships
  has_many :grades


  # has_many :inverse_friendships
  # has_many :inverse_friends 

end
