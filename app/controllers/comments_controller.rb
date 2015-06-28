class CommentsController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "baeisbae", only: :destroy
	
	def create
		@drug = Drug.find(params[:drug_id])
		@comment = @drug.comments.create(comment_params)
		redirect_to drug_path(@drug)
	end

	def destroy
		@drug = Drug.find(params[:drug_id])
		@comment = @drug.comments.find(params[:id])
		@comment.destroy

		redirect_to drug_path(@drug)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :presentation, :administration, :outcome)
		end
end