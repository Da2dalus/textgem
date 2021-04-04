require "textgem/version"
require "json"

include JSON

module Textgem
  class Error < StandardError; end

  def sendsms(phone, sms, apikey="textbelt", webhook="textbelt.com")
    smsoutput = `curl -X POST https://textbelt.com/text --data-urlencode phone='#{phone}' --data-urlencode message='#{sms}' -d replyWebhookUrl='https://#{webhook}/api/handleSmsReply' -d key=#{apikey}`
    puts smsoutput
    sms = JSON.parse(smsoutput)
  end

  def quota(apikey="textbelt")
    quotaoutput = `curl https://textbelt.com/quota/#{apikey}`
    puts quotaoutput
    quota = JSON.parse(quotaoutput)
  end

  def status(textid)
    statusoutput = `curl https://textbelt.com/status/#{textid}`
    puts statusoutput
    status = JSON.parse(statusoutput)
  end

  def repliecheck(webhook)
    replieoutput = `curl https://#{webhook}/api/handleSmsReply`
    puts replieoutput
    replie = JSON.parse(replieoutput)
  end

  def testsms(apikey="textbelt")
    testsmsoutput = `curl -X POST https://textbelt.com/text --data-urlencode phone='304033489438938' --data-urlencode message='hi' -d key=#{apikey}_test`
    puts testsmsoutput
    testsms = JSON.parse(testsmsoutput)
  end
end

