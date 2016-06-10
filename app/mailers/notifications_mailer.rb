class NotificationsMailer < ActionMailer::Base

  default :from => "gustavoanalytics@gmail.com"
  default :to => "gustavoanalytics@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "New Model Application Form")
  end

  def new_client(new_client)
    @new_client = new_client
    mail(:subject => "New client")
  end

end