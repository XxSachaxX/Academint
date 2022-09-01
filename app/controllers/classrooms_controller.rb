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
      create_lectures
      start_course
      redirect_to dashboard_path, notice: "#{@course.name} a été ajouté à vos cours !"
    else
      redirect_to dashboard_path, notice: "#{@course.name} est déjà dans votre liste de cours !"
    end
    authorize @classroom
  end

  def show
    @classroom = Classroom.find(params[:id])
    authorize @classroom
  end

  private

  def create_lectures
    @classroom.course.chapters.each do |chapter|
      chapter.lessons.each do |lesson|
        Lecture.create(classroom_id: @classroom.id, lesson_id: lesson.id)
      end
    end
  end

  def start_course
    @lecture = @classroom.lectures.first
    @lecture.update(status: "démarrée")
  end

  def next_course
    raise
    @classroom = Classroom.find(params[:id])
    @lecture = Lecture.find_by(status: "démarrée")
    @lecture.update(status: "terminée")
    @next_lecture = Lecture.find_by(status: "inactive")
    @next_lecture.update(status: "démarrée")
  end
end
