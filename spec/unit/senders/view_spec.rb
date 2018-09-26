require 'smtp2go/commands/senders/view'

RSpec.describe Smtp2go::Commands::Senders::View do
  it "executes `senders view` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Senders::View.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
