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
        #@article = Article.new(title: params[:article][:title], body: params[:article][:body])
        @article = Article.new(article_params)
        
        if @article.save
            redirect_to @article
        else
            render :new, status: :unprocessable_entity       
        end
    end

   

    def edit
        @article = Article.find(params[:id])
    end

    def destroy        
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    #PUT /articles/:id
    def update
        @article = Article.find(params[:id])
        #if @article.update(params[:article])
        if @article.update(article_params)
        #if @article.update(title: params[:article][:title], body: params[:article][:body])
        #if @article.update_attributes(params[:title])
            redirect_to @article
        else
            render :edit
        end
    end

    private

    def article_params
        params.require(:article).permit(:title,:body)
    end
end