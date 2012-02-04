class UserMailer < ActionMailer::Base
  # default :from => "from@example.com"

  def delivery_email(card)
    @card = card
    @url  = card_view_path
    mail(:to => card.recipient, :subject => "You've received a Princeton Greeting Card!")
  end

end
