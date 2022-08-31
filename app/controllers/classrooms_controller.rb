class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
    authorize @classroom
  end

  def create
    @classroom = Classroom.new
    @course = Course.find(params[:course_id])
    @classroom.user = current_user
    @classroom.course = @course
    if @classroom.save
      redirect_to dashboard_path, notice: "#{@course.name} a été ajouté à vos cours !"
    else
      redirect_to dashboard_path, notice: "#{@course.name} est déjà dans votre liste de cours !"
    end
    authorize @classroom
  end

  def show
    @classroom = Classroom.find(params[:id])
    @course = Course.find(params[:course_id])
    authorize @classroom
  end
end
