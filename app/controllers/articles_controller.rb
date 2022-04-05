class ArticlesController < ApplicationController
    # GET / articles
    def index
    #las variables que empiezan con @ son variables globales
        @articles = Article.all
    end

    # GET /articles/:id
    def show
        @article = Article.find(params[:id]);
    end


end