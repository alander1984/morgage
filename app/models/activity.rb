class Activity < ActiveRecord::Base
	belongs_to :request
	belongs_to :product
	has_many :activity_options
	has_many :options, :through => :activity_options
end
