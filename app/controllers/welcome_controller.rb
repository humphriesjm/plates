class WelcomeController < ApplicationController
  def index
    @cars = Car.all
    render :json => @cars.to_json
  end
end
