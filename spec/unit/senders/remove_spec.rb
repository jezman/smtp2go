require 'smtp2go/commands/senders/remove'

RSpec.describe Smtp2go::Commands::Senders::Remove do
  it "executes `senders remove` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Senders::Remove.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
