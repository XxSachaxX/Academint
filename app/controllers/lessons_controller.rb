class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[edit update destroy]

  def new
    @lesson = Lesson.new
    @chapter = Chapter.find(params[:chapter_id])
    @course = Course.find(params[:course_id])
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @chapter = Chapter.find(params[:chapter_id])
    @course = Course.find(params[:course_id])
    @lesson.chapter = @chapter
    if @lesson.save
      redirect_to new_course_chapter_path(@course), notice: "Leçon créé, voici votre cours"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @lesson
  end

  def edit
    @chapter = Chapter.find(params[:chapter_id])
    @course = Course.find(params[:course_id])
    authorize @lesson
  end

  def update
    @chapter = Chapter.find(params[:chapter_id])
    @course = Course.find(params[:course_id])
    if @lesson.update(lesson_params)
      redirect_to  edit_course_path(@course), notice: "Leçon mise à jour"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @lesson
  end

  def destroy
    authorize @lesson
  end

  private

  def lesson_params
    params.require(:lesson).permit(:content, :media, :photos, :enriched_content, :title)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
