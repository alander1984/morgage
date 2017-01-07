class ActivityController < ApplicationController
	before_action :set_process, only: [:addInsurance, :setInsuranse, :removeInsurance, :addDocument, :removeDoc]
	
	def update
		@process = Activity.find(params['id'])
		respond_to do |format|
			params['activity'].permit!
			if @process.update(params['activity'])
    	    	format.html { redirect_to activity_ins_path(params['id']), notice: 'Процесс выдачи успешно запущен.' }
        		format.json { render :show, status: :ok, location: @process }
      		else
		        format.html { render :edit }
    	    	format.json { render json: @process.errors, status: :unprocessable_entity }
      		end
        end	
	end	

	def setInsuranse
	end

	def addInsurance
		ins =  Insurance.find(params['insurance_id'])
		if !@process.insurances.include?(ins) 
			@process.insurances << ins
		end	
		@process.save
	end	

	def removeInsurance
		@process.insurances.delete(Insurance.find(params['insurance_id']))
		@process.save
	end	

	def addDocument
		params['document'].permit!
		document = Document.new(params['document'])
		@process.documents << document
		@process.save
	end

	def removeDoc
		@process.documents.delete(Document.find(params['document_id']))
		@process.save
	end

	private 
	def set_process
		@process = Activity.find(params['process_id'])
	end
end
