RSpec.describe "`smtp2go stats spam` command", type: :cli do
  it "executes `smtp2go stats help spam` command successfully" do
    output = `smtp2go stats help spam`
    expected_output = <<-OUT
Usage:
  smtp2go spam

Options:
  -h, [--help], [--no-help]  # Display usage information

Report on email spam statistics
    OUT

    expect(output).to eq(expected_output)
  end
end
