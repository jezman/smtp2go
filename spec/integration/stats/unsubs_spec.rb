RSpec.describe "`smtp2go stats unsubs` command", type: :cli do
  it "executes `smtp2go stats help unsubs` command successfully" do
    output = `smtp2go stats help unsubs`
    expected_output = <<-OUT
Usage:
  smtp2go unsubs

Options:
  -h, [--help], [--no-help]  # Display usage information

Report on email unsubscribe statistics
    OUT

    expect(output).to eq(expected_output)
  end
end
