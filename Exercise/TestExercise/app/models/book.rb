class Book < ApplicationRecord
  # belongs_to :author, class_name: "User", foreign_key: :user_id
  belongs_to :user#, inverse_of: :books#, primary_key: "title"
end
