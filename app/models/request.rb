class Request < ActiveRecord::Base
	belongs_to :mainwork, :class_name => 'Work', :foreign_key => 'mainwork_id';
  	belongs_to :secondwork, :class_name => 'Work', :foreign_key => 'secondwork_id';
end
