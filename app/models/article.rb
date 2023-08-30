class Article < ApplicationRecord
  belongs_to :article_category, optional: true
  belongs_to :user
  has_rich_text :content

  def published_at
    I18n.l(self.created_at, format: "%-d %B %Y")
  end
end
