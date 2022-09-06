class LessonsController < ApplicationController
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
      redirect_to new_course_chapter_path(@course), notice: "Lesson créé, voici votre cours"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @lesson
  end

  def edit
    authorize @lesson
  end

  def update
    authorize @lesson
  end

  def destroy
    authorize @lesson
  end

  private

  def lesson_params
    params.require(:lesson).permit(:content, :media, :photos, :enriched_content, :title)
  end
end
