RSpec.describe Escape::QuestionList do
  describe "#initialize" do
    it "can be initialized with nothing" do
      expect(subject.count).to eq 0
    end

    it "can be initialized with a collection" do
      subject = described_class.new([{"hello" => "world"}])

      expect(subject.count).to eq 1
    end
  end

  describe ".load" do
    let(:data) do
      [
        { "text" => "What is the meaning of life?" },
        { "text" => "What is the value of PI?" }
      ]
    end

    it "initializes a new question list from a hash" do
      subject = described_class.load(data)

      expect(subject.count).to eq 2
      expect(subject.first.text).to eq "What is the meaning of life?"
    end
  end
end
