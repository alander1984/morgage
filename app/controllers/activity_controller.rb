class ActivityController < ApplicationController
	def update
		respond_to do |format|
       		format.html { redirect_to activity_ins_path(params['id']), notice: 'Процесс выдачи успешно запущен.' }
        end	
	end	

	def setInsuranse
		@process = Activity.find(params['process_id'])
	end
end
