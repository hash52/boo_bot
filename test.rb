# test.rb
require 'http'
require 'json'

channel_hashi = "D9BN2P7GX"
channel_tadokoro = 'D9E5N7388'
channe_boo_dev = 'GA4JFU2JG'

response = HTTP.post("https://slack.com/api/chat.postMessage", params: {
    token: ENV['SLACK_MY_API_TOKEN'],
    channel: channel_hashi,
    text: "わたしぶーちゃん？",
  #  as_user: true,
  })
puts ENV['SLACK_API_TOKEN']
puts JSON.pretty_generate(JSON.parse(response.body))
