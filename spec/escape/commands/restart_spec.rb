RSpec.describe Escape::Commands::Restart do
  describe "#restart" do
    let(:runner) { double(ask: nil, invoke: nil) }
    subject { described_class.new(runner) }

    it "outputs the option" do
      expect(runner).to receive(:ask).with("Hit RETURN to restart")

      subject.restart
    end

    it "invokes a restart" do
      expect(runner).to receive(:invoke).with(:restart)

      subject.restart
    end
  end
end
