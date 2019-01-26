RSpec.describe Escape::Question do
  describe "#correct?" do
    it "is correct if the answer matches" do
      subject = described_class.new("blah", answer: "Correct")

      expect(subject).to be_correct "Correct"
    end

    it "is not correct if the answer does not match" do
      subject = described_class.new("blah", answer: "Correct")

      expect(subject).to_not be_correct "Incorrect"
    end
  end
end
