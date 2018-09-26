RSpec.describe "`smtp2go stats history` command", type: :cli do
  it "executes `smtp2go stats help history` command successfully" do
    output = `smtp2go stats help history`
    expected_output = <<-OUT
Usage:
  smtp2go history

Options:
  -h, [--help], [--no-help]  # Display usage information

Retrieve a summary showing account activity from a specified date range
    OUT

    expect(output).to eq(expected_output)
  end
end
