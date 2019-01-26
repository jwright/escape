module Escape
  module Commands
    class Welcome < Base
      def show(message)
        stream.say message
        stream.ask "\n"
      end
    end
  end
end
