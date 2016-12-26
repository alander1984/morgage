class Request < ActiveRecord::Base
	belongs_to :mainwork, :class_name => 'Work', :foreign_key => 'mainwork_id';
  	belongs_to :secondwork, :class_name => 'Work', :foreign_key => 'secondwork_id';
  	accepts_nested_attributes_for :mainwork
  	accepts_nested_attributes_for :secondwork
	belongs_to :credit1, :class_name => 'Credit', :foreign_key => 'credit1_id';
  	belongs_to :credit2, :class_name => 'Credit', :foreign_key => 'credit2_id';
  	accepts_nested_attributes_for :credit1
  	accepts_nested_attributes_for :credit2
end
