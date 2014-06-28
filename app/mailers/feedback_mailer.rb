class FeedbackMailer < ActionMailer::Base
  default from: "feedback@logsty.com"
  default to: "feedback@logsty.com."

  def new_message(message)
    @message = message

    mail(:subject => "[Logsty.com] #{message.subject}")
  end

end
