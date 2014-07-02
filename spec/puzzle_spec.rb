require 'spec_helper'
describe Puzzle do
  let(:puzzle) {
    Puzzle.new(nil)
  }
  context 'incrementing letter' do
    it 'increment' do
      expect(puzzle.increment_letter('a')).to eq 'b'
      expect(puzzle.increment_letter('b')).to eq 'c'
      expect(puzzle.increment_letter('c')).to eq 'd'
      expect(puzzle.increment_letter('d')).to eq 'e'
      expect(puzzle.increment_letter('e')).to eq 'f'
      expect(puzzle.increment_letter('f')).to eq 'g'
      expect(puzzle.increment_letter('g')).to eq 'h'
      expect(puzzle.increment_letter('h')).to eq 'i'
      expect(puzzle.increment_letter('i')).to eq 'j'
      expect(puzzle.increment_letter('j')).to eq 'k'
      expect(puzzle.increment_letter('k')).to eq 'l'
      expect(puzzle.increment_letter('l')).to eq 'm'
      expect(puzzle.increment_letter('m')).to eq 'n'
      expect(puzzle.increment_letter('o')).to eq 'p'
      expect(puzzle.increment_letter('p')).to eq 'q'
      expect(puzzle.increment_letter('q')).to eq 'r'
      expect(puzzle.increment_letter('r')).to eq 's'
      expect(puzzle.increment_letter('s')).to eq 't'
      expect(puzzle.increment_letter('t')).to eq 'u'
      expect(puzzle.increment_letter('u')).to eq 'v'
      expect(puzzle.increment_letter('v')).to eq 'w'
      expect(puzzle.increment_letter('w')).to eq 'x'
      expect(puzzle.increment_letter('x')).to eq 'y'
      expect(puzzle.increment_letter('y')).to eq 'z'
      expect(puzzle.increment_letter('z')).to eq 'a'
    end
  end
end