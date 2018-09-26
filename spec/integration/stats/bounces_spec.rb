RSpec.describe "`smtp2go stats bounces` command", type: :cli do
  it "executes `smtp2go stats help bounces` command successfully" do
    output = `smtp2go stats help bounces`
    expected_output = <<-OUT
Usage:
  smtp2go bounces

Options:
  -h, [--help], [--no-help]  # Display usage information

Report on email bounce statistics
    OUT

    expect(output).to eq(expected_output)
  end
end
