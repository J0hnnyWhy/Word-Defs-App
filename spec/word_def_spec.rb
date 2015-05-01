require('rspec')
require('word')
require('word_def')

describe(WordDef) do
  before() do
    WordDef.clear()
  end

  describe("#def") do
    it("returns the definition of a specific word") do
      test_def = WordDef.new("a small thing")
      expect(test_def.def()).to(eq("a small thing"))
    end
  end

  describe("#save") do
    it("saves definition of a word") do
      test_def = WordDef.new("a small thing")
      test_def.save()
      expect(WordDef.all()).to(eq([test_def]))
    end
  end

  describe(".clear") do
    it("clears the list of definitions") do
      test_def = WordDef.new("hi mom")
      test_def.save()
      WordDef.clear()
      expect(WordDef.all()).to(eq([]))
    end
  end

  describe(".all") do
    it("lists all of the definitions, start empty") do
      expect(WordDef.all()).to(eq([]))
    end
  end

end
