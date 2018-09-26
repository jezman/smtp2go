# frozen_string_literal: true

require_relative '../../command'

module Smtp2go
  module Commands
    class Senders
      class Remove < Smtp2go::Command
        def initialize(options)
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          sender = APISenders.new
          sender.email_valid?(@email)
          @options[:email] = @email
          report(sender.remove(@options))
        rescue => e
          puts e.message
          # Command logic goes here ...
          output.puts "OK"
        end
      end
    end
  end
end
