class Request < ActiveRecord::Base
	belongs_to :mainwork, :class_name => 'Work', :foreign_key => 'mainwork_id';
  	belongs_to :secondwork, :class_name => 'Work', :foreign_key => 'secondwork_id';
  	accepts_nested_attributes_for :mainwork
  	accepts_nested_attributes_for :secondwork
end
