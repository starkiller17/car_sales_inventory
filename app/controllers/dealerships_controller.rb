
class DealershipsController < ApplicationController
  before_action :require_user
  before_action :set_dealership, only: [:edit, :update]

  def new
    @dealership = Dealership.new
  end

  def index
    @dealerships = Dealership.all
  end

  def create
    @dealership = Dealership.new(dealership_params)
    if @dealership.save
      redirect_to new_dealership_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @dealership.update(dealership_params)
      redirect_to dealerships_path
    else
      render 'edit'
    end
  end

  private
  def dealership_params
    params.require(:dealership).permit(:name, :address, :created_by, :updated_by)
  end

  def set_dealership
    @dealership = Dealership.find(params[:id])
  end
end