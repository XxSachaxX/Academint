class LecturePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def next?
    record.classroom.user == user
  end

  def show?
    record.classroom.user == user
  end

  def quizz?
    record.classroom.user == user
  end

  def quizz_submit?
    record.classroom.user == user
  end
end
