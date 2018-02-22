class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    user == nil || record.guitar.user != user
  end
end
