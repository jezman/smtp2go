RSpec.describe "`smtp2go senders add` command", type: :cli do
  it "executes `smtp2go senders help add` command successfully" do
    output = `smtp2go senders help add`
    expected_output = <<-OUT
Usage:
  smtp2go add

Options:
  -h, [--help], [--no-help]  # Display usage information

Add one or more allowed senders to your account
    OUT

    expect(output).to eq(expected_output)
  end
end
