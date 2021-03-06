require "thor"

module Escape
  class CLI < Thor
    default_task :start

    desc "start", "Starts a new game"
    def start
      raise RuntimeError, "Number of questions does not match the number of clues" unless valid_configuration?

      Escape::Commands::Welcome.new(self).show(configuration.welcome_message)
      Escape::Commands::Questions.new(self).start(configuration.questions, configuration.clues)
      Escape::Commands::Restart.new(self).restart_or_quit
    end

    desc "restart", "Restarts a new game"
    def restart
      Escape::Commands::Questions.new(self).start(configuration.questions, configuration.clues)
      Escape::Commands::Restart.new(self).restart_or_quit
    end

    no_commands do
      def execute(command)
        self.class.new.invoke command
      end
    end

    private

    no_commands do
      def configuration
        @configuration ||= Escape::Configuration.load(File.join(File.dirname(__FILE__), "..", "..", "configuration.yml"))
      end

      def valid_configuration?
        configuration.questions.count == configuration.clues.count
      end
    end
  end
end
