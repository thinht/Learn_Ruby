class NotifyCreateStoreJob < Struct.new(:picture_id)

  def perform
    UserMailer.notify_create_store_email.deliver_now
  end

end