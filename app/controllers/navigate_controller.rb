class NavigateController < ApplicationController
	def start
	end


	def search
		@requests = Request.joins(:person).where(sqlSearchString);
		int = Integer(params['searchString']) rescue nil
		if int 
			@requests = @requests + Request.where("id='"+ params['searchString']+"'")
		end	
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
