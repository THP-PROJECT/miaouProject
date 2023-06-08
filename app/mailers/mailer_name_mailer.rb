class MailerNameMailer < ApplicationMailer
  
  def sample_email
    mail(
      to: user_email,
      from: 'MiaouProject@shop.com',
      subject: 'welcome to shop'
    )
  end

  def cart_confirmation_email(user, cart)
    @user = user
    @cart = cart
    mail(
      to: user.email,
      subject: 'Confirmation de commande'
    )
  end

  def admin_notification_email(user, cart)
    @user = user
    @cart = cart
    mail(
      to: 'isadmin@admin.com',
      subject: 'Notification de commande'
    )
  end
end