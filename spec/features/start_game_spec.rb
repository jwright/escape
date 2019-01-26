require "feature_helper"

RSpec.describe "starting a game" do
  before { ignore_input! }

  it "displays the welcome message" do
    expect(capture(:stdout) { Escape::CLI.start(%w[start]) }).to match(/Welcome to the Escape Room!/)
  end
end
