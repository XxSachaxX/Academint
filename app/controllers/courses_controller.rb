class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def index
    @courses = policy_scope(:courses)
  end

  def show
    authorize @course
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
    params.require(:course).permit(:name, :description, :level)
  end
end
