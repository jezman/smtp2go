module Urls
  BASE_URL = 'https://api.smtp2go.com/v3'.freeze

  URLS_SENDERS = {
    add: "#{BASE_URL}/allowed_senders/add",
    remove: "#{BASE_URL}/allowed_senders/remove",
    update: "#{BASE_URL}/allowed_senders/update",
    view: "#{BASE_URL}/allowed_senders/view"
  }.freeze

  URLS_STATS = {
    summary: "#{BASE_URL}/stats/email_summary",
    bounces: "#{BASE_URL}/stats/email_bounces",
    cycle: "#{BASE_URL}/stats/email_cycle",
    history: "#{BASE_URL}/stats/email_history",
    spam: "#{BASE_URL}/stats/email_spam",
    unsubs: "#{BASE_URL}/stats/email_summary"
  }.freeze
end
