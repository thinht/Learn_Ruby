class Comment < ApplicationRecord
  belongs_to :article, optional: true

  validates :commenter, presence: true
  validates :body, length: {maximum:2}
end
