require "thor"

module Escape
  class CLI < Thor
    desc "start", "Starts a new game"
    def start
      Escape::Commands::Welcome.new(shell).show
      Escape::Commands::Questions.new(shell).start
    end
  end
end
