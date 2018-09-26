require_relative '../modules/helpers.rb'
require_relative '../modules/api_smtp2go'

class APIStats
  include APISmtp2go
  include Helpers

  attr_reader :response

  def bounces
    data(URLS_STATS[:bounces])
  end

  def cycle
    data(URLS_STATS[:cycle])
  end

  def history
    data(URLS_STATS[:history])
  end

  def spam
    data(URLS_STATS[:spam])
  end

  def summary
    data(URLS_STATS[:summary])
  end

  def unsubscribe
    data(URLS_STATS[:unsubs])
  end

  private

  def data(url)
    @response = send_request(url)
    parse_json(@response.body)
  end
end
