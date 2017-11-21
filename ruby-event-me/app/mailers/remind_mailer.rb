class RemindMailer < ActionMailer::Base
	default from: "'Event Me' services@gmail.com"

	def event_notification(recipient)
		@recipient = recipient

		mail(to: recipient,
				 subject: "Event Reminder")
	end
end