require 'uri'
require 'net/http'
require 'json'

module Helpers
  def response_body(path)
    url = URI.parse(path)
    http = Net::HTTP.new(url.host, url.port)

    http.use_ssl = true if url.scheme == 'https'

    headers = { 'Content-Type' => 'application/json' }
    request = Net::HTTP::Post.new(url.request_uri, headers)
    request.body = { 'api_key' => ENV['SMTP2GO_API_KEY'] }.to_json
    # headers.each { |k, v| request[k] = v } unless headers.nil?
    # request.body = params.join('&')

    http.request(request).body
  end

  def parse_json(data)
    JSON.parse(data)
  end
end
