class GradeSerializer < ActiveModel::Serializer
  attributes :id, :grade, :teacher_id, :assignment_id
  has_one :user
end
