class User < ApplicationRecord
  # self.primary_key = :title
  has_many :books#, -> {where title: "sach"}#, inverse_of: :user
end
