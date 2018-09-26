require 'smtp2go/commands/stats/bounces'

RSpec.describe Smtp2go::Commands::Stats::Bounces do
  it "executes `stats bounces` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Stats::Bounces.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
