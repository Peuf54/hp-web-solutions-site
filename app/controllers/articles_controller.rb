class ArticlesController < ApplicationController
    before_action :authenticate_user!, except: %w[index show]

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.user = current_user
        if @article.save!
            redirect_to article_path(@article)
        else
            render :new
        end
    end

    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    private

    def article_params
        params.require(:article).permit(:title, :content, :article_category_id)
    end
end
