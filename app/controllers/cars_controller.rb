class CarsController < ApplicationController
  def index
    @cars = Car.all
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
    @car = Car.new params[:car]
    @car.save
    render json: @car.to_json
  end
end