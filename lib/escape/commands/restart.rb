module Escape
  module Commands
    class Restart < Base
      def restart
        runner.ask "Hit RETURN to restart"
        #runner.invoke :restart
      end
    end
  end
end
