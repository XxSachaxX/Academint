class LecturesController < ApplicationController

  def new
    @lecture = Lecture.new
    authorize @lecture
  end

  def create
    @lecture = Lesson.new
    @lecture.user = current_user
    @lesson = Lesson.find(params[lesson_id])
    @lecture.lesson = @lesson
    authorize @lecture
  end
end
