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

    # GET /articles/new
    def new
        #Article.new --> no guarda nada en la base de datos. Solo lo guarda en memoria
        @article = Article.new
    end

    # POST /articles
    def create
        @article = Article.new(title: params[:article][:title], 
                                body: params[:article][:body])
        @article.save
        redirect_to @article
    end


end