class ArticlesController < ApplicationController
	before_action :article_instance, only: [:show]
	def index
		@articles = Article.all 
	end

	def show
	end

	
	private

	def article_instance
		@article = Article.find(params[:id])
	end

	def article_attributes
		params.require(:article).permit(:title, :subtitle, :content, photos: [])
	end
end
