class UserMailer < ActionMailer::Base
  default :from => "no-reply@evening-rain-9704.herokuapp.com"

  def delivery_email(card)
    @card = card
    @url  = url_for(:action => :view, :only_path => false, :controller => :cards, :method => :get)
    mail(:to => card.recipient, :subject => "You've received a Princeton Greeting Card!")
  end

end
