require 'uri'
require 'net/http'
require 'json'

module Helpers
  def email_valid?(email)
    raise 'invalid email' if email !~ URI::MailTo::EMAIL_REGEXP
  end

  private

  def send_request(path, options = {})
    url = URI.parse(path)
    http = Net::HTTP.new(url.host, url.port)

    http.use_ssl = true if url.scheme == 'https'

    options['api_key'] = ENV['SMTP2GO_API_KEY']
    headers = {'Content-Type' => 'application/json'}
    request = Net::HTTP::Post.new(url.request_uri, headers)

    request.body = options.to_json

    http.request(request)
  end

  def parse_json(data)
    JSON.parse(data)
  end
end
