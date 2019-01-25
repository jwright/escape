require "thor"

module Escape
  class CLI < Thor
    desc "start", "Starts a new game"
    def start
      say "Hello, World"
    end
  end
end
