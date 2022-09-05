class QuestionsController < ApplicationController
  def quizz
    @user_answers = params[:user_answers].values.map { |hash| hash.key("1") }.join(',')
    @lecture = Lecture.find_by(classroom: params[:id], status: "ongoing")
    @lecture.update!(user_answers: @user_answers)
  end
end
