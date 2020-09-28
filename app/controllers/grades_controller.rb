class GradesController < ApplicationController
    def index 
        grades = Grade.all 

        render json: grades
    end

    def create
        grade = Grade.create(gradeParams)

        render json: grade
    end

    private

    def gradeParams
        params.permit(:grade, :user_id, :teacher_id, :assignment_id)
    end
end
