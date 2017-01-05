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

	def refreshShortReqInfo
		@selReq = Request.find(params['request_id'])
	end	

	def selectProduct
		@process = Activity.new
		@process.request = Request.find(params['request'])
		@process.save
		@request = @process.request
	end	

	def refreshOptionList
		@product = Product.find(params['product_id'])
		@options = @product.options
		@process = Activity.find(params['process_id'])
		@process.options.clear()
	end	

	def addOption	
		@process = Activity.find(params['process_id'])
		@process.options << Option.find(params['option_id'])
		@options = @process.options
	end
	
	def removeOption
		@process = Activity.find(params['process_id'])
		@process.options.delete(Option.find(params['option_id']))
		@options = @process.options
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