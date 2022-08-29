class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @chapter = Lesson.find(params[chapter_id])
    @lesson.chapter = @chapter
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
    params.require(:lesson).permit(:content, :type)
  end
end
