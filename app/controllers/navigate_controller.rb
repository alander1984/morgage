class NavigateController < ApplicationController
	def start
	end


	def search
		@requests = Request.joins(:person).where(sqlSearchString);
		
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
