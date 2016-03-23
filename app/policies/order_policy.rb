class OrderPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    !record.user || record.user == user
  end

  def index?
    record.user == user
  end

  def edit?
    true
  end

  def create?
    true
  end

  def update?
    edit?
  end

  def destroy?
    record.user == user
  end
end
