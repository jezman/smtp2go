# frozen_string_literal: true

require_relative '../../command'

module Smtp2go
  module Commands
    class Stats
      class Cycle < Smtp2go::Command
        def initialize(options)
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          stats = APIStats.new
          report(stats.cycle)
        end
      end
    end
  end
end
