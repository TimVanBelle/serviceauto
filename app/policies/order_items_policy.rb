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
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
