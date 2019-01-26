module Escape
  module Commands
    class Questions < Base
      def start(questions, clue)
        questions.each_with_index do |question, index|
          answer = stream.ask(question.text)
          stream.say(question.correct?(answer) ? correct_clue(index) : incorrect_clue(index))
          stream.say
        end
      end

      private

      def correct_clue(index)
        "Y"
      end

      def incorrect_clue(index)
        "N"
      end
    end
  end
end
