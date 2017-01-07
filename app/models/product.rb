class Product < ActiveRecord::Base
	has_many :link_ops
	has_many :options, :through => :link_ops
	has_many :product_insurances
	has_many :insurances, :through => :product_insurances
end
