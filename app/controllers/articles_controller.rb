class ArticlesController < ApplicationController

    def index                       #name convention for method that displays all
        @articles = Article.all
    end

    def new                         #name convention for method that creates new
        @article = Article.new
    end


    def create
        # @article = Article.new
        # @article.name = params[:name]
        # @article.body = params[:body]
        @article = Article.new(article_params)

        if @article.valid?
            @article.save
            redirect_to articles_path
            
        else
            render :new

        end
    end

    private
    def article_params
        params.require(:article).permit(:name, :body)
    end
end


