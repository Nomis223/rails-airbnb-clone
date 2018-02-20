class GuitarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve #Index
      scope
    end
  end


  def show?
    true
  end

  def create?
    true
  end

end
