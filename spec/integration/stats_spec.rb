RSpec.describe "`smtp2go stats` command", type: :cli do
  it "executes `smtp2go help stats` command successfully" do
    output = `smtp2go help stats`
    expected_output = <<-OUT
Commands:
    OUT

    expect(output).to eq(expected_output)
  end
end
