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

  def show
    @lecture = Lecture.find(params[:id])
    @classroom = Classroom.find(params[:classroom_id])
    @course = Course.find(params[:course_id])
    @last_course = @classroom.lectures.last == @lecture
    @last_lecture = @classroom.lectures.last
    @skip_footer = true
    authorize @lecture
  end
end
