class ClassroomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    record.user == user
  end

  def next?
    record.user == user
  end

  def mint_nft?
    record.user == user
  end
end
