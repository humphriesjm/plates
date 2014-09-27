require 'rails_helper'

RSpec.describe Car, :type => :model do
	it "has the correct structure" do
		should respond_to :plate
		should respond_to :color
		should respond_to :make
		should respond_to :model
	end

	it "can have comments" do
		car = Car.new
		car.plate = "123-ABC"
		car.make = "Mercedes Benz"
		car.model = "C63"
		car.save!

		comment = car.comments.new
		comment.message = "this is a message"
		comment.save!
		should be 1
	end
end