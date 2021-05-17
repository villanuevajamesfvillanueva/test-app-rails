class ArticlesController < ApplicationController
    def index                       #name convention for method that displays all
        @articles = Article.all
    end

    def new                         #name convention for method that creates new
        @article = Article.new
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)

        if @article.valid?
            @article.save
            redirect_to '/' 
            
        else
            render :new
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to '/'
        else
            render :edit
        end
    end

    # def delete
    #     @article = Article.find(params[:id])
    #     @article.destroy
    #     flash[:notice] = "Article has been deleted."
    #     redirect_to articles_path
    # end


    private
    def article_params
        params.require(:article).permit(:name, :body)
    end

end


