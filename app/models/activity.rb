class Activity < ActiveRecord::Base
	belongs_to :request
	has_many :options, :through => :activityOptions
end
