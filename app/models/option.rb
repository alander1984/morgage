class Option < ActiveRecord::Base
	has_many :link_ops
	has_many :link_option_options
	has_many :products, :through => :link_ops
	has_many :linkedoptions, :through => :link_option_options
end
