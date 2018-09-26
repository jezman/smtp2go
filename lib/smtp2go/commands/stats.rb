# frozen_string_literal: true

require 'thor'

module Smtp2go
  module Commands
    class Stats < Thor

      namespace :stats

      desc 'summary', 'Retrieve a combination of reports'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def summary(*)
        if options[:help]
          invoke :help, ['summary']
        else
          require_relative 'stats/summary'
          Smtp2go::Commands::Stats::Summary.new(options).execute
        end
      end
    end
  end
end
