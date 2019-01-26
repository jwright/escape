require "feature_helper"

RSpec.describe "starting a game" do
  it "displays the welcome message" do
    expect(capture(:stdout) { Escape::CLI.start(%w[start]) }).to match(/Welcome to the Game!/)
  end
end
