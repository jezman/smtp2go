# frozen_string_literal: true

require_relative '../../command'

module Smtp2go
  module Commands
    class Senders
      class Add < Smtp2go::Command
        def initialize(email, options)
          @email = email
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          sender = APISenders.new
          sender.email_valid?(@email)
          @options[:email] = @email
          report(sender.add(@options))
        rescue => e
          puts e.message
        end
      end
    end
  end
end
