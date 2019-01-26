module Escape
  class QuestionList
    include Enumerable

    def initialize(*questions)
      @questions = questions || []
    end

    def each(&block)
      questions.each(&block)
    end

    class << self
      def load(list)
        new(*list.map { |item| Question.load(item) })
      end
    end

    private

    attr_reader :questions
  end
end
