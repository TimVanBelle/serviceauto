class AccountPolicy < ApplicationPolicy
  def show?
    user
  end
end

