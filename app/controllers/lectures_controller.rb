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

  def next
    @lecture = Lecture.find(params[:id])
    @classroom = @lecture.classroom
    if @lecture.done?
      redirect_to course_classroom_lecture_path(@classroom.course, @classroom, Lecture.find(@lecture.id + 1))
    else
      @lecture.done!
      @next_lecture = Lecture.find_by(status: "pending", classroom: @classroom)
      if @next_lecture
        @next_lecture.ongoing!
        redirect_to course_classroom_lecture_path(@classroom.course, @classroom, @next_lecture)
      else
        redirect_to course_classroom_lecture_path(@classroom.course, @classroom, @lecture)
      end
    end
    authorize @classroom
  end

  def show
    @lecture = Lecture.find(params[:id])
    @classroom = Classroom.find(params[:classroom_id])
    @course = Course.find(params[:course_id])
    @is_last_lecture = @classroom.lectures.last == @lecture
    @last_lecture = @classroom.lectures.last
    @skip_footer = true
    authorize @lecture
  end

  def quizz
    @lecture = Lecture.find(params[:id])
    @classroom = @lecture.classroom
    @course = @classroom.course
    authorize @lecture
  end

  def quizz_submit
    @lecture = Lecture.find(params[:id])
    @classroom = @lecture.classroom
    @course = @classroom.course
    @user_answers = params[:user_answers].values.map { |hash| hash.key("1") }.join(',')
    @lecture.update!(user_answers: @user_answers)
    @lesson = @lecture.lesson
    authorize @lecture
    compare_answers(@course, @classroom, @lecture)
  end

  def compare_answers(course, classroom, lecture)
    if success_rate < 90
      redirect_to quizz_course_classroom_lecture_path, notice: "Vous n'avez obtenu que #{success_rate}% de bonnes réponses. Essayez encore pour atteindre les 90% de bonnes réponses et valider le quizz!"
    else
      @lecture.done!
      redirect_to course_classroom_lecture_path(course, classroom, classroom.lectures.last), notice: "Félicitations, vous avez obtenu #{success_rate}% de bonnes réponses!"
    end
  end

  def success_rate
    user_answers_array = @lecture.user_answers.split(",")
    quizz_answers_array = @lesson.quizz_answers.split(",")
    @counter = 0
    user_answers_array.each_with_index do |user_answer, index|
      if user_answer == quizz_answers_array[index]
        @counter += 1
      end
    end
    if user_answers_array.length == 0
      @success_rate = 0
    else
      @success_rate = (@counter * 100) / user_answers_array.length
    end
  end
end
