require "yaml"

module Escape
  class Configuration
    class << self
      def load(path)
        new(YAML.load_file(path))
      end
    end

    def questions
      config["questions"]
    end

    def welcome_message
      config["welcome_message"]
    end

    protected

    attr_reader :config

    def initialize(config)
      @config = config
    end
  end
end
