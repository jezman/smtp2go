require 'smtp2go/commands/stats/cycle'

RSpec.describe Smtp2go::Commands::Stats::Cycle do
  it "executes `stats cycle` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Stats::Cycle.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
