class UserMailer < ActionMailer::Base
  default :from => "no-reply@evening-rain-9704.herokuapp.com"

  def delivery_email(card)
    @card = card
    @url  = view_card_path(@card)
    mail(:to => card.recipient, :subject => "You've received a Princeton Greeting Card!")
  end

end
