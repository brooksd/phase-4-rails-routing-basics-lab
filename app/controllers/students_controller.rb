class StudentsController < ApplicationController

    def index
        all_students = Student.all
        render json: all_students
    end

    def grades
        graded_students = Student.order(grade: :desc)
        render json: graded_students 
    end

    def highest_grade
        highest_grade_student = Student.order(grade: :desc).first
        render json: highest_grade_student
    end
end
