class User < ApplicationRecord
  validates :id_admin,presence: true
  validates :address, presence: true, unless:  Proc.new{|u| u.id_admin?}

  # def check
  #   if !id_admin
  #     errors.add(:address, presence: true)
  #   end
  # end
end
