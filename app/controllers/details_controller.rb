class DetailsController < ApplicationController

	http_basic_authenticate_with name: "demo", password: "demo", only: :destroy

	def create 
		@article = Article.find(params[:article_id])
		@detail = @article.details.create(detail_params)
		redirect_to article_path(@article)
	end

	def destroy 
		@article = Article.find(params[:article_id])
		@detail = @article.details.find(params[:id])
		@detail.destroy
		redirect_to article_path(@article)
	end

	private
		def detail_params
			params.require(:detail).permit(:text)
		end
end
