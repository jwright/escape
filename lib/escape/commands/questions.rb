module Escape
  module Commands
    class Questions < Base
      def start(questions, clue)
        questions.each_with_index do |question, index|
          answer = stream.ask(question.text)
          stream.say(question.correct?(answer) ? Clue.new(clue).correct(index) : Clue.new(clue).incorrect(index))
          stream.say
        end
      end
    end
  end
end
