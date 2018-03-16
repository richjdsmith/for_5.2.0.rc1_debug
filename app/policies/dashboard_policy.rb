class DashboardPolicy < Struct.new(:user,  :dashboards)

  def index?
    @user = current_user
  end

  private

    
end