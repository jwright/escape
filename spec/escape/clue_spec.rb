RSpec.describe Escape::Clue do
  let(:clue) { [42, "H"] }
  subject { described_class.new(clue) }

  describe "#correct" do
    it "returns the clue based on the index" do
      expect(subject.correct(0)).to eq 42
      expect(subject.correct(1)).to eq "H"
    end

    it "returns nil if the index is out of range" do
      expect(subject.correct(2)).to be_nil
    end
  end

  describe "#incorrect" do
    it "returns nil if the index is out of range" do
      expect(subject.incorrect(2)).to be_nil
    end

    it "returns a different integer for integer clues" do
      expect(subject.incorrect(0)).to_not eq 42
      expect(subject.incorrect(0)).to be_a Integer
    end

    it "returns a different string for string clues" do
      expect(subject.incorrect(1)).to_not eq "H"
      expect(subject.incorrect(1)).to be_a String
    end
  end
end
