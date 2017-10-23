class FoodIncubatorsController < ApplicationController
  before_action :set_food_incubator, only: [:show, :edit, :update, :destroy]


  def index
    @food_incubators = FoodIncubator.all
    @hash = Gmaps4rails.build_markers(@food_incubators) do |food_incubator, marker|
      marker.lat food_incubator.latitude
      marker.lng food_incubator.longitude
      marker.title food_incubator.organization
       
    end
  end

  def show
     
  end

  def new
    @food_incubator = FoodIncubator.new
  end

  def edit
  end

  def create
    @food_incubator = FoodIncubator.new(food_incubator_params)

    respond_to do |format|
      if @food_incubator.save
        format.html { redirect_to @food_incubator, notice: 'Food incubator was successfully created.'}
        format.json { render action: 'show', status: :created, location: @food_incubator }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_incubator.errors, status: :unprocessable_entity }
    end
  end
end

def update
  respond_to do |format|
    if @food_incubator.update(food_incubator_params)
      format.html { redirect_to @food_incubator, notice: 'Food incubator was successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: 'edit' }
      format.json { render json: @food_incubator.errors, status: :unprocessable_entity }
    end
 end
end

def destroy
  @food_incubator.destroy
  respond_to do |format|
  format.html { redirect_to food_incubators_url }
  format.json { head :no_content }
 end
end

private

def set_food_incubator
  @food_incubator = FoodIncubator.find(params[:id])
end

def food_incubator_params
  params.require(:food_incubator).permit(:latitude, :longitude, :address, :organization, :organization_profile)
end
end
