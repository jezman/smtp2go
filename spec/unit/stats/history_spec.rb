require 'smtp2go/commands/stats/history'

RSpec.describe Smtp2go::Commands::Stats::History do
  it "executes `stats history` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Stats::History.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
