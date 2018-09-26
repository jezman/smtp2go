# frozen_string_literal: true

require_relative '../../command'

module Smtp2go
  module Commands
    class Stats
      class Bounces < Smtp2go::Command
        def initialize(options)
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          # Command logic goes here ...
          output.puts "OK"
        end
      end
    end
  end
end
