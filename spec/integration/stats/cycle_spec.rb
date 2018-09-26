RSpec.describe "`smtp2go stats cycle` command", type: :cli do
  it "executes `smtp2go stats help cycle` command successfully" do
    output = `smtp2go stats help cycle`
    expected_output = <<-OUT
Usage:
  smtp2go cycle

Options:
  -h, [--help], [--no-help]  # Display usage information

Retrieve a summary showing the start date and end date of your monthly cycle
    OUT

    expect(output).to eq(expected_output)
  end
end
