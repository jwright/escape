module Escape
  module Commands
    class Restart < Base
      def restart_or_quit
        response = runner.ask "Hit RETURN to restart or Q to quit"
        unless (response.to_s.strip.upcase == "Q")
          runner.say
          runner.execute :restart
        end
      end
    end
  end
end
