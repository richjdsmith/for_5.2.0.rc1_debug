class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_business
  after_action :verify_authorized
  
  
  def index
    skip_authorization
    # authorize :dashboards, :index?
  end


  private

  def set_user
    @user = current_user
  end
  def set_business
    @business = current_user.business
  end


end
