# frozen_string_literal: true

require_relative '../../command'

module Smtp2go
  module Commands
    class Stats
      class Summary < Smtp2go::Command
        def initialize(options)
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          stats = APIStats.new
          report(stats.summary)
        end
      end
    end
  end
end
