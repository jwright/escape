RSpec.describe Escape::Commands::Base do
  describe "#initialize" do
    let(:stream) { $stdout }

    it "initializes with a stream" do
      expect(described_class.new(stream).stream).to eq stream
    end
  end
end
