class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.new_message.subject
  #

  def clinic_message(message)
    @message = message

    mail to: @message.receiver_email, 
         subject: "New Message from Cbv X Stem"
  end

  def clinic_confirmation(message)
    @message = message

    mail to: @message.sender_email, 
        subject: "Thank you for contacting Cbv X Stem"
  end

  def document_notification(message, action)
    @message = message
    @action = action

    mail to: @message.receiver_email,
        subject: "A document is #{@action} by #{@message.sender_name}"
  end

  def document_confirmation(message)
    @message = message

    mail to: @message.sender_email,
        subject: "Confirmation: a document uploaded"
  end
        



end
