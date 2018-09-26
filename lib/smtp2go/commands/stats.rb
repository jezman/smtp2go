# frozen_string_literal: true

require 'thor'

module Smtp2go
  module Commands
    class Stats < Thor

      namespace :stats

      desc 'unsubs', 'Report on email unsubscribe statistics'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def unsubs(*)
        if options[:help]
          invoke :help, ['unsubs']
        else
          require_relative 'stats/unsubs'
          Smtp2go::Commands::Stats::Unsubs.new(options).execute
        end
      end

      desc 'spam', 'Report on email spam statistics'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def spam(*)
        if options[:help]
          invoke :help, ['spam']
        else
          require_relative 'stats/spam'
          Smtp2go::Commands::Stats::Spam.new(options).execute
        end
      end

      desc 'history', 'Retrieve a summary showing account activity from a specified date range'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def history(*)
        if options[:help]
          invoke :help, ['history']
        else
          require_relative 'stats/history'
          Smtp2go::Commands::Stats::History.new(options).execute
        end
      end

      desc 'cycle', 'Retrieve a summary showing the start date and end date of your monthly cycle'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def cycle(*)
        if options[:help]
          invoke :help, ['cycle']
        else
          require_relative 'stats/cycle'
          Smtp2go::Commands::Stats::Cycle.new(options).execute
        end
      end

      desc 'bounces', 'Report on email bounce statistics'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def bounces(*)
        if options[:help]
          invoke :help, ['bounces']
        else
          require_relative 'stats/bounces'
          Smtp2go::Commands::Stats::Bounces.new(options).execute
        end
      end

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
