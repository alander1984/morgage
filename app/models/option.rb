class Option < ActiveRecord::Base
	has_many :link_ops
	has_many :products, :through => :link_ops
end
