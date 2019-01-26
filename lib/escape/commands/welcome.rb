module Escape
  module Commands
    class Welcome
      attr_reader :stream

      def initialize(stream)
        @stream = stream
      end

      def show
        stream.say "Welcome to the Game!"
      end
    end
  end
end
