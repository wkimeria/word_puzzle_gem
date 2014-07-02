class Puzzle
  def self.hi
    puts "Hello world from Puzzle!"
  end

  # Initialize with a list of valid words
  def initialize(dictionary)
    @dictionary = dictionary
  end

  # Generate a list of puzzles and return then. The depth is the number of
  # words in the puzzle chain, start word and end word inclusive.
  # eg frog -> frag -> frat -> brat -> bran is of length 5. There can be
  # more than one chain that starts and ends with the same word.
  # return nil if there is no solution. throw an exception if the start
  # or end words are not valid according to our word list
  def generate(start_word, end_word, depth = 5)

  end

  # For a given word, generate variations of the word with the character at the given position
  # incremented. Only keep words that are valid according to our dictionary.
  # For exampe, given ham and 0, the words would be aam,bam,cam, dam but only those that are valid
  # according to our dictionary would be kept
  def generate_variations(word, pos)
    raise ArgumentError, 'Word cannot be nil or empty' if word.nil? || word.empty?
    raise ArgumentError, 'Invalid letter position' if pos.nil? || pos > word.length - 1
    words = []
    letter = word[pos]
    new_letter = nil
    counter = 0
    while counter < 25
      new_letter = increment_letter(letter)
      letter = new_letter
      word[pos] = letter
      words << word.clone if @dictionary.include?(word)
      counter += 1
    end
    return words
  end

  # Increment letter (i.e if a, then b etc. If z circle back to a)
  def increment_letter(letter)
    letter.downcase!
    return "a" if letter == "z"
    ((letter.codepoints.first) + 1).chr.to_s
  end
end