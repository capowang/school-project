class ArticlesController < ApplicationController
	before_action :article_instance, only: [:show, :edit, :update, :destroy]
	def index
		@articles = Article.all 
	end

	def show
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_attributes)
		if @article.save
			redirect_to @article, notice: 'Cocktail was successfully created.'
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		@article.update(article_attributes)
		if @article.save
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end	

	def destroy
    	@article.destroy
    	redirect_to articles_path, notice: "Article deleted"
	end

	
	private

	def article_instance
		@article = Article.find(params[:id])
	end

	def article_attributes
		params.require(:article).permit(:title, :subtitle, :content, :photo)
	end
end
