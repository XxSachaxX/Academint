class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_course, only: %i[show edit update destroy]

  def index
    @courses = policy_scope(Course)
    if params[:query].present?
      @courses = Course.global_search(params[:query])
      if @courses.empty?
        flash.notice = "Aucun cours ne correspond à votre recherche"
      end
    else
      @courses = Course.all
    end
  end

  def show
    authorize @course
    @classroom = Classroom.new
    @skip_footer = true
    @user_has_course = user_has_course?
  end

  def new
    @course = Course.new
    authorize @course
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    authorize @course
  end

  def edit
    authorize @course
  end

  def update
    authorize @course
  end

  def destroy
    authorize @course
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :level, :photo)
  end

  def set_course
    @course = Course.find(params[:id])
  end

  def user_has_course?
    Classroom.where(user_id: current_user.id, course_id: @course.id).any?
  end
end
