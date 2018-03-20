class Picture < ApplicationRecord
  belongs_to :album
  # belongs_to :user, through: :album
  after_create :send_mail

  def send_mail
    Delayed::Job.enqueue(NotifyCreateStoreJob.new(id))

  end
end
