class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
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
    if user_has_course?
      @classroom = Classroom.where(user_id: current_user.id, course_id: @course.id).first
    else
      @classroom = Classroom.new
    end
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
    if @course.save
      redirect_to new_course_chapter_path(@course), notice: "Votre cours est maintenant créé, vous pouvez ajouter vos chapitres et vos leçons"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @course
  end

  def edit
    authorize @course
  end

  def update
    authorize @course
    if @course.update(course_params)
      redirect_to  edit_course_path(@course), notice: "Cours mis à jours"
    else
      render :new, status: :unprocessable_entity
    end
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
    if current_user
      @classroom = Classroom.where(user_id: current_user.id, course_id: @course.id).first
      Classroom.where(user_id: current_user.id, course_id: @course.id).any?
    end
  end
end
