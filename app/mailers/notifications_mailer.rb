class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@mujtababadat.com"
  default :to => "hi@mujtababadat.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Website Lead: #{message.name}] #{message.subject}",
    :body => "From: #{message.email}\nPhone#: #{message.phone}\nName: #{message.name}\nSubject: #{message.subject}\nMessage: #{message.body}")
  end

end
