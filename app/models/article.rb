class Article < ApplicationRecord
  belongs_to :article_category, optional: true
  belongs_to :user
  has_rich_text :content
end