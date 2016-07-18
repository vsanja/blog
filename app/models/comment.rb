class Comment < ActiveRecord::Base
  belongs_to :article
  validates_presence_of :commenter, :body
  # validates :commenter, :body, presence: true
  validate :existing_article
  # validate :presence_of_commenter_and_body

  private

  def existing_article
    if article_id.present? && !Article.exists?(article_id)
      errors.add(:article_id, "is not foreign key")
    end
  end

  # def presence_of_commenter_and_body
  #   errors.add(:commenter, "error message") unless commenter.present?
  #   errors.add(:body, "error message") unless body.present?
  # end

end