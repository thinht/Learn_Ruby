class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
  def welcome_email
    # @user = user
    @url = 'http://example.com/login'
    mail(to: "aa@gmail.com", subject: 'welcome to My Awesome Site')
  end
end
