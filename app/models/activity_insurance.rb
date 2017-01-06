class ActivityInsurance < ActiveRecord::Base
  belongs_to :activity
  belongs_to :insurance
end
