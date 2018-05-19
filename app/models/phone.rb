class Phone < ApplicationRecord
  def send_sms(user, incident)
    acct_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    byebug

    @client = Twilio::REST::Client.new acct_sid, auth_token

    from = '+18442622344'

    message = @client.api.account.messages.create(
      from: from,
      to: '+380933289222',
      body: "Пропав #{incident.name}"
    )
  end
end
