# Sample DataMapper model, see DataMapper docs for more info.

class Product
	include DataMapper::Resource

	timestamps :at, :on
	property   :deleted_at, ParanoidDateTime
	
	property :id, Serial
	
	property :name, 			String
	property :description, 	String, length: 300
	
	property :specs, 			String, length: 300
	
	property :url_name, 	String, length: 100
	
	property :pillows, 		String, length: 100
	
	property :position, 	Integer

	belongs_to :productline
 	
end


class Productline
	include DataMapper::Resource

	timestamps :at, :on
	property   :deleted_at, ParanoidDateTime
	
	property :id, Serial
	
	property :title, 		String
	property :url_name, String

	has n, :products
end

