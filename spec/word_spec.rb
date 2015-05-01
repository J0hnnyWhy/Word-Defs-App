require('rspec')
require('word')

describe(Word) do
  before() do
    Word.clear()
  end
  describe("#word") do
    it("returns the writen word") do
      test_word = Word.new("lup")
      test_word.save()
      expect(test_word.word()).to(eq("lup"))
    end
  end

  describe("#save") do
    it("adds a word to the list of words") do
      test_word = Word.new("lup")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
end
