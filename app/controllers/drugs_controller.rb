class DrugsController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "baeisbae", except: [:index, :show]
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

	def edit
		@drug = Drug.find(params[:id])
	end

	def update
		@drug = Drug.find(params[:id])

		if @drug.update(drug_params)
			redirect_to @drug
		else
			render 'edit'
		end
	end

	def destroy
		@drug = Drug.find(params[:id])
		@drug.destroy

		redirect_to drugs_path
	end

private
	def drug_params
		params.require(:drug).permit(:name, :adult_dose, :pediatric_dose, :route, :indications)
	end
end