class User < ApplicationRecord
  has_many :albums
  has_many :pictures, through: :albums
end
