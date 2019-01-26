RSpec.describe Escape::Commands::Restart do
  describe "#restart_or_quit" do
    let(:runner) { double(ask: nil, execute: nil, say: nil) }
    subject { described_class.new(runner) }

    it "outputs the option" do
      expect(runner).to receive(:ask).with("Hit RETURN to restart or Q to quit")

      subject.restart_or_quit
    end

    it "invokes a restart if it was not quit" do
      expect(runner).to receive(:execute).with(:restart)

      subject.restart_or_quit
    end

    it "does not invoke a restart when quit" do
      allow(runner).to receive(:ask).with("Hit RETURN to restart or Q to quit").and_return("Q")

      expect(runner).to_not receive(:execute)

      subject.restart_or_quit
    end
  end
end
