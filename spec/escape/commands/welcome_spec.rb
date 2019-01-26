require "support/helpers/output_helper"

RSpec.describe Escape::Commands::Welcome do
  include Spec::Helpers::OutputHelper

  describe "#show" do
    let(:stream) { Thor::Shell::Basic.new }
    subject { described_class.new(stream) }

    it "outputs the welcome message" do
      ignore_input!

      expect(capture(:stdout) { subject.show("Hello World!") }).to eq "Hello World!\n"
    end
  end
end
