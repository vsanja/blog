class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article  #ako je artikal vec napravljen ostajemo na pocetnoj strani a ako nije usmerava nas na new_view
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article    #kad kliknemo na edit na stranici articles on nas usmerava na view_edit
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path   #pomocu ovog articles_path ostajemo na stranici articles i posle brisanja komenatara
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end