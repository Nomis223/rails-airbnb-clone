class GuitarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  # def index?
    
  # end

  def show?
    true
  end

end
