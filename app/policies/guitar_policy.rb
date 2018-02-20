class GuitarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end


  def show?
    true
  end

  # def new?
    
  # end

  def create?
    true
  end

end
