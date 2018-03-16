class BusinessPolicy < ApplicationPolicy

  def index? 
    user.present? and user.has_role? :admin
  end


  def new?
    true
  end

  def show?
    return true if user.present? and user.has_role? :admin
    user.present? && user == business.user
  end


  def update?
    return true if user.present? and user.has_role? :admin
    user.present? && user == business.user
  end

  def create?
    return true if user.present? and user.has_role? :admin
    user.present? && user == business.user
  end
  
  


  private

    def business
      record
    end
    

end