class ChangeArticleCategoryIdInArticles < ActiveRecord::Migration[7.0]
  def change
    change_column_null :articles, :article_category_id, true
  end
end
