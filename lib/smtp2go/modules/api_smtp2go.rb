module APISmtp2go
  BASE_URL = 'https://api.smtp2go.com/v3'

  URLS_STATS = {
    summary: "#{BASE_URL}/stats/email_summary",
    bounces: "#{BASE_URL}/stats/email_bounces",
    cycle: "#{BASE_URL}/stats/email_cycle",
    history: "#{BASE_URL}/stats/email_history",
    spam: "#{BASE_URL}/stats/email_spam",
    unsubs: "#{BASE_URL}/stats/email_summary"
  }.freeze
end
