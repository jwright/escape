module Escape
  module Commands
    class Welcome < Base
      def show(message)
        stream.say message
      end
    end
  end
end
