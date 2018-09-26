require_relative '../modules/helpers.rb'
require_relative '../modules/urls.rb'


class APIMain
  include Helpers
  include Urls

  attr_reader :response

  protected

  def data(url)
    @response = send_request(url)
    parse_json(@response.body)
  end
end
