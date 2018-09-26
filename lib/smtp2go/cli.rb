# frozen_string_literal: true

require 'thor'

module Smtp2go
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'smtp2go version'
    def version
      require_relative 'version'
      puts "v#{Smtp2go::VERSION}"
    end
    map %w(--version -v) => :version

    require_relative 'commands/stats'
    register Smtp2go::Commands::Stats, 'stats', 'stats [SUBCOMMAND]', 'Retrieve different statistical reports for your account'
  end
end
