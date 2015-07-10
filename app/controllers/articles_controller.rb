class ArticlesController < ApplicationController
  def new

  end

  def create
    @article = Article.new(article_parameters)
  end

  def show
    
  end

  def index

  end

private
  
  def find_article
    @article = Article.find(params[:id])
  end

  def article_parameters
    params.require(:article).permit(:title, :body)
  end

end
