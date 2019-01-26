module Escape
  class Question
    attr_reader :text

    def initialize(text, answer: nil)
      @text = text
      @answer = answer
    end

    class << self
      def load(question)
        new(question["text"], answer: question["answer"])
      end
    end
  end
end
