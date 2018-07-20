class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    @greeting = t ".hi"
    mail to: user.email, subject: (t ".account_activation")
  end
end
