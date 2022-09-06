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

  def quizz
    @classroom = Lecture.find(params[:id]).classroom
    @course = @classroom.course
    authorize @classroom
  end

  def quizz_submit
    @classroom = Classroom.find(params[:id])
    @course = @classroom.course
    @user_answers = params["user_answers"].values.map { |hash| hash.key("1") }.join(',')
    @lecture = Lecture.find_by(classroom_id: @classroom.id, status: "ongoing")
    @lecture.update!(user_answers: @user_answers)
    @lesson = @lecture.lesson
    authorize @classroom
    compare_answers
  end

  def compare_answers
    if success_rate < 90
      redirect_to quizz_course_classroom_path, notice: "Vous n'avez obtenu que #{success_rate}% de bonnes réponses. Essayez encore pour atteindre les 90% de bonnes réponses et valider le quizz!"
    else
      redirect_to "/mint_nft", notice: "Félicitations, vous avez obtenu #{success_rate}% de bonnes réponses!"
    end
  end

  def success_rate
    user_answers_array = @lecture.user_answers.split(",")
    quizz_answers_array = @lesson.quizz_answers.split(",")
    @counter = 0
    user_answers_array.each_with_index do |user_answer, index|
      if user_answers_array[index] == quizz_answers_array[index]
        @counter += 1
      end
    end
    @success_rate = (@counter * 100) / user_answers_array.length
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
