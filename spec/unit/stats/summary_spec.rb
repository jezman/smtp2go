require 'smtp2go/commands/stats/summary'

RSpec.describe Smtp2go::Commands::Stats::Summary do
  it "executes `stats summary` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Stats::Summary.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
