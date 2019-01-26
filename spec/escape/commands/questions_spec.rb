require "support/helpers/output_helper"

RSpec.describe Escape::Commands::Questions do
  include Spec::Helpers::OutputHelper

  describe "#start" do
    let(:question1) { double(text: "What is the meaning of life?", correct?: true)}
    let(:question_list) { [question1]}
    let(:stream) { Thor::Shell::Basic.new }
    subject { described_class.new(stream) }

    it "displays the first question" do
      expect(Thor::LineEditor).to receive(:readline).with("What is the meaning of life? ", {}).and_return("IDK")

      capture(:stdout) { subject.start(question_list) }
    end

    it "displays the correct clue if the answer is correct" do
      allow(Thor::LineEditor).to receive(:readline).with("What is the meaning of life? ", {}).and_return("42")

      expect(capture(:stdout) { subject.start(question_list) }).to match(/Y/)
    end

    it "displays an incorrect clue if the answer is incorrect" do
      allow(question1).to receive(:correct?).and_return false
      allow(Thor::LineEditor).to receive(:readline).with("What is the meaning of life? ", {}).and_return("56")

      expect(capture(:stdout) { subject.start(question_list) }).to_not match(/C/)
    end
  end
end
