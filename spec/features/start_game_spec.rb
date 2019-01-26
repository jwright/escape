require "feature_helper"

RSpec.describe "starting a game" do
  before do
    allow(Thor::LineEditor).to receive(:readline).and_return("")
  end

  it "displays the welcome message" do
    expect(capture(:stdout) { Escape::CLI.start(%w[start]) }).to match(/Welcome to the Escape Room!/)
  end
end
