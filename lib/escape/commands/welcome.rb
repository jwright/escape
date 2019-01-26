module Escape
  module Commands
    class Welcome < Base
      def show(message)
        runner.say message
        runner.ask "\n"
      end
    end
  end
end
