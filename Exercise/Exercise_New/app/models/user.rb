class User < ApplicationRecord
  validates :name, presence: true
  has_many :albums
  has_many :pictures, through: :albums


end
