require "support/helpers/output_helper"

RSpec.describe Escape::Commands::Restart do
  include Spec::Helpers::OutputHelper

  describe "#restart" do
    let(:runner) { Thor::Shell::Basic.new }
    subject { described_class.new(runner) }

    it "outputs the option" do
      expect(Thor::LineEditor).to receive(:readline).with("Hit RETURN to restart ", {})

      capture(:stdout) { subject.restart }
    end
  end
end
