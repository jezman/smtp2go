RSpec.describe "`smtp2go senders` command", type: :cli do
  it "executes `smtp2go help senders` command successfully" do
    output = `smtp2go help senders`
    expected_output = <<-OUT
Commands:
    OUT

    expect(output).to eq(expected_output)
  end
end
