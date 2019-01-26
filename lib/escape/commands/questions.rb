module Escape
  module Commands
    class Questions < Base
      def start(questions, clues)
        questions.each_with_index do |question, index|
          answer = stream.ask(question.text)
          stream.say(question.correct?(answer) ? Clue.new(clues).correct(index) : Clue.new(clues).incorrect(index))
          stream.say
        end
      end
    end
  end
end
