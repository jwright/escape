module Escape
  module Commands
    class Welcome < Base
      def show
        stream.say "Welcome to the Game!"
      end
    end
  end
end
