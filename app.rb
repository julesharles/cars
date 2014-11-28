require 'sinatra'
require_relative "./car.rb"

get '/cars' do
	@mycars = Car.all
	erb :cars
end
