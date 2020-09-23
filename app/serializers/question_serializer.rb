class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :options1, :options2, :options3, :options4, :answer
end
