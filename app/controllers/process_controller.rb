class ProcessController < ApplicationController
	def issuanceStart
		@peopleWithRequests = Person.joins(:request).distinct;
	end	

	def searchPersonPr1
		@foundPeople = Person.joins(:request).where(sqlSearchString).distinct;
	end	

	def refreshReqByPers
		@foundRequests = Request.where(person_id: params[:person_id])	
	end	

	def sqlSearchString
		words = params[:searchString].split(' ')
		fields = "fname sname tname".split(' ')
		sql =""
		words.each do |word|
			fields.each do |field|	
				sql << "lower("+field+") like '%"+word.mb_chars.downcase+"%' or "
			end	
		end	
		return sql[0..-5]
	end	
end