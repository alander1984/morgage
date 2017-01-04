class Activity < ActiveRecord::Base
	belongs_to :request
	belongs_to :product
	has_many :options, :through => :activityOptions
end
