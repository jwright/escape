require "thor"

module Escape
  class CLI < Thor
    desc "start", "Starts a new game"
    def start
      config = Escape::Configuration.load("./configuration.yml")

      Escape::Commands::Welcome.new(shell).show(config.welcome_message)
      Escape::Commands::Questions.new(shell).start(config.questions, config.clues)
    end
  end
end
