require 'slack-ruby-bot'

ASK_WHO_SUP_MESSAGE = {
  text: 'I just wanted to check in, how did it go?',
  attachments: [
    {
      text: '1234',
      attachment_type: 'default',
      actions: [
        {
          name: 'outcome',
          text: 'We All Met',
          type: 'button',
          value: 'all',
          style: 'primary'
        },
        {
          name: 'outcome',
          text: 'Some of Us Met',
          type: 'button',
          value: 'some'
        },
        {
          name: 'outcome',
          text: "We Couldn't Meet",
          type: 'button',
          value: 'none',
          style: 'danger'
        }
      ]
    }
  ]
}.freeze

class PongBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    # client.say(text: 'pong', channel: data.channel)
    message = ASK_WHO_SUP_MESSAGE.dup
    message[:channel] = data.channel
    message[:as_user] = true
    message[:text] = 'Choose wisely'
    client.web_client.chat_postMessage(message)
  end
end

PongBot.run

# SLACK_API_TOKEN=your-bot-token bundle exec ruby pongbot.rb
