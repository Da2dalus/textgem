require "textgem/version"

module Textgem
  class Error < StandardError; end
  
  def sendsms(phone, sms, apikey="textbelt", webhook="textbelt.com")
    system("curl -X POST https://textbelt.com/text --data-urlencode phone='#{phone}' --data-urlencode message='#{sms}' -d replyWebhookUrl='https://#{webhook}/api/handleSmsReply' -d key=#{apikey}")
  end

  def quota(apikey="textbelt")
    system("curl https://textbelt.com/quota/#{apikey}")
  end

  def status(textid)
    system("curl https://textbelt.com/status/#{textid}")
  end

  def repliecheck(webhook)
    system("curl https://#{webhook}/api/handleSmsReply")
  end
end
