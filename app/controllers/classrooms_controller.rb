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
    end
    authorize @classroom
  end

  def show
    @classroom = Classroom.find(params[:id])
    @course = Course.find(params[:course_id])
    authorize @classroom
  end

  def next
    @classroom = Classroom.find(params[:id])
    @lecture = @classroom.lectures.find_by(status: 'ongoing')
    @lecture.done! unless !@lecture
    @next_lecture = Lecture.find_by(status: "pending", classroom: @classroom)
    @next_lecture.ongoing! unless !@next_lecture
    authorize @classroom
    redirect_to course_classroom_path(@classroom.course, @classroom)
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
    @lecture.update(status: "ongoing")
  end
end
