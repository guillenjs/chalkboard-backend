class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :user_id

  has_many :questions
end
