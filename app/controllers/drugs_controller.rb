class DrugsController < ApplicationController
	def index
		@drugs = Drug.all
	end

	def show
		@drug = Drug.find params[:id]
	end

	def new
		@drug = Drug.new
	end

	def create
		@drug = Drug.new(drug_params)

		if @drug.save
			redirect_to @drug
		else
			render 'new'
		end
	end

private
	def drug_params
		params.require(:drug).permit(:name, :adult_dose, :pediatric_dose, :route, :indications)
	end
end