class CarsController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def index
    @cars = Car.all
    render json: @cars.to_json
  end
  
  def search_plates
    @cars = Car.where("lower(plate) like ?", "%#{params[:term].downcase}%")
    render json: @cars.to_json
  end
  
  # t.string   "plate"
  # t.string   "color"
  # t.string   "make"
  # t.string   "model"
  # t.datetime "created_at"
  # t.datetime "updated_at"
  # t.integer  "user_id"
  def show
    @car = Car.where({ plate: params[:plate] }).first
    render json: @car.to_json
  end
  
  def create
    @car = Car.new car_params
    @car.save
    render json: @car.to_json
  end
  
  private
  
  def car_params
    params.require(:car).permit(:plate, :color, :make, :model)
  end
end