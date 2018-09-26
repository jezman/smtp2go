RSpec.describe "`smtp2go stats summary` command", type: :cli do
  it "executes `smtp2go stats help summary` command successfully" do
    output = `smtp2go stats help summary`
    expected_output = <<-OUT
Usage:
  smtp2go summary

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
