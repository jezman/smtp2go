RSpec.describe "`smtp2go senders remove` command", type: :cli do
  it "executes `smtp2go senders help remove` command successfully" do
    output = `smtp2go senders help remove`
    expected_output = <<-OUT
Usage:
  smtp2go remove

Options:
  -h, [--help], [--no-help]  # Display usage information

Remove one or more allowed senders from your account
    OUT

    expect(output).to eq(expected_output)
  end
end
