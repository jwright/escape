module Escape
  class Clue
    attr_reader :clue

    def initialize(clue)
      @clue = clue
    end

    def correct(index)
      clue[index]
    end

    def incorrect(index)
      correct = self.correct(index)

      return ([*0..9] - [correct]).sample if correct.is_a?(Integer)
      return ([*"A".."Z"] - [correct]).sample if correct.is_a?(String)
    end
  end
end
