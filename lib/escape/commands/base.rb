module Escape
  module Commands
    class Base
      attr_reader :stream

      def initialize(stream)
        @stream = stream
      end
    end
  end
end
