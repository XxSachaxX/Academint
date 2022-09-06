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
      redirect_to course_classroom_lecture_path(@course, @classroom, @classroom.ongoing_lecture), notice: "#{@course.name} a été ajouté à vos cours !"
    end
    authorize @classroom
  end

  def show
    @classroom = Classroom.find(params[:id])
    @course = Course.find(params[:course_id])
    @lecture = @classroom.lectures.find_by(status: 'ongoing')
    authorize @classroom
  end

  def next
    @classroom = Classroom.find(params[:id])
    @lecture = @classroom.lectures.find_by(status: 'ongoing')
    @lecture.done! if @lecture
    @next_lecture = Lecture.find_by(status: "pending", classroom: @classroom)
    if @next_lecture
      @next_lecture.ongoing!
      redirect_to course_classroom_lecture_path(@classroom.course, @classroom, @next_lecture)
    else
      redirect_to mint_nft_path
    end
    authorize @classroom
  end

  def mint_nft
    @classroom = Lecture.find(params[:id]).classroom
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
    @lecture.update(status: "ongoing")
  end
end
