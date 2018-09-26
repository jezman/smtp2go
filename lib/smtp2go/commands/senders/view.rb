# frozen_string_literal: true

require_relative '../../command'

module Smtp2go
  module Commands
    class Senders
      class View < Smtp2go::Command
        def initialize(options)
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          senders = APISenders.new
          report(senders.view)
        end
      end
    end
  end
end
