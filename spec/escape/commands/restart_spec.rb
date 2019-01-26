RSpec.describe Escape::Commands::Restart do
  describe "#restart" do
    let(:runner) { double(ask: nil, execute: nil, say: nil) }
    subject { described_class.new(runner) }

    it "outputs the option" do
      expect(runner).to receive(:ask).with("Hit RETURN to restart")

      subject.restart
    end

    it "invokes a restart" do
      expect(runner).to receive(:execute).with(:restart)

      subject.restart
    end
  end
end
