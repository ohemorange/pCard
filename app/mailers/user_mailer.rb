class UserMailer < ActionMailer::Base
  default :from => "no-reply@pcards.herokuapp.com"

  def delivery_email(card)
    @card = card
    @url  = card_url(@card, :host => "pcards.herokuapp.com")
    mail(:to => card.recipient, :subject => "You've received a Princeton Greeting Card!")
  end

end
