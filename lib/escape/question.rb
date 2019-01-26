module Escape
  class Question
    attr_reader :answer, :text

    def initialize(text, answer: nil)
      @text = text
      @answer = answer
    end

    def correct?(answer)
      self.answer == answer
    end

    class << self
      def load(question)
        new(question["text"], answer: question["answer"])
      end
    end
  end
end
