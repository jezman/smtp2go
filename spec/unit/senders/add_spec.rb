require 'smtp2go/commands/senders/add'

RSpec.describe Smtp2go::Commands::Senders::Add do
  it "executes `senders add` command successfully" do
    output = StringIO.new
    email = nil
    options = {}
    command = Smtp2go::Commands::Senders::Add.new(email, options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
