class ArticlesController < ApplicationController

    def new
    end

    def index

      def edit
        @article = Article.find(params[:id])
      end
      @articles = Article.all
    end




    def show
      @article = Article.find(params[:id])
    end


    def create
      def create
        @article = Article.new(article_params)

        if @article.save
          redirect_to @article
        else
          render 'new'
        end
      end


      def update
        @article = Article.find(params[:id])

    private
    def article_params
      params.require(:article).permit(:title, :text)
    end

  end
