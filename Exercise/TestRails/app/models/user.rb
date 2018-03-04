class User < ApplicationRecord
  # validates :name, presence: true
  # validates :email, uniqueness: true
  # validates :age, numericality: {only_integer: true, greater_than: 0}
  # validate :check_age_watch_xxx
  after_save :after_save_code
  before_save :before_save_code

  after_create :create_comment_after_create_user

  # def check_age_watch_xxx
  #   if age < 18
  #     errors.add(:age, "error for you don't enough age watch sex")
  #   end
  # end

  # # after_save do
  # #   puts "==============================="
  # # end

  def before_save_code
    cm = Comment.new
    cm.commenter = "comment before save"
    cm.save
  end

  def after_save_code
    raise "xxx"
  end

  def create_comment_after_create_user
    # if User.new {
    cm = Comment.new
    cm.commenter = "anc"
    cm.save
    # }
  end
end
