class ArticlesCategoriesController < ApplicationController

    def index
        @categories = ArticleCategory.all
        @articles_category = ArticleCategory.new
    end

    def create
        @category = ArticleCategory.new(category_params)
        @category.save
        redirect_to articles_categories_path
    end

    def destroy
        @category = ArticleCategory.find(params[:id])
        @category.articles.each do |article|
            article.update!(article_category_id: nil)
        end
        @category.destroy
        redirect_to articles_categories_path
    end

    def category_params
        params.permit(:title)
    end
end
