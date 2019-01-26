require "yaml"

module Escape
  class Configuration
    def clue
      config["clue"]
    end

    def questions
      QuestionList.load(config["questions"])
    end

    def welcome_message
      config["welcome_message"]
    end

    class << self
      def load(path)
        new(YAML.load_file(path))
      end
    end

    protected

    attr_reader :config

    def initialize(config)
      @config = config
    end
  end
end
