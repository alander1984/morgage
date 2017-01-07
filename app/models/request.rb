class Request < ActiveRecord::Base
	belongs_to :mainwork, :class_name => 'Work', :foreign_key => 'mainwork_id';
  	belongs_to :secondwork, :class_name => 'Work', :foreign_key => 'secondwork_id';
  	accepts_nested_attributes_for :mainwork
  	accepts_nested_attributes_for :secondwork
	belongs_to :credit1, :class_name => 'Credit', :foreign_key => 'credit1_id';
  	belongs_to :credit2, :class_name => 'Credit', :foreign_key => 'credit2_id';
  	accepts_nested_attributes_for :credit1
  	accepts_nested_attributes_for :credit2
  	belongs_to :person
  	has_one :activity
  	def to_s
		s = id.to_s;
		if person!=nil
			s = s+ ' '+(person.fname? ? person.fname : '') + ' '+ 
					   (person.sname? ? person.sname : '')+' '+ 
					   (person.tname? ? person.tname : '')
		end	
		return s;
	end	

	def allAmount
		res=(mainWorkAmount.nil? ? 0 : mainWorkAmount)+
			(sWorkAmount.nil? ? 0 : sWorkAmount)+
			(otherIncomeAmount.nil? ? 0 : otherIncomeAmount)
		return res
	end	
end
