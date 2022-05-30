
class CarsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :require_user
  before_action :set_select, only: [:create, :new, :edit]
  before_action :set_car, only: [:edit, :update]
  
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    params[:car][:dealership_id].to_i
    @car = Car.new(car_params)
    if @car.save
      redirect_to new_car_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    params[:car][:dealership_id].to_i
    if @car.update(car_params)
      redirect_to cars_path
    else
      render 'edit'
    end
  end

  def set_select
    @dealerships = Dealership.all
  end

  private
  def car_params
    params.require(:car).permit(:dealership_id, :car_serial_number, :model, :brand, :price, :year, :udpated_by, :created_by, :car_type, :created_by, :created_at, :updated_at)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end