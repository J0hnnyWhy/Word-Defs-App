require('rspec')
require('word')
require('word_def')

describe(WordDef) do
  describe("#def") do
    it("returns the definition of a specific word") do
      test_def = WordDef.new("a small thing")
      expect(test_def.def()).to(eq("a small thing"))
    end
  end
end
