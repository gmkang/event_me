require("bundler")
Bundler.require()
 


require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'AC667493c4d3227874f16c1ab28c8ed3f3'
 auth_token = '9412f357f86810ac5a122c5263bceec7'

client = Twilio::REST::Client.new(account_sid, auth_token)

@client.messages.create(
to: "+17144174462",
from: "+17142942124",
body: "PLEASE TWILIO... PLEASE WORK!"
)