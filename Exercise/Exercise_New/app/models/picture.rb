class Picture < ApplicationRecord
  belongs_to :album
  # belongs_to :user, through: :album

end
