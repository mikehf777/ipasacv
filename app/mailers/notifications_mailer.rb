class NotificationsMailer < ActionMailer::Base

  default :from => "ipasarenta@gmail.com"
  default :to => "ipasarenta@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[www.ipasacv.com] #{message.asunto}")
  end

end