class ArticlesController < ApplicationController
  #implement the set_article actions to those methods before doing other actions
before_action :set_article, only: [:show, :edit, :update, :destroy]

   # GET /articles/1 or /articles/1.json
  def show

  end

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end 

  # GET /articles/new
  def new
    @article = Article.new
  end

  # edit an existing article
  def edit

     
  end


  # POST /articles or /articles.json, adn the requirements and permission to save the article to the data
  def create
    @article = Article.new(article_params)

    #save the new article to the table
      if @article.save
        flash[:notice] = "Article was created successfully!"
      #navigate to the article listing page
        redirect_to @article
      else 
        # pop up the errors when the article is not qualiqquired the requirements
        render :new, status: :unprocessable_entity
      end
  end

  #update an existing article

  def update
    #params acts like a hash to secure the id

    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else 
      render :edit, status: :unprocessable_entity
    end
  end 

  #delete an article
  def destroy

    @article.destroy
    # redirect_to @articles_path
    redirect_to articles_path
  end


  #Refactor the codes
  private
    def set_article
      @article = Article.find(params[:id])
    end 

    def article_params
      params.require(:article).permit(:title, :description)
    end 
end