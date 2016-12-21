class LinkOptionOption < ActiveRecord::Base
	belongs_to :option
	belongs_to :linkedoption, :class_name => 'Option' 
end
