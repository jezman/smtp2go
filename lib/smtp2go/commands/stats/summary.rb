# frozen_string_literal: true

require_relative '../../command'
require_relative '../../models/api_stats'
require_relative '../../modules/reports.rb'

module Smtp2go
  module Commands
    class Stats
      class Summary < Smtp2go::Command
        include Reports

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
