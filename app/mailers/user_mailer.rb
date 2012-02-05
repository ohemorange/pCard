class UserMailer < ActionMailer::Base
  # default :from => "from@example.com"

  def delivery_email(card)
    @card = card
    @url  = view_card_path(@card)
    mail(:to => card.recipient, :subject => "You've received a Princeton Greeting Card!")
  end

end
