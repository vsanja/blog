class Comment < ActiveRecord::Base
  belongs_to :article

  validates_presence_of :commenter, :body
  validates :article_id, presence: true, foreign_key: {with: Article}

end