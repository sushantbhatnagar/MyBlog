# Articles Controller
class ArticlesController < ApplicationController

	# New Article
	def new 
		@article = Article.new
	end

	# Save an article and show the article to the user.	
	def create
		# Able to see whats being displayed in the browser
		# render plain: params[:article].inspect

		# Created a new article instance variable passing the another method
		@article = Article.new(article_params)

		# save the article
		# @article.save

		# putting in some validations
		if @article.save
			# flash[:notice] = "Article was successfully created"
			redirect_to article_path(@article)
		else
			render 'new'
		end
		# redirect to show method in the article
		# redirect_to article_path(@article)
	end

	def show
			@article = Article.find(params[:id])
	end

	# Edit an article and update action
	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end

	# Displays the articles to the user	
	def index
		@articles = Article.all
	end



	private
	def article_params
		# It will take the fields from the render part above and fetch title and description values
		params.require(:article).permit(:title, :description)
	end
end
