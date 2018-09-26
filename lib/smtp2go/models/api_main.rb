require_relative '../modules/helpers.rb'
require_relative '../modules/api_smtp2go'

class APIMain
  include APISmtp2go
  include Helpers

  attr_reader :response

  protected

  def data(url)
    @response = send_request(url)
    parse_json(@response.body)
  end
end
