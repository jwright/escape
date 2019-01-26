module Escape
  class Question
    attr_reader :text

    def initialize(text)
      @text = text
    end

    class << self
      def load(question)
        new(question["text"])
      end
    end
  end
end
