RSpec.describe Escape::Commands::Base do
  describe "#initialize" do
    let(:runner) { double }

    it "initializes with a runner" do
      expect(described_class.new(runner).runner).to eq runner
    end
  end
end
