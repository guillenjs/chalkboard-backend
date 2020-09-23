class QuestionsController < ApplicationController

    def index
        question = Question.all 
        render json: question
    end

    def create 
        question =Question.create(questionParams)

        render json: question
    end

    private

    def questionParams
        params.permit(:question, :options1, :options2, :options3, :options4, :answer, :assignment_id)
    end 
end
