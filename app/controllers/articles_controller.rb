class ArticlesController < ApplicationController
    # GET / articles
    def index
        #select * from article
        @articles = Article.all
    end

    # GET /articles/:id
    def show
        #where id = 
        @article = Article.find(params[:id]);
    end

    # GET /articles/new
    def new
        #Article.new --> no guarda nada en la base de datos. Solo lo guarda en memoria
        @article = Article.new
    end

    # POST /articles
    def create
        @article = Article.new(title: params[:article][:title], body: params[:article][:body])
        #if @article.valid?
        if @article.save
            redirect_to @article
        else
            render :new, status: :unprocessable_entity       
        end
    end

    def destroy        
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
end