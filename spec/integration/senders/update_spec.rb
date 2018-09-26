RSpec.describe "`smtp2go senders update` command", type: :cli do
  it "executes `smtp2go senders help update` command successfully" do
    output = `smtp2go senders help update`
    expected_output = <<-OUT
Usage:
  smtp2go update

Options:
  -h, [--help], [--no-help]  # Display usage information

Update the allowed senders list on your account, overwriting the current list with the passed 'allowed_senders' value
    OUT

    expect(output).to eq(expected_output)
  end
end
