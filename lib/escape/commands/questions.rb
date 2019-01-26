module Escape
  module Commands
    class Questions < Base
      def start(questions, clues)
        questions.each_with_index do |question, index|
          answer = runner.ask(question.text)
          runner.say(question.correct?(answer) ? Clue.new(clues).correct(index) : Clue.new(clues).incorrect(index))
          runner.say
        end
      end
    end
  end
end
