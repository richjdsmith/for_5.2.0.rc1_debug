class AddBusinessPolicy < ApplicationPolicy

  def show?
    return true if user.present? and user.has_role? :admin
    user.present? && user == business.user
  end

  def update?
    return true if user.present? and user.has_role? :admin
    user.present? && user == business.user
  end

  private

    def business
      record
    end
    

end