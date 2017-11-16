require('bundler')
Bundler.require()
 


require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'AC667493c4d3227874f16c1ab28c8ed3f3'
 auth_token = '9412f357f86810ac5a122c5263bceec7'

client = Twilio::REST::Client.new(account_sid, auth_token)

service = client.notify.v1.services('PN4e018df08b913a57437adc983c52dbb8')

notification = service.notifications.create(
   to_binding: '{"binding_type":"sms", "address":"+17144174462"}',
  body: 'Knok-Knok! This is your first Notify SMS'
)

puts notification.sid