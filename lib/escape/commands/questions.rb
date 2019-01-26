module Escape
  module Commands
    class Questions < Base
      def start(questions)
        questions.each do |question|
          answer = stream.ask(question.text)
          stream.say
        end
      end
    end
  end
end
