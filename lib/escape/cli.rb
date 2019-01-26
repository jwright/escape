require "thor"

module Escape
  class CLI < Thor
    desc "start", "Starts a new game"
    def start
      say "Welcome to the Game!"
    end
  end
end
