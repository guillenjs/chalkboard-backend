class AssignmentsController < ApplicationController

    def index
        listitems = Assignment.all    
        render json: listitems
    end

    def create

        assignment = Assignment.create(assignmentParams)

        render json: assignment
    end

    private

    def assignmentParams 
        params.permit(:title, :date, :user_id)
    end
end
