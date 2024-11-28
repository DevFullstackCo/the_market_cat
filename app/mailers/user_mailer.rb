class UserMailer < ApplicationMailer

  def order_confirmation(user, order)
    @user = user 
    @order = order
    @articles = order.order_items.map(&:article)
    @url = 'http://TheMarketCat.fr' 

    mail(
      to: @user.email,
      subject: "Merci pour votre achat, #{@user.email} !"
    )
  end



  def password_change(user)
    @user = user
    mail(to: @user.email, subject: 'Votre mot de passe a été modifié')
  end

  def reset_password_instructions(user, token)
    @user = user
    @token = token
    mail(to: @user.email, subject: 'Change ton mot de passe')
  end


end
