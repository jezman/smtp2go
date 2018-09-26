require 'smtp2go/commands/senders/update'

RSpec.describe Smtp2go::Commands::Senders::Update do
  it "executes `senders update` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Senders::Update.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
