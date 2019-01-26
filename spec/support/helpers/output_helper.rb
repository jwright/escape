module Spec
  module Helpers
    module OutputHelper
      def capture(stream)
        begin
          stream = stream.to_s
          eval "$#{stream} = StringIO.new"
          yield
          result = eval("$#{stream}").string
        ensure
          eval("$#{stream} = #{stream.upcase}")
        end

        result
      end

      def ignore_input!
        allow(Thor::LineEditor).to receive(:readline).and_return("")
      end
    end
  end
end
