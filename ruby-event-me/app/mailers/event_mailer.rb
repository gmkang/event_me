class EventMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.reminder_notification.subject
  #
  def reminder_notification(user, friend)
    @user = user
    @friend = friend

    mail to: "user.email", subject: "Event Reminder"
  end
end
