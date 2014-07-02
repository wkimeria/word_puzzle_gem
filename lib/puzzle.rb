class Puzzle
  def self.hi
    puts "Hello world from Puzzle!"
  end

  # Initialize with a list of valid words
  def initialize(word_list)
    @word_list = word_list
  end

  # Generate a list of puzzles and return then. The depth is the number of
  # words in the puzzle chain, start word and end word inclusive.
  # eg frog -> frag -> frat -> brat -> bran is of length 5. There can be
  # more than one chain that starts and ends with the same word.
  # return nil if there is no solution. throw an exception if the start
  # or end words are not valid according to our word list
  def generate(start_word, end_word, depth = 5)

  end

  # Increment letter (i.e if a, then b etc. If z circle back to a)
  def increment_letter(letter)
    letter.downcase!
    return "a" if letter == "z"
    ((letter.codepoints.first) + 1).chr.to_s
  end
end