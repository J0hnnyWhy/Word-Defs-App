require('rspec')
require('word')
require('word_def')

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

  describe(".all") do
    it("lists all of the words in the list, none to start") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#add_def") do
    it("adds a definition to a word") do
      test_word = Word.new("lup")
      test_def = WordDef.new("a small thing")
      test_word.add_def(test_def)
      expect(test_word.def()).to(eq([test_def]))
    end
  end

end
