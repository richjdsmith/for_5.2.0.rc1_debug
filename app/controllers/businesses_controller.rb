class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  after_action :verify_authorized
  # GET /businesses
  # GET /businesses.json
  def index
    @businesses = Business.all
    authorize @businesses
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @business = Business.friendly.find(params[:id])
  end

  # GET /businesses/new
  def new
    @business = Business.new
    @resource = @business
    authorize @business
    
  end

  # GET /businesses/1/edit
  def edit
  end


  # POST /businesses
  # POST /businesses.json
  def create
    @business = Business.new(business_params)
    authorize @business

    respond_to do |format|
      if @business.save
        format.html { redirect_to @business, notice: 'Business was successfully created.' }
        format.json { render :show, status: :created, location: @business }
      else
        format.html { render :new }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesses/1
  # PATCH/PUT /businesses/1.json
  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business.destroy
    respond_to do |format|
      format.html { redirect_to businesses_url, notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.friendly.find(params[:id])
      authorize @business
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_params
      params.fetch(:business).permit(:name, :description, :custom_url, :more_than_one_location, :signed_up, :slug)
    end
end
