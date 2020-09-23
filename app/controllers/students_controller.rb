class StudentsController < ApplicationController

        # before_action :authorized, only: [:auto_login]

    #remove when done in order for user info to not be viewed
    def index 
        students = Student.all  
  
        render json: students
      end
  
  #register
      def create
   
          @student = Student.create(userParams)
          if @student.valid?
            token = encode_token({student_id: @student.id})
            render json: {student: @student, token: token}
          else
            render json: {error: "Invalid username or password"}
          end
        end
      
  #logging in
      def login
              @student = Student.find_by(username: params[:username])
          
              if @student && @student.authenticate(params[:password])
              token = encode_token({student_id: @student.id})
              render json: {student: @student, token: token}
              else
              render json: {error: "Invalid username or password"}
              end
       end
  
       def userParams 
          params.permit(:username, :password)
       end


end
