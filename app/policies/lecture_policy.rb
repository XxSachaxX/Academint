class LecturePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true
  end

  def next?
    true
  end

  def show?
    true
  end

  def quizz?
    true
  end

  def quizz_submit?
    true
  end
end
