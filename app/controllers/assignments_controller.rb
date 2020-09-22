class AssignmentsController < ApplicationController

    def create
        byebug
        assignment = Assignment.create(assignmentParams)
        byebug
        render json: assignment
    end

    private

    def assignmentParams 
        params.permit(:title, :date, :user_id)
    end
end
