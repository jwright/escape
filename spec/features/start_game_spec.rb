require "feature_helper"

RSpec.describe "starting a game" do
  before do
    ignore_input!
    protect_from_restart!
  end

  it "displays the welcome message" do
    expect(capture(:stdout) { Escape::CLI.start(%w[start]) }).to match(/Welcome to the Escape Room!/)
  end

  private

  def protect_from_restart!
    allow_any_instance_of(Escape::CLI).to receive(:execute).with(:restart).and_return(nil)
  end
end
