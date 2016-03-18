class OrderItemsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    user
  end

  def create?
    self
  end

  def update?
    self
  end

  def destroy?
    self
  end
end
