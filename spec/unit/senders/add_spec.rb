require 'smtp2go/commands/senders/add'

RSpec.describe Smtp2go::Commands::Senders::Add do
  it "executes `senders add` command successfully" do
    output = StringIO.new
    options = {}
    command = Smtp2go::Commands::Senders::Add.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
