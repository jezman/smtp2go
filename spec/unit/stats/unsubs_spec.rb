require 'smtp2go/commands/stats/unsubs'

RSpec.describe Smtp2go::Commands::Stats::Unsubs do
  it "executes `stats unsubs` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Stats::Unsubs.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
