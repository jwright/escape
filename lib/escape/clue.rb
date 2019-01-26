module Escape
  class Clue
    attr_reader :clues

    def initialize(clues)
      @clues = clues
    end

    def correct(index)
      clues[index]
    end

    def incorrect(index)
      correct = self.correct(index)

      return ([*0..9] - [correct]).sample if correct.is_a?(Integer)
      return ([*"A".."Z"] - [correct]).sample if correct.is_a?(String)
    end
  end
end
