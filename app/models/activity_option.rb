class ActivityOption < ActiveRecord::Base
  belongs_to :activity
  belongs_to :option
end
