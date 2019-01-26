require "support/helpers/output_helper"

RSpec.describe Escape::Commands::Questions do
  include Spec::Helpers::OutputHelper

  describe "#start" do
    let(:question1) { double(text: "What is the meaning of life?")}
    let(:question_list) { [question1]}
    let(:stream) { Thor::Shell::Basic.new }
    subject { described_class.new(stream) }

    it "displays the first question" do
      expect(Thor::LineEditor).to receive(:readline).with("What is the meaning of life? ", {}).and_return("IDK")

      subject.start(question_list)
    end
  end
end
