class Product < ActiveRecord::Base
	has_many :link_ops
	has_many :options, :through => :link_ops
end
