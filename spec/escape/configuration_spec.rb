RSpec.describe Escape::Configuration do
  describe ".load" do
    let(:path) { File.expand_path("../fixtures/configuration.yml", File.dirname(__FILE__)) }

    it "loads a yml file" do
      configuration = described_class.load(path)

      expect(configuration.welcome_message).to match(/Welcome to the Game!/)
    end
  end
end
