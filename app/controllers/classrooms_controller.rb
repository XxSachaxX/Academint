class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
    authorize @classroom
  end

  def create
    @classroom = Classroom.new
    @classroom.user = current_user
    @course = course.find(params[course_id])
    @classroom.course = @course
    authorize @classroom
  end
end
