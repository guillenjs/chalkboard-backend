class UserSerializer < ActiveModel::Serializer
  attributes :id, :teacher

  has_many :assignments
end
