class AddBusinessController < ApplicationController
  # include Wicked::Wizard::Translated
  include Wicked::Wizard
  steps :business_name_url, :business_description_locations
  layout 'registration'
  before_action :authenticate_user!
  after_action :verify_authorized

  def show
    @business = current_user.business
    authorize @business
    render_wizard
  end

  def update
    @user = current_user
    @business = current_user.business
    @resource = @business
    authorize @business
    case step
    when :business_name_url
        if @business.update_attributes(business_params)
        else
          flash[:error] = @business.errors.full_messages
        end
    when :business_description_locations
      if @business.update_attributes(business_params)
        flash[:success] = "Welcome Aboard, Matey!"
      else
        flash[:error] = @business.errors.full_messages
      end
    end
    render_wizard @business
  end

  

  private
    def finish_wizard_path
      root_path
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_params
      params.fetch(:business).permit(:name, :description, :custom_url, :more_than_one_location, :signed_up, :slug)
    end

end
