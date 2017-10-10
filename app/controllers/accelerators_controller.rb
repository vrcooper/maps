class AcceleratorsController < ApplicationController
  before_action :set_accelerator, only: [:show, :edit, :update, :destroy]


  def index
    @accelerators = Accelerator.all
    @hash = Gmaps4rails.build_markers(@accelerators) do |accelerator, marker|
      marker.lat accelerator.latitude
      marker.lng accelerator.longitude
      marker.title accelerator.organization
       
    end
  end

  def show
     
  end

  def new
    @accelerator = Accelerator.new
  end

  def edit
  end

  def create
    @accelerator = Accelerator.new(accelerator_params)

    respond_to do |format|
      if @accelerator.save
        format.html { redirect_to @accelerator, notice: 'Accelerator was successfully created.'}
        format.json { render action: 'show', status: :created, location: @accelerator }
      else
        format.html { render action: 'new' }
        format.json { render json: @accelerator.errors, status: :unprocessable_entity }
    end
  end
end

def update
  respond_to do |format|
    if @accelerator.update(accelerator_params)
      format.html { redirect_to @accelerator, notice: 'Accelerator was successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: 'edit' }
      format.json { render json: @accelerator.errors, status: :unprocessable_entity }
    end
 end
end

def destroy
  @accelerator.destroy
  respond_to do |format|
  format.html { redirect_to accelerators_url }
  format.json { head :no_content }
 end
end

private

def set_accelerator
  @accelerator = Accelerator.find(params[:id])
end

def accelerator_params
  params.require(:accelerator).permit(:latitude, :longitude, :address, :organization, :organization_profile)
end

end