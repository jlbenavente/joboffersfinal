class JoboffersController < ApplicationController
  before_action :set_joboffer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show,:edit, :update, :new, :create]
  # GET /joboffers
  # GET /joboffers.json
  def index
    @joboffers = Joboffer.all
  end

  # GET /joboffers/1
  # GET /joboffers/1.json
  def show
  end

  # GET /joboffers/new
  def new
    @joboffer = current_user.joboffers.build
  end

  # GET /joboffers/1/edit
  def edit
  end

  # POST /joboffers
  # POST /joboffers.json
  def create
    @joboffer = current_user.joboffers.build(joboffer_params)
    respond_to do |format|
      if @joboffer.save
        format.html { redirect_to @joboffer, notice: 'Joboffer was successfully created.' }
        format.json { render :show, status: :created, location: @joboffer }
      else
        format.html { render :new }
        format.json { render json: @joboffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joboffers/1
  # PATCH/PUT /joboffers/1.json
  def update
    respond_to do |format|
      if @joboffer.update(joboffer_params)
        format.html { redirect_to @joboffer, notice: 'Joboffer was successfully updated.' }
        format.json { render :show, status: :ok, location: @joboffer }
      else
        format.html { render :edit }
        format.json { render json: @joboffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joboffers/1
  # DELETE /joboffers/1.json
  def destroy
    @joboffer.destroy
    respond_to do |format|
      format.html { redirect_to joboffers_url, notice: 'Joboffer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joboffer
      @joboffer = Joboffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joboffer_params
      params.require(:joboffer).permit(:title, :description, :image, :budget, :region_id, :commune_id, :city_id, :user_id, :skill_id, :image1)
    end
end
