class ActivityController < ApplicationController
	before_action :set_process, only: [:addInsurance, :setInsuranse, :removeInsurance, :addDocument, :removeDoc, :checkInsurance, :setAgreement, :addAgreement, :addNote, :redirectToIns, :redirectToProd]
	
	def redirectToIns
		@process.status = "INS"
		@process.save
		respond_to do |format|
    		format.html { redirect_to activity_ins_path(@process.id), notice: 'Возврат на шаг выбора параметров кредита.' }
       		format.json { render :show, status: :ok, location: @process }
        end	
	end	

	def redirectToProd
		@process.status = "PROD"
		@process.save
		path = '/selectProduct?person='+@process.request.person.id.to_s+'5&request='+@process.request.person.id.to_s
		respond_to do |format|
    		format.html { redirect_to path, notice: 'Возврат на шаг выбора кредитного продукта.' }
       		format.json { render :show, status: :ok, location: @process }
        end	
	end	


	def update
		@process = Activity.find(params['id'])
		if @process.status=="PROD"
			link = activity_ins_path(params['id'])
		else
			link= activity_agr_path(params['id'])
		end	
		respond_to do |format|
			params['activity'].permit!
			if @process.update(params['activity'])
   	    		format.html { redirect_to link, notice: 'Процесс выдачи успешно запущен.' }
        		format.json { render :show, status: :ok, location: @process }
      		else
		        format.html { render :edit }
    	    	format.json { render json: @process.errors, status: :unprocessable_entity }
      		end
        end	
	end	

	def setInsuranse
		@valid = (@process.product.insurances-@process.insurances).empty?
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

	def addAgreement
		params['document'].permit!
		document = Document.new(params['document'])
		document.name="Решение/Договор"
		document.note = "Приложен "+Time.now.strftime("%d.%m.%Y %H:%M")
		@process.documents << document
		@process.save
	end	

	def addNote
		@process.note = params['process']['note']
		@process.save
	end	

	def removeDoc
		@process.documents.delete(Document.find(params['document_id']))
		@process.save
	end

	def checkInsurance
		@valid = (@process.product.insurances-@process.insurances).empty?
	end	

	def setAgreement
	end	

	private 
	def set_process
		@process = Activity.find(params['process_id'])
	end
end
