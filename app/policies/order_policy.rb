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

  def create?
    record.user == user
  end

  def update?
    user != nil
  end

  def destroy?
    record.user == user
  end
end
