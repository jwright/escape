module Escape
  module Commands
    class Questions < Base
      def start(questions)
        questions.each do |question|
          answer = stream.ask(question.text)
        end
      end
    end
  end
end
