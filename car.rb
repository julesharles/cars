require 'data_mapper'
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/julie.db")
class Car
	 include DataMapper::Resource
	property :id,Serial
	property :color,String
	property :model,String
	property :year,Integer
	property :brand,String
end

DataMapper.finalize
Car.auto_upgrade!