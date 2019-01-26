module Escape
  module Commands
    class Base
      attr_reader :runner

      def initialize(runner)
        @runner = runner
      end
    end
  end
end
