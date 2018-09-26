require 'smtp2go/commands/stats/spam'

RSpec.describe Smtp2go::Commands::Stats::Spam do
  it "executes `stats spam` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Stats::Spam.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
