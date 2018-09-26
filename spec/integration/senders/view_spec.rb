RSpec.describe "`smtp2go senders view` command", type: :cli do
  it "executes `smtp2go senders help view` command successfully" do
    output = `smtp2go senders help view`
    expected_output = <<-OUT
Usage:
  smtp2go view

Options:
  -h, [--help], [--no-help]  # Display usage information

Returns the allowed sender list for your account
    OUT

    expect(output).to eq(expected_output)
  end
end
